<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="org.openqa.selenium.By" %>
<%@ page import="org.openqa.selenium.Keys" %>
<%@ page import="org.openqa.selenium.WebDriver" %>
<%@ page import="org.openqa.selenium.chrome.ChromeDriver" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./Style/inputStyle.css"/>
<link rel="stylesheet" type="text/css" href="./Style/background.css"/>
<link rel="stylesheet" type="text/css" href="./Style/tables.css"/>
<title>Search Result</title>
</head>
<body>

	<jsp:include page="Header.jsp" />
	
	<td>
	
	<h1>Search Result</h1>
		
	
		
	<form method="get" action="SearchServlet">
		
		<ul>
		
			<li>
	   			<label for="search">Enter Search: </label><input type="text" name="number" placeholder="Enter part number" autocomplete="on"/>
	   			<input type="submit" value="search">
	   		</li>
	   		
	   	</ul>
	   	
	</form>
	
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
					<th>Admin tools</th>
					</c:if>
				</tr>
			</thead>
			
		
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
			
			</table>
		
		</div>
			
		<c:if test="${part.name == null }">
		<p>We're sorry we do not currently supply this part please visit the following <a href=${get}> link </a> to find you nearest alternative dealer</p>
		</c:if>
		
		<c:if test="${part.stock == 0 }">
		<p>We're sorry we do not currently have this part in stock please visit the following <a href=${get}> link </a> to find you nearest alternative dealer</p>
		</c:if>

	</td>
	
</body>
</html>