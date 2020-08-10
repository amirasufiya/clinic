<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 
 <%@ page session="true"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Login patient</title>
        <link rel="stylesheet" href="style.css">
        <link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
        <style>
		table{
		margin-left:380px;
		}
		form{
		margin-left:250px;
		}
		.a{
        margin-left:455px;
        }
        a{
        font-weight: bold;
		  text-decoration:underline;
		 
        
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
		  margin-left:480px;
        
        }
		
		</style>
    </head>

    <body>
    <jsp:include page="header.jsp" /> 
    	<% session.removeAttribute("username");
          session.removeAttribute("password");
       	%>
        <h1>Patient Login Page</h1>
        <form action="validate.jsp" method="post">
            <table style="with: 100%">
                <tr>
                    <td>Username: </td>
                    <td><input type="text" name="username" size="20"></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><input type="password" name="password" size="20"></td>
                </tr>
				<tr> 
					<td align="center" colspan="2"><input type="submit" value="Submit" class="button2">&nbsp;&nbsp;<input class="button2" type="reset" value="Clear"></td>
				</tr>
				<tr>
				<td align="center" colspan="3">
				<font color="red">
				<%
				String error = request.getParameter("error");
				if(error != null){
				%>
				Invalid Login and Password!
				<%
				}
				%>
				</font>
				</td>
				</tr>		
            </table>
            <button align="center" colspan="2" class="button"><a href="index.jsp">Back</a></button>
            <p class= "a">No account yet? <a href ="register.jsp">Register</a></p>
        </form>
    </body>

    </html>