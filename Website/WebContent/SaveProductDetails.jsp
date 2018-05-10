<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:setProperty name="product" property="*"/> 
<jsp:useBean id="product" class="product.ProductData" scope="session"/>
<jsp:useBean id="database" class="database.DatabaseOperation" scope = "session"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%@ page import="database.*, java.util.* ,java.sql.*,java.io.*, java.nio.file.Files, java.nio.file.StandardCopyOption"%>
<%
//uploading image

Part filePart = request.getPart("picture");
InputStream is = filePart.getInputStream();
String pathToSave = "C:/Users/5933/Desktop/EclipseWorkspace/Website/WebContent/uploadedFiles/"+filePart.getSubmittedFileName();
System.out.println(pathToSave);
File fileToSave = new File(pathToSave);

Files.copy(is,fileToSave.toPath(),StandardCopyOption.REPLACE_EXISTING);

product.setPicture("uploadedFiles/"+filePart.getSubmittedFileName());
String sqlStmt = "INSERT INTO db.products(idproduct,name,description,status,picture,username,type) VALUES('"+product.getId()+"','"+product.getName()+"','"+product.getDescription()+"','"+product.getStatus()+"','"+product.getPicture()+"','"+product.getUsername()+"','"+product.getType() +"');";

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
out.print(sqlStmt);
}

catch(Exception e){}

%>

<!-- showing the created ad..just for testing purposes.. -->
<div class="container">
	<% String imageSource = product.getPicture(); %>
	<div><h1><%=product.getName() %></h1></div>
	<div><p><%=product.getDescription() %></p></div>
	<div><p>Advertisement status: <%=product.getStatus() %></p></div>
	<div><p>Post created by : <%=product.getUsername() %></p></div>
	
	<div><img src="<%= product.getPicture() %>" height =300px width = 200px></div>
	
</div>

</body>
</html>