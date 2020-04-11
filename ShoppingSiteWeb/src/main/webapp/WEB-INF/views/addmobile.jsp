<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Mobile</title>
</head>
	<jsp:include page="header.jsp"></jsp:include>
		
		<c:if test="${m==null}">
		<sp:form modelAttribute="mobile" action="${pageContext.request.contextPath}/mobile/add" method="post" enctype="multipart/form-data">
			
			<h1>Add Mobile</h1>
			
			<label class="label">Mobile Name</label>
			<sp:input path="mobilename" cssClass="input" placeholder="Enter Mobile Name"/>
			
			<label class="label">Brand Name</label>
			<sp:input path="brandname" cssClass="input" placeholder="Enter Brand Name"/>
			
			<label>RAM</label>
			<sp:input path="ram" cssClass="input" placeholder="Enter RAM in GB"/>
				
			<label>Storage</label>
			<sp:input path="storage" cssClass="input" placeholder="Enter Storage in GB"/>
			
			<label>Select Image</label>
			<input type="file" name="image" accept="image/*"/>
				
			<input type="submit" value="Add Mobile" class="button is-primary"/>
			<input type="reset" value="Reset" class="button is-light"/>
			
		</sp:form>
		</c:if>
		
		<c:if test="${m!=null}">
		<sp:form modelAttribute="m" action="${pageContext.request.contextPath}/mobile/edit" method="post">
			
			<h1>Edit Mobile</h1>
			
			<label class="label">Mobile Name</label>
			<sp:input path="mobilename" cssClass="input" placeholder="Enter Mobile Name"/>
			
			<label class="label">Brand Name</label>
			<sp:input path="brandname" cssClass="input" placeholder="Enter Brand Name"/>
			
			<label>RAM</label>
			<sp:input path="ram" cssClass="input" placeholder="Enter RAM in GB"/>
				
			<label>Storage</label>
			<sp:input path="storage" cssClass="input" placeholder="Enter Storage in GB"/>
				
			<input type="submit" value="Update Mobile" class="button is-primary"/>
			<input type="reset" value="Reset" class="button is-light"/>
			
		</sp:form>
		</c:if>
		
	<jsp:include page="footer.jsp"></jsp:include>
</html>