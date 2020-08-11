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
	
	<c:if test="${sessionScope.user.role == 'admin' }">
	
	<h2>Website views</h2>
	
	<table id="table1">
	
		<thead>
			<tr>
				<th>Number of views</th>
			</tr>
		</thead>
				
		<tbody>	
			<tr>
				<td><c:out value="${counter.hits}" /></td>	
			</tr>
		</tbody>			

	</table>
			
	</td>
	
	
	<h2>Parts Low in Stock</h2>
	
	<div class="scroll">
		
		<table id="table1">
		
			<thead>
			
				<tr>
					<th class="left"> </th>
					<th>Name</th>
					<th>Number</th>
					<th>Price</th>
					<th>Stock</th>
					<th>Update Stock</th>
				</tr>
				
			</thead>
			
			<c:forEach items="${partList}" var="part">	
		
			<tbody>	
			
				<tr>
					<c:if test="${part.stock <= 2 }">
					
						<td><img height="100px" width="100px" src="<c:out value ="${part.image}"/>" ></td>
						<td><c:out value="${part.name}" /></td>
						<td><c:out value="${part.number}" /></td>
						<td><c:out value="${part.price}" /></td>
						<td><c:out value="${part.stock}" /></td>
						<td>
							<form method="post" action="UpdateStockServlet">
							
								<li>
									<input type="hidden" name="updateNumber"  value="${part.number}" />
					   				<label for="updateStock">Update Stock: </label><input type="text" name="stock"/>
					   				<input type="submit" value="Update Stock"> <br>
					   			</li>
					   			
					   		</form>
						</td>
						
					</c:if>
				</tr>
				
			</tbody>
			
		</c:forEach>
		
		</table>
		
	</div>
	
	</c:if>
	
	</td>

</body>
</html>