<?php
require_once '../doctor/system/dbConn.php';

if(isset($_POST['logIn']))
	{
				$aid = "";  
		    	$email = ""; 
		    	$pw = ""; 

		$email=mysqli_real_escape_string($conn,$_POST['email']);
		$password=mysqli_real_escape_string($conn,$_POST['pw']);
		$result = $conn->query("SELECT AID, email, password FROM tbladmin WHERE email='$email'");
		if ($result->num_rows > 0) {
		    while($row = $result->fetch_assoc()) {
		    	$aid = $row['DID']; 
		    	$email = $row['email'];  
		    	$pw = $row['password']; 
			}
		}

		if(password_verify($password, $pw)){
			session_start();
			$_SESSION["AID"] = $aid;
			$_SESSION["loggedInAdmin"] = "true";

			header('location: ./system/admin.dashboard.php');
		}else{
			header('location: index.php');
		}

	}

?>