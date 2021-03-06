<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dto.DataSource"%>
<%@ page import="service.ReservationSystemFacade"%>
<%@ page import="service.ReservationSystemFacadeImpl"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Arrays"%>
<%@ page import="java.util.List"%>
<%@ page import="object.Place"%>
<%
    ReservationSystemFacade dataSource = new ReservationSystemFacadeImpl();
	String code = request.getParameter("code");
	
    %>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- PAGE settings -->
<link rel="icon"
	href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
<title>Create party - Pingendo template</title>
<meta name="description"
	content="Free Bootstrap 4 Pingendo Neon template for restaurant and food">
<meta name="keywords"
	content="Pingendo restaurant food neon free template bootstrap 4">
<!-- CSS dependencies -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="neon.css" type="text/css">
<!-- Script: Make my navbar transparent when the document is scrolled to top -->
<script src="js/navbar-ontop.js"></script>
<!-- Script: Animated entrance -->
<script src="js/animate-in.js"></script>
</head>

<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
		<div class="container">
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbar3SupportedContent"
				aria-controls="navbar3SupportedContent" aria-expanded="false"
				aria-label="Toggle navigation" style="">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div
				class="collapse navbar-collapse text-center justify-content-center"
				id="navbar3SupportedContent">
				<ul class="navbar-nav">
					<li class="nav-item mx-3"><a class="nav-link text-light"
						href="./Places.jsp"><b>PLACES</b></a></li>
					<li class="btn navbar-btn btn-secondary mx-2 shadowed"><a class="nav-link" href="#menu"><b>PARTIES</b></a>
					</li>
					<li class="nav-item mx-2"><a class="nav-link" href="#venue"><b>REQUESTS</b></a>
					</li>
				<li class="nav-item mx-2"><a class="nav-link" href="#venue"><b>LOG OUT</b></a>
					</li>
						</ul>
			</div>
		</div>
	</nav>
	<!-- Cover -->
	<div class="align-items-center d-flex py-5 cover section-fade-in-out"
		style="background-image: url(&quot;assets/background/cover_dark.jpg&quot;);">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 p-3">
					<form class="p-4" method="post" action="save.jsp">
					<input type="text" value="create_party" name="action" id="action">
						<h4 class="mb-4 text-center">
							<span style="background-color: rgb(247, 6, 85);">&nbsp;Host
								a Party&nbsp;</span>
						</h4>
						<div class="form-group">
							<label>Name</label> <input class="form-control" value="" style="" id="name"
								name="name">
						</div>
						<div class="form-group">
							<label>Date</label> <input type="date" class="form-control"
								id="partydate" name="partydate">
						</div>
						<div class="form-group">
							<label>Start Time</label> <input type="time" class="form-control"
								placeholder="13" id="time" name="time">
						</div>
						<div class="form-group">
							<label>Max Guest Number </label> <input type="number"
								class="form-control" placeholder="10" name="capacity" id="capacity">
						</div>
						<div class="form-group">
							<label>Dress Code</label> <input class="form-control"
								placeholder="You should dress sexy" style="" id="dresscode"
								name="dresscode">
						</div>
						<div class="form-group">
							<label>Choose your place </label> <select class="form-control"
								name="strlocationId" id="strlocationId">


								<%
								List<Place> res = new ArrayList<Place>();
							    res.addAll(dataSource.findPlace());

								for (Place pl : res) {
								%>
								<option value="<%out.println(pl.getId());%>">
									<%
									out.println(pl.getName()+code);
									%>
								</option>
								<%
								}
								%>




							</select>
						</div>
						<button type="submit"
							class="btn mt-4 btn-block p-2 btn-info shadowed">?Let's
							get this party started!</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Intro -->
	<!-- Gallery -->
	<!-- Menu -->
	<!-- Carousel reviews -->
	<!-- Carousel venue -->
	<!-- Events -->
	<!-- Book section -->
	<!-- Footer -->
	<!-- JavaScript dependencies -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		crossorigin="anonymous"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
	<!-- Script: Smooth scrolling between anchors in the same page -->
	<script src="js/smooth-scroll.js"></script>
</body>

</html>