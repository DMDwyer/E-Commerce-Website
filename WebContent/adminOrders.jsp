<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./Style/ordersBackground.css"/>
<title>All Orders</title>
</head>
<body>

	<jsp:include page="Header.jsp" />
	
	<td>
	
	<c:if test="${sessionScope.user.role == 'admin' }">
	
	<h1>List of all orders</h1>
	
		<ul>
			<li>
				<h2>Pending orders</h2>
			</li>
		</ul>
	
	<div class="scroll">
		
		<table id="table1">
			<thead>
				<tr>
					<th>User email</th>
					<th>  Date  </th>
					<th>Name</th>
					<th>Number</th>
					<th>Description</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Status</th>
					<th>Admin Tools</th>
				</tr>
			</thead>
	
		<c:forEach items="${ordersList}" var="orders">
	
			<tbody>	
				
				<tr>
				
				<form method="post" action="CompleteOrderServlet">
				
				<c:if test="${orders.status == 'pending' }">
				
					<input type="hidden" name="user"  value="${orders.user}" />
					<input type="hidden" name="date"  value="${orders.date}" />
					<input type="hidden" name="number"  value="${orders.number}" />
					<input type="hidden" name="quantity"  value="${orders.quantity}" />
			
			
			
					<td><c:out value="${orders.user}" /></td>
					<td><c:out value="${orders.date}" /></td>
					<td><c:out value="${orders.name}" /></td>
					<td><c:out value="${orders.number}" /></td>
					<td><c:out value="${orders.description}" /></td>
					<td><c:out value="${orders.quantity}" /></td>
					<td><c:out value="${orders.price}" /></td>
					<td><c:out value="${orders.status}" /></td>
					<td><input type="submit" value="complete"></td>
					
				</c:if>
				
				</form>	
				
				</tr>
			</tbody>
			
			
			
			</c:forEach>
			
			</table>
		
			</div>
			
			
			<ul>
				<li>
					<h2>Previous orders</h2>
				</li>
			</ul>
			
	<div class="scroll">
			
		<table id="table1">
			<thead>
				<tr>
					<th>User email</th>
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
	
			<tbody>	
				<tr>
				
					<c:if test="${orders.status == 'completed' }">
				
						<td><c:out value="${orders.user}" /></td>
						<td><c:out value="${orders.date}" /></td>
						<td><c:out value="${orders.name}" /></td>
						<td><c:out value="${orders.number}" /></td>
						<td><c:out value="${orders.description}" /></td>
						<td><c:out value="${orders.quantity}" /></td>
						<td><c:out value="${orders.price}" /></td>
						<td><c:out value="${orders.status}" /></td>
				
					</c:if>
		
				</tr>
			</tbody>
	
			</c:forEach>
			</table>
		
			</div>
			
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