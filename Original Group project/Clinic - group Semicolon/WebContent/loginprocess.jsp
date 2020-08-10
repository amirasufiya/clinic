<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.util.*"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	if(username != null && password != null){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic", "root", "1234");
			Statement st = con.createStatement();
			ResultSet rt = st.executeQuery("select username, password from patient where username='"+username+"' and password='"+password+"'"); 
                                
			while(rt.next()){
				
				if(rt.getString("password").equals(password) && rt.getString("username").equals(username)){
					out.println("You have log in successfully!");
					session.setAttribute("username",username);
                    session.setAttribute("password",password);
                    response.sendRedirect("form.jsp");
                    }
				
				else{
					RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
					out.println("<font color=red>Sorry, invalid username or password.</font>");
					rd.include(request, response);
					}
				}
			
			
			con.close();
			}
		catch(Exception ex){
			out.println(ex);
			ex.printStackTrace();
			}
			%>
			
			<%
			}
			%>
			
			<form method="post" action="error.jsp">