package database;
import java.util.*;
import java.sql.*;



public class DataBaseFunctions {

 public DataBaseFunctions(List<String> parameters) throws SQLException{
	 
	 
	 String sqlStmt = "INSERT INTO USER(username,address,name,phone,email,picture,password) VALUES('"+parameters.get(0)+"','"+parameters.get(1)+"','"+parameters.get(2)+"','"+parameters.get(3)+"','"+parameters.get(4)+"','"+parameters.get(5)+"','"+parameters.get(6)+"');";
	  
	  System.out.println("Starting database operation..");
	  DatabaseOperation op = new DatabaseOperation();
	  
	  
	  System.out.println("Connecting to server...");
	  op.connect();
	  
	  System.out.println("Executing query...");
      op.executeQuery(sqlStmt); 
	 
	  System.out.println("Query executed..");
	 
 }
	
}
