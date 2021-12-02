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
					</table>
				</fieldset>
				<fieldset>
					<legend>Would you like to spend vacation at a place :</legend> 	
					<form method="POST" action="<?php echo $_SERVER["PHP_SELF"]?>">
					<table>
						<tr>
							<td>a lot of mountains, variety of flowers and animals , forests a lot of mountains, variety of flowers and animals , forests </td>
							<td><input type="range" min="0" max="5"  name="frst"></td>
					        </tr>
						<tr>	
							<td>temples, mosques or churches and traditional sites </td>
							<td><input type="range" min="0" max="5"  name="sec"></td>
					        </tr>
						<tr>	
							<td>shopping malls, cinema halls, parks, hotels</td>
							<td><input type="range" min="0" max="5"  name="thrd"></td>
					        </tr>
						<tr>	
							<td>palaces, forts, quilas</td>
							<td><input type="range" min="0" max="5"  name="four"></td>
					        </tr>
					</table>
					<br>
					<input type="submit" value="Submit">
					</form>
				</fieldset>
			</center>
<?php
	$scn = (0.75*$_POST['frst']) + (0.25*$_POST['four']);
	$rl = (0.75*$_POST['sec']) + (0.25*$_POST['four']);
	$zoo = (0.65*$_POST['frst']) + (0.35*$_POST['thrd']);
	$his = (0.75*$_POST['four']) + (0.25*$_POST['sec']);
	$ams = (0.75*$_POST['thrd']) + (0.25*$_POST['frst']);

	exec("python3 recommend.py ".$scn." ".$rl." ".$zoo." ".$his." ".$ams." ".$user["Username"]);

	$sql="select * from Users_Recommendation where `Username`='".$user["Username"]."';";
	$result=$con->query($sql);
	$sql=$result->fetch_assoc();
	parse_str($sql["Recommendation"],$rec);
	$len = sizeof($rec["ans"])-1;
?>

			<fieldset>
			<legend>You have <?php echo $len ?> Recommendations</legend>
<?php
	for($i = 0; $i < $len ; $i++)
	{
		$sql="select `Places` from Places_Database where `Sl.No`='".$rec["ans"][$i]."';";	
		$result=$con->query($sql);
		$sql = $result->fetch_assoc();
		$j=$i+1;
		echo $j." - ";
		echo $sql["Places"];
		echo "<br>";
	}	
		
?>
			</fieldset>
		</main>
	</body>
</html>

