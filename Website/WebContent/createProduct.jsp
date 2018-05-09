<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="product" class="product.ProductData" scope="session"/>



<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<title>Post an Ad</title>
</head>


<body>




<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading"><b>Create A New Ad</b></div>
				<div class="panel-body">
					
							<FORM CLASS="form-horizontal" METHOD=POST ACTION="SaveProductDetails.jsp">
							
									<%	java.util.Date date = new java.util.Date();
										String id= date.toString() ;
										product.setId(id);
										System.out.println("product Id :"+product.getId());
										
										String status = "active";
										product.setStatus(status);
										
										String uName = (String)session.getAttribute("username");
										product.setUsername(uName);
										System.out.println("user name :"+product.getUsername());
										%>
							
									<div class="form-group">
										<label class="control-label col-sm-2"><b>Product Title</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Title" NAME=name SIZE=20><BR>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-2"><b>Product Description</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Enter Description" NAME=description SIZE=20><BR>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-2"><b>Product Type</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Enter Instrument Type e.g. guitar,bass,etc." NAME=type SIZE=20><BR>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-2"><b>Image</b></label>
										<INPUT TYPE=TEXT PLACEHOLDER="Enter Image Link" NAME=picture SIZE=20><BR>
									</div>
									

									
								<div class="submit_btn col-md-2">Submit<INPUT TYPE=SUBMIT></div>
								
							</FORM>
				</div>
		</div>
	
	</div>







</body>
</html>