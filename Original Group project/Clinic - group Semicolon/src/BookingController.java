import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BookingController")
public class BookingController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
  	  String name = request.getParameter("username");
  	  String service = request.getParameter("service");
  	  String tarikh = request.getParameter("date");
  	  String masa = request.getParameter("time");


        // validate given input
  	  if (name.isEmpty() || service.isEmpty() || tarikh.isEmpty() || masa.isEmpty()) {
  		   RequestDispatcher rd = request.getRequestDispatcher("book.jsp");
  		   out.println("<font color=red>Please fill all the fields</font>");
  		   rd.include(request, response);
  		  } 
  	  else {
            // inserting data into mysql database
            // create a test database and student table before running this to create table
            //create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
            try {
                Class.forName("com.mysql.jdbc.Driver");
                // loads mysql driver

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic", "root", "1234");

                String query = "insert into student values(?,?,?,?)";

                PreparedStatement ps = con.prepareStatement(query); // generates sql query

                ps.setString(1, name);
        	    ps.setString(2, service);
        	    ps.setString(3, tarikh);
        	    ps.setString(4, masa);


                ps.executeUpdate(); // execute it on test database
                System.out.println("Successfuly booked");
                ps.close();
                con.close();
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
            RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
            rd.forward(request, response);
        }
    }
}