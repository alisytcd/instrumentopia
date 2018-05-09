<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="user" class="user.UserData" scope="session"/>
<jsp:useBean id="database" class="database.DatabaseOperation" scope = "session"/>
<jsp:setProperty name="user" property="*"/> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="database.*, java.util.* ,java.sql.*" %>
<%
/* 	String para1= request.getParameter("username");
	String para2= request.getParameter("address");
	String para3= request.getParameter("name");
	String para4= request.getParameter("phone");
	String para5= request.getParameter("email");
	String para6= request.getParameter("picture");
	String para7= request.getParameter("password");
	
	List<String> parameters = new ArrayList<String>();
	
	parameters.add(para1);
	parameters.add(para2);
	parameters.add(para3);
	parameters.add(para4);
	parameters.add(para5);
	parameters.add(para6);
	parameters.add(para7);
	
	
	
	
    out.print(para1+ " "+para2+ " "+para3+" "+para4+" "+para5+" "+para6+" "+para7); */
	
    String sqlStmt = "INSERT INTO db.USER(username,address,name,phone,email,picture,password) VALUES('"+user.getUsername()+"','"+user.getAddress()+"','"+user.getName()+"','"+user.getPhone()+"','"+user.getEmail()+"','"+user.getPicture()+"','"+user.getPassword()+"');";
    
    /* try{
    	DataBaseFunctions dbf= new DataBaseFunctions(parameters);
    }
    catch (Exception e){} */
    try{
    	
   	  System.out.println("Starting database operation..");
	  DatabaseOperation op = new DatabaseOperation();
	  
	  
	  System.out.println("Connecting to server...");
	  op.connect();
	  
	  System.out.println("Executing query...");
      op.executeQuery(sqlStmt); 
	 
	  System.out.println("Query executed..");
    }
    
    catch(Exception e){e.printStackTrace();}
  
%>



</body>
</html>
