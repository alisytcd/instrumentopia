<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="user" class="user.UserData" scope="session"/>
<jsp:useBean id="database" class="database.DatabaseOperation" scope = "session"/>




<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Account Settings</title>
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		   
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		  <link rel="stylesheet" href="profile.css" type="text/css"/>
</head>

<body>

	<%@ page import = "database.*, java.util.* ,java.sql.*,java.io.*"  %>

	<%	DatabaseOperation op = new DatabaseOperation();
		
		String userName =(String) session.getAttribute("username");
		String sqlStmt = "SELECT username,address,name,phone,email,picture FROM db.user WHERE username = '"+userName+"'";
		
		op.connect();
		ResultSet rs = op.getData(sqlStmt);
		if(rs.next()){
			user.setUsername(rs.getString("username"));
			user.setAddress(rs.getString("address"));
			user.setName(rs.getString("name"));
			user.setPhone(rs.getString("phone"));
			user.setEmail(rs.getString("email"));
			user.setPicture(rs.getString("picture"));
		}
		op.close();
	%>
		<nav class="nav navbar-default">
			  <div class="container-fluid">
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>                        
				      </button>
				      
				      <a class="navbar-left" href="#"><img src="logo.PNG" height=60px width=200px/></a>
				      
				    </div>
				    <div class="collapse navbar-collapse" id="myNavbar">
					      <ul class="nav navbar-nav">
						        <li ><a href="index.jsp"  style="color:white">Browse</a></li>
						        
						        <%if(userName!=null){ %>
						        	<li><a href='createProduct.jsp' style="color:white">Post Advertisement</a></li>
						        <%} %>
					        
					      </ul>
				      
					      <ul class="nav navbar-nav navbar-right">
					
					      
						        <li><a href="profile.jsp" style="color:white">My Account</a></li>
						        <li><a href="#" style="color:white">Welcome! <%=userName%></a></li>
						        <li><a href="logout.jsp" style="color:white">Log Out</a></li>
					        
					      </ul>
				      
				    </div>
		 		 </div>
			</nav>
			
			
			<ul class="nav nav-tabs">
				  <li class="active"><a data-toggle="tab" href="#account">Account Settings</a></li>
				  <li><a data-toggle="tab" href="#ads">My Advertisements</a></li>
			</ul>
	
			<div class="tab-content">
				  <div id="account" class="tab-pane fade in active">
				  
				  		<div class="well-lg">
				  		
				  		
					  		
					  			<div><img src="<%= user.getPicture() %>" class="img-thumbnail"></div>
					  		
					  		
						  		<div>
						  			<h4><b>Username :</b> <%= user.getUsername() %></h4>
								    <h4><b>Address :</b> <%=user.getAddress() %></h4>
									<h4><b>Name :</b> <%=user.getName() %> </h4>
									<h4><b>Phone no. :</b> <%=user.getPhone() %></h4>
									<h4><b>Email : </b><%=user.getEmail() %></h4>
					  			
					  			<button type="button" class="btn"><a href="editProfile.jsp">Edit Details</a></button>
					  			<button type="button" class="btn"><a href="changePassword.jsp">Change Password</a></button>
					  			</div>
				  			
				  		</div>
				  
				  </div>
				  <div id="ads" class="tab-pane fade">
					    <h3>Menu 1</h3>
					    <p>Some content in menu 1.</p>
				  </div>
			</div>
			
			<div class="container-fluid" id="footer" >
				  <div class="container"  style="color:white">
				  <h3 >Footer Text</h3>  
				  </div>

			</div>

			<div class="container-fluid" id="ads" style="background-color:white">
	  
			      <div class="row">
				      <div class="well-sm">
				        <p>ADS</p>
				      </div>
				      <div class="well-sm">
				        <p>ADS</p>
				      </div>
    			</div>

			</div>


</body>
</html>