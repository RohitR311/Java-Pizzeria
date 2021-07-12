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
						<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="menu.jsp">Menu</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="about.jsp">About</a></li>
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

	<!-- Start header -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>About Us</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End header -->

	<!-- Start About -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<img src="images/about-image.jpg" alt="" class="img-fluid">
				</div>
				<div class="col-lg-6 col-md-6 text-center">
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
				<div class="col-md-12">
					<div class="inner-pt">
						<p>In 1918 Giovanni Tacconelli came to UK from Italy. After a
							few years working as a laborer, he decided to do what he had done
							in his native Italy. "Bake Bread". The best and only way, he
							said, was to bake it in a brick oven. So along with a few of his
							friends he built his 20' by 20' brick oven. The bread business
							went well until the outbreak of World War II when all of his sons
							who had helped him in the business were drafted into military
							service. Having no one to help and since the bread business was
							so very time consuming, he stopped baking bread.</p>
						<p>In 1946, still having the brick oven, Giovanni pondered
							over what to do with it since everyone had come home from the War
							and had different careers in mind. He decided to make tomato
							pies, something that his mother had taught him to do many years
							before. They were and still are tomato pies to our family
							consisting of fresh made dough, little cheese and a lot of sauce
							cooked in our brick oven to give it a crisp light taste.</p>
						<p>In 1992, we realized that our oven, which had given us 72
							years of service, needed a face-lift. We never thought that was
							supposed to be a 3 month "project" would turn out to be a 7 month
							"nightmare". Thanks to your loyal patronage The Tacconelli
							family, now in its 5th generation, is still baking pizza the
							Giovanni Tacconelli way.This way "PIZZERIA" was established in
							the year 1998.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End About -->

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
							<button data-filter=".lunch">Lunch</button>
							<button data-filter=".dinner">Dinner</button>
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
									class="add-cart fas fa-shopping-bag"
									style="color: white; float: right;"> </sub>
								</i></a>
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
									class="add-cart fas fa-shopping-bag mr-1"
									style="color: white; float: right;"></i></a>
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
									class="add-cart fas fa-shopping-bag mr-1"
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
									class="add-cart fas fa-shopping-bag mr-1"
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
									class="add-cart fas fa-shopping-bag mr-1"
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
									class="add-cart fas fa-shopping-bag mr-1"
									style="color: white; float: right;"></i></a>
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
									class="add-cart fas fa-shopping-bag mr-1"
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
									class="add-cart fas fa-shopping-bag mr-1"
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
									class="add-cart fas fa-shopping-bag mr-1"
									style="color: white; float: right;"></i></a>
							</h5>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- End Menu -->

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

	<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</
		a> <!-- ALL JS FILES --> <script src="js/main.js"></script> <script
			src="js/jquery-3.2.1.min.js"></script> <script src="js/popper.min.js"></script>
		<script src="js/bootstrap.min.js"></script> <!-- ALL PLUGINS --> <script
			src="js/jquery.superslides.min.js"></script> <script
			src="js/images-loded.min.js"></script> <script
			src="js/isotope.min.js"></script> <script src="js/baguetteBox.min.js"></script>
		<script src="js/form-validator.min.js"></script> <script
			src="js/contact-form-script.js"></script> <script src="js/custom.js"></script>
</body>
</html>