<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Summary Doctor</title>
 <link rel="stylesheet" href="style.css">
 <link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
		<style>
		 a{
		 font-weight: bold;
		  text-decoration:underline;
		 }
		 table, th , td{ border: 1px solid black; border-collapse: collapse;
		 margin-left:560px;
		 margin-top:50px;
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
		  margin-left:700px;
		  margin-top:30px;
       
}
		</style>
</head>
<body>
<jsp:include page="header.jsp" /> 
<% 	Statement stmt = null;
	String doc =  request.getParameter("doc");

try {

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic", "root", "1234");
    stmt = conn.createStatement();
    
    out.println("<table>");
    out.println("<tr>");
    out.println("<th>Booking ID</th>");
    out.println("<th>Patient Name</th>");
    out.println("<th>Date</th>");
    out.println("<th>Time</th>");
    out.println("<th>Status</th>");
    out.println("</tr>");
    
    if (doc.equals("Anna")) {
    	ResultSet rs = stmt.executeQuery("select * from consult where doctor = 'Dr. Anna' GROUP BY dateAppt, timeAppt;"); 
        while (rs.next()) {
        	int id = rs.getInt("bookingID");
            String name = rs.getString("username");
            String service = rs.getString("service");
            String date = rs.getString("dateAppt");
            String time = rs.getString("timeAppt");
            String status = rs.getString("statusAppt");
            

            out.println("<tr>");
            out.println("<td>" + id + "</td>");
            out.println("<td>" + name + "</td>");
            out.println("<td>" + date + "</td>");
            out.println("<td>" + time + "</td>");
            out.println("<td>" + status + "</td>");
            out.println("</tr>");

        }
    }
    
    else if (doc.equals("Smith")) {
    	ResultSet rs = stmt.executeQuery("select * from consult where doctor = 'Dr. Smith' GROUP BY dateAppt, timeAppt;"); 
        while (rs.next()) {
        	int id = rs.getInt("bookingID");
            String name = rs.getString("username");
            String service = rs.getString("service");
            String date = rs.getString("dateAppt");
            String time = rs.getString("timeAppt");
            String status = rs.getString("statusAppt");
            

            out.println("<tr>");
            out.println("<td>" + id + "</td>");
            out.println("<td>" + name + "</td>");
            out.println("<td>" + date + "</td>");
            out.println("<td>" + time + "</td>");
            out.println("<td>" + status + "</td>");
            out.println("</tr>");

        }
    }
    
    else if (doc.equals("Jackson")) {
    	ResultSet rs = stmt.executeQuery("select * from consult where doctor = 'Dr. Jackson' GROUP BY dateAppt, timeAppt;"); 
        while (rs.next()) {
        	int id = rs.getInt("bookingID");
            String name = rs.getString("username");
            String service = rs.getString("service");
            String date = rs.getString("dateAppt");
            String time = rs.getString("timeAppt");
            String status = rs.getString("statusAppt");
            

            out.println("<tr>");
            out.println("<td>" + id + "</td>");
            out.println("<td>" + name + "</td>");
            out.println("<td>" + date + "</td>");
            out.println("<td>" + time + "</td>");
            out.println("<td>" + status + "</td>");
            out.println("</tr>");

        }
    }
    
    else if (doc.equals("Eve")) {
    	ResultSet rs = stmt.executeQuery("select * from consult where doctor = 'Dr. Eve' GROUP BY dateAppt, timeAppt;"); 
        while (rs.next()) {
        	int id = rs.getInt("bookingID");
            String name = rs.getString("username");
            String service = rs.getString("service");
            String date = rs.getString("dateAppt");
            String time = rs.getString("timeAppt");
            String status = rs.getString("statusAppt");
            

            out.println("<tr>");
            out.println("<td>" + id + "</td>");
            out.println("<td>" + name + "</td>");
            out.println("<td>" + date + "</td>");
            out.println("<td>" + time + "</td>");
            out.println("<td>" + status + "</td>");
            out.println("</tr>");

        }
    }
    else {
		out.println("Wrong input");
		out.println(doc);
    }
    out.println("</table>");
}
catch(Exception e){
	System.out.print(e);
	e.printStackTrace();
}
%>

<button class="button"><a href="doctor.jsp">Back</a></button>


<br>
</body>
</html>

