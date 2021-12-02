<?php include("dbcon.php"); ?>
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
                        <center>
                                <fieldset>
                                        <legend>Register</legend>
					<form method="POST" action="<?php echo $_SERVER['PHP_SELF']?>">
					<br><br>
						<table>
							<tr>
                                                		<th align="right"><label>Username : </label></th>
								<td><input type="text" name="usrnm" required></td>
							</tr>
							<tr>
                                                		<th align="right"><label>Password : </label></th>
		                                                <td><input type="password" name="pswd" required></td>
							</tr>
							<tr>
                                                		<th align="right"><label>Confirm Password : </label></th>
								<td><input type="password" name="npswd" required></td>
							</tr>
						</table>
						<br><br>		
						<table>
							<tr>
                                                		<th align="right"><label>Name : </label></th>
								<td><input type="text" name="nm" required></td>
							</tr>
							<tr>
                                                		<th align="right"><label>Age : </label></th>
		                                                <td><input type="number" name="age" min="0" max="100" required></td>
							</tr>
							<tr>
                                                		<th align="right"><label>Gender : </label></th>
								<td>Male<input type="radio" id="ml" name="gndr" value="Male" required></td>
								<td>Female<input type="radio" id="fml" name="gndr" value="Female" required></td>
							</tr>
							<tr>
                                                		<th align="right"><label>Home State : </label></th>
		                                                <td><input type="text" name="hs" required></td>
							</tr>
						</table>
						<br><br>
                                		<input type="Submit" value="Register">
                                        </form>
                                </fieldset>
                        </center>
                </main>
        </body>
</html>

<?php
        if ( $_SERVER["REQUEST_METHOD"] == "POST" )
        {
                $usrnm=$_POST["usrnm"];
		$pswd=$_POST["pswd"];
		$npswd=$_POST["npswd"];

                $sql="select Username from Login_Database where Username='".$usrnm."'";
                $result=$con->query($sql);

                if($result->num_rows > 0)
		{
			echo "<center>";
			echo "<br>";
                        echo "Username taken !!!";
			echo "</center>";
		}

		else if($pswd!=$npswd) 
			echo "<br><br><br><center> Passwords donot match !!!"; 
                else
		{
			$sql="insert into Login_Database (`Username`,`Password`) values ('".$usrnm."','".$pswd."');"; 
			$con->query($sql);
			$sql="insert into Users_Database (`Username`,`Name`,`Age`,`Gender`,`Home State`,`Contact`) values ('".$usrnm."','".$_POST["nm"]."','".$_POST["age"]."','".$_POST["gndr"]."','".$_POST["hs"]."','".$_POST["cont"]."');"; 
			$con->query($sql);
			$sql="insert into Users_Response (`Username`) values ('".$usrnm."');"; 
			$con->query($sql);
			header("Location: login.php");
                }
        }
?>

