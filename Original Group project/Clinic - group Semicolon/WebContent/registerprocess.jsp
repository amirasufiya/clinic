<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
	<jsp:include page="header.jsp" /> 
<%
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String username=request.getParameter("username");
String password=request.getParameter("password");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic", "root", "1234");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("insert into patient values("+null+",'"+name+"','"+gender+"','"+phone+"','"+address+"','"+username+"','"+password+"')");
	out.println("<h2 style='color: green;text-align: center;'>You have successfully register your account!</h2>");
	out.println("<h3 style='text-align: center;'>Please <a href='login.jsp'>login</a> to continue.</h3>");
}
catch(Exception e) {
	System.out.print(e);
	e.printStackTrace();
    response.sendRedirect("register.jsp");
}
%>