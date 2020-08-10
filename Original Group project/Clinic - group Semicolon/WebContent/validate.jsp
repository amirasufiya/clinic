<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="true"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
	 <%! String formname="";
     	 String formpw="";
       String error;

     	 %>



    <% formname=request.getParameter("username");
       formpw=request.getParameter("password");
       out.println(formname);
       out.println(formpw);
       
       try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection
           ("jdbc:mysql://localhost:3306/clinic","root","1234");

           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("select username, password from patient");

           while(rs.next())
           {
            if(formname.equals(rs.getString(1)) && formpw.equals(rs.getString(2)))
              {
                out.println("TRUE");
                session.setAttribute("user",formname);
                session.setAttribute("password",formpw);
                response.sendRedirect("pagePatient.jsp");
              }//iterates through every single row to find a match
             else
             {
              out.println("next iteration");
              } 
            
           
           }
             //if cannot find will redirect back to form.jsp
             out.println("FALSE");
              error="invalid login";
              session.setAttribute("error","Invalid login");
               response.sendRedirect("login.jsp");


            con.close();
         }
           catch(Exception e)
           {
            out.println(e);
           }

 %>
	
	</body>
</html>