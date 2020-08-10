<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Summary</title>
<head>
 <link rel="stylesheet" href="style.css">
 <link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
		<style>
		 a{
		 font-weight: bold;
		  text-decoration:underline;
		 }	
		 h3 {
		 text-align:center;}
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
		  margin-left:720px;
        
        }
		</style>
</head>
<body>
<jsp:include page="header.jsp" /> 
<br>
<h3>Summary of your appointment:</h3>
<table  align="center">
<% 
		Statement stmt = null;

	    try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic", "root", "1234");
	        stmt = conn.createStatement();
	        
	        ResultSet rs=stmt.executeQuery("select * from consult");
	        if(rs.last()){
	        	int id = rs.getInt("bookingID");
		        String name = rs.getString("username");
		        String service = rs.getString("service");
		        String doc = rs.getString("doctor");
		        String date = rs.getString("dateAppt");
		        String time = rs.getString("timeAppt");
		        String status = rs.getString("statusAppt");
		        
	            out.println("<tr>");
	            out.println("<td>Booking ID: </td>");
	            out.println("<td>" + id + "</td>");
	            out.println("</tr>");
	            
	            out.println("<tr>");
	            out.println("<td>Patient Name: </td>");
	            out.println("<td>" + name + "</td>");
	            out.println("</tr>");
	            
	            out.println("<tr>");
	            out.println("<td>Service: </td>");
	            out.println("<td>" + service + "</td>");
	            out.println("</tr>");
	            
	            out.println("<tr>");
	            out.println("<td>Doctor name: </td>");
	            out.println("<td>" + doc + "</td>");
	            out.println("</tr>");
	            
	            out.println("<tr>");
	            out.println("<td>Date: </td>");
	            out.println("<td>" + date + "</td>");
	            out.println("</tr>");
	            
	            out.println("<tr>");
	            out.println("<td>Time: </td>");
	            out.println("<td>" + time + "</td>");
	            out.println("</tr>");
	            
	            out.println("<tr>");
	            out.println("<td>Status: </td>");
	            out.println("<td>" + status + "</td>");
	            out.println("</tr>");
	        }
	}
	catch(Exception e){
		System.out.print(e);
		e.printStackTrace();
	}

%>

</table>

<br><button class="button"><a href="book.jsp">Back</a></button>
</body>
</html>

