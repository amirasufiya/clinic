<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
<style>
table#nat{
	width: 50%;
	background-color: #c48ec5;
}
</style>
</head>
<body>  
<% 
	String name =  request.getParameter("name");
	String service = request.getParameter("service");
	String tarikh = request.getParameter("tarikh");
	String masa = request.getParameter("masa"); 
%>

<table id ="nat">
<tr>
	<td>Username:</td>
	<td><%= name %></td>
</tr>
<tr>
	<td>Service:</td>
	<td><%= service %></td>
</tr>
<tr>
	<td>Date:</td>
	<td><%= tarikh %></td>
</tr>
<tr>
	<td>Time:</td>
	<td><%= masa %></td>
</tr>

</table>
<br>
use " <i> select * from consult; </i> " in mysql client to verify it.
</body>
</html>