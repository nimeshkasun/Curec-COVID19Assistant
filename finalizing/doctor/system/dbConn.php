<?php
	$servername = "tommy.heliohost.org";
	$username = "edvicon_curecadmin";
	$password = "KDUcurec34";
	$database = "edvicon_curec";
	if(mysqli_connect($servername, $username, $password, $database))
	{
		$conn = mysqli_connect($servername, $username, $password, $database);
		$connection = mysqli_connect($servername, $username, $password, $database);
	}
	else
	{
		echo "DB Conn Error";
	}
?>