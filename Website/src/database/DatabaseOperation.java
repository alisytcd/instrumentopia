/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DatabaseOperation {
    
   public String driver="com.mysql.jdbc.Driver";
     public String URL = "jdbc:mysql://localhost:3306/db?verifyServerCertificate=false&useSSL=true";
     public String username = "root";
     public String password = "alisy";
     public Connection conn;
     
     public DatabaseOperation(String URL,String username,String password){
         this.URL=URL;
         this.username=username;
         this.password=password;
     }

    public DatabaseOperation() {
    }

    //to connect to database
    public boolean connect() throws SQLException {
       
        try {
            Class.forName(driver);
             conn=DriverManager.getConnection(URL,username,password);
             System.out.println("Connection successful..");
             return true;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
       System.out.println("I Screwed up"); 
       return false;
       
    }
    // close the connection with database
    public boolean close(){
         try {
             conn.close();
             return true;
         } catch (SQLException ex) {
             Logger.getLogger(DatabaseOperation.class.getName()).log(Level.SEVERE, null, ex);
         }
         return false;
    }


public void executeQuery(String query){
    
    try{
	Statement stmt = conn.createStatement();
    stmt.executeUpdate(query);
   
    }
    catch(SQLException ex) {
    	ex.getLocalizedMessage();
    }
    finally{
    	try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
    
    public PreparedStatement prepareStatement(String query) throws SQLException{
        
            PreparedStatement ps = conn.prepareStatement(query);
            return ps;
       
    }
    
    public static void main( String[] args ) throws SQLException{
    	
    	DatabaseOperation op = new DatabaseOperation();
    	
    	op.connect();
    	
    }
}
