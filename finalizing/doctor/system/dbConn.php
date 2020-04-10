<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$database = "covid19";
	if(mysqli_connect($servername, $username, $password, $database))
	{
		$conn = mysqli_connect($servername, $username, $password, $database);
	}
	else
	{
		echo "DB Conn Error";
	}
?>