<?php include("logged-in.php"); ?>
<html>
        <head>
                <title>Tour Planner</title>
                <link rel="stylesheet" href="style.css">
                <link rel="preconnect" href="https://fonts.gstatic.com">
                <link href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap" rel="stylesheet">
                <link href="https://fonts.googleapis.com/css2?family=Knewave&display=swap" rel="stylesheet">
        </head>

        <body>
		<main>
		<a href="login.php">LogOut</a>
			<center>
				<h1>Hi <?php echo $user["Name"];?> !!!</h1>
				<fieldset>
					<legend>Details</legend>
					<table>
						<tr>
							<th align="right">Name : </th>	
							<td><?php echo $user["Name"] ?></td>
						</tr>
						<tr>
							<th align="right">Age : </th>	
							<td><?php echo $user["Age"] ?></td>
						</tr>
						<tr>
							<th align="right">Gender : </th>	
							<td><?php echo $user["Gender"] ?></td>
						</tr>
						<tr>
							<th align="right">Home State : </th>	
							<td><?php echo $user["Home State"] ?></td>
						</tr>
						<tr>
							<th align="right">Contact : </th>	
							<td><?php echo $user["Contact"] ?></td>
						</tr>
					</table>
				</fieldset>	
				<fieldset>
					<form method="POST" action="<?php echo $_SERVER["PHP_SELF"]?>">
					<table>
						<tr>
							<td>Appreciate Scenic Beauty ?</td>
							<td><input type="radio" name="scenic" value=">0" required>Yes</td>
							<td><input type="radio" name="scenic" value="<0" required>No</td>
					        </tr>
						<tr>	
							<td>Appreciate Religious ?</td>
							<td><input type="radio" name="religious" value=">0" required>Yes</td>
							<td><input type="radio" name="religious" value="<0" required>No</td>
					        </tr>
						<tr>	
							<td>Appreciate Zoological Biodiversity ?</td>
							<td><input type="radio" name="zoo" value=">0" required>Yes</td>
							<td><input type="radio" name="zoo" value="<0" required>No</td>
					        </tr>
						<tr>	
							<td>Appreciate Historical ?</td>
							<td><input type="radio" name="history" value=">0" required>Yes</td>
							<td><input type="radio" name="history" value="<0" required>No</td>
					        </tr>
						<tr>	
							<td>Appreciate Amusement ?</td>
							<td><input type="radio" name="amuse" value=">0" required>Yes</td>
							<td><input type="radio" name="amuse" value="<0" required>No</td>
						</tr>
					</table>
					<br>
					<input type="submit" value="Submit">
					</form>
				</fieldset>
			</center>
                </main>
        </body>
</html>
<?php
	exec("python3 test.py");		
	$sql="update Users_Response set `Scenic_Beauty`='".$_POST["scenic"]."', `Religious`='".$_POST["religious"]."', `Zoological_Biodiversity`='".$_POST["zoo"]."', `Historical`='".$_POST["history"]."', `Amusement`='".$_POST["amuse"]."' where Username='".$user["Username"]."';";
	$result=$con->query($sql);
	
	$sql="select Places from Places_Database where `Scenic Beauty`".$_POST["scenic"]." and `Religious`".$_POST["religious"]." and `Zoological Biodiversity`".$_POST["zoo"]." and `Historical`".$_POST["history"]." and `Amusement`".$_POST["amuse"].";";	
	$result=$con->query($sql);
	if($result->num_rows > 0)
		echo "There are ".$result->num_rows." places with us according to your preference ! Enjoy @ : ";
	else
		echo "No such place in the Database";	
	
	while($row=$result->fetch_assoc())
		echo "<br>".$row["Places"]; 	
?>

