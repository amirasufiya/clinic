<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Admin!</title>
<link rel="stylesheet" href="style.css">
<link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
		<style>

.a{
margin-left:270px;
}
.b{
margin-left:420px;
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
		  margin-left:260px;
		  margin-top:30px;
       
}

</style>
</head>
<body>
<jsp:include page="header.jsp" /> 
	        <h1>WELCOME ADMIN!</h1>
       <div class="b">
<button class="block"><a href="viewAppt.jsp">Nurse</a></button>     
		<button class="block"><a href="doctor.jsp">Doctor</a></button>
		<br>
		<button class="button"><a href="index.jsp">Log out</a></button>
		</div>
        
</body>
</html>