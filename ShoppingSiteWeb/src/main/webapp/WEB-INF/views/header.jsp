<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.8.1/css/bulma.min.css">
<title>Your Favorite Place For Shopping</title>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	
	<a href="${pageContext.request.contextPath}/home">Home</a>
	<a href="${pageContext.request.contextPath}/mobile/display">Mobiles</a>
	
	<sec:authorize access="hasAuthority('admin') and isAuthenticated()">
		<a href="${pageContext.request.contextPath}/mobile/add">Add</a>
	</sec:authorize>
	
	<sec:authorize access="!isAuthenticated()">
		<a href="${pageContext.request.contextPath}/user/login">Login</a>
		<a href="${pageContext.request.contextPath}/user/add">Register</a>
	</sec:authorize>
	
	<a href="${pageContext.request.contextPath}/aboutus">About Us</a>
	<a href="${pageContext.request.contextPath}/contactus">Contact</a>
	
	<sec:authorize access="isAuthenticated()">
	<a href="${pageContext.request.contextPath}/logout">Logout</a>
	</sec:authorize>
	
</html>