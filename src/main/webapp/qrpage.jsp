<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="dto.DataSource"%>
<%@ page import="service.ReservationSystemFacade"%>
<%@ page import="service.ReservationSystemFacadeImpl"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Arrays"%>
<%@ page import="java.util.List"%>
<%@ page import="object.Party"%>
<%@ page import="object.Location"%>
<%@ page import="dbcon.ConnectionDB"%>

<%
ReservationSystemFacade dataSource = new ReservationSystemFacadeImpl();
%>
<%@ page import="java.sql.*"%>
<%@ page session="true"%>




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

		</div>
	</nav>
	<!-- Cover -->
		<div class="container">
			<div class="row">
				<div class="col-lg-12 p-3">
					<form class="p-4" method="post"></form>
					<h4 class="mb-4 text-center" contenteditable="true">
						<span style="background-color: rgb(247, 6, 85);">Please present</span>
					</h4>

					<div>
						<h5>


							<%
							try {

								Connection k = ConnectionDB.conn();
								Statement stmt6 = k.createStatement();
								String resRandom = request.getParameter("code");
								
								ResultSet rs = stmt6.executeQuery("SELECT * FROM `reservation` INNER join users,party where guestid=email && party.id=partysinstances && passs='"
										+ resRandom +"'");
							

							while (rs.next())

								{
									//	String typeofusers = rs.getString("name");
							%>
							<br> <br>
							<%
							out.println("Passcode Number: " + rs.getString("passs") + "<br>&nbsp;&nbsp;&nbsp;");
							out.println("Party Name: " + rs.getString("name") + "<br>&nbsp;&nbsp;&nbsp;");
							out.println("Date: " + rs.getString("partydate") + "<br>&nbsp;&nbsp;&nbsp;");
							out.println("Time: " + rs.getString("partytime") + "<br>&nbsp;&nbsp;&nbsp;");
							out.println("Guest Name: " + rs.getString("firstName") + " "+ rs.getString("lastName"));
								
							//	out.println("<br>&nbsp;&nbsp;&nbsp;" + "Time: " + rs.getString("partytime"));
					//		out.println("<br>&nbsp;&nbsp;&nbsp;" + "DressCode: " + rs.getString("dresscode"));
							//out.println("<br>&nbsp;&nbsp;&nbsp;" + "Address: " +rs.getString("street")+", "+rs.getString("city")+","+rs.getString("state")+","+rs.getString("zip"));
							
								%>
								
				<div class="col-md-12">
					<button type="submit"
						class="btn mt-4 btn-block p-2 btn-info shadowed" onclick="window.print()">Print this page</button>
						</form>
				</div>
					<div class="col-md-12">
					&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;
					</div>
								<%}
							} catch (SQLException r) {
							System.out.println(r);
							}
							%>
							</span>
							
							
						</h5>
						
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Intro -->
	
</body>

</html>