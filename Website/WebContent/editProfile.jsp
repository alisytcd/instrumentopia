<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="user" class="user.UserData" scope="session"/>
<jsp:useBean id="database" class="database.DatabaseOperation" scope = "session"/>

<html>

<head>



		  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

		   
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		  
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		  <link rel="stylesheet" href="stylesheets/editProfile.css">

<title>Edit Account Info</title>
</head>
<body>

	<%String userName =(String) session.getAttribute("username");
		String currentForm = (String)request.getParameter("currForm");
		System.out.println(currentForm);
		
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
		<div class="panel-primary">	
		<div class="panel-body">	
		  <div class="container-fluid">
		  <%String context= pageContext.getServletContext().getContextPath();
		  	System.out.println(context);%>
		  <%if(currentForm.equals("address")){ %>
			<form CLASS="form-horizontal" METHOD=POST ACTION="/Website/EditForm?currForm=address" enctype='multipart/form-data'>
									
									<div class="form-group">
										<label class="control-label col-sm-2"><b>New Address</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Type new address here." NAME=address SIZE=20><BR>
									</div>
									<div class="submit_btn col-sm-2"><INPUT TYPE=SUBMIT></div>
									
					
			</form>
			
			<% }
		  	else if(currentForm.equals("phone")){%>
			
		
			<form CLASS="form-horizontal" METHOD=POST ACTION="/Website/EditForm?currForm=phone" enctype='multipart/form-data'>
			
				
									<div class="form-group">
										<label class="control-label col-sm-2"><b>New Phone</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Type new phone number here." NAME=phone SIZE=20><BR>
									</div>
									<div class="submit_btn col-sm-2"><INPUT TYPE=SUBMIT></div>
				
					
			</form>
			<%}
		  	else if(currentForm.equals("email")){%>
			
			<form CLASS="form-horizontal" METHOD=POST ACTION="/Website/EditForm?currForm=email" enctype='multipart/form-data'>
								
									<div class="form-group">
										<label class="control-label col-sm-2"><b>New Email</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Type new email here." NAME=email SIZE=20><BR>
									</div>
									<div class="submit_btn col-sm-2"><INPUT TYPE=SUBMIT></div>
					
					
			</form>
			<%} %>
		  </div>
	   </div>
	</div>	
			<%@ page import = "database.*, java.util.* ,java.sql.*, javax.servlet.http.*"  %>
			<%!	 public void editAddres(){
				
					
				
				}
			
				public void editPhone(){
					
				}
				
				public void editEmail(){
					
					
				}
				
			
			%>
		
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