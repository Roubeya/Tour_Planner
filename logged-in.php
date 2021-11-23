<?php
        include("dbcon.php");
        $sql="select * from Users_Database where `Username`='".$_SESSION['usrnm']."';";
        $result=$con->query($sql);
        $user=$result->fetch_assoc();
?>
