<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./Style/inputStyle.css"/>
<link rel="stylesheet" type="text/css" href="./Style/background.css"/>
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="Header.jsp" />
	
	<td>
		
	<h1>Show Product</h1>
	
	<form method="post" action="AddToCartServlet">
		
		<ul>
			
			<li>
		 		<img height="250px" width="250px" src="<c:out value ="${part.image}"/>" > <br>
			</li>
			
			<table id="table1">
			
				<thead>
					<tr>
						<th class="left">Name: </th>
						<th><c:out value="${part.name}" /></th>
					</tr>
				</thead>
			
				<tbody>	
					<tr>	
						<td>Number: </td>
						<td><c:out value="${part.number}" /></td>
					</tr>
				</tbody>
			
				<tfoot>	
					<tr>	
						<td>Price: </td>
						<td><c:out value="${part.price}" /></td>
					</tr>
				</tfoot>
				
			</table>
		 	
		 	
			<table id="table1"> 
			
				<tbody>	
					<tr>	
				 		<td><label for="description"> Description: </label></td>
			 		</tr>	
				</tbody>
				
				<tfoot>
					<tr>
						<td><c:out value="${part.description}" /> <br></td>
					</tr>
				</tfoot>
				
				
			</table>
			 	
		 	<c:if test="${sessionScope.user != null }">
		 	
		 	<li>
		 		<label for="numItems"> Number Items: </label>
		 		<input type="number" name="quantity" placeholder="Enter number of items" min="1" max='${part.stock}' required>
		 	</li>
		 	
		 	<input type="hidden" name="number" value="<c:out value='${part.number}'/>">
		 	
		 	<li>
		 		<input type="submit" value="Add to cart" />
			</li>
			
			</c:if>
			
			
			<c:if test="${sessionScope.user == null }">
				<li>Please <a href="login.jsp">Login</a> to buy parts </li>	
			</c:if>
		
		</ul>
		
		</form>
		
		</td>
		
</body>
</html>