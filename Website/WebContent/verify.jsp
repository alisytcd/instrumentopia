<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Verification</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%

	String userName = request.getParameter("userName");
	String pwd = request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?verifyServerCertificate=false&useSSL=true",
            "root", "alisy");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("SELECT * FROM USER WHERE username='" + userName + "' and password='" + pwd + "';");
    
    if (rs.next()) {
        session.setAttribute("username", userName);
        //out.println("welcome " + userName);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("index.jsp");
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
	

%>



</body>
</html>