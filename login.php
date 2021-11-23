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
                                        <legend>Login</legend>
					<form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
					<br><br>
					<table>
						<tr>
							<th align="right"><label>Username : </label></th>
							<td><input type="text" name="usrnm"></td>
						</tr>
						<tr>
							<th align="right"><label>Password : </label></th>
							<td><input type="password" name="pswd"></td>
						</tr>				
					</table>
                                                <br><br>
						<input type="Submit" value="Login">
						<br><br>Are you a 
						<a href="register.php">New User</a>?						
                                        </form>
				</fieldset>
                        </center>
                </main>
        </body>
</html>

<?php
	if( $_SERVER["REQUEST_METHOD"] == "POST")
	{
		$sql="select * from Login_Database where Username='".$_POST["usrnm"]."' and Password='".$_POST["pswd"]."';";
		$result=$con->query($sql);
		if($result->num_rows == 1)
		{
			$_SESSION["usrnm"]=$_POST["usrnm"];
			header("Location: home.php");
		}
		else
			echo "<br> <center> Incorrect Username or Password !!!";
	}
?>
