<!-- Post doctor's data to Database -->
		<?php
		require_once 'dbConn.php';
			if(isset($_POST['btnSendMoh'])){
				$newColorCode=mysqli_real_escape_string($conn,$_POST['colCode']);
				$docDecision=mysqli_real_escape_string($conn,$_POST['docRec']);
				$sql = "INSERT INTO tblData(newColorCode, docDecision) VALUES ('$newColorCode', '$docDecision')";
						
				if(mysqli_query($conn,$sql)){
					header('location: contact.php');
				}
	
			}
		?>