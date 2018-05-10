<%-- 
    Document   : newjsp
    Created on : Nov 2, 2017, 8:51:48 PM
    Author     : whatup
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="login.css" type="text/css"/>
        <title>log in</title>
        <%
            try{
            String user=request.getParameter("userName");
            
            if(user.length()>0 && user!=null)
            {
                out.print("<script type='text/javascript'>alert('good');</script>");
            }
            }catch(Exception e){
                
            }
        %>
        
        <script type="text/javascript">
        
        </script>
    </head>

    <body>
<!--         <div class="container"> -->
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
      	<li ><a href="index.jsp" style ="color:white">Home</a>
        <li ><a href="index.jsp"  style="color:white">Browse</a></li>

        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">

        <li><a href="login.jsp"  style="color:white"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>

      </ul>
      
    </div>
  </div>
</nav>      
        
        
        
        
      <div class="container">  
            <div class="panel panel-primary">
                <div class="panel-heading">Log in</div>
                <div class="panel-body">
                    <form class="form-horizontal" action="verify.jsp">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="user">User Name:</label>
                            <div class="col-sm-6">
                                <input class="form-control" id="user" placeholder="Enter user" name="userName" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="pwd">Password:</label>
                            <div class="col-sm-6">          
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password"/>
                            </div>
                        </div>
                        <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label><input type="checkbox"/> Remember me</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-info" onclick="">Submit</button>
                            </div>
                        </div>
                        
                        <div class="form-group">        
                            <div class="col-sm-offset-2 col-sm-10">
                             
                             <a href="AccountCreation.jsp">Create a new account here</a>
                               
                            </div>
                        </div>
                        
                    </form>
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
