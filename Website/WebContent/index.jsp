<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Example</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="stylesheets/index.css" type="text/css"/>
  
</head>
<body>
<%

String userName =(String)session.getAttribute("username");
System.out.println("USEERNAME IS " +userName);

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
        <li ><a href="Browse.jsp"  style="color:white">Browse</a></li>
        
        <%if(userName!=null){ %>
        	<li><a href='createProduct.jsp' style="color:white">Post Advertisement</a></li>
        <%} %>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      <% if(userName==null){ %>
        <li><a href="login.jsp"  style="color:white"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <% } else { %>
      
        <li><a href="profile.jsp" style="color:white">My Account</a></li>
        <li><a href="#" style="color:white">Welcome! <%=userName%></a></li>
        <li><a href="logout.jsp" style="color:white">Log Out</a></li>
        <% } %>
      </ul>
      
    </div>
  </div>
</nav>
  
<div class="jumbotron">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
          </div>
    <div class="col-sm-8 text-center"> 
      <h1>Welcome to Instrumentopia!</h1>
      <h2>A platform for trading your musical instruments and gear to other musicians, or simply selling them!</h2>

    </div>

  </div>
</div>

<div class="container-fluid" id="footer" >
  <div class="container"  style="color:white">
  <h3 >Footer Text</h3>  
  </div>

</div>

<div class="container-fluid" id="ads">
	  
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