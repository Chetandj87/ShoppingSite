<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<section class="section">
	<div class="container">
	<div class="columns">
		<div class="column">
		<figure class="image is-4by4">
			<img alt="${mobile.mobilename}" src='<sp:url value="/images/${mobile.mobilename}/${mobile.mobileimage}"></sp:url>'>
		</figure>
		</div>
		<div class="column  is-two-fifths">
			<nav class="breadcrumb" aria-label="breadcrumbs">
			<ul>
				<li><a href="${pageContext.request.contextPath}/home">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/mobile/display">Mobiles</a></li>
				<li class="is-active"><a href="${pageContext.request.contextPath}/mobile/display/${mobile.mobileid}" aria-current="page">${mobile.mobilename}</a></li>
			</ul>
			</nav>
			
			<h2 class="title">${mobile.mobilename}</h2>
			
			<p class="subtitle">${mobile.brandname}</p>
			
			<div class="container">
				<div class="notification">
					RAM: ${mobile.ram}GB
				</div>
				<div class="notification">
					Storage: ${mobile.storage}GB
				</div>
			</div>
			
			<div class="column is-full">
			<div class="container">
			<div class="field is-grouped">
				<p class="control">
				<a class="button is-link" href="">Add to Cart</a>
				</p>
				<p class="control">
				<a class="button is-success" href="">Buy Now</a>
				</p>
				<sec:authorize access="hasAuthority('admin') and isAuthenticated()">
				<p class="control">
				<a class="button is-warning" href="${pageContext.request.contextPath}/mobile/edit/${mobile.mobileid}">Edit</a>
				</p>
				<p class="control">
				<a class="button is-danger" href="${pageContext.request.contextPath}/mobile/delete/${mobile.mobileid}">Delete</a>
				</p>
				</sec:authorize>
			</div>
			</div>
			</div>
		</div>
		
		<div class="column">
			<p>New options will be available soon.</p>
		</div>
	</div>
	</div>
	</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>