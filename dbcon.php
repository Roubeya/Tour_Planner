<?php
	define('dbhost','localhost');
	define('dbuser','root');
	define('dbps','');
	define('dbname','Tour_Planner');

	session_start();
	$con=mysqli_connect(dbhost,dbuser,dbps);
	$dbcon=mysqli_select_db($con,dbname);

	if (!$con)
		die("Connection Failed : ".mysql_error());	
	else if (!$dbcon)
		die("Database Connection Failed : ".mysql_error());
	else;
?>	
