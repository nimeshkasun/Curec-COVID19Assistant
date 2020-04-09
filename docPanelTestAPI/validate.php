<?php
require_once 'system/dbConn.php';

if(isset($_POST['logIn']))
	{
				$did = ""; 
		    	$name = "";  
		    	$email = ""; 
		    	$un = ""; 
		    	$pw = ""; 
		    	$api = ""; 
		    	$session = ""; 
		    	$token = ""; 

		$username=mysqli_real_escape_string($conn,$_POST['un']);
		$password=mysqli_real_escape_string($conn,$_POST['pw']);
		$result = $conn->query("SELECT DID, name, email, username, password, apiKey, sessionId, token FROM doctor WHERE username='$username'");
		if ($result->num_rows > 0) {
		    while($row = $result->fetch_assoc()) {
		    	$did = $row['DID']; 
		    	$name = $row['name'];  
		    	$email = $row['email'];  
		    	$un = $row['username'];  
		    	$pw = $row['password']; 
		    	$api = $row['apiKey'];
		    	$session = $row['sessionId'];
		    	$token = $row['token']; 
			}
		}

		if($password == $pw){
			session_start();
			$_SESSION["DID"] = $did;
			$_SESSION["API"] = $api;
			$_SESSION["SESSION"] = $session;
			$_SESSION["TOKEN"] = $token;
			$_SESSION["MID"] = "";
			$_SESSION["loggedIn"] = "true";

			$update = "UPDATE doctor SET status='2' WHERE DID='$did'";
			mysqli_query($conn,$update);

			header('location: ./system/');
		}else{
			header('location: index.php');
		}

	}

?>