<?php
	session_start();
	if(isset($_SESSION["loggedInAdmin"])){
		header("location: system/admin.dashboard.php");
	}
?>