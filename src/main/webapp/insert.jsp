<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String dresscode=request.getParameter("dresscode");
String partydate=request.getParameter("partydate");
String capacity=request.getParameter("capacity");
String time=request.getParameter("time");

String strlocationId=request.getParameter("strlocationId");


try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/party_reservation_db", "root", "1");
String value="";

Statement stmt = con.createStatement();
int j=stmt.executeUpdate("INSERT INTO party(name,dresscode,partydate,capacity,time,strlocationId) VALUES ('"+name+"','"+dresscode+"','"+partydate+"','"+capacity+"','"+time+"','"+strlocationId+"')");

}
catch(Exception e){}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>