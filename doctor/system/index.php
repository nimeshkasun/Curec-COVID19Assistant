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
?>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Curec | COVID-19 Personal Assistant</title>
	<link href="images/favicon.svg" rel="shortcut icon" />
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

	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	  
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

		<br>

		<?php
			require_once 'dbConn.php';
			$count = "";
			$query = "SELECT RID FROM priority_queue WHERE status='1'"; 
		    $result = mysqli_query($conn, $query); 
		    $count = mysqli_num_rows($result);
		?>

		<div id="colorlib-services">
			<div class="container">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="services-flex">

								<div class="one-fifth animate-box">
									<div class="services">
										<center><span class="icon">
												<i class="large material-icons">video_call</i>
											</span></center>
										<div class="desc">
											<center>
												<h3><a href="contact.php#start"> <b>Video Calls</b> </a></h3>
												<h5> Patients in Queue: </h5>
												
													<div class="dropdown" style="width: 20%; height: 20%;">
													    <span class="label label-pill label-danger count" style="border-radius:10px; color:white;"></span>
													    <ul class="dropdown-menu"></ul>
													</div>
												
											</center>
										</div>
									</div>
								</div>
								<div class="one-fifth animate-box">
									<div class="services">
										<center><span class="icon">
												<i class="large material-icons">person_pin</i>
											</span></center>
										<div class="desc">
											<center>
												<h3><a href="patientlist.php"> <b>Patient List</b> </a></h3>
												<h5 id="">Diagnosed Patient List</h5>
											</center>

										</div>
									</div>
								</div>



							</div>
							<div class="services-no-flex">

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br><br><br><br><br><br>

		<div id="colorlib-services">
			<div id="colorlib-counter" class="colorlib-counters">
				<div class="overlay"></div>
				<div class="container">
					<div class="row">
					<div class="col-md-10 col-md-offset-1 col-md-push-1 counter-wrap">
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

											<span id="active" class="colorlib-counter">...</span>
										</p>
										<span class="colorlib-counter-label">Active Cases</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6 animate-box">
									<div class="desc">
										<p class="wrap">
											<span class="icon"><i class="flaticon-healthy-1"></i></span>

											<span class="colorlib-counter" id="newcases">...</span>
										</p>
										<span class="colorlib-counter-label">New Cases</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6 animate-box">
									<div class="desc">
										<p class="wrap">
											<span class="icon"><i class="flaticon-ambulance"></i></span>

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

<script>
$(document).ready(function(){
 
 function load_unseen_notification(view = '')
 {
  $.ajax({
   url:"noti/fetch.php",
   method:"POST",
   data:{view:view},
   dataType:"json",
   success:function(data)
   {
    $('.dropdown-menu').html(data.notification);
    if(data.unseen_notification > 0)
    {
     $('.count').html(data.unseen_notification);
     var a = new Audio()
     a.src =   "noti/not3.wav"
     a.play()
    }else{
    	$('.count').html('0');
    }
   }
  });
 }
 
 load_unseen_notification();
 
 
 setInterval(function(){ 
  load_unseen_notification();; 
 }, 3000);
 
});
</script>

</body>

</html>