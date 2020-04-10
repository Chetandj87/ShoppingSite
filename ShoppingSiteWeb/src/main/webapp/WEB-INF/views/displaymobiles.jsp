<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags" %>
<!-- JSTL Library (JSP Standard Tag Library) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.8.1/css/bulma.min.css">
<meta charset="ISO-8859-1">
<title>Mobile's</title>
</head>
	<jsp:include page="header.jsp"></jsp:include>
    	<h3 class="h3">Popular Books</h3>
    		<c:forEach items="${mobiles}" var="mobile">
		        <div class="card">
				<div class="card-image">
					<figure class="image is-4by3">
						<img src="https://bulma.io/images/placeholders/1280x960.png" alt="Placeholder image">
					</figure>
				</div>
				
				<div class="card-content">
					<div class="media">
						<div class="media-content">
							<p class="title is-4">${mobile.mobilename}</p>
						</div>
					</div>
				</div>
				</div>
	        </c:forEach>
	<jsp:include page="footer.jsp"></jsp:include>
</html>