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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
	crossorigin="anonymous" />

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<style>
#firstname, #lastname, #emailid, #password {
	width: 550px;
	height: 45px;
	padding: 0 10px;
	font-size: 1.05rem;
	border: 1px solid grey;
}

#submit {
	margin-top: 10px;
	width: 150px;
	padding: 7px 0;
	font-size: 1.1rem;
	text-transform: uppercase;
	letter-spacing: 0.5;
	border-radius: 5px;
	background: transparent;
	color: #d0a772;
	border: 1px solid #d0a772;
	transition: 0.6s;
	width: 150px;
}

#submit:hover {
	cursor: pointer;
	background-color: #d0a772;
	color: #fff;
	font-size: 1.1rem;
	transform: scale(1.1);
}

@media only screen and (max-width: 600px) {
	#firstname, #lastname, #emailid, #password {
		width: 450px;
	}
}

@media only screen and (max-width: 500px) {
	#firstname, #lastname, #emailid, #password {
		width: 400px;
	}
}
</style>

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
						<li class="nav-item active"><a class="nav-link"
							href="login.jsp">Login</a></li>
						<li class="nav-item"><a class="nav-link" href="cart.jsp"><i
								class="fas fa-shopping-cart" aria-hidden="true"></i><sub><span>0</span></sub></a></li>
						<!-- <li class="nav-item"><a class="nav-link"
							href="contact.jsp">Contact</a></li> -->
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb"
		style="margin-bottom: -500px">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Login</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->

	<!-- Start Contact -->

	<div class="heading-title text-center" style="margin-top: 600px;">
		<h2>Login</h2>
		<p>Login now to purchase our food products.</p>
	</div>

	<form action="getcustomer" method="post"
		style="margin: 0 0 100px 0; min-height: 200px; display: flex; flex-direction: column; align-items: center; justify-content: space-around">

		<!-- 		<input type="text" name="firstname" id="firstname" -->
		<!-- 			placeholder="First Name" required> <input type="text" -->
		<!-- 			name="lastname" id="lastname" placeholder="Last Name" required> -->

		<input type="email" name="emailid" id="emailid" placeholder="Email"
			required> <input type="password" name="password"
			id="password" placeholder="Password" required> <input
			type="submit" value="Login" id="submit">
	</form>

	<!-- 	<form action="getcustomer" method="post" -->
	<!-- 		style="margin: 600px 0 150px 0; display: flex; flex-direction: column; align-items: center; justify-content: space-around"> -->
	<!-- 		Enter First Name :  <input type="text" name= "firstname"> -->
	<!-- 		Enter Email id : <input type="email" name="emailid"> Enter -->
	<!-- 		Password : <input type="password" name="password"> <input -->
	<!-- 			type="submit" value="Login"> -->
	<!-- 	</form> -->

	<!-- <div class="map-full"></div>
	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Login</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form id="contactForm">
						<div class="column">
							
							<div class="col-md-6 offset-md-3">
								<div class="form-group">
									<input type="email" placeholder="Email" id="email"
										class="form-control" name="name" required
										data-error="Please enter your email">
									<div class="help-block with-errors"></div>
								</div>
							</div>
							<div class="col-md-6 offset-md-3">
								<div class="form-group">
									<input type="password" class="form-control" id="password" name="password"
										placeholder="Password" required
										data-error="Please enter your password">
									<div class="help-block with-errors"></div>
								</div>
							</div>
							
							<div class="col-md-12">
								
								<div class="submit-button text-center">
									<button class="btn btn-common" id="submit" type="submit">Login</button>
									<div id="msgSubmit" class="h3 text-center hidden"></div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div> -->
	<!-- End Contact -->

	<!-- Start Contact info -->
	<div class="contact-imfo-box">
		<div class="container">
			<div class="row">
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
					<p>PIZZERIA is a Web-Application for quick customer service. Created by
						Rohit Rajan,Vedant Tandel,Nilesh Samota,Siddhant Padwankar as part of a Java
						mini-project in the year 2020 for Semester-3.</p>
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
					<p class="lead">Vikhroli,Mumbai-400083</p>
					<p class="lead">
						<a href="#">+91 83697 62099</a>
					</p>
					<p>
						<a href="#">vedanttandel@ternaengg.ac.in</a>
					</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Reach Out!</h3>
					<div class="subscribe_form">
						<form class="subscribe_form">
							<!-- <input name="EMAIL" id="subs-email" class="form_input"
								placeholder="Email Address..." type="email"> -->
							<button type="submit" class="submit"
								onClick="window.location.href='mailto:nileshsamota@ternaengg.ac.in?subject=Subject&body=Message'">Contact
								Us!</button>
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
				</div>
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
	<script src="js/main.js"></script>
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


</body>
</html>