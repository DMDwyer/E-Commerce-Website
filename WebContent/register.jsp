<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./Style/inputStyle.css"/>
<link rel="stylesheet" type="text/css" href="./Style/background.css"/>
<title>Register</title>
</head>
<body>
	
	<jsp:include page="Header.jsp" />
	
	<td>
	
	<h1>Register</h1>

	<form method="post" action="RegisterServlet">
	   
	   <ul>
	   
	   		<li>
	   			<label for="name">Enter name: </label>
	   			<input type="text" name="name" placeholder="Enter your name" required/> <br>
	   		</li>
	   		
	   		<li> 
	   			<label for="email">Enter email: </label> 
	   			<input type="text" name="email" placeholder="Enter your email address" required> <br>
	   		</li>
	   		
	   		<li>
	   			<label for="password">Enter password: </label> 
	   			<input type="text" name="password" pattern="(?=.*[A-Z]).{4,}" title="Must be at least a lenght of four with one uppercase letter" placeholder="Enter a password" required> <br>
	   		</li>
	   		
	  		<li>
	   			<input type="submit" value="register">
	   		</li>
	   		
	   	</ul>
	   	
	</form>

	</td>
	
</body>
</html>