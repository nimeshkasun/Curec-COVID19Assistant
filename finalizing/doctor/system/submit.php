<!-- Post doctor's data to Database -->
		<?php
		session_start();
		$did = $_SESSION["DID"];
		$mid = $_SESSION["MID"];
		$rid = $_SESSION["RID"];
		$mohName = $_SESSION["MOHNAME"];
		$mohEmail = $_SESSION["MOHEMAIL"];


		require_once 'dbConn.php';
			if(isset($_POST['btnSendMoh'])){

				$docName = "";
				$pName = ""; 
				$pNic = "";  
				$pGender = "";  
				$pAge = "";  
				$pLocation = "";  
				$pPhoneNumber = "";


					$result = $conn->query("SELECT name, phone FROM doctor WHERE DID = '$did' ");
					if ($result->num_rows > 0) {
						while($row = $result->fetch_assoc()) {
						    $docName = $row['name'];
						}
					}

					$result = $conn->query("SELECT Name, NIC, Gender, Age, City, phone FROM member WHERE MID='$mid'");
					if ($result->num_rows > 0) {
						while($row = $result->fetch_assoc()) {
								//Patient Details
						    $pName = $row['Name']; 
						    $pNic = $row['NIC'];  
						    $pGender = $row['Gender'];  
						    $pAge = $row['Age'];  
						    $pLocation = $row['City'];  
						    $pPhoneNumber = $row['phone'];
						    
						}
					}

					

				$docDecision=mysqli_real_escape_string($conn,$_POST['docRec']);
				$docDecisionDecoded="";
				$colorCode="";
				switch ($docDecision) {
					case 'hospitalize':
						$docDecisionDecoded = "hospitalize immediately";
						$colorCode = "1";
						break;
					
					case 'selfqrn':
						$docDecisionDecoded = "self-quarantine";
						$colorCode = "2";
						break;

					case 'shouldcont':
						$docDecisionDecoded = "continue monitoring";
						$colorCode = "3";
						break;

					default:
						$docDecisionDecoded = "continue monitoring";
						$colorCode = "3";
						break;
				}

				//$email=mysqli_real_escape_string($conn,$_POST['email']);
				/*$email = 'nimesh.ekanayaka7@gmail.com';*/
				$email = $mohEmail;
				include 'mail/mail.php';
				
				$sql = "INSERT INTO diagnose(DID, MID, Comment, status) VALUES ('$did', '$mid', '$docDecision', '$colorCode')";
				$_SESSION["MID"] = "";
				$_SESSION["RID"] = "";
				$_SESSION["SID"] = "";
				$_SESSION["TID"] = "";
				if(mysqli_query($conn,$sql)){
					$delete = "DELETE FROM priority_queue WHERE RID='$rid'";
					if(mysqli_query($conn,$delete)){
				    	header('location: contact.php');
					}else{
						echo("Error description: " . $conn -> error);
						header('location: contact.php');
					}
				}else {
					echo("Error description: " . $conn -> error);
					header('location: contact.php');
				}

			}

			if(isset($_POST['btnNextPat'])){
				$docDecision=mysqli_real_escape_string($conn,$_POST['docRec']);
				$colorCode="";

				switch ($docDecision) {
					case 'hospitalize':
						$colorCode = "1";
						break;
					
					case 'selfqrn':
						$colorCode = "2";
						break;

					case 'shouldcont':
						$colorCode = "3";
						break;

					default:
						$colorCode = "3";
						break;
				}

				$sql = "INSERT INTO diagnose(DID, MID, Comment, status) VALUES ('$did', '$mid', '$docDecision', '$colorCode')";
				$_SESSION["MID"] = "";
				$_SESSION["RID"] = "";
				$_SESSION["SID"] = "";
				$_SESSION["TID"] = "";
				if(mysqli_query($conn,$sql)){
					$delete = "DELETE FROM priority_queue WHERE RID='$rid'";
					if(mysqli_query($conn,$delete)){
				    	header('location: contact.php');
					}else{
						echo("Error description: " . $conn -> error);
						header('location: contact.php');
					}
				}else {
					echo("Error description: " . $conn -> error);
					header('location: contact.php');
				}
	
			}

			if(isset($_POST['btnFinish'])){
				$docDecision=mysqli_real_escape_string($conn,$_POST['docRec']);
				$colorCode="";

				switch ($docDecision) {
					case 'hospitalize':
						$colorCode = "1";
						break;
					
					case 'selfqrn':
						$colorCode = "2";
						break;

					case 'shouldcont':
						$colorCode = "3";
						break;

					default:
						$colorCode = "3";
						break;
				}

				$sql = "INSERT INTO diagnose(DID, MID, Comment, status) VALUES ('$did', '$mid', '$docDecision', '$colorCode')";
				$_SESSION["MID"] = "";
				$_SESSION["RID"] = "";
				$_SESSION["SID"] = "";
				$_SESSION["TID"] = "";
				if(mysqli_query($conn,$sql)){
					$delete = "DELETE FROM priority_queue WHERE RID='$rid'";
					if(mysqli_query($conn,$delete)){
						echo $rid;
				    	header('location: index.php');
					}else{
						echo("Error description: " . $conn -> error);
						header('location: contact.php');
					}
				}else {
					echo("Error description: " . $conn -> error);
					header('location: contact.php');
				}
	
			}


		?>