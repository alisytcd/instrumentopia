<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="product" class="product.ProductData" scope="session"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="stylesheets/browse.css?version=4" type="text/css"/>
  

<title>Browse</title>
</head>
<body>

<%@page import ="database.*, product.*,java.sql.*, java.util.*" %>
<%

String userName =(String)session.getAttribute("username");
System.out.println("USEERNAME IS " +userName);

String sqlstmt = "SELECT * FROM db.PRODUCTS";

DatabaseOperation op = new DatabaseOperation();
op.connect();
ResultSet rs = op.getData(sqlstmt);
ArrayList<ProductData> aL = new ArrayList<ProductData>();
try {
	while(rs.next()) {
		
		
		System.out.println(rs.getString(1)+"|"+rs.getString(2)+"|"+rs.getString(3)+"|"+rs.getString(4)+"|"+rs.getString(5)+"|"+rs.getString(6)+"|"+rs.getString(7));
		ProductData pData = new ProductData();
		pData.setId(rs.getString(1));
		pData.setName(rs.getString(2));
		pData.setDescription(rs.getString(3));
		pData.setStatus(rs.getString(4));
		pData.setPicture(rs.getString(5));
		pData.setUsername(rs.getString(6));
		pData.setType(rs.getString(7));
		
		
		aL.add(pData);
	}
	
	
	request.setAttribute("prods",aL);
	
}catch(Exception e) {e.printStackTrace();}







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
        <li ><a href="index.jsp"  style="color:white">Home</a></li>
        
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

<div class="container" >
	
	 
	 <div id="browse">
 	 
	 	
	 	<%-- <c:forEach var="product" items="${prods}">
	 	 
	 	 	  <td>
        			<c:out value="${product.id}"/>
        			
   			 </td>
	 	
	 	</c:forEach> --%>
	 	
	 	
	 	<%
	 		for(int i = 0 ; i < aL.size();i++){
	 			String res = aL.get(i).getId();
	 			System.out.println(res);
	 			%>
	 				
	 				
	 				<div class="col-md-12" id="details">
	 				
	 						<div class="col-md-4"><img src="<%=aL.get(i).getPicture() %>" class="img-thumbnail"></div>
			 				<div class="col-md-8" id="postText">
			 				
				 				<h3><a href="product.jsp"><%=aL.get(i).getName() %></a></h3>
				 				
				 				<p><%=aL.get(i).getDescription() %></p> 
				 				<h4>User: <%=aL.get(i).getUsername() %></h3>
				 				<%if(aL.get(i).getStatus().equals("active")){ %>
				 					<h4 style="color:green">Status :<%=aL.get(i).getStatus()%> </h4>
				 				<%}
				 				else {
				 				%> 	<h4 style="color:red"> Status :<%=aL.get(i).getStatus() %>  </h4>
				 					
				 				<%}%>
				 				
				 				<h4>POSTED ON :<%=res %></h2>
				 				
				 			</div>	
			 				
	 				</div>
	 				
	 				
	 			
	 			<%
	 			
	 			
	 			
	 			
	 		}
	 	
	 	%>
	 	
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