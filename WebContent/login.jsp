<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./Style/inputStyle.css"/>
<link rel="stylesheet" type="text/css" href="./Style/background.css"/>
<title>Login</title>
</head>
<body>

	<jsp:include page="Header.jsp" />
	
	<td>
	
	<h1>Login</h1>
	
	<form method="post" action="LoginServlet">
		   
		<ul>
	   		
			<li>
				<lable for="email" >Enter email: </lable>
				<input type="text" name="email"	placeholder="Enter you account email" required> <br>
			</li>
	
			<li>
				<lable for ="email">Enter password: </lable> 
				<input type="password" name="password" placeholder="Enter you account password" required> <br>
			</li>
	
			<li>
				<input type="submit" value="login">
			</li>
			
	   	</ul>
	   		
	</form>
	   
	</td>

</body>

</html>