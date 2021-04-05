<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dto.DataSource"%>
<%@ page import="service.ReservationSystemFacade"%>
<%@ page import="service.ReservationSystemFacadeImpl"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Arrays"%>
<%@ page import="java.util.List"%>
<%@ page import="object.Place"%>
<%@ page import="object.Location"%>
<%
    ReservationSystemFacade dataSource = new ReservationSystemFacadeImpl();
     
    %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Random"%>

<%
Random rand = new Random();
System.out.println("Random numbers...");
for (int i = 1; i<= 10; i++) {
   int resRandom = rand.nextInt((9999 - 100) + 1) + 10;
   System.out.println(resRandom);
}

%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- PAGE settings -->
<link rel="icon"
	href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
<title>RegisterPlace</title>
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
						href="#"><b>PLACES</b></a></li>
					<li class="nav-item mx-2"><a class="nav-link" href="#menu"><b>PARTIES</b></a>
					</li>
					<li class="nav-item mx-2"><a class="nav-link" href="#venue"><b>REQUESTS</b></a>
					</li>
				</ul>
				<a class="btn navbar-btn btn-secondary mx-2 shadowed" href="#book"><b>LOG
						OUT</b></a>
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

						<input type="hidden" id="action" name="action" value="reg_place">
						<h4 class="mb-4 text-center" contenteditable="true">
							<span style="background-color: rgb(247, 6, 85);">&nbsp;Register
								a Place&nbsp;</span>
						</h4>
						<div class="form-group">
							<label>Name</label> <input class="form-control"
								placeholder="Type the name of your party cave " style=""
								id="name" name="name">
						</div>
						<div class="form-group">
							<label>Place Type (Description)</label> <input
								class="form-control" placeholder="The creepy trashy house"
								style="" id="placeType" name="placeType">
						</div>
						<div class="form-group">
							<label>Privacy Level </label> <input type="number"
								class="form-control" placeholder="10" id="privacyLevel"
								name="privacyLevel">
						</div>
						<div class="form-group">
							<label>Location Type </label>  <select class="form-control"
								style="" id="loc_name" name="loc_name">
								<option value="RED">RED</option>
								<option value="GREEN">GREEN</option>
								<option value="YELLOW">YELLOW</option>
								<option value="ORANGE">ORANGE</option>
								<option value="BLUE">BLUE</option>
							</select>

						</div>

						<div class="form-group">
							<label>Address</label> <select class="form-control" style=""
								id="address_id" name="address_id">
								<%
								List<Place> res = new ArrayList<Place>();
								res.addAll(dataSource.findPlace());
								int count=1;
								int count2=1;
								for (Place pl : res) {
									%>
								<%
							
									List<Location> Loc = new ArrayList<Location>();
									Loc.addAll(pl.getLocations());
									for (Location l : Loc) {
									
									%>

								<option value="<%out.println(l.getId());%>">
									<%
									out.println(l.getAddress().getStreet()+", "+l.getAddress().getCity()+l.getAddress().getState()+", "+l.getAddress().getZip());
									count2++;
									}
									%>
								</option>
								<%
									count++;
								count2=1;
								}
								%>

							</select>


						</div>

						<iframe width="100%" height="400"
							src="https://maps.google.com/maps?q=New%20York&amp;z=14&amp;output=embed"
							scrolling="no" frameborder="0"></iframe>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<button type="submit"
						class="btn mt-4 btn-block p-2 btn-info shadowed">Register
						My Place</button>
				</div>
			</div>
			</form>
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
	<div class="py-5">
		<div class="container">
			<div class="row"></div>
		</div>
	</div>
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
