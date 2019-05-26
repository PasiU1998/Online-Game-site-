<!doctype html>
<%@page import="oop.ogs.service.ItemService"%>
<%@page import="oop.ogs.service.Interface_ItemService"%>
<%@page import="oop.ogs.model.Item"%>
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
<link rel="stylesheet" href="css/sectionsHeader&footer.css">
<link rel="stylesheet" href="css/single_Item.css">


<title>FlashPlay.com - Game Magazin Template</title>
</head>

<body>
	<%
		HttpSession session1 = request.getSession();
		String userName = (String) session1.getAttribute("Username");
	%>


	<%
		Interface_ItemService service = new ItemService();
		int itemid = Integer.valueOf(request.getParameter("itemID"));
		Item single_item = service.getItemBy_id(itemid);
	%>

	<!-- Page top section -->
	<section class="page-top-section set-bg">

		<!-- header-->


		<header class="header-section ">
			<div class="header-warp  fixed-top p-3">

				<!-- Navibar -->

				<nav class="navbar navbar-expand-lg navbar navbar-dark w-100 p-3">
					<a class="navbar-brand h2" href="Index.jsp">FlashPlay.com</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active"><a class="nav-link ml-5 h4"
								href="#">Login<span class="sr-only">(current)</span></a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle ml-5 h4" href="#"
								id="navbarDropdown" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> Download Games </a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="">Action</a> <a
										class="dropdown-item" href="#">Adventure</a> <a
										class="dropdown-item" href="#">Racing</a> <a
										class="dropdown-item" href="#">Sport</a>
									<div class="dropdown-divider"></div>
								</div></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle ml-5 h4" href="#"
								id="navbarDropdown" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> Play Online </a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="#">Online</a>

									<div class="dropdown-divider"></div>

								</div></li>

							<li class="nav-item"><a
								class="nav-link  ml-5 h4 octicon person material-icons"
								href="feedback.jsp">Feedback </a></li>
							<li class="nav-item"><a
								class="nav-link  ml-5 h4 octicon person material-icons" href="#"><%=userName%></a></li>
						</ul>
						<form class="form-inline my-2 my-lg-0">
							<input class="form-control mr-sm-2" type="search"
								placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success my-2 my-sm-0"
								type="submit">Search</button>
						</form>
					</div>

				</nav>

			</div>
		</header>


		<div class="page-info">
			<h2>Games</h2>
			<div class="site-breadcrumb">
				<a href="">Home</a>/ <span><%=single_item.getItem_name()%></span>
			</div>
		</div>
	</section>
	<!-- Page top end-->


	<!-- Body--->



	<div class="card1">
		<img src="Images/item1.jpg" alt="Avatar" style="width: 100%">
		<div class="container2">
			<h4>
				<b> <%=single_item.getItem_name()%></b>
			</h4>
			<br>

			<p class="font-weight-bold" style="color: #A93226">Discription</p>
			<div class="card1-discription">

				<p>
					=
					<%=single_item.getItem_full_discription()%></p>



			</div>

			<p class="font-weight-bold  " style="color: #2ECC71" value="Price ">
				<b class="font-weight-bold" style="color: #A93226; font-size: 15px">
					Price : </b>
				<%=single_item.getItem_price()%></p>

			<p class="font-weight-bold  " style="color: #2ECC71" value="Price ">
				<b class="font-weight-bold" style="color: #A93226; font-size: 15px">
					Rate : </b>
				<%=single_item.getItem_rate()%>/ 10
			</p>


			<p class="font-weight-bold  " style="color: #2ECC71" value="Price ">
				<b class="font-weight-bold" style="color: #A93226; font-size: 15px">
					Graphic Rate : </b>
				<%=single_item.getItem_graphic_rate()%>/ 10
			</p>
			<p class="font-weight-bold  " style="color: #2ECC71" value="Price ">
				<b class="font-weight-bold" style="color: #A93226; font-size: 15px">
					Levels :</b>
				<%=single_item.getItem_levels()%>
			</p>


			<p class="font-weight-bold  " style="color: #2ECC71" value="Price ">
				<b class="font-weight-bold" style="color: #A93226; font-size: 15px">
					Features : </b>
				<%=single_item.getItem_featchers()%>
			</p>

			<p class="font-weight-bold  " style="color: #2ECC71" value="Price ">
				<b class="font-weight-bold" style="color: #A93226; font-size: 15px">
					Play Modes : </b>
				<%=single_item.getItem_play_mode()%>
			</p>


			<p class="font-weight-bold  " style="color: #2ECC71" value="Price ">
				<b class="font-weight-bold" style="color: #A93226; font-size: 15px">
					Last update : </b>
				<%=single_item.getItem_update_time()%>
			</p>


		</div>

		<button type="button" class="btn btn-primary w-25 p-3"
			style="margin: 0px 280px">Download</button>

	</div>

	<!--  End Body -->

	<!-- End Body-->



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
