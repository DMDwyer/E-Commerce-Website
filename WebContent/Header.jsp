<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./Style/Header.css"/>
<link rel="stylesheet" type="text/css" href="./Style/tables.css"/>
</head>
<body>

   

	<nav>

	<ul>
		
		<c:url value="MyAccount.jsp" var="showUrl"></c:url>
		
		<c:if test="${sessionScope.user == null }">
   		<li><a href="register.jsp"> Register</a>
   		</li>
   		
   		<li><a href="login.jsp"> Login</a>
   		</li>
   		</c:if>
   		
   		<c:if test="${sessionScope.user != null }">
   		
		<li>Current user: <td><a href="<c:out value='${showUrl}' />"><c:out value="${sessionScope.user.name }"/></li></a>
		 	
   		<li><a href="LogoutServlet"> Logout</a>
   		</li>
   		</c:if> 
   		
   	</ul>
	</nav>
	
	
	<a href="index.jsp">
		<img src=".\image\logo.jpg" alt="logo" style="width:900px;height:228px;">
	</a>
	
	
   
   <table id="table1">
		<thead>
			<tr>
				<th><a href="ListPartServlet">Part List</a> </th>
				<th><a href="ListCartServlet">Current Cart</a></th>
				<th><a href="feedback.jsp">Contact Us</a></th>
				<c:if test="${sessionScope.user.role == 'admin' }">
					<th><a href="admin.jsp">Admin</a></th>
				</c:if>
			</tr>
		</thead>
	</table>

	<hr>

</body>
</html>