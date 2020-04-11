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
	<div class="navbar is-dark">
	<div class="navbar-menu">
		<div class="navbar-brand">
		Shopping Site
		</div>
	
	  	<div class="navbar-start">
	    	<a class="navbar-item" href="${pageContext.request.contextPath}/home">Home</a>
	    	<a class="navbar-item" href="${pageContext.request.contextPath}/mobile/display">Mobiles</a>
	    	<sec:authorize access="hasAuthority('admin') and isAuthenticated()">
				<a class="navbar-item" href="${pageContext.request.contextPath}/mobile/add">Add</a>
			</sec:authorize>
	    	<a class="navbar-item" href="${pageContext.request.contextPath}/aboutus">About Us</a>
			<a class="navbar-item" href="${pageContext.request.contextPath}/contactus">Contact</a>
	  	</div>
	
	  	<div class="navbar-end">
	    	<div class="navbar-item">
        	<div class="field is-grouped">
        	<sec:authorize access="!isAuthenticated()">
          		<p class="control">
          			<a class="button is-link" href="${pageContext.request.contextPath}/user/login">Login</a>
				</p>
          		<p class="control">
          			<a class="button is-success" href="${pageContext.request.contextPath}/user/add">Register</a>
          		</p>
          	</sec:authorize>
          	<sec:authorize access="isAuthenticated()">
          		<p class="control">
          			<a class="button is-danger" href="${pageContext.request.contextPath}/logout">Logout</a>
          		</p>
          	</sec:authorize>
	  		</div>
	  		</div>
		</div>
	</div>
	</div>
</html>