<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./Style/background.css"/>
<link rel="stylesheet" type="text/css" href="./Style/tables.css"/>
<title>My Orders</title>
</head>
<body>

	<jsp:include page="Header.jsp" />
	
	<td>
	
	<h1>My Orders</h1>
	
	<div class="scroll">
		
	<table id="table1">
		
		<thead>
			<tr>
				<th>Date</th>
				<th>Name</th>
				<th>Number</th>
				<th>Description</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Status</th>
			</tr>
		</thead>
	
	<c:forEach items="${ordersList}" var="orders">
	
	<c:if test="${sessionScope.user.email == orders.user}">
		
		<tbody>	
			<tr>
				<td><c:out value="${orders.date}" /></td>
				<td><c:out value="${orders.name}" /></td>
				<td><c:out value="${orders.number}" /></td>
				<td><c:out value="${orders.description}" /></td>
				<td><c:out value="${orders.quantity}" /></td>
				<td><c:out value="${orders.price}" /></td>
				<td><c:out value="${orders.status}" /></td>	
			</tr>
		</tbody>
			
	</c:if>
			
	</c:forEach>
			
	</table>
		
	</div>

	</td>


</body>
</html>