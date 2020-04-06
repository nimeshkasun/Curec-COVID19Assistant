<!-- Post doctor's data to Database -->
		<?php
		session_start();
		$did = $_SESSION["DID"];
		$mid = $_SESSION["MID"];
		$rid = $_SESSION["RID"];

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
				$_SESSION["MID"] = "";
				$_SESSION["RID"] = "";
				if(mysqli_query($conn,$sql)){
					$delete = "DELETE FROM priority_queue WHERE RID='$rid'";
					if(mysqli_query($conn,$delete)){
				    	header('location: contact.php');
					}
					echo("Error description: " . $conn -> error);
					header('location: contact.php');
				}else {
					echo("Error description: " . $conn -> error);
					header('location: contact.php');
				}
	
			}
		?>