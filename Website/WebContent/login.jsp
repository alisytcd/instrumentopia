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
    </body>
</html>
