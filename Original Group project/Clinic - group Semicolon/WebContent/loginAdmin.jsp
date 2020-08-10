<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*"%>
<jsp:useBean id="admin" class="registerBean.Admin" scope="session" />
 <jsp:setProperty name="admin" property="*" /> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <link rel="stylesheet" href="style.css">
         <link href="https://fonts.googleapis.com/css?family=News+Cycle&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
		<style>
		body{
		  margin-top:100px;
		}
		
		</style>
    </head>
    <body>
        <%
          session.setMaxInactiveInterval(1800);  // 30 minute time out
          Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic", "root", "1234");
          
          if(admin.isLoggedIn())
            out.println("Hello Admin! <br/>");
          else
            out.println("Invalid login<br />");
          out.println("<a href='checkLogin.jsp'>check</A>");
        %>
	<button class="button2"><a href="pageStaff.jsp">Go to dashboard</a></button>
    </body>
</html>