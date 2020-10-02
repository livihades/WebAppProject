package controller;

import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.SQLException; 
  
// This class can be used to initialize the database connection 
public class DatabaseConnection { 
    protected static Connection initializeDatabase() 
        throws SQLException, ClassNotFoundException 
    { 
        // Initialize all the information regarding 
        // Database Connection 
        String dbDriver = "com.mysql.cj.jdbc.Driver"; 
        String dbURL = "jdbc:mysql://localhost/WebAppProject"; 
        // Database name to access 
        String dbName = "webappproject"; 
        String dbUsername = "root"; 
        String dbPassword = "anoleo201194"; 
  
        Class.forName(dbDriver); 
        Connection con = DriverManager.getConnection(dbURL + dbName, 
                                                     dbUsername,  
                                                     dbPassword); 
        return con; 
    } 
}