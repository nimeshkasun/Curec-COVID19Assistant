<?php
require_once 'system/dbConn.php';

if(isset($_POST['logIn']))
	{
				$did = ""; 
		    	$name = "";  
		    	$email = ""; 
		    	$un = ""; 
		    	$pw = ""; 

		$username=mysqli_real_escape_string($conn,$_POST['un']);
		$password=mysqli_real_escape_string($conn,$_POST['pw']);
		$result = $conn->query("SELECT DID, name, email, username, password FROM doctor WHERE username='$username'");
		if ($result->num_rows > 0) {
		    while($row = $result->fetch_assoc()) {
		    	$did = $row['DID']; 
		    	$name = $row['name'];  
		    	$email = $row['email'];  
		    	$un = $row['username'];  
		    	$pw = $row['password'];  
			}
		}

		if($password == $pw){
			session_start();
			$_SESSION["DID"] = $did;
			$_SESSION["loggedIn"] = "true";
			header('location: ./system/');
		}else{
			header('location: index.php');
		}

	}

?>