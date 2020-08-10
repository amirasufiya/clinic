<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="admin" class="registerBean.Admin" scope="session" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check login</title>
    </head>
    <body>

     <%
          if(!admin.isLoggedIn())
          {
           response.sendRedirect("loginAdmin.html");  // Tell the browser to go to this page
           return; // do nothing more
          }
     %>

        <h3>Hello <%= admin.getName() %> </h3>

    </body>
</html>

