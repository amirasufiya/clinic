<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page session="true" %>
<%
	String bookingID = request.getParameter("bookingID");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "clinic";
	String userid = "root";
	String password = "1234";
	try {
	Class.forName(driver);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<html>
	<head>
		<link rel="stylesheet" href="style.css">
		<link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
		<style>
			div {
			margin-top:0;
			margin-right:auto;
			margin-bottom:0;
			margin-left:auto;
			}
		 table {
		  align:center;
		 }
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
	<jsp:include page="header.jsp" /> 
		<h1>All patient's data</h1>
		<div>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Service</t>
				<th>Doctor</th>
				<th>Date</th>
				<th>Time</th>
				<th>Status</th>
				<th>update</th>
			</tr>
		<%
		try{
		connection = DriverManager.getConnection(connectionUrl+database, userid, password);
		statement=connection.createStatement();
		String sql ="select * from consult";
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
		%>
		<tr>
		<td><%=resultSet.getInt("bookingID") %></td>
		<td><%=resultSet.getString("username") %></td>
		<td><%=resultSet.getString("service") %></td>
		<td><%=resultSet.getString("doctor") %></td>
		<td><%=resultSet.getString("dateAppt") %></td>
		<td><%=resultSet.getString("timeAppt") %></td>
		<td><%=resultSet.getString("statusAppt") %></td>
		<td><a href="update.jsp?bookingID=<%=resultSet.getInt("bookingID")%>">update</a></td>
		</tr>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
		</table>
		
		<button class="button"><a href="pageStaff.jsp">Back</a></button>
		</div>
	</body>
</html>