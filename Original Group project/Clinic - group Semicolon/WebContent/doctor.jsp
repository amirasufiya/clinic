<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="style.css" rel="stylesheet" type="text/css" media="all" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Doctor</title>
	<link rel="stylesheet" href="style.css">
         <link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
	 <style>
form{
margin-left: 400px;


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
		  margin-left:100px;
       
}
h3{
		text-alignment:center;

}
	 </style>
</head>
<body>
	    <jsp:include page="header.jsp" /> 
	<form action="summaryDoctor.jsp">
		<h3>Doctor's name: </h3>
		<select name="doc" style="width: 20%; height: 30px;">
			<option value="Smith">Dr. Smith</option>
			<option value="Jackson">Dr. Jackson</option>
			<option value="Anna">Dr. Anna</option>
			<option value="Eve">Dr. Eve</option>
		</select>
		<br>
		<input class="button" value="View" type="submit" ">
		<button class="button2"><a href="pageStaff.jsp">Back</a></button>
	</form>
	
	
</body>
</html>