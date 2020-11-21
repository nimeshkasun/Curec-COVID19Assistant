<?php 
	require 'dbconnect.php';


	if(isset($_POST['searchtxt'])) {
		$type = $_POST['type'];
		$sql = "";
		if($type == "Nic"){
			$sql = "SELECT  `Name`, `NIC`, `Gender`, `Age`, `City`, `phone`, `lat`, `lan`, `timestamp` FROM `location`,`member` WHERE location.MID = member.MID AND NIC = \"" . $_POST['searchtxt'] . "\";";
		} elseif($type == "Contact"){
			$sql = "SELECT  `Name`, `NIC`, `Gender`, `Age`, `City`, `phone`, `lat`, `lan`, `timestamp` FROM `location`,`member` WHERE location.MID = member.MID AND phone=" . $_POST['searchtxt'] . ";";
		}elseif($type == "ID"){
			$sql = "SELECT  `Name`, `NIC`, `Gender`, `Age`, `City`, `phone`, `lat`, `lan`, `timestamp` FROM `location`,`member` WHERE location.MID = member.MID AND member.MID=" . $_POST['searchtxt'] . ";";
		}
		$db = new DbConnect;
		$conn = $db->connect();
		$stmt = $conn->prepare($sql);
		$stmt->execute();
		$temp = $stmt->fetchAll(PDO::FETCH_ASSOC);
		echo json_encode($temp);
	}


?>