<!-- Post doctor's data to Database -->
		<?php
		session_start();
		$did = $_SESSION["DID"];
		$mid = $_SESSION["MID"];
		$rid = $_SESSION["RID"];
		$latitude =	$_SESSION["LATITUDE"];	
		$longitude = $_SESSION["LONGITUDE"];	
		$lastKnown = $_SESSION["LASTKNOWN"];	
		$mohName = $_SESSION["MOHNAME"];
		$mohEmail = $_SESSION["MOHEMAIL"];
		$email1990 = "nimesh.ekanayaka7@gmail.com";

		require_once 'dbConn.php';
			if(isset($_POST['btnNextPat'])){

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
				$docComment=mysqli_real_escape_string($conn,$_POST['docComment']);
				$docDecisionDecoded="";
				$toOffice="";
				switch ($docDecision) {
					case 'cat1':
						$docDecisionDecoded = "Mild symptoms, without contact or travel history";
						/*$email = $mohEmail;
						include 'mail/mail.php';*/
						break;
					
					case 'cat2':
						$docDecisionDecoded = "Severe symptoms other than shortness of breath or chest pain; no contact history";
						$toOffice = "1990";
						$email = $email1990;
						include 'mail/mail.php';
						break;

					case 'cat3':
						$docDecisionDecoded = "Shortness of breath/ chest pain without contact history";
						$toOffice = "1990";
						$email = $email1990;
						include 'mail/mail.php';
						break;

					case 'cat4':
						$docDecisionDecoded = "Travel/ contact history present, no symptoms";
						$toOffice = "MOH Office - {$mohName}";
						$email = $mohEmail;
						include 'mail/mail.php';
						break;

					case 'cat5':
						$docDecisionDecoded = "Travel/ contact history present; symptoms present";
						$toOffice = "MOH Office - {$mohName}, 1990";
						$email = $mohEmail;
						$email2 = $email1990;
						include 'mail/mail.php';
						break;

					default:
						$docDecisionDecoded = "continue monitoring";
						
						//include 'mail/mail.php';
						break;
				}

				//$email=mysqli_real_escape_string($conn,$_POST['email']);
				/*$email = 'nimesh.ekanayaka7@gmail.com';*/
				
				
				$sql = "INSERT INTO diagnose(DID, RID, Comment, status) VALUES ('$did', '$rid', '$docComment', '$docDecisionDecoded')";
				/*$_SESSION["MID"] = "";
				$_SESSION["RID"] = "";
				$_SESSION["SID"] = "";
				$_SESSION["TID"] = "";*/
				unset($_SESSION["MID"]);
				unset($_SESSION["RID"]);
				unset($_SESSION["SID"]);
				unset($_SESSION["TID"]);
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
				$docComment=mysqli_real_escape_string($conn,$_POST['docComment']);
				$docDecisionDecoded="";
				$toOffice="";
				switch ($docDecision) {
					case 'cat1':
						$docDecisionDecoded = "Mild symptoms, without contact or travel history";
						/*$email = $mohEmail;
						include 'mail/mail.php';*/
						break;
					
					case 'cat2':
						$docDecisionDecoded = "Severe symptoms other than shortness of breath or chest pain; no contact history";
						$toOffice = "1990";
						$email = $email1990;
						include 'mail/mail.php';
						break;

					case 'cat3':
						$docDecisionDecoded = "Shortness of breath/ chest pain without contact history";
						$toOffice = "1990";
						$email = $email1990;
						include 'mail/mail.php';
						break;

					case 'cat4':
						$docDecisionDecoded = "Travel/ contact history present, no symptoms";
						$toOffice = "MOH Office - {$mohName}";
						$email = $mohEmail;
						include 'mail/mail.php';
						break;

					case 'cat5':
						$docDecisionDecoded = "Travel/ contact history present; symptoms present";
						$toOffice = "MOH Office - {$mohName}, 1990";
						$email = $mohEmail;
						$email2 = $email1990;
						include 'mail/mail.php';
						break;

					default:
						$docDecisionDecoded = "continue monitoring";
						
						//include 'mail/mail.php';
						break;
				}

				//$email=mysqli_real_escape_string($conn,$_POST['email']);
				/*$email = 'nimesh.ekanayaka7@gmail.com';*/
				
				
				$sql = "INSERT INTO diagnose(DID, RID, Comment, status) VALUES ('$did', '$rid', '$docComment', '$docDecisionDecoded')";
				/*$_SESSION["MID"] = "";
				$_SESSION["RID"] = "";
				$_SESSION["SID"] = "";
				$_SESSION["TID"] = "";*/
				unset($_SESSION["MID"]);
				unset($_SESSION["RID"]);
				unset($_SESSION["SID"]);
				unset($_SESSION["TID"]);
				if(mysqli_query($conn,$sql)){
					$delete = "DELETE FROM priority_queue WHERE RID='$rid'";
					if(mysqli_query($conn,$delete)){
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