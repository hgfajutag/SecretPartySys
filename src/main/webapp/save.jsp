<%@ page import="java.sql.*"%>
<%@ page import="dbcon.ConnectionDB"%>
<%@ page import="dto.DataSource"%>
<%@ page import="dto.DataSourceFactory"%>
<%@ page import="object.Guest"%>
<%@ page import="object.Reservation"%>
<%@ page import="object.Party"%>
<%@ page import="service.ReservationSystemFacade"%>
<%@ page import="service.ReservationSystemFacadeImpl"%>

<%@ page import="java.sql.Statement"%>
<%@ page import="java.util.Random"%>
<link rel="stylesheet" type="text/css" href="InitialStyle.css">
<html>

<head>


<%
try {

	Connection k = ConnectionDB.conn();
	Statement stmt6 = k.createStatement();

	//String name = request.getParameter("name");
	String formaction = request.getParameter("action");
	String queryString = "";
	Random rand = new Random();
	System.out.println("Random numbers...");
	
	   int resRandom = rand.nextInt((9999 - 100) + 1) + 10;
	if (formaction.equalsIgnoreCase("create_party")) {
		String name = request.getParameter("name");
		String dresscode = request.getParameter("dresscode");
		String partydate = request.getParameter("partydate");
		String capacity = request.getParameter("capacity");
		String time = request.getParameter("time");
		String strlocationId = request.getParameter("strlocationId");

		queryString = "INSERT INTO party(name,dresscode,partydate,capacity,partytime,strlocationId) VALUES ('" + name
		+ "','" + dresscode + "','" + partydate + "','" + capacity + "','" + time + "','" + strlocationId
		+ "')";
		out.println(queryString);
	}
	
	else {
		String name = request.getParameter("name");
		String history = request.getParameter("placeType");
		String  privacyLevel= request.getParameter("privacyLevel");
		String address_id = request.getParameter("address_id");
		String loc_name = request.getParameter("loc_name");
		queryString = "INSERT INTO place(code,name,history,partys,locations) VALUES ('" + resRandom
				+ "','" + name+ "','" + history + "','" + privacyLevel + "','" +address_id+"')";
		String queryString2 = "INSERT INTO location(code,name,addressid) VALUES ('" + loc_name
				+ "','" + loc_name+ "','" + address_id + "')";
		out.println(queryString2);
		PreparedStatement pstatement2 = k.prepareStatement(queryString2);
		pstatement2.executeUpdate();

	}

	PreparedStatement pstatement = k.prepareStatement(queryString);

	int val = 0;
	val = pstatement.executeUpdate();
	if (val > 0) {
%>

<b> has been uploaded and inserted into Database at </b>

<%
response.sendRedirect("Create-Party.jsp?code="+resRandom);
}
} catch (SQLException r) {
System.out.println(r);
}
%>