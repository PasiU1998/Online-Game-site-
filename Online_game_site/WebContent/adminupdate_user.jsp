<!doctype html>

<%@page import="oop.ogs.model.Coustomer"%>
<%@page import="oop.ogs.service.Interface_ItemService"%>
<%@page import="oop.ogs.service.ItemService"%>

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

<script src="js/table.js"></script>

<title>FlashPlay.com - Game Magazin Template</title>
</head>

<style>
.pt-3-half {
	padding-top: 1.4rem;
}
</style>

<body>


	<!-- Page top section -->
	<section class="page-top-section set-bg">

		<!-- header-->


		<header class="header-section ">
			<div class="header-warp  fixed-top p-3"></div>
		</header>



		<div class="page-info">
			<h2>Admin</h2>
			<div class="site-breadcrumb">
				<a href="admin.jsp">Admin</a> / <span>Admin User Update</span>
			</div>
		</div>
	</section>
	<!-- Page top end-->



	<%
		Coustomer cus = new Coustomer();
		Interface_ItemService service = new ItemService();
		cus = service.getcustomerDetails(13);
	%>

	<!-- Editable table -->

	<form action="adminupdate" method="POST">
		<div class="card">
			<h3
				class="card-header text-center font-weight-bold text-uppercase py-4">Editable
				table</h3>
			<div class="card-body">
				<div id="table" class="table-editable">
					<span class="table-add float-right mb-3 mr-2"><a href="#!"
						class="text-success"><i class="fas fa-plus fa-2x"
							aria-hidden="true"></i></a></span>
					<table
						class="table table-bordered table-responsive-md table-striped text-center"
						border="1">
						<tr>
							<th class="text-center">First name</th>
							<th class="text-center">Last name</th>
							<th class="text-center">User name</th>
							<th class="text-center">Email</th>
							<th class="text-center">Phone Number</th>

						</tr>

						<tr>
							<td class="pt-3-half" contenteditable="true"><input
								type="text" placeholder=<%=cus.getFirst_name()%>
								name="firstname"></input></td>
							<td class="pt-3-half" contenteditable="true"><input
								type="text" placeholder=<%=cus.getLast_name()%> name="lastName"></input></td>
							<td class="pt-3-half" contenteditable="true"><input
								type="text" placeholder=<%=cus.getUser_name()%> name="userName"></input></td>
							<td class="pt-3-half" contenteditable="true"><input
								type="text" placeholder=<%=cus.getEmail()%> name="email"></input></td>
							<td class="pt-3-half" contenteditable="true"><input
								type="text" placeholder=<%=cus.getPhone_number()%> name="phone"></input></td>

							<td><span class="table-remove"><button type="submit"
										class="btn btn-danger btn-rounded btn-sm my-0" name="btnval"
										value="remove">Remove</button></span></td>


							<td><span class="table-remove"><button type="submit"
										class="btn btn-danger btn-rounded btn-sm my-0" name="btnval"
										value="update">Update</button></span></td>

						</tr>

					</table>
				</div>
			</div>
		</div>
	</form>
	<!-- Editable table -->




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
