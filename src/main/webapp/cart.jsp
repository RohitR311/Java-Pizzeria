<%@ page import="com.entities.User"%>

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
#submit {
	width: 100%;
	padding: 7px 0;
	font-size: 1.1rem;
	text-transform: uppercase;
	letter-spacing: 0.5;
	border-radius: 5px;
	border: 1px solid #d0a772;
	transition: 0.6s;
	width: 150px;
	background-color: #d0a772;
	color: #fff;
	position: relative;
	left: 35%
}

#submit:hover {
	cursor: pointer;
	background-color: #d0a772;
	color: #fff;
	font-size: 1.1rem;
	transform: scale(1.1);
}
</style>

<body style="overflow-x: hidden;">




	<%
		User u1 = (User) session.getAttribute("user");

	String name = u1.getFirst();
	System.out.println("Gottttt User" + name);

	if (!u1.isLogin()) {
		response.sendRedirect("login.jsp");
	}
	%>
	


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
						<li class="nav-item"><a class="nav-link" href="loginchecker">
								<%
									HttpSession s1 = request.getSession();
								System.out.println("Checking");
								User u3 = (User) s1.getAttribute("user");
								System.out.println("Got User" + u3.getFirst());
								String s = u3.isLogin() ? "LogOut" : "Login";
								System.out.println(u3.isLogin());
								%> <%=s%></a></li>
						<li class="nav-item active"><a class="nav-link"
							href="cart.jsp"><i class="fas fa-shopping-cart"
								aria-hidden="true"></i><sub><span>0</span></sub></a></li>
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
					<h1>Cart</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->

	<div class="products-container mx-auto"
		style="margin-top: 600px; max-width: 750px; justify-content: space-around; min-height: 500px;">
		<div class="product-header"
			style="width: 100%; max-width: 750px; display: flex; justify-content: flex-start; border-bottom: 4px solid #cfa671; margin: 0 auto;">
			<h2 class="product-title" style="width: 38%;">PRODUCT</h2>
			<h2 class="price"
				style="width: 22%; display: flex; align-items: center;">PRICE</h2>
			<h2 class="quantity"
				style="width: 30%; padding-left: 30px; /* border-bottom: 1px solid #cfa671; */ display: flex; align-items: center;">QUANTITY</h2>
			<h2 class="total"
				style="width: 10%; padding-left: 20px; /* border-bottom: 1px solid #cfa671; */ display: flex; align-items: center;">TOTAL</h2>
		</div>
		<div class="products"
			style="width: 100%; justify-content: space-around; /* border-bottom: 1px solid lightgrey; */ padding: 10px 0; align-items: center;"></div>
		<div class="totalContainer" style="width: 100%;"></div>
		<div class="subscribe_form mx-auto my-4" style="width: 40%;">

			<button type="button" class="submit" data-toggle="modal"
				data-target="#exampleModal">Proceed to Checkout!</button>
			<div class="clearfix"></div>

		</div>
	</div>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Enter your
						Details:</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form method="post" action="index.jsp"
						onSubmit="localStorage.clear()">
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Contact
								Number:</label> <input type="number" class="form-control"
								id="recipient-name" name="phone">
						</div>
						<div class="form-group">
							<label for="message-text" class="col-form-label">Address:</label>
							<textarea class="form-control" id="message-text" name="message"></textarea>
						</div>
						<input type="submit" value="Submit" id="submit" name="save">
					</form>
				</div>
			</div>
		</div>
	</div>

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
					<p>PIZZERIA is a Web-Application for quick customer service.
						Created by Rohit Rajan,Vedant Tandel,Nilesh Samota,Siddhant
						Padwankar as part of a Java mini-project in the year 2020 for
						Semester-3.</p>
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

	<!-- <script type="text/javascript">
		function showCart() {
			alert("Hello");
		}
	</script> -->

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