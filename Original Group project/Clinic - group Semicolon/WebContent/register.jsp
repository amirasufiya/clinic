<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page session="true"%>
<%@ page import="java.sql.*" %>
    <jsp:include page="header.jsp" /> 
<html>
    <head>
        <title>New Registration</title>
         <link rel="stylesheet" href="style.css">
         <link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
        <style>
	
        </style>
    </head>
    <body>
        <div align="center">
            <h1>Registration Form</h1>

            	<form action="registerprocess.jsp" method="post">
            <table>
                <tr>
                    <td>Full name:</td>
                    <td><input type="text" name="name" required="required"></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td><select name="gender" style="width: 100%">
							<option value="Male">Male</option>
							<option value="Female">Female</option>
					</select></td>
                </tr>
                <tr>
                    <td>Phone number:</td>
                    <td><input type="number" name="phone" required="required"></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><input type="text" name="address" required="required"></td>
                </tr>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username" required="required"></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" required="required"></td>
                </tr>
                <tr>
                    <td align="center" colspan="2"><input class="button2" type="submit" value="Submit">&nbsp;&nbsp;<input class="button2" type="reset" value="Reset"></td>
                </tr>
            </table>
            </form>
             
            <form action="login.jsp"><input class="button2" type="submit" value="Back"></form>
            </div>
    </body>
</html>