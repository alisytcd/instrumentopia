<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="user" class="user.UserData" scope="session"/>
<jsp:useBean id="database" class="database.DatabaseOperation" scope = "session"/>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ page import = "database.*, java.util.* ,java.sql.*,java.io.*"  %>

	<%	DatabaseOperation op = new DatabaseOperation();
		
		String userName =(String) session.getAttribute("username");
		String sqlStmt = "SELECT username,address,name,phone,email FROM db.user WHERE username = '"+userName+"'";
		
		op.connect();
		ResultSet rs = op.getData(sqlStmt);
		if(rs.next()){
			user.setUsername(rs.getString("username"));
			user.setAddress(rs.getString("address"));
			user.setName(rs.getString("name"));
			user.setPhone(rs.getString("phone"));
			user.setEmail(rs.getString("email"));
		}
		op.close();
	%>
		<p> User name is : <%= user.getUsername() %></p>
		<p>Address is : <%=user.getAddress() %></p>
		<p>Name is : <%=user.getName() %></p>
		<p>Phone no is : <%=user.getPhone() %></p>
		<p>Email is : <%=user.getEmail() %></p>
	



</body>
</html>