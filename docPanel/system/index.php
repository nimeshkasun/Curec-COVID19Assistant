<!DOCTYPE HTML>
<html>
<?php
	include 'logincheck.php';
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

	<!-- google material icons -->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	<script src="js/healthAPI.js"></script>

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
										<div id="colorlib-logo"><a href="index.php">Covid-<span>19</span></a></div>
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
										<li class="has-dropdown">
											<a href="logout.php">Log Out</a>
										</li>

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</nav>



		<div id="colorlib-services">
			<div class="container">

			</div>
		</div>

		<div id="colorlib-counter" class="colorlib-counters">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-7 col-md-offset-2 col-md-push-1 counter-wrap">
						<div class="row">
							<div class="col-md-3 col-sm-4 animate-box">
								<div class="desc">
									<p class="wrap">
										<span class="icon"><i class="flaticon-healthy"></i></span>
										<span id="confirmed" class="colorlib-counter">...</span>
									</p>
									<span class="colorlib-counter-label">Total Confirmed Cases</span>
								</div>
							</div>
							<div class="col-md-3 col-sm-4 animate-box">
								<div class="desc">
									<p class="wrap">
										<span class="icon"><i class="flaticon-hospital"></i></span>
										<!-- <span class="colorlib-counter js-counter" data-from="0" data-to="378"
											data-speed="5000" data-refresh-interval="50"></span> -->
										<span id="active" class="colorlib-counter">...</span>
									</p>
									<span class="colorlib-counter-label">Active Cases</span>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 animate-box">
								<div class="desc">
									<p class="wrap">
										<span class="icon"><i class="flaticon-healthy-1"></i></span>
										<!-- <span class="colorlib-counter js-counter" data-from="0" data-to="400"
											data-speed="5000" data-refresh-interval="50"></span> -->
										<span class="colorlib-counter" id="newcases">...</span>
									</p>
									<span class="colorlib-counter-label">New Cases</span>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 animate-box">
								<div class="desc">
									<p class="wrap">
										<span class="icon"><i class="flaticon-ambulance"></i></span>
										<!-- <span class="colorlib-counter js-counter" data-from="0" data-to="30"
											data-speed="5000" data-refresh-interval="50"></span> -->
										<span class="colorlib-counter" id="deaths">...</span>
									</p>
									<span class="colorlib-counter-label">Deaths</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="colorlib-services">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="services-flex">
							<div class="one-fifth animate-box">
								<div class="services">
									<span class="icon">
										<i class="large material-icons">video_call</i>
									</span>
									<div class="desc">
										<h3><a href="contact.php"> <b>Video Calls</b> </a></h3>
									</div>
								</div>
							</div>
							<div class="one-fifth animate-box">
								<div class="services">
									<span class="icon">
										<i class="large material-icons">person_pin</i>
									</span>
									<div class="desc">
										<h3><a href="patientlist.php"> <b>Patient List</b> </a></h3>
									</div>
								</div>
							</div>
							<div class="one-fifth animate-box">
								<div class="services">
									<span class="icon">
										<i class="large material-icons">local_pharmacy</i>
									</span>
									<div class="desc">
										<h3><a href="#"> <b>Pharmacy refunded from hospital</b> </a></h3>
									</div>
								</div>
							</div>
							<div class="one-fifth animate-box">
								<div class="services">
									<span class="icon">
										<i class="large material-icons">video_call</i>
									</span>
									<div class="desc">
										<h3><a href="#"> <b>Home medical appointments</b> </a></h3>
									</div>
								</div>
							</div>

						</div>
						<div class="services-no-flex">

						</div>
					</div>
				</div>
			</div>


			<br><br>

			<footer id="colorlib-footer" role="contentinfo">
				<div class="overlay"></div>

				<div class="row copyright">
					<div class="col-md-12 text-center">
						<p>
							<small class="block">&copy;
								Copyright &copy;
								<script>document.write(new Date().getFullYear());</script> All rights reserved | This
								template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="#"
									target="_blank">KDU</a>
								<small class="block">Demo Images: <a href="http://unsplash.co/"
										target="_blank">Unsplash</a>
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
		<!-- Main -->
		<script src="js/main.js"></script>

</body>

</html>