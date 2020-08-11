<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./Style/inputStyle.css"/>
<link rel="stylesheet" type="text/css" href="./Style/background.css"/>
<title>Part Exists</title>
</head>
<body>

	<jsp:include page="Header.jsp" />
	
	<td>
	
	<c:if test="${sessionScope.user.role == 'admin' }">
	
	<h1>Parts Database</h1>
	
	<form method="post" action="PartServlet">
	   
		<ul>
		   
	   		<li>
			   <label for="name">Enter part Name: </label>
			   <input type="text" name="name" placeholder="Enter the part name" required> <br>
			</li>
			
			<hr>
			
			<li>   
			   <label for="number">Enter part Number: </label>
			   <input type="text" name="number" placeholder="Enter the part number" required> <br>
			</li> 
			 
			 <hr>
			 
			<li>   
			   <label for="description"> Enter part Description: </label>
			   <input type="text" name="description" placeholder="Enter the part description" required> <br>
			</li>
			
			<hr>  
			  
			<li>    
			   <label for="price"> Enter part Price: </label>
			   <input type="number" name="price" min="0" step="0.01" placeholder="Enter the part price" required> <br>
			</li> 
			
			<hr>  
			   
			<li>   
			   <label for="stock"> Enter part Amount of stock: </label>
			   <input type="number" name="stock" placeholder="Enter the part stock" min="1"  required> <br>
			</li> 
			
			<hr> 
			  
			<li>  
			   <label for="image"> Enter part image: </label>
			   <input type="text" name="image" placeholder="Enter the part image path"> <br>
			</li> 
			
			<hr>
			  
			<li> 
			   <label for="vapImage"> Use vapormatic picture<br> </label>  
			   <input type="checkbox" name="option" value="imageOp"> <br>
		 		
	   		</li>
	   		
	   		<hr>
	   
	   		<li>
	   			<input type="submit" value="addPart"> 
	   		</li>
	   		<li>
	   			<p>Part already exists please enter a new part</p>
	   		</li>
	   	
		   	</ul>
		   	
	</form>
	
	</c:if>
	
	<c:if test="${sessionScope.user.role != 'admin' }">
		<ul>
			<li>
				<p>Access denied please return to homepage</p>
			</li>
		</ul>
		</c:if>
	   
	</td>
	

</body>
</html>