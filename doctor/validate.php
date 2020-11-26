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

		$email=mysqli_real_escape_string($conn,$_POST['email']);
		$password=mysqli_real_escape_string($conn,$_POST['pw']);
		$result = $conn->query("SELECT DID, name, email, password FROM doctor WHERE email='$email'");
		if ($result->num_rows > 0) {
		    while($row = $result->fetch_assoc()) {
		    	$did = $row['DID']; 
		    	$name = $row['name'];  
		    	$email = $row['email'];  
		    	$pw = $row['password']; 
			}
		}

		/*if($password == $pw){*/
		if(password_verify($password, $pw)){
			session_start();
			$_SESSION["DID"] = $did;
			$_SESSION["MID"] = "";
			$_SESSION["SID"] = "";
			$_SESSION["TID"] = "";
			$_SESSION["loggedIn"] = "true";

			$update = "UPDATE doctor SET status='2' WHERE DID='$did'";
			mysqli_query($conn,$update);

			header('location: ./system/');
		}else{
			header('location: index.php');
		}

	}

?>