<!DOCTYPE HTML>
<html>

<?php 
	require_once 'dbConn.php'; 

	$MID = "2";

	$result = $conn->query("SELECT Name, NIC, Gender, Age, City, phone FROM member WHERE MID='$MID'");
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

	/*$result = $conn->query("SELECT personHighrisk, fever, ArriveFromAbroad, soreThroat, Age, City, phone FROM member WHERE MID='$MID'");
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
	}*/
	
	

	//Received Color Code
	$colorCode = "green";


	//Symptoms Details
	$positiveFamMember = "Yes";
	$haveFever = "No";
	$stayedAbroad = "No";
	$soreThroat = "Yes";

	//Medical History Details
	$fever = "No";
	$cough = "Yes";
	$jointPain = "Yes";
	$diabetes = "No";
?>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Healthcare Template</title>
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
										<div id="colorlib-logo"><a href="index.html">Covid-<span>19</span></a></div>
									</div>
									<div class="col-md-3">
										<div class="num">
											<span class="icon"><i class="icon-phone"></i></span>
											<p><a href="#">111-222-333</a><br><a href="#">99-222-333</a></p>
										</div>
									</div>
									<div class="col-md-3">
										<div class="loc">
											<span class="icon"><i class="icon-location"></i></span>
											<p><a href="#">88 Route West 21th Street, Suite 721 New York NY 10016</a>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="menu-wrap">
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

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</nav>

		<div id="colorlib-contact">

			<div class="container">
				<div class="row">
					<div class="col-md-14 animate-box">
						<h2>Patient calls and Information.</h2>
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
												switch ($colorCode) {
													case 'red':
														echo "<button type='button' class='btn btn-danger btn-lg btn-block' style='width: 100%' disabled>Red
													Noticed Patient</button>";
														break;

													case 'orange':
														echo "<button type='button' class='btn btn-warning btn-lg btn-block'style='width: 100%' disabled>Orange
													Noticed Patient</button>";
														break;

													case 'green':
														echo "<button type='button' class='btn btn-success btn-lg btn-block'style='width: 100%' disabled>Green
													Noticed Patient</button>";
														break;
													
													default:
														echo "<button type='button' class='btn btn-success btn-lg btn-block'style='width: 100%' disabled>Color Code Missing</button>";
														break;
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
												<button type="button" class="btn btn-success btn-sm" style="width: 45%">Answer
													Call</button>
												<button type="button" class="btn btn-danger btn-sm" style="width: 45%">Hold Call</button>
											</div>
										</div>
									</div>
								</form>
							</div>
							<div class="col-md-8">

								<div class="embed-responsive embed-responsive-16by9">
									<iframe class="embed-responsive-item"
										src="https://www.youtube.com/watch?v=s8TZvdiekAk"></iframe>
								</div>


							</div>
						</div>
						<hr>
					</div>

					<br><br>
					<hr>

					<div class="col-md-12 animate-box">
						<div class="row">
							<div class="col-md-3">
								<h4><b>Symptoms</b> </h4>
								<table class="table table-borderless">

									<tbody>
										<tr>
											<th scope="row">Positive family member</th>
											<td><?php echo $positiveFamMember; ?></td>
										</tr>
										<tr>
											<th scope="row">Have Fever</th>
											<td><?php echo $haveFever; ?></td>
										</tr>
										<tr>
											<th scope="row">Stayed Abroad</th>
											<td><?php echo $stayedAbroad; ?></td>
										</tr>
										<tr>
											<th scope="row">Sore Throat</th>
											<td><?php echo $soreThroat; ?></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="col-md-3">
								<h4> <b>Medical History</b> </h4>
								<table class="table table-borderless">

									<tbody>
										<tr>
											<th scope="row">Fever</th>
											<td><?php echo $fever; ?></td>
										</tr>
										<tr>
											<th scope="row">Cough</th>
											<td><?php echo $cough; ?></td>
										</tr>
										<tr>
											<th scope="row">Joint Pain</th>
											<td><?php echo $jointPain; ?></td>
										</tr>
										<tr>
											<th scope="row">Diabetes</th>
											<td><?php echo $diabetes; ?></td>
										</tr>
									</tbody>
								</table>
							</div>
							<form method="POST" action="submit.php">
								<div class="col-md-3">
									<h4> <b>Color Code</b> </h4>
									<!-- Material unchecked -->
									<input type="radio" id="male" name="colCode" value="red">
								  	<label for="male">Red</label><br>
								  	<input type="radio" id="female" name="colCode" value="orange">
								  	<label for="female">Orange</label><br>
								  	<input type="radio" id="other" name="colCode" value="green">
								  	<label for="other">Green</label>
								</div>
								<div class="col-md-3">
									<h4> <b>Patient's Contact Info</b> </h4>
									<input type="radio" id="hospitalize" name="docRec" value="hospitalize">
								  	<label for="hospitalize">Hospitalize</label><br>
								  	<input type="radio" id="selfqrn" name="docRec" value="selfqrn">
								  	<label for="selfqrn">Self Quarantine</label><br>
								  	<input type="radio" id="shouldcont" name="docRec" value="shouldcont">
								  	<label for="shouldcont">Should Continue</label>

									<br><br><br><br>
									<button type="submit" name="btnSendMoh" class="btn btn-danger btn-lg" style="width: 100%">Send to MOH</button>
									<button type="button" class="btn btn-primary btn-lg" style="width: 100%">Next Patient</button>
								</div>
							</form>
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
							<script>document.write(new Date().getFullYear());</script> All rights reserved | This
							template is made with <i class="icon-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">KDU</a>
							<small class="block">Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a>
								,
								<a href="https://www.pexels.com/" target="_blank">Pexels</a></small>
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