<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./Style/inputStyle.css"/>
<link rel="stylesheet" type="text/css" href="./Style/background.css"/>
<title>Feedback</title>
</head>
<body>
	
	<jsp:include page="Header.jsp" />

	<td>
	
   <h1>Contact Us</h1>

   <form method="post" action="FeedbackServlet">
   
   		<ul>
   		
   			<li>
   				<label for="feedback">Enter FeedBack: </label>
   				<textarea rows="4" cols="50" name="name" placeholder="Please enter any feedback about our sevices here" required></textarea> <br>
   			</li>
   
   			<li>
   				<input type="submit" value="Submit Feedback">
   			</li>
   
   		</ul>
   
   </form>
   
   </td>
</body>
</html>