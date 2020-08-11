<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./Style/background.css"/>
<link rel="stylesheet" type="text/css" href="./Style/tables.css"/>
<title>List Feedback</title>
</head>
<body>

	<jsp:include page="Header.jsp" />
	
	<td>
	
	<c:if test="${sessionScope.user.role == 'admin' }">
	
	<h1>List of Feedback Received</h1>
	
	<div class="scroll">
		
		<table id="table1">
			<thead>
				<tr>
					<th class="left">Date</th>
					<th>Feedback</th>
				</tr>
			</thead>
	
	<c:forEach items="${feedbackList}" var="feedback">
			
			<tbody>	
				<tr>
					<td><c:out value="${feedback.date}" /></td>
					<td><c:out value="${feedback.name}" /></td>
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