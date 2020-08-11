<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./Style/background.css"/>
<link rel="stylesheet" type="text/css" href="./Style/tables.css"/>
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="Header.jsp" />
	
	<td>
	
	<c:if test="${sessionScope.user != null }">
	
	<h1>Cart list</h1>
	
	<div class="scroll">
		
		<table id="table1">
			<thead>
				<tr>
					<th class="left"> </th>
					<th>Name</th>
					<th>Number</th>
					<th>Quantity</th>
					<th>Price</th>
				</tr>
			</thead>
	
	<c:forEach items="${cartList}" var="cart">
			
			<tbody>	
				<tr>
					<td><img height="100px" width="100px" src="<c:out value ="${cart.image}"/>" ></td>
					<td><c:out value="${cart.name}" /></td>
					<td><c:out value="${cart.number}" /></td>
					<td><c:out value="${cart.quantity}" /></td>
					<td><c:out value="${cart.price}" /></td>
					
				</tr>
			</tbody>
				
			
	</c:forEach>
			</table>
		
			</div>
			
			<ul>
				<form method="post" action="OrdersServlet">
					<li>
			   			<input type="submit" value="checkout">
			   		</li>
			   	</form>
			</ul>
		
	</c:if>
	
	<c:if test="${sessionScope.user == null }">
	
			<ul>
				<li>Please <a href="login.jsp"> Login</a> to buy parts
		   		</li>
			</ul>
			
	</c:if>	
	
	</td>

</body>
</html>