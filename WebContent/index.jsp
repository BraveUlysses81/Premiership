<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<title>EPL Pool Login</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body id="login">
	<header>This Is The Login!</header><br>
	
	<form action="LoginServlet" method="post">
		<label for="username">username:</label> 
		<input type="text" id="username" name="username"/>
		<br>
		<label for="password">password:</label>
		<input type="password" id="password" name="password"/>
		<br><br>
		<button id="submitLogin" type="submit" value="Login">Login</button>
	</form>
	
	<p id="loginMessage">${message}</p>

</body>
</html>
