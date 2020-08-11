<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./Style/background.css"/>
<link rel="stylesheet" type="text/css" href="./Style/inputStyle.css"/>
<title>Admin Tools</title>
</head>
<body>

	<jsp:include page="Header.jsp" />
	
	<td>
	
		<c:if test="${sessionScope.user.role == 'admin' }">
		
	
		<h1> Admin Tools</h1>
	
		<ul>
		
			<li>
				<a href="part.jsp"> Add Part</a> <br>
			</li>
			
			<hr>
			
			<li>
				<a href="ListFeedbackServlet">List Feedback</a> <br>
			</li>
			
			<hr>
			
			<li>
				<a href="AdminOrdersServlet">List All Orders</a> <br>
			</li>
			
			<hr>
			
			<li>
				<a href="LowStockServlet">Web Info</a> <br>
			</li>
			
			<hr>
			
			<li>
				<a href="registerAdmin.jsp">Add new admin account</a> <br>
			</li>
			
			<hr>
			
		</ul>
		
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