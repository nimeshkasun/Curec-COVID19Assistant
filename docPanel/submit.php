<!-- Post doctor's data to Database -->
		<?php
		session_start();
		$did = $_SESSION["DID"];
		$mid = $_SESSION["MID"];

		require_once 'dbConn.php';
			/*if(isset($_POST['btnSendMoh'])){
				$newColorCode=mysqli_real_escape_string($conn,$_POST['colCode']);
				$sql = "INSERT INTO tblData(newColorCode, docDecision) VALUES ('$newColorCode', '$docDecision')";
						
				if(mysqli_query($conn,$sql)){
					header('location: contact.php');
				}
	
			}*/

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
				
				if(mysqli_query($conn,$sql)){
					header('location: contact.php');
				}else {
					header('location: contact.php');
				}
	
			}
		?>