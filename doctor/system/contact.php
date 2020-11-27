<!DOCTYPE HTML>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-6H7FV028QC"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-6H7FV028QC');
</script>
<html>
<?php 
	include 'logincheck.php';
	require_once 'dbConn.php'; 

        $did = $_SESSION["DID"];
        $apiKey = "46665872";
		echo "
        <script type='text/javascript'>var apiKey = '$apiKey';</script>";

	if($_SESSION["MID"] != ""){
		$MID = $_SESSION["MID"];
		$recordId = $_SESSION["RID"];
		$sessionId = $_SESSION["SID"];
        $token = $_SESSION["TID"];
        echo "
		<script type='text/javascript'>var sessionId = '$sessionId';</script>
		<script type='text/javascript'>var token = '$token';</script>";
	}else{
		$MID = "";
		$sessionId = "";
        $token = "";
        $recordId="";
        $moId = "";
		$mohEmail = "";
		$mohName = "";
		$email1990 = "";
	}
	
	
	$pID="";

	if($_SESSION["MID"] == ""){
		$result = $conn->query("SELECT RID, priority, status, sessionId, docToken FROM priority_queue WHERE status='1' ORDER BY priority ASC, RID ASC");
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
			    $recordId = $row['RID'];
			    $pID = $row['priority'];
			    $sessionId = $row['sessionId'];
			    $token = $row['docToken'];

			    echo "
				<script type='text/javascript'>var sessionId = '$sessionId';</script>
				<script type='text/javascript'>var token = '$token';</script>";
			}

			

		}else{
			header('location: emptyqueue.php');
		}

		

		$update = "UPDATE priority_queue SET status='2' WHERE RID='$recordId'";
		mysqli_query($conn,$update);
		

		$result = $conn->query("SELECT MID FROM record WHERE RID = '$recordId'");
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
			    $MID = $row['MID'];
			   
			}
		}
	}

	//echo $recordId, " ", $MID;

	$_SESSION["MID"] = $MID;
	$_SESSION["SID"] = $sessionId;
	$_SESSION["TID"] = $token;
	$_SESSION["RID"] = $recordId;

	

	//Saved Color Code
	$colorCode = "noColor";
	$result = $conn->query("SELECT Comment, status FROM diagnose WHERE MID='$MID'");
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
				//Patient Details
		    $comment = $row['Comment']; 
		    $colorCode = $row['status'];
		   
		}
	}
	


	//get last known location for emailing
	$result = $conn->query("SELECT * FROM location WHERE MID='$MID' AND MID IN ( SELECT MAX(LID) FROM location GROUP BY MID );");
	$latitude = "";
	$longitude = "";
	$lastKnown = "";

	$result = $conn->query("SELECT * FROM location WHERE lid IN ( SELECT MAX(lid) FROM location WHERE mid='$MID' GROUP BY mid );");
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
					//Patient Details
			    $latitude = $row['lat']; 
			    $longitude = $row['lan'];  
			    $lastKnown = $row['timestamp']; 
			}
			$_SESSION["LATITUDE"] = $latitude;	
			$_SESSION["LONGITUDE"] = $longitude;	
			$_SESSION["LASTKNOWN"] = $lastKnown;	
		}else{
			$_SESSION["LATITUDE"] = "Unknown";	
			$_SESSION["LONGITUDE"] = "Unknown";		
			$_SESSION["LASTKNOWN"] = "Unknown";	
		}


	$result = $conn->query("SELECT Name, NIC, Gender, Age, City, phone, MOID FROM member WHERE MID='$MID'");
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
				//Patient Details
		    $pName = $row['Name']; 
		    $pNic = $row['NIC'];  
		    $pGender = $row['Gender'];  
		    $pAge = $row['Age'];  
		    $pLocation = $row['City'];  
		    $pPhoneNumber = $row['phone'];
		    $moId = $row['MOID'];
		}


					$result = $conn->query("SELECT email, Colony FROM moh WHERE MOID='$moId'");
					if ($result->num_rows > 0) {
						while($row = $result->fetch_assoc()) {
								//Patient Details
						    $mohEmail = $row['email'];
						    $mohName = $row['Colony'];
						}
					}


	}else{
		$pName = "No Data"; 
		$pNic = "No Data"; 
		$pGender = "No Data"; 
		$pAge = "No Data"; 
		$pLocation = "No Data"; 
		$pPhoneNumber = "No Data"; 
	}

	$_SESSION["MOHNAME"] = $mohName;
	$_SESSION["MOHEMAIL"] = $mohEmail;

	$result = $conn->query("SELECT fever, cough, soreThroat, difficultBreathe, bodyArchPain, cold, lossOfSmell, diarrhoea, urineOutput, ArriveFromAbroad, dateifYes, contactSuspect, personAbroad, personHighrisk, personQuarantine, personWorkQuarantine, heartDiseace, bloodPressure, Diabetes, LungDisease, OtherDisease FROM record WHERE MID='$MID' AND RID='$recordId'");
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			//Symptoms Details
			$fever = $row['fever'];
			$cough = $row['cough'];
			$soreThroat = $row['soreThroat'];
			$diffInBreath = $row['difficultBreathe'];
			$bodyAches = $row['bodyArchPain'];
			$cold = $row['cold'];
			$lossOfSmell = $row['lossOfSmell'];
			$diarrhoea = $row['diarrhoea'];
			$urineOutput = $row['urineOutput'];

			//Close Contact Hostory
			$arrivedFromAbroad = $row['ArriveFromAbroad'];
			$arrivedDate = $row['dateifYes'];
				//in contact with person,
			$suspectedHave = $row['contactSuspect'];
			$cameFromAbroad = $row['personAbroad'];
			$liveInRiskArea = $row['personHighrisk'];
			$inQrnCamp = $row['personQuarantine'];
			$employeedIn = $row['personWorkQuarantine'];

			//Medical History
			$heartDis = $row['heartDiseace'];
			$highBP = $row['bloodPressure'];
			$diabetes = $row['Diabetes'];
			$lungDis = $row['LungDisease'];
			$otherDis = $row['OtherDisease'];
		}
	}else {
			$fever = "No Data";
			$cough = "No Data";
			$soreThroat = "No Data";
			$diffInBreath = "No Data";
			$bodyAches = "No Data";
			$cold = "No Data";
			$lossOfSmell = "No Data";
			$diarrhoea = "No Data";
			$urineOutput = "No Data";

			//Close Contact Hostory
			$arrivedFromAbroad = "No Data";
			$arrivedDate = "No Data";
				//in contact with person,
			$suspectedHave = "No Data";
			$cameFromAbroad = "No Data";
			$liveInRiskArea = "No Data";
			$inQrnCamp = "No Data";
			$employeedIn = "No Data";

			//Medical History
			$heartDis = "No Data";
			$highBP = "No Data";
			$diabetes = "No Data";
			$lungDis = "No Data";
			$otherDis = "No Data";
	}
	

	

?>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Curec | Doctors Dashboard</title>
	<link href="images/favicon.svg" rel="shortcut icon"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content="" />
	<meta property="og:image" content="" />
	<meta property="og:url" content="" />
	<meta property="og:site_name" content="" />
	<meta property="og:description" content="" />
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	
	<link href='css/app.css' rel='stylesheet' type='text/css'>
    <script src='https://static.opentok.com/v2/js/opentok.min.js'></script>
</head>

<body>

	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="top">
								<div class="row">
									<div class="col-md-6">
										<div id="colorlib-logo"><img src="images/logo.png" style="width: 30%;"></div>
										<div class="menu-1">
											<ul>
												<li class="active"><a href="index.php">Home</a></li>
												<li class="has-dropdown">
													<a href="doctors.php">Doctors</a>
												</li>
												<li class="has-dropdown">
													<a href="departments.php">Hospitals</a>
												</li>
												<li class="has-dropdown">
                                                    <button type="button" class="btn btn-primary btn">
                                                    <a href="logout.php">Log out</a></button>
                                                </li>
											</ul>
										</div>
									</div>
									<div class="col-md-3">
										<!-- <div class="num">
											<span class="icon"><i class="icon-phone"></i></span>
											<p><a href="#">111-222-333</a><br><a href="#">99-222-333</a></p>
										</div> -->
									</div>
									<div class="col-md-3">

									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- <div class="menu-wrap">
					<div class="container">
						<div class="row">
							<div class="col-xs-8">
								<div class="menu-1">
									<ul>
										<li class="active"><a href="index.php">Home</a></li>
										<li class="has-dropdown">
											<a href="doctors.php">Doctors</a>
										</li>
										<li class="has-dropdown">
											<a href="departments.php">Hospitals</a>
										</li>
										<li class="has-dropdown">
											<a href="./doctor/">Doctor Login</a>
										</li>
										<li class="has-dropdown">
											<a href="./admin/">Admin Login</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div> -->
			</div>
		</nav>

		<div id="colorlib-contact">

			<div class="container">
				<div class="row">
					<div class="col-md-14 animate-box" id="start">
						<h2>Patient Information.</h2>
						<hr>

					</div>

					<div class="border border-light p-3 mb-4">

					</div>

					<div class="col-md-12 animate-box">
						<div class="row">
							<div class="col-md-4">
								<form action="#">
									<div class="row form-group">
										<div class="col-md-12">
											<?php
												/*if($colorCode != "noColor"){*/
												if($pID != ""){
													switch ($pID) {
														case '4':
															echo "<button type='button' class='btn btn-danger btn-lg btn-block' style='width: 100%' disabled>Red
														Noticed Patient</button>";
															break;

														case '3':
															echo "<button type='button' class='btn btn-warning btn-lg btn-block'style='width: 100%' disabled>Orange
														Noticed Patient</button>";
															break;

														case '2':
															echo "<button type='button' class='btn btn-success btn-lg btn-block'style='width: 100%' disabled>Green
														Noticed Patient</button>";
															break;

														case '1':
															echo "<button type='button' class='btn btn-success btn-lg btn-block'style='width: 100%' disabled>Green
														Noticed Patient</button>";
															break;
														
														default:
															echo "<button type='button' class='btn btn-success btn-lg btn-block'style='width: 100%' disabled>Color Code Missing</button>";
															break;
													}
												}
											?>

											<br>

											<table class="table table-borderless">

												<tbody>
													<tr>
														<th scope="row">Name</th>
														<td><?php echo $pName; ?></td>
													</tr>
													<tr>
														<th scope="row">Age</th>
														<td><?php echo $pAge; ?></td>
													</tr>
													<tr>
														<th scope="row">Gender</th>
														<td><?php echo $pGender; ?></td>
													</tr>
													<tr>
														<th scope="row">Location</th>
														<td><?php echo $pLocation; ?></td>
													</tr>
													<tr>
														<th scope="row">NIC</th>
														<td><?php echo $pNic; ?></td>
													</tr>
													<tr>
														<th scope="row">Contact Number</th>
														<td><?php echo $pPhoneNumber; ?></td>
													</tr>
												</tbody>
											</table>
											<div class="text-center">
												<!-- <button type="button" class="btn btn-success btn-sm" style="width: 45%">Answer
													Call</button>
												<button type="button" class="btn btn-danger btn-sm" style="width: 45%">Hold Call</button> -->
											</div>
										</div>
									</div>
								</form>

								<br><br>
								<div>
								<h4> <b>Medical History</b> </h4>
								<table class="table table-borderless">

									<tbody>
										<tr>
											<td scope="row">Heart Diseases</td>
											<td class="text-success"><?php echo $heartDis; ?></td>
										</tr>
										<tr>
											<td scope="row">High Blood Pressure</td>
											<td class="text-success"><?php echo $highBP; ?></td>
										</tr>
										<tr>
											<td scope="row">Diabetes</td>
											<td class="text-success"><?php echo $diabetes; ?></td>
										</tr>
										<tr>
											<td scope="row">Lung Diseses</td>
											<td class="text-success"><?php echo $lungDis; ?></td>
										</tr>
										<tr>
											<th scope="row">Other Diseases</th>
											<td class="text-success"><?php echo $otherDis; ?></td>
										</tr>
									</tbody>
								</table>

							</div>


							</div>
							<div class="col-md-8">

								<!-- <div class="embed-responsive embed-responsive-16by9">
									<iframe class="embed-responsive-item"
										src="https://www.youtube.com/watch?v=s8TZvdiekAk"></iframe>
								</div> -->

								<div style="height: 800px">
									<div id='videos' >
								        <div id='subscriber'></div>
								        <div id='publisher'></div>
								    </div>
									<script type='text/javascript' src='js/app.js'></script>
								</div>

								<!-- <div id='videos' style="width: 100%">
							        <div id='subscriber'></div>
							        <div id='publisher'></div>
							    </div>
								<script type='text/javascript' src='js/app.js'></script> -->


							</div>
						</div>
						<hr>
					</div>

					<br><br>
					<hr>

					<div class="col-md-12 animate-box">
						<div class="row">
							<div class="col-md-3">
								<h4> <b>Symptoms</b> </h4>
								<table class="table table-borderless">

									<tbody>
										<tr>
											<td scope="row">Fever</td>
											<td class="text-success"><?php echo $fever; ?></td>
										</tr>
										<tr>
											<td scope="row">Cough</td>
											<td class="text-danger"><?php echo $cough; ?></td>
										</tr>
										<tr>
											<td scope="row">Sore throat</td>
											<td class="text-success"><?php echo $soreThroat; ?></td>
											<!-- if yes class should be changed to text-danger  -->
										</tr>
										<tr>
											<td scope="row">Difficulty in breathing</td>
											<td class="text-success"><?php echo $diffInBreath; ?></td>
											<!-- if yes class should be changed to text-danger  -->
										</tr>
										<tr>
											<td scope="row">Body Aches and Pain</td>
											<td class="text-success"><?php echo $bodyAches; ?></td>
											<!-- if yes class should be changed to text-danger  -->
										</tr>
										<tr>
											<td scope="row">Cold</td>
											<td class="text-success"><?php echo $cold; ?></td>
											<!-- if yes class should be changed to text-danger  -->
										</tr>
										<tr>
											<td scope="row">Loss of smell</td>
											<td class="text-success"><?php echo $lossOfSmell; ?></td>
											<!-- if yes class should be changed to text-danger  -->
										</tr>
										<tr>
											<td scope="row">Diarrhoea</td>
											<td class="text-success"><?php echo $diarrhoea; ?></td>
											<!-- if yes class should be changed to text-danger  -->
										</tr>
										<tr>
											<td scope="row">Urine Output</td>
											<td class="text-success"><?php echo $urineOutput; ?></td>
											<!-- if yes class should be changed to text-danger  -->
										</tr>
									</tbody>
								</table>

							</div>
							<div class="col-md-4">
								<h4><b>Close Contact History</b> </h4>
								<table class="table table-borderless">

									<tbody>
										<tr>
											<td scope="row">Arrived from Abroad</td>
											<td class="text-success"><?php echo $arrivedFromAbroad; ?></td>

										</tr>
										<tr>
											<td scope="row">Arrived Date</th>
											<td class="text-success"><?php echo $arrivedDate; ?></td>
										</tr>
										<tr>
											<th scope="row">Have you come in contact with, a Person</th>

										</tr>
										<tr>
											<td scope="row">Suspected to have Covid-19?</td>
											<td class="text-success"><?php echo $suspectedHave; ?></td>
										</tr>
										<tr>
											<td scope="row">Who came from abroad?</td>
											<td class="text-success"><?php echo $cameFromAbroad; ?></td>
										</tr>
										<tr>
											<td scope="row">Living in a high risk area?</td>
											<td class="text-success"><?php echo $liveInRiskArea; ?></td>
										</tr>
										<tr>
											<td scope="row">In a quarantine camp?</td>
											<td class="text-success"><?php echo $inQrnCamp; ?></td>
										</tr>
										<tr>
											<td scope="row">Employed in a quarantine camp, tourism industry, airport,
												harbour</td>
											<td class="text-success"><?php echo $employeedIn; ?></td>
										</tr>
									</tbody>
								</table>

							</div>

							<form method="POST" action="submit.php">
								<div class="row">
									<div class="col-md-2" reqired>
											<h4> <b>Patient's Contact Info</b> </h4>
											<input type="radio" id="cat1" onclick="myFunction(this)" name="docRec" value="cat1" required>
										  	<label for="cat1">Category 01</label><br>
										  	<input type="radio" id="cat2" onclick="myFunction(this)" name="docRec" value="cat2">
										  	<label for="cat2">Category 02</label><br>
										  	<input type="radio" id="cat3" onclick="myFunction(this)" name="docRec" value="cat3">
										  	<label for="cat3">Category 03</label><br>
										  	<input type="radio" id="cat4" onclick="myFunction(this)" name="docRec" value="cat4">
										  	<label for="cat4">Category 04</label><br>
										  	<input type="radio" id="cat5" onclick="myFunction(this)" name="docRec" value="cat5">
										  	<label for="cat5">Category 05</label>
										  	
										  	<p id="mohMessageDetails"></p>
									</div>
									<div class="col-md-2" reqired>
											<textarea name="docComment" rows="10" cols="29"></textarea>
									</div>
									
								</div>
								<div class="row">
											<button type="submit" id="btnNextPat" name="btnNextPat" class="btn btn-success btn-lg" style="width: 45%">Next Patient</button>
											<button type="submit" id="btnFinish" name="btnFinish" class="btn btn-primary btn-lg" style="width: 45%">Finish & Exit</button>

									
								</div>
							</form>
							<!-- <?php echo $moId, " ", $mohName, " ", $mohEmail; ?> -->
							<?php echo "
								<script type='text/javascript'>var mohName = '$mohName';</script>"
							?>
							<script>
								function myFunction(clickVal) {
								  var cat1 = clickVal.value;
								  var cat2 = clickVal.value;
								  var cat3 = clickVal.value;
								  var cat4 = clickVal.value;
								  var cat5 = clickVal.value;

								  if(cat1 == "cat1"){
								  	var msg = document.getElementById("mohMessageDetails"); 
								  	msg.innerHTML = "<br><font style='color:red;'>Mild symptoms, without contact or travel history.</font>";
								  }
								  if(cat2 == "cat2"){
								  	var msg = document.getElementById("mohMessageDetails"); 
								  	msg.innerHTML = "<br><font style='color:red;'>Severe symptoms other than shortness of breath or chest pain; no contact history.</font><br><br><font style='color:red;'>Emails: <b>1990</b></font>";
								  }
								  if(cat3 == "cat3"){
								  	var msg = document.getElementById("mohMessageDetails"); 
								  	msg.innerHTML = "<br><font style='color:red;'>Shortness of breath/ chest pain without contact history.</font><br><br><font style='color:red;'> Emails: <b>1990</b></font>";
								  }
								  if(cat3 == "cat4"){
								  	var msg = document.getElementById("mohMessageDetails"); 
								  	msg.innerHTML = "<br><font style='color:red;'>Travel/ contact history present, no symptoms.</font><br><br><font style='color:red;'> Emails: <b>" + mohName + " MOH Office</b></font>";
								  }
								  if(cat3 == "cat5"){
								  	var msg = document.getElementById("mohMessageDetails"); 
								  	msg.innerHTML = "<br><font style='color:red;'>Travel/ contact history present; symptoms present.</font><br><br><font style='color:red;'> Emails: <b>" + mohName + " MOH Office, 1990</b></font>";
								  }
								}
							</script>
											
						</div>
					</div>
				</div>
			</div>
		</div>


		<footer id="colorlib-footer" role="contentinfo">
			<div class="overlay"></div>

			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy;
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script> All rights reserved |
							Developed by <a href="https://www.kdu.ac.lk/" target="_blank">General Sir John
								Kotelawala Defence
								University</a>
					</p>
				</div>
			</div>
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Sticky Kit -->
	<script src="js/sticky-kit.min.js"></script>
	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="js/google_map.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

</body>

</html>