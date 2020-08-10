<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient page</title>
<link rel="stylesheet" href="style.css">
<link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
		<style>

.a{
margin-left:250px;
}
.b{
margin-left:480px;

}
button.a{
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
  margin-left:240px;

}

</style>
</head>
<body>
<jsp:include page="header.jsp" /> 
<%  session = request.getSession();
	out.println("<h1> Welcome " + session.getAttribute("user") + "!</h1>");
%>

       <div class="b">
<button class="block"><a href="book.jsp">Set Appointment</a></button>     
		<button class="block"><a href="history.jsp">View appointment</a></button>
		<br>
		<button class="a"><a href="index.jsp">Log out</a></button>
		</div>
        
</body>
</html>