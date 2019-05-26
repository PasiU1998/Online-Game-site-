<!doctype html>

<%@page import="com.mysql.cj.Session"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ page contentType="text/html;charset=UTF-8" session="false"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="oop.ogs.model.*" %>
<%@page import="oop.ogs.service.*" %>
<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i,900,900i"
	rel="stylesheet">


<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/slicknav.min.css" />
<link rel="stylesheet" href="css/owl.carousel.min.css" />
<link rel="stylesheet" href="css/magnific-popup.css" />
<link rel="stylesheet" href="css/animate.css" />




<!-- Main CSS-->
<link rel="stylesheet" href="css/style.css">
<script src="js/home.js"></script>
<title>FlashPlay.com</title>
</head>

<body>
<% 
HttpSession session = request.getSession();
String userName = (String) session.getAttribute("Username") ;

Item i1 = new Item();
%>


	<!-- header-->


	<header class="header-section ">
		<div class="header-warp  fixed-top p-3">

			<!-- Navibar -->

			<nav class="navbar navbar-expand-lg navbar navbar-dark w-100 p-3">
				<a class="navbar-brand h2" href="#">FlashPlay.com</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link ml-5 h4"
							href="login.jsp">Login<span class="sr-only">(current)</span></a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle ml-5 h4" href="#"
							id="navbarDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> Download Games </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="ListGame.jsp?catoId=1">Action</a> <a
									class="dropdown-item" href="ListGame.jsp?catoId=2">Adventure</a> <a
									class="dropdown-item" href="ListGame.jsp?catoId=3">Racing</a> <a
									class="dropdown-item" href="ListGame.jsp?catoId=4">Sport</a>
								<div class="dropdown-divider"></div>

							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle ml-5 h4" href="#"
							id="navbarDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> Play Online </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="ListGame.jsp?catoId=5">Online</a>
								<div class="dropdown-divider"></div>

							</div></li>
							
								<li class="nav-item"><a
							class="nav-link  ml-5 h4 octicon person material-icons" href="feedback.jsp">Feedback
						</a></li>
						<li class="nav-item"><a
							class="nav-link  ml-5 h4 octicon person material-icons" href="User_profile.jsp"><%=userName %>
						</a></li>
					
					</ul>
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					</form>
				</div>

			</nav>

		</div>
	</header>



	<!-- End Navibar -->

	<!-- end header-->



	<!-- Slide Show -->



	<div id="carouselExampleIndicators" class="carousel slide  "
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>

		<div class="carousel-inner ">
			<div class="carousel-item active">
				<img class="d-block w-100  " src="Images/pp.jpg" alt="First slide">
				<div class="carousel-caption d-none d-md-block   ">
					<h1 class="display-1 font-weight-bold  ">Play Lates Games</h1>
					<p>pppppppppp</p>
				</div>
			</div>

			<div class="carousel-item">
				<img class="d-block w-100" src="Images/ppppp.jpg" alt="Second slide">
				<div class="carousel-caption d-none d-md-block ">
					<h1>Dowanload Lates Games</h1>
					<p>...</p>
				</div>
			</div>

			<div class="carousel-item">
				<img class="d-block w-100" src="Images/YnkvzE8.jpg"
					alt="Third slide">
				<div class="carousel-caption d-none d-md-block">
					<h1>Win Prizes</h1>
					<p>...</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>


	<!-- ENd Slide show -->


	<!-- Intro section -->
	<section class="intro-section text-box">
		<h1>Latest News !</h1>
		<br> <br>
		<div class="container ">
			<div class="row">
				<div class="col-md-4">
					<div class="intro-text-box text-box text-white">
						<h3>The best online game is out now!</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Quis ipsum suspendisse ultrices gravida....</p>
						<a href="#" class="read-more">Read More </a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="intro-text-box text-box text-white">
						<h3>Top 5 best games in november</h3>
						<p>Ipsum dolor sit amet, consectetur adipiscing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis
							ipsum labore suspendisse ultrices gravida....</p>
						<a href="#" class="read-more">Read More </a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="intro-text-box text-box text-white">
						<h3>Get this game at a promo price</h3>
						<p>Sit amet, consectetur adipiscing elit, sed do eiusmod
							tempor incididunt ut labore et dolore magna aliqua. Quis ipsum
							suspendisse ultrices gravida ncididunt ut labore ....</p>
						<a href="#" class="read-more">Read More </a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Intro section end -->

	<!-- Blog Secrion -->
	<section class="blog-section spad">
		<div class="container">
			<div class="row">
				<div class="col-xl-9 col-lg-8 col-md-7">
					<div class="section-title text-light font-italic">
						<h2>CATOGORIES</h2>
						<br>
					</div>
					<ul class="blog-filter">

						<li><a href="#">Action</a></li>
						<li><a href="#">Adventure</a></li>
						<li><a href="#">Racing</a></li>
						<li><a href="#">Sport</a></li>
						<li><a href="#">Online</a></li>
					</ul>



					<div class="section-title text-light font-italic ">
						<h2>HOT ITEMS</h2>
					</div>
					<!-- Blog item -->
					<div class="blog-item">
						<div class="blog-thumb">
							<img src="Images/pasindu111.jpg" alt="">
						</div>
						<div class="blog-text text-box text-white">
							<h3>The best online game is out now!</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eius-mod tempor incididunt ut labore et dolore magna
								aliqua. Quis ipsum suspendisse ultrices gravida. Lorem ipsum
								dolor sit amet, consecte-tur adipiscing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua.....</p>
							<a href="#" class="play-now">Play_Now <img
								src="Images/10.jpg" alt="#"
								style="max-height: 20px; max-width: 20px;"></a>
						</div>
					</div>


					<div class="blog-item">
						<div class="blog-thumb">
							<img src="Images/pasindu111.jpg" alt="">
						</div>
						<div class="blog-text text-box text-white">
							<h3>The best online game is out now!</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eius-mod tempor incididunt ut labore et dolore magna
								aliqua. Quis ipsum suspendisse ultrices gravida. Lorem ipsum
								dolor sit amet, consecte-tur adipiscing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua.....</p>
							<a href="#" class="play-now">Play_Now <img
								src="Images/10.jpg" alt="#"
								style="max-height: 20px; max-width: 20px;"></a>
						</div>
					</div>



					<div class="blog-item">
						<div class="blog-thumb">
							<img src="Images/pasindu111.jpg" alt="">
						</div>
						<div class="blog-text text-box text-white">
							<h3>The best online game is out now!</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eius-mod tempor incididunt ut labore et dolore magna
								aliqua. Quis ipsum suspendisse ultrices gravida. Lorem ipsum
								dolor sit amet, consecte-tur adipiscing elit, sed do eiusmod
								tempor incididunt ut labore et dolore magna aliqua.....</p>
							<a href="#" class="play-now">Play_Now <img
								src="Images/10.jpg" alt="#"
								style="max-height: 20px; max-width: 20px;"></a>
						</div>
					</div>

					<br>

				</div>
			</div>
		</div>
	</section>





	<!-- End Blog-->

	<br>

	<h1>Most Popular Download Games</h1>
	<br>

	<!-- Item Cards -->

			


	<div class="card-deck ">
		<div class="card-columns ">
			<%
					Interface_ItemService itemService = new ItemService();
					
					Item Item_view = new Item();
					ArrayList<Item> items = itemService.getitems(1);
					for (Item item : items) {
				%>
		
		
			<div class="card card bg-light mb-3  " style="width: 15rem;">
				<img class="card-img-top" src=<%=item.getItem_image() %>
					alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title"><%=item.getItem_name()%></h5>
					<p class="card-text"><%=item.getItem_discrption() %></p>
					<p class="card-text text-success">Rate : <%=item.getItem_rate() %>/10</p>
					<a href="#" class="btn btn-primary">View</a>

				</div>
				<div class="card-footer">
					<small class="text-muted"><%=item.getItem_update_time() %></small>
				</div>
			</div>

<%} %>

		</div>
	</div>



	<br>
	<h1>Most Popular Online Game</h1>
	<br>



	<div class="card-deck ">
		<div class="card-columns ">
		
		
		<%
					Interface_ItemService itemService1 = new ItemService();
					
					Item Item_view1 = new Item();
					ArrayList<Item> itemonline = itemService.getitems(2);
					for (Item item : itemonline) {
				%>
		
			<div class="card card bg-light mb-3  " style="width: 15rem;">
				<img class="card-img-top" src=<%=item.getItem_image() %>
					alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title"><%=item.getItem_name() %></h5>
					<p class="card-text"><%=item.getItem_discrption() %>.</p>
					<a href="#" class="btn btn-primary">Play</a>

				</div>
				<div class="card-footer">
					<small class="text-muted"><%=item.getItem_update_time() %></small>
				</div>
			</div>

<%} %>

		</div>
	</div>




	<!-- End Item Card -->






	<!-- Footer-->


	<footer class="page-footer font-small bg-dark pt-4 text-white">

		<!-- Footer Links -->
		<div class="container-fluid text-center text-md-left">

			<!-- Grid row -->
			<div class="row">

				<!-- Grid column -->
				<div class="col-md-6 mt-md-0 mt-3">

					<!-- Content -->
					<h5 class="text-uppercase ">FlashPlay.com</h5>
					<p>The best gaming web site , If you can download and play
						games. Our perpose is supply orginal games and orginal online
						games</p>

				</div>
				<!-- Grid column -->

				<hr class="clearfix w-100 d-md-none pb-3">

				<!-- Grid column -->
				<div class="col-md-3 mb-md-0 mb-3">

					<!-- Links -->
					<h5 class="text-uppercase">Social</h5>

					<ul class="list-unstyled">
						<li><a href="#!">istragram</a></li>
						<li><a href="#!">FlashPlay@gmail.com</a></li>
					</ul>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-3 mb-md-0 mb-3">

					<!-- Links -->
					<h5 class="text-uppercase">Location</h5>

					<ul class="list-unstyled">
						<li><a href="#!">kuruwita , Rathnapura </a></li> >
					</ul>

				</div>
				<!-- Grid column -->

			</div>
			<!-- Grid row -->

		</div>
		<!-- Footer Links -->

		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">
			© 2018 Copyright: <a
				href="https://mdbootstrap.com/education/bootstrap/">
				MDBootstrap.com</a>
		</div>
		<!-- Copyright -->

	</footer>


	<!-- End Footer-->





	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>
