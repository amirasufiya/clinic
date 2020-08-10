<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page session="true" %>

<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/clinic";%>
<%!String user = "root";%>
<%!String psw = "1234";%>
    <jsp:include page="header.jsp" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
<style>	
h2 {
text-align:center;}
.button{
          background-color: white; /* Green */
         border: 2px solid #4CAF50;
		   color: black;
		  padding: 8px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  margin: 4px 2px;
		  cursor: pointer;
		  font-size: 16px;
		  margin-left:750px;
 	</style>
</head>
<body>
<%
	String id = request.getParameter("bookingID");

	if(id != null) {
		Connection con = null;
		PreparedStatement ps = null;
		int personID = Integer.parseInt(id);
		
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url,user,psw);
			String sql="delete from consult where bookingID = "+id;
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
			con.close();
			out.print("<h2>Successfully deleted the data with booking number: " + id + " </h2>");

%>
<br><br>
<button class="button"><a href="viewAppt.jsp">Done</a></button>
<% 
		}
		catch(SQLException sql) {
			request.setAttribute("error", sql);
			out.println(sql);
		} 
	} 
	else {
		out.print("There is a problem in updating Record.");
	}
	
%>

</body>
</html>
