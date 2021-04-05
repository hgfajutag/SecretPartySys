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
		String guestid = request.getParameter("guestid");
		String partyid = request.getParameter("partyid");
		out.println(guestid);
		

		queryString = "INSERT INTO reservation(passs,guestid,partysinstances,confirmed) VALUES ('" + resRandom
		+ "','" + guestid + "','" + partyid + "','0')";
		out.println(queryString);
	
	PreparedStatement pstatement = k.prepareStatement(queryString);

	int val = 0;
	val = pstatement.executeUpdate();
	if (val > 0) {
%>

<b> has been uploaded and inserted into Database at </b>

<%
response.sendRedirect("qrpage.jsp?code="+resRandom);
}
} catch (SQLException r) {
System.out.println(r);
}
%>