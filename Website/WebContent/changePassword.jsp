<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="user" class="user.UserData" scope="session"/>
<jsp:useBean id="database" class="database.DatabaseOperation" scope = "session"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Password Change</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stylesheets/changePassword.css" type="text/css"/>


</head>
<body>

<%@ page import = "database.*, java.util.* ,java.sql.*"  %>
<%String userName =(String) session.getAttribute("username"); %>

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
			
<div class="container-fluid">

							
			<%	DatabaseOperation op= new DatabaseOperation();
											
				String currentPassword = "SELECT password FROM db.USER WHERE username = '"+userName+"'";
			%>

		<div class="panel panel-primary">
			<div class="panel-heading"><b>Change password</b></div>
				<div class="panel-body">
					
							<FORM CLASS="form-horizontal" METHOD=POST ACTION="passwordChangeVerification.jsp" enctype='multipart/form-data'>


							
									<div class="form-group">
										<label class="control-label col-sm-2"><b>Current Password</b></label>
										<INPUT TYPE=password PLACEHOLDER="Current Password" NAME=currentPass SIZE=20><BR>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-2"><b>New Password</b></label>
										<INPUT TYPE=password PLACEHOLDER="New Password" NAME=newPass SIZE=20><BR>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-2"><b>Confirm New Password</b></label>
										<INPUT TYPE=password PLACEHOLDER="Confirm New Password" NAME=confirmPass SIZE=20><BR>
									</div>
																
								<div class="submit_btn col-md-2" style="margin-left:250px"><INPUT TYPE=SUBMIT></div>
								
							</FORM>
				</div>
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