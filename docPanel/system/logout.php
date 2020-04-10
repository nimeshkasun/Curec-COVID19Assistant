<?php
	require_once 'dbConn.php';
	session_start();
	$did = $_SESSION["DID"];
	$update = "UPDATE doctor SET status='1' WHERE DID='$did'";
	mysqli_query($conn,$update);

	session_destroy();
	header('location: ../');

?>