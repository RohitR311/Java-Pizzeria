<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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

<body>
	<!-- Creating Session -->



	<%
		try {
		User u1 = (User) session.getAttribute("user");

		String name = u1.getFirst();
		System.out.println("Gottttt User" + name);

	} catch (Exception e) {
		User u1 = new User(0, "Viewer", "visitor@gmail.com", "Viewer", "12346666");
		session.setAttribute("user", u1);
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
						<li class="nav-item active"><a class="nav-link"
							href="index.jsp">Home</a></li>
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
						<li class="nav-item"><a class="nav-link" href="cart.jsp"><i
								class="fas fa-shopping-cart" aria-hidden="true"></i><sub><span>0</span></sub></a></li>
						<!-- <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li> -->
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

	<!-- Start slides -->
	<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-center"><img src="images/slider1.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Welcome To <br> Pizzeria!
								</strong>
							</h1>
							<p class="m-b-40">
								See how your users experience your website in realtime or view <br>
								trends to see any changes in performance over time.
							</p>
							<p>
								<a class="btn btn-lg btn-circle btn-outline-new-white"
									href="/menu.jsp">Explore!</a>
							</p>
						</div>
					</div>
				</div></li>
			<li class="text-center"><img src="images/slider2.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Welcome To <br> Pizzeria!
								</strong>
							</h1>
							<p class="m-b-40">
								See how your users experience your website in realtime or view <br>
								trends to see any changes in performance over time.
							</p>
							<p>
								<a class="btn btn-lg btn-circle btn-outline-new-white"
									href="/menu.jsp">Explore!</a>
							</p>
						</div>
					</div>
				</div></li>
			<li class="text-center"><img src="images/slider3.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Welcome To <br> Pizzeria!
								</strong>
							</h1>
							<p class="m-b-40">
								See how your users experience your website in realtime or view <br>
								trends to see any changes in performance over time.
							</p>
							<p>
								<a class="btn btn-lg btn-circle btn-outline-new-white"
									href="/menu.jsp">Explore!</a>
							</p>
						</div>
					</div>
				</div></li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right"
				aria-hidden="true"></i></a> <a href="#" class="prev"><i
				class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
	<!-- End slides -->

	<!-- Start About -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12">
					<img src="images/about-image.jpg" alt="" class="img-fluid">
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>
							Welcome To <span>Pizzeria!</span>
						</h1>
						<h4>Little Story</h4>
						<p>We are one of the best provider of traditional pizza which
							is baked in smoke of maple and pine wood in red brick oven to
							bring out authentic taste.</p>
						<p>Our every pizza is made with fresh ingredients on the time
							of order with top-notch ingredients and lots of love.</p>
						<a class="btn btn-lg btn-circle btn-outline-new-white"
							href="/menu.jsp">Explore!</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End About -->

	<!-- Start QT -->
	<div class="qt-box qt-background">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ml-auto mr-auto text-left">
					<p class="lead ">" If you're not the one cooking, stay out of
						the way and compliment the chef. "</p>
					<span class="lead">Michael Strahan</span>
				</div>
			</div>
		</div>
	</div>
	<!-- End QT -->

	<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Special Menu</h2>
						<p>Here are some of the Delicacies we Serve!</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="special-menu text-center">
						<div class="button-group filter-button-group">
							<button class="active" data-filter="*">All</button>
							<button data-filter=".drinks">Drinks</button>
							<button data-filter=".lunch">Pizzas</button>
							<button data-filter=".dinner">Specials</button>
						</div>
					</div>
				</div>
			</div>

			<div class="row special-list">
				<div class="col-lg-4 col-md-6 special-grid drinks">
					<div class="gallery-single fix">
						<img src="images/emeraldsalutare.jpg" class="img-fluid"
							alt="Image">
						<div class="why-text">
							<h4>Emerald Salutare</h4>
							<p>A green smooth drink with health from veges.</p>
							<h5 class="mt-4">
								&#x20B9;200 <a style="cursor: pointer;"><i
									class="add-cart add-cart1 fas fa-shopping-bag"
									style="color: white; float: right;"> </i></a>
							</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid drinks">
					<div class="gallery-single fix">
						<img src="images/orangepulp.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Orange Pulp</h4>
							<p>Freshly squeezed orange juice from best oranges.</p>
							<h5 class="mt-4">
								&#x20B9;150 <a style="cursor: pointer;"><i
									class="add-cart add-cart2 fas fa-shopping-bag mr-1"
									style="color: white; float: right;"> </i></a>
							</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid drinks">
					<div class="gallery-single fix">
						<img src="images/redvalley.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Red Valley</h4>
							<p>A cocktail juice made from all seasonal fruits available
								with watermellon or roses in abundunt.</p>
							<h5 class="mt-2">
								&#x20B9;300 <a style="cursor: pointer;"><i
									class="add-cart add-cart3 fas fa-shopping-bag mr-1"
									style="color: white; float: right;"></i></a>
							</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid lunch">
					<div class="gallery-single fix">
						<img src="images/periperipizza.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Peri Peri Pizza</h4>
							<p>Spicy,Tangy and filled with cheese.</p>
							<h5 class="mt-4">
								&#x20B9;450 <a style="cursor: pointer;"><i
									class="add-cart add-cart4 fas fa-shopping-bag mr-1"
									style="color: white; float: right;"></i></a>
							</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid lunch">
					<div class="gallery-single fix">
						<img src="images/mexicanherbpizza.jpg" class="img-fluid"
							alt="Image">
						<div class="why-text">
							<h4>Mexican Herb Pizza</h4>
							<p>Filled with fresh continental herbs.</p>
							<h5 class="mt-4">
								&#x20B9;700 <a style="cursor: pointer;"><i
									class="add-cart add-cart5 fas fa-shopping-bag mr-1"
									style="color: white; float: right;"></i></a>
							</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid lunch">
					<div class="gallery-single fix">
						<img src="images/italiancheddarpizza.jpg" class="img-fluid"
							alt="Image">
						<div class="why-text">
							<h4>Italian Cheddar Pizza</h4>
							<p>Made with spicy Mouth-watering Italian sauces.</p>
							<h5 class="mt-4">
								&#x20B9;1000 <a style="cursor: pointer;"><i
									class="add-cart add-cart6 fas fa-shopping-bag mr-1"
									style="color: white; float: right;"> </i></a>
							</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid dinner">
					<div class="gallery-single fix">
						<img src="images/chipotlewinepizza.jpg" class="img-fluid"
							alt="Image">
						<div class="why-text">
							<h4>Chipotle Wine Pizza</h4>
							<p>Continental chipotle sauce and aged red wine.</p>
							<h5 class="mt-4">
								&#x20B9;800 <a style="cursor: pointer;"><i
									class="add-cart add-cart7 fas fa-shopping-bag mr-1"
									style="color: white; float: right;"></i></a>
							</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid dinner">
					<div class="gallery-single fix">
						<img src="images/cheeseburstpizza.jpg" class="img-fluid"
							alt="Image">
						<div class="why-text">
							<h4>Cheese Burst Pizza</h4>
							<p>Crust with oodles of yummy liquid cheese filled inside.</p>
							<h5 class="mt-4">
								&#x20B9;600 <a style="cursor: pointer;"><i
									class="add-cart add-cart8 fas fa-shopping-bag mr-1"
									style="color: white; float: right;"></i></a>
							</h5>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid dinner">
					<div class="gallery-single fix">
						<img src="images/bbqsalamipizza.jpg" class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>BBQ Salami Pizza</h4>
							<p>Charcoal smoked with peri peri salami</p>
							<h5 class="mt-4">
								&#x20B9;900 <a style="cursor: pointer;"><i
									class="add-cart add-cart9 fas fa-shopping-bag mr-1"
									style="color: white; float: right;"></i></a>
							</h5>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- End Menu -->

	<!-- Start Gallery -->
	<div class="gallery-box">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Gallery</h2>
						<p>Here are some of the pictures of our delicious cuisines.</p>
					</div>
				</div>
			</div>
			<div class="tz-gallery">
				<div class="row">
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img1.jpg"> <img
							class="img-fluid" src="images/gallery-img1.jpg"
							alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img2.jpg"> <img
							class="img-fluid" src="images/gallery-img2.jpg"
							alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img3.jpg"> <img
							class="img-fluid" src="images/gallery-img3.jpg"
							alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img4.jpg"> <img
							class="img-fluid" src="images/gallery-img4.jpg"
							alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img5.jpg"> <img
							class="img-fluid" src="images/gallery-img5.jpg"
							alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img6.jpg"> <img
							class="img-fluid" src="images/gallery-img6.jpg"
							alt="Gallery Images">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Gallery -->

	<!-- Start Customer Reviews -->
	<div class="customer-reviews-box">
		<div class="container">
			<div class="row" style="margin-top: -90px; margin-bottom: -50px">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Our Professionals!</h2>
						<p>If you want to become a great chef, you have to work with
							great chefs.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8 mr-auto ml-auto text-center">
					<div id="reviews" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner mt-4">
							<div class="carousel-item text-center active mt-4">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle"
										src="images/pro-1.jpg" alt="">
								</div>
								<h5 class="mt-4 mb-0">
									<strong class="text-warning text-uppercase">Ranveer
										Brar</strong>
								</h5>
								<h6 class="text-dark m-0">Exp - 4.5 years</h6>
								<!-- <p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui.
									Mauris magna metus, dapibus nec turpis vel, semper malesuada
									ante. Idac bibendum scelerisque non non purus. Suspendisse
									varius nibh non aliquet.</p> -->
							</div>
							<div class="carousel-item text-center mt-4">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle"
										src="images/pro-2.jpg" alt="">
								</div>
								<h5 class="mt-4 mb-0">
									<strong class="text-warning text-uppercase">Steve
										Fonsi</strong>
								</h5>
								<h6 class="text-dark m-0">Exp - 2.8 years</h6>
								<!-- <p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui.
									Mauris magna metus, dapibus nec turpis vel, semper malesuada
									ante. Idac bibendum scelerisque non non purus. Suspendisse
									varius nibh non aliquet.</p> -->
							</div>
							<div class="carousel-item text-center mt-4">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle"
										src="images/pro-3.jpg" alt="">
								</div>
								<h5 class="mt-4 mb-0">
									<strong class="text-warning text-uppercase">Daniel
										vebar</strong>
								</h5>
								<h6 class="text-dark m-0">Exp - 1.5 years</h6>
								<!-- <p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui.
									Mauris magna metus, dapibus nec turpis vel, semper malesuada
									ante. Idac bibendum scelerisque non non purus. Suspendisse
									varius nibh non aliquet.</p> -->
							</div>
						</div>
						<a class="carousel-control-prev" href="#reviews" role="button"
							data-slide="prev"> <i class="fa fa-angle-left"
							aria-hidden="true"></i> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#reviews" role="button"
							data-slide="next"> <i class="fa fa-angle-right"
							aria-hidden="true"></i> <span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Customer Reviews -->

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
	<script src="js/form-validator.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>