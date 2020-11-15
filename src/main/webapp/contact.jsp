<!DOCTYPE html>
<html lang="en">
<!-- Basic -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>Pizzeria - Hunger Pangs Satiated!</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/Logo.jpg" type="image/x-icon">
<link rel="apple-touch-icon" href="images/Logo.jpg">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="index.jsp"> <img
					src="images/Logo.jpg" alt=""
					style="width: 70px; object-fit: contain; border-radius: 50%" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbars-rs-food" aria-controls="navbars-rs-food"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="menu.jsp">Menu</a></li>
						<li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
						<li class="nav-item"><a class="nav-link" href="register.jsp">Register
								Now</a></li>
						<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="contact.jsp">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Contact</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->

	<!-- Start Contact Map -->

	<div class="mapouter" style="margin-bottom: -500px">
		<div class="gmap_canvas">
			<iframe width="100%" height="480" id="gmap_canvas"
				src="https://maps.google.com/maps?q=vikhroli&t=&z=13&ie=UTF8&iwloc=&output=embed"></iframe>
			<a href="https://www.embedgooglemap.net"></a>
		</div>
	</div>

	<!-- End Contact Map -->

	<!-- Start Contact -->
	<div class="map-full"></div>
	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Contact</h2>
						<p>For further inquiry feel free to reach out anytime!</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form action="SendEmail" id="contactForm"
						onSubmit="window.location.href='mailto:rohit.rajan31101@gmail.com?subject=Subject&body=Message'">
						<div class="row">
							<div class="col-md-6 offset-md-3">
								<div class="form-group">
									<input type="text" class="form-control" id="name" name="name"
										placeholder="Name" required
										data-error="Please enter your name">
									<div class="help-block with-errors"></div>
								</div>
							</div>
							<div class="col-md-6 offset-md-3">
								<div class="form-group">
									<input type="email" placeholder="Email" id="email"
										class="form-control" name="email" required
										data-error="Please enter your email">
									<div class="help-block with-errors"></div>
								</div>
							</div>
							<div class="col-md-6 offset-md-3">
								<div class="form-group">
									<input type="text" placeholder="Subject" id="subject"
										class="form-control" name="subject" required
										data-error="Please enter subject of your message"
										onChange="onInputChange()">
									<div class="help-block with-errors"></div>
								</div>
							</div>
							<!-- <div class="col-md-6 offset-md-3">
								<div class="form-group">
									<select class="custom-select d-block form-control" id="guest"
										required data-error="Please Select Person">
										<option disabled selected>Please Select Person*</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
									<div class="help-block with-errors"></div>
								</div>
							</div> -->
							<div class="col-md-6 offset-md-3">
								<div class="form-group">
									<textarea class="form-control" id="message"
										placeholder="Message" rows="4" data-error="Write your message"
										required onChange="onInputChange()"></textarea>
									<div class="help-block with-errors"></div>
								</div>
								<div class="submit-button text-center">
									<button class="btn btn-common" id="submit" type="submit">Send
										Message</button>
									<div id="msgSubmit" class="h3 text-center hidden"></div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact -->

	<!-- Start Contact info -->
	<div class="contact-imfo-box">
		<div class="container">
			<div class="row" style="margin-left: 30px">
				<div class="col-md-4">
					<i class="fa fa-volume-control-phone"></i>
					<div class="overflow-hidden">
						<h4>Phone</h4>
						<p class="lead">+91 83697 62099</p>
					</div>
				</div>
				<div class="col-md-4">
					<i class="fa fa-envelope"></i>
					<div class="overflow-hidden">
						<h4>Email</h4>
						<p class="lead">nileshsamota@ternaengg.ac.in</p>
					</div>
				</div>
				<div class="col-md-4">
					<i class="fa fa-map-marker"></i>
					<div class="overflow-hidden">
						<h4>Location</h4>
						<p class="lead">Vikhroli,Mumbai-83</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->

	<!-- Start Footer -->
	<footer class="footer-area bg-f">
		<div class="container">
			<div class="row d-flex justify-content-around">
				<div class="col-lg-3 col-md-6">
					<h3>About Us</h3>
					<p>Integer cursus scelerisque ipsum id efficitur. Donec a dui
						fringilla, gravida lorem ac, semper magna. Aenean rhoncus ac
						lectus a interdum. Vivamus semper posuere dui, at ornare turpis
						ultrices sit amet. Nulla cursus lorem ut nisi porta, ac eleifend
						arcu ultrices.</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Opening hours</h3>
					<p>
						<span class="text-color">Monday: </span>Closed
					</p>
					<p>
						<span class="text-color">Tue-Wed :</span> 9:Am - 10PM
					</p>
					<p>
						<span class="text-color">Thu-Fri :</span> 9:Am - 10PM
					</p>
					<p>
						<span class="text-color">Sat-Sun :</span> 5:PM - 10PM
					</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Contact information</h3>
					<p class="lead">Ipsum Street, Lorem Tower, MO, Columbia, 508000</p>
					<p class="lead">
						<a href="#">+01 2000 800 9999</a>
					</p>
					<p>
						<a href="#"> info@admin.com</a>
					</p>
				</div>
				<!-- <div class="col-lg-3 col-md-6">
					<h3>Subscribe</h3>
					<div class="subscribe_form">
						<form class="subscribe_form">
							<input name="EMAIL" id="subs-email" class="form_input"
								placeholder="Email Address..." type="email">
							<button type="submit" class="submit">SUBSCRIBE</button>
							<div class="clearfix"></div>
						</form>
					</div>
					<ul class="list-inline f-social">
						<li class="list-inline-item"><a href="#"><i
								class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i
								class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i
								class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i
								class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i
								class="fa fa-instagram" aria-hidden="true"></i></a></li>
					</ul>
				</div> -->
			</div>
		</div>

		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<p class="company-name">All Rights Reserved. &copy; 2020
							Pizzeria. Designed with &hearts;.</p>
					</div>
				</div>
			</div>
		</div>

	</footer>
	<!-- End Footer -->

	<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

	<!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- ALL PLUGINS -->

	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/jquery.mapify.js"></script>
	<script src="js/form-validator.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/custom.js"></script>

	<script>
		function onInputChange() {
			/* var nameValue = document.getElementById("name").value;
			var emailValue = document.getElementById("email").value; */
			var subjectValue = document.getElementById("subject").value;
			var messageValue = document.getElementById("message").value;

		}
		
		function docWrite(var) {
		    return document.write(var);
		}
		
		
		function sendMessage() {
			document.addElementById("submit").setAttribute('onclick', 'window.location.href = rohit.rajan31101@gmail.com"'+ subjectValue + messageValue + '"; return false;');
		}
	</script>

	<!-- <script>
		$('.map-full').mapify({
			points: [
				{
					lat: 40.7143528,
					lng: -74.0059731,
					marker: true,
					title: 'Marker title',
					infoWindow: 'Yamifood Restaurant'
				}
			]
		});	
	</script> -->
</body>
</html>