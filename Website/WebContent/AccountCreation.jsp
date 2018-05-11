<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Account Creation</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="accountCreation.css" type="text/css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>




	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading"><b>Create A New Account</b></div>
				<div class="panel-body">
					
							<FORM CLASS="form-horizontal" METHOD=POST ACTION="SaveDetails.jsp" enctype='multipart/form-data'>
							
	
							
									<div class="form-group">
										<label class="control-label col-sm-2"><b>Username</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Enter Username" NAME=username SIZE=20><BR>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-2"><b>Address</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Enter Address" NAME=address SIZE=20><BR>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-2"><b>Name</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Enter Full Name" NAME=name SIZE=20><BR>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-2"><b>Phone</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Enter Phone No." NAME=phone SIZE=20><BR>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-2"><b>E-mail</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Enter Email" NAME=email SIZE=20><BR>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-2"><b>Profile Picture</b></label>
										<INPUT TYPE=file NAME=picture>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-2"><b>Password</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Choose Password" NAME=password SIZE=20><BR>
									</div>
									
								<div class="submit_btn col-md-2">Submit<INPUT TYPE=SUBMIT></div>
								
							</FORM>
				</div>
		</div>
	
	</div>
</body>
</html>