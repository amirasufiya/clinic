<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page session="true" %>
<%@page import="java.sql.Connection"%>
	<jsp:include page="header.jsp" /> 
<%
	String bookingID = request.getParameter("bookingID");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "clinic";
	String userid = "root";
	String password = "1234";
	try {
	Class.forName(driver);
	} 
	catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<%
	try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	String sql ="select * from consult where bookingID="+bookingID;
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
	<head> 
	<link rel="stylesheet" href="style.css">
 	<link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
	<style>table {
		  margin-left:630px;
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
		  margin-left:730px;
        
        }</style>
        </head>
	<body>
		<h1>Update data patient</h1>
		<form method="post" action="update-process.jsp">
			<table>
				<tr>
					<td>Booking ID<input type="hidden" name="bookingID" value="<%=resultSet.getString("bookingID") %>"></td>
					<td> : </td>
					<td><input readonly="readonly" type="text" name="bookingID" value="<%=resultSet.getString("bookingID") %>"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td> : </td>
					<td><input readonly="readonly" type="text" name="username" value="<%=resultSet.getString("username") %>"></td>
				</tr>
				<tr>
					<td>Service</td>
					<td> : </td>
					<td><input readonly="readonly" type="text" name="service" value="<%=resultSet.getString("service") %>"></td>
				</tr>
				<tr>
					<td>Doctor</td>
					<td> : </td>
					<td><input type="text" name="doctor" value="<%=resultSet.getString("doctor") %>"></td>
				</tr>
				<tr>
					<td>Date</td>
					<td> : </td>
					<td><input readonly="readonly" type="text" name="dateAppt" value="<%=resultSet.getString("dateAppt") %>"></td>
				</tr>
				<tr>
					<td>Time</td>
					<td> : </td>
					<td><input readonly="readonly" type="text" name="timeAppt" value="<%=resultSet.getString("timeAppt") %>"></td>
				</tr>
								<tr>
					<td>Status</td>
					<td> : </td>
					<td><input type="text" name="statusAppt" value="<%=resultSet.getString("statusAppt") %>"></td>
				</tr>
		</table>
		<input  class="button" type="submit" value="submit">
		</form>
		<form method="post" action="delete.jsp"> <input  class="button" type="submit" value="delete">
			<input type="hidden" name="bookingID" value="<%=resultSet.getString("bookingID") %>">
		</form>
	<%
		}
		connection.close();
		} 
		catch (Exception e) {
		e.printStackTrace();
		}
	%>
	</body>
</html>