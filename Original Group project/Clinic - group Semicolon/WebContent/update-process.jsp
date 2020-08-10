<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/clinic";%>
<%!String user = "root";%>
<%!String psw = "1234";%>
	<jsp:include page="header.jsp" /> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
 	<link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
	<style>.button{
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
        
        }</style>
<meta charset="ISO-8859-1">
<title>Update data</title>
</head>
<body>
<%
	String id = request.getParameter("bookingID");
	String username=request.getParameter("username");
	String service=request.getParameter("service");
	String doctor=request.getParameter("doctor");
	String dateAppt=request.getParameter("dateAppt");
	String timeAppt=request.getParameter("timeAppt");
	String statusAppt=request.getParameter("statusAppt");
	
	if(id != null) {
		Connection con = null;
		PreparedStatement ps = null;
		int personID = Integer.parseInt(id);
		
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url,user,psw);
			String sql="Update consult set bookingID=?,username=?,service=?,doctor=?,dateAppt=?,timeAppt=?,statusAppt=? where bookingID="+id;
			ps = con.prepareStatement(sql);
			ps.setString(1,id);
			ps.setString(2, username);
			ps.setString(3, service);
			ps.setString(4, doctor);
			ps.setString(5, dateAppt);
			ps.setString(6, timeAppt);
			ps.setString(7, statusAppt);
			int i = ps.executeUpdate();
			if(i > 0)
		{
%>
<h2 style="text-align:center">Record Updated Successfully!<h2></h2> <br><br>
<button class="button"><a href="viewAppt.jsp">Done</a></button>
<%
		}
		else
		{
		out.print("There is a problem in updating Record.");
		}
	}
	catch(SQLException sql) {
		request.setAttribute("error", sql);
		out.println(sql);
	}
	}
%>


</body>
</html>
