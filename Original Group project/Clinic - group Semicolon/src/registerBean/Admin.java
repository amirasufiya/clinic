package registerBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Admin {
    String name = "";
    String id = "";
    String password = "";
   
    boolean loggedIn = false;
   
    public Admin()
    {
       
    }
   
   public boolean isLoggedIn()
   {
       return loggedIn;
   }
   
   public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
  
    public String getId()
    {
      return id;
    }
  
   public void setId(String i)
   {
     id = i;
   }
    public  String getPassword()
    {
      return password;
    }
  
   public void setPassword(String p)
   {
     password = p;
   }
  
   public boolean login(String url)
   {
   //   
   // database work
   //              
        try{
         // open a connection
        	Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic", "root", "1234");
      // create the sql command
          PreparedStatement prep = con.prepareStatement("Select fullname from login where username=? and password=?"); 
          prep.setString(1,id);
          prep.setString(2,password);
       
          ResultSet rs  = prep.executeQuery();
          
          
          if(id.equals("admin") && password.equals("admin"))
          {
           loggedIn = true;
          }
          else
            loggedIn = false;
          prep.close();
          con.close();
         
         }
        catch(Exception sqlex)
        {
          loggedIn = false; 
        } 
       
        return loggedIn;
   }
  
   public void logOut()
   {
     loggedIn = false;
   }
}
