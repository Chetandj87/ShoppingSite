<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags" %>
<!-- JSTL Library (JSP Standard Tag Library) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href='<sp:url value="/css/mobiles.css"></sp:url>'/>
<meta charset="ISO-8859-1">
<title>Mobiles - Shopping Site</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
    <section class="section">
    	<div class="container">
    		<h2 class="title">Popular Mobiles</h2>
    	</div>
    	
    	<section class="section">
    	<div class="container">
    	<c:forEach items="${mobiles}" var="mobile">
		        <div class="card">
				<div class="card-image">
					<figure class="image is-4by4">
						<a href="${pageContext.request.contextPath}/mobile/display/${mobile.mobileid}">
						<img src='<sp:url value="/images/${mobile.mobilename}/${mobile.mobileimage}"></sp:url>' alt="">
						</a>
					</figure>
				</div>
				
				<div class="card-content">
					<div class="media">
						<div class="media-content">
							<p class="title is-4">
							<a href="${pageContext.request.contextPath}/mobile/display/${mobile.mobileid}">
							${mobile.mobilename}
							</a>
							</p>
							<p class="subtitle is-6">${mobile.brandname}</p>
						</div>
					</div>
					
					<div class="field is-grouped is-grouped-multiline">
						<div class="control">
						<div class="tags has-addons">
							<span class="tag is-dark">RAM</span>
							<span class="tag is-link">${mobile.ram}GB</span>
						</div>
						</div>
						<div class="control">
						<div class="tags has-addons">
							<span class="tag is-dark">Storage</span>
							<span class="tag is-link">${mobile.storage}GB</span>
						</div>
						</div>
					</div>
				</div>
				
				<footer class="card-footer">
					<sec:authorize access="hasAuthority('admin') and isAuthenticated()">
					<a href="#" class="card-footer-item">Edit</a>
					<a href="#" class="card-footer-item">Delete</a>
					</sec:authorize>
					<sec:authorize access="!hasAuthority('admin')">
					<a href="#" class="card-footer-item">Add to Cart</a>
					<a href="#" class="card-footer-item">Buy Now</a>
					</sec:authorize>
				</footer>
				</div>
	        </c:forEach>
	        </div>
		</section>
	</section>
<jsp:include page="footer.jsp"></jsp:include>
</html>