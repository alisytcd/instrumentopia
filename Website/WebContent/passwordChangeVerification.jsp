<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>checkPasswordVerification</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%


	String userName =(String) session.getAttribute("username");
	String pwd = request.getParameter("currentPass");
	String newPwd = request.getParameter("newPass");
	String confirmPwd = request.getParameter("confirmPass");
	
	System.out.println(userName+pwd+newPwd+confirmPwd);
	
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?verifyServerCertificate=false&useSSL=true",
            "root", "alisy");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("SELECT * FROM USER WHERE username='" + userName + "' and password='" + pwd + "';");
    
    
    
    if (rs.next()) {
        //session.setAttribute("username", userName);
        //out.println("welcome " + userName);
        //out.println("<a href='logout.jsp'>Log out</a>");
        if(newPwd.equals(confirmPwd)){
        	
        	Statement stmt = con.createStatement();
        	
        	stmt.executeUpdate("UPDATE db.User SET password = '"+ newPwd+"' WHERE username = '"+userName+"';");
        	
        	%> <p><h1>Password Changed successfuly! Click <a href="profile.jsp">Here</a> to go back to your profile.</h1></p><%
        	
        }
        else{
        	out.println("Passwords Don't match! <a href='changePassword.jsp'>try again</a>");
        }
   
    } else {
        out.println("Invalid password <a href='changePassword.jsp'>try again</a>");
    }
	

%>

</body>
</html>