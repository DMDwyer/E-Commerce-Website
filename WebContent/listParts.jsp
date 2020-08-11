<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./Style/inputStyle.css"/>
<link rel="stylesheet" type="text/css" href="./Style/background.css"/>
<link rel="stylesheet" type="text/css" href="./Style/tables.css"/>
<title>List Parts</title>
</head>
<body>

	<jsp:include page="Header.jsp" />
	
	<td>
	
		<h1>List of Parts</h1>
		<ul>
			<form method="get" action="SearchServlet">
			<li>
	   			<label for="search">Enter Search: </label><input type="text" name="number" placeholder="Enter part number" autocomplete="on"/>
	   			<input type="submit" value="search">
	   		</li>
	   		</form>
		</ul>
		
		<hr>
	
		<div class="scroll">
		
		<table id="table1">
			<thead>
				<tr>
					<th class="left"> </th>
					<th>Name</th>
					<th>Number</th>
					<th>Price</th>
					<c:if test="${sessionScope.user.role == 'admin' }">
					<th>Stock</th>
					<th>Admin tools</th>
					</c:if>
				</tr>
			</thead>
			
		<c:forEach items="${partList}" var="part">
				<c:url value="ShowPartServlet" var="showUrl">
					<c:param name="number" value="${part.number}" />
				</c:url>
				
				
				
			<tbody>	
				<tr>
				
					
					<td><img height="100px" width="100px" src="<c:out value ="${part.image}"/>" ></td>
					<td><a href="<c:out value='${showUrl}' />">
					<c:out value="${part.name}" /></a></td>
					<td><c:out value="${part.number}" /></td>
					<td><c:out value="${part.price}" /></td>
					
					<c:if test="${sessionScope.user.role == 'admin' }">
					
					<td><c:out value="${part.stock}" /></td>
						<td>
						
							<form method="post" action="UpdateStockServlet">
					
								<li>
									<input type="hidden" name="updateNumber"  value="${part.number}" />
					   				<label for="updateStock">Update Stock: </label><input type="text" name="stock"/>
					   				<input type="submit" value="Update Stock"> <br>
					   			</li>
					   			</form>
					   			
					   			<form method="post" action="UpdatePriceServlet">
								<li>
									<input type="hidden" name="updateNumber"  value="${part.number}" />
					   				<label for="updatePrice">Update Price: </label><input type="text" name="price"/>
					   				<input type="submit" value="Update Price"> <br>
					   			</li>
					   			
		   					</form>
		   			
				   			<form method="post" action="DeletePartServlet">
								<li>
									<input type="hidden" name="updateNumber"  value="${part.number}" />
					   				<input type="submit" value="Delete Part"> <br>
					   			</li>
				   			</form>
		   	
		   			   	</td>
	   			   </c:if>
				</tr>
			</tbody>
				
					
		</c:forEach>
		</table>
		
		</div>
		
	</td>

</body>
</html>