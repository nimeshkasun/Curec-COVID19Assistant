<?php
	session_start();
	if(isset($_SESSION["loggedIn"])){
		header("location: system/");
	}
?>