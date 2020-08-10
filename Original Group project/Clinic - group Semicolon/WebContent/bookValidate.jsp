<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page session="true"%>
<%@page import="java.sql.*,java.util.*"%>
	<jsp:include page="header.jsp" /> 
	
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Confirmation</title>
	<link rel="stylesheet" href="style.css">
         <link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
	 <style>

	 </style>
</head>
<body>
</body>
</html>
<%
	String name =  String.valueOf(session.getAttribute("user"));;
	String service = request.getParameter("service");
	String tarikh = request.getParameter("date");
	String masa = request.getParameter("time"); 
	String status = "Pending"; 
	
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic", "root", "1234");
		Statement st=conn.createStatement();
		if (service.equals("X-ray") || service.equals("Blood Test")  || service.equals("Check-up")) {
			String doctor = "N/A";
			int i=st.executeUpdate("insert into consult values("+null+",'"+name+"','"+service+"','"+doctor+"','"+tarikh+"','"+masa+"','"+status+"')");
		}
		else if (service.equals("Orthopedics")) {
			String doctor = "Dr. Smith";
			int i=st.executeUpdate("insert into consult values("+null+",'"+name+"','"+service+"','"+doctor+"','"+tarikh+"','"+masa+"','"+status+"')");	
		}
		else if (service.equals("Dermatologist")){
			String doctor = "Dr. Jackson";
			int i=st.executeUpdate("insert into consult values("+null+",'"+name+"','"+service+"','"+doctor+"','"+tarikh+"','"+masa+"','"+status+"')");	
		}
		else if (service.equals("Gynecologist")){
			String doctor = "Dr. Anna";
			int i=st.executeUpdate("insert into consult values("+null+",'"+name+"','"+service+"','"+doctor+"','"+tarikh+"','"+masa+"','"+status+"')");	
		}
		else if (service.equals("Psychiatrist")){
			String doctor = "Dr. Eve";
			int i=st.executeUpdate("insert into consult values("+null+",'"+name+"','"+service+"','"+doctor+"','"+tarikh+"','"+masa+"','"+status+"')");	
		}
		out.println("<h2 style='color: green;text-align: center;'>You have successfully submit your appointment!</h2>");
		out.println("<h2 style='text-align: center;'>Your appointment is still pending. We will notify you within 3 days</h2>");
		out.println("<h3 style='text-align: center;'>Please <a style='color: blue;' href='summary.jsp'>print</a> your slip.</h3>");
		}
		catch(Exception e){
		System.out.print(e);
		e.printStackTrace();
		}
%>