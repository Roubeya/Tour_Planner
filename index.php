<?php include("dbcon.php"); ?>

<html>
<head>
	<title>Tour Planner</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script type="text/javascript" src="main.js"></script>
</head>
<body>

	<section class="header">
		<div class="container">		
			<button type="button" class="login-btn" onclick="document.getElementById('login-form').style.display='block'" style="width:auto;">Login</button>
		</div>

		<h1>Travel within Budget</h1>
		<p>#TravelinSwag</p>
<!--		<div class="input-group">
			<input type="text" class="form-control" placeholder="Search your city">
			<div class="input-group-append">
				<button type="submit" class="input-group-text btn">Search</button>
			</div>
		</div>
-->
		<div id='login-form'class='login-page'>
            <div class="form-box">
                <div class='button-box'>
                    <div id='btn'></div>
                    <button type='button'onclick='login()'class='toggle-btn'>Log In</button>
                    <button type='button'onclick='register()'class='toggle-btn'>Register</button>
                </div>

		<form id='login' class='input-group-login' method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>" >
                    <input type='text'class='input-field'placeholder='Username' name="usrnm" required>
		    <input type='password'class='input-field'placeholder='Password' name="pswd">
		    <button type='submit'class='submit-btn'>Log in</button>
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
                        echo "<br> <center> Incorrect Username or Password !!!</center>";
        }
?>
		 </form>

		 <form id='register' class='input-group-register' method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
		     <input type='text'class='input-field' placeholder='Username' name="usrnme" required>
		     <input type='password'class='input-field' placeholder='Enter Password' name="pswds" required>
		     <input type='password'class='input-field' placeholder='Confirm Password' name="npswd" required>
		     <input type="text" class="input-field" placeholder="Name" name="nm" required>
		     <input type="number" class="input-field" placeholder="Age" name="age" min="0" max="100" required>
		     <input type="radio" id="ml" name="gndr" value="Male" required>
		     <input type="radio" id="fml" name="gndr" value="Female" required>
		     <input type="text" class="input-field" placeholder="Home State" name="hs" required>
                    <button type='submit'class='submit-btn'>Register</button>
<?php
        if ( $_SERVER["REQUEST_METHOD"] == "POST" )
        {
                $usrnm=$_POST["usrnme"];
                $pswd=$_POST["pswds"];
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
                        header("Location: index.php");
                }
        }
?>
		 </form>

            </div>
	</section>

	<section class="qus-featured">
		<h1>Tell us </h1>
		<div class="container">
			<div class="row">
				<div class="col-md-6"></div>
				 <h2>Choose Your Range</h2>
				<div class="slidecontainer">

  <input type="range" min="5000" max="500000" value="50" class="slider" id="myRange">

  <p>Rupees: <span id="demo"></span></p>
</div>
				<div class="col-md-6">
					
				</div>
			</div>
		</div>
		
	</section>
	<script src="main.js"></script>
</body>
</html>
