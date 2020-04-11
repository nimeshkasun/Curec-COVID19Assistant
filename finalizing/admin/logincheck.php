<?php
	session_start();
	if(isset($_SESSION["loggedIn"])){
		header("location: system/admin.dashboard.php");
	}
?>