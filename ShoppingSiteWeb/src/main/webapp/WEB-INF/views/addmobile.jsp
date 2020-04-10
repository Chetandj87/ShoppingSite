<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Mobile</title>
</head>
	<jsp:include page="header.jsp"></jsp:include>
		<sp:form modelAttribute="mobile" action="${pageContext.request.contextPath}/mobile/add" method="post" cssClass="col-lg-5 col-md-5 col-xm-12 col-xs-12">
			
			<h1>Add Mobile</h1>
			
			<label class="label">Mobile Name</label>
			<sp:input path="mobilename" cssClass="input" placeholder="Enter Mobile Name"/>
			
			<label class="label">Brand Name</label>
			<sp:input path="brandname" cssClass="input" placeholder="Enter Brand Name"/>
			
			<label>RAM</label>
			<sp:input path="ram" cssClass="input" placeholder="Enter RAM in GB"/>
				
			<label>Storage</label>
			<sp:input path="storage" cssClass="input" placeholder="Enter Storage in GB"/>
				
			<input type="submit" value="Add Mobile" class="button is-primary"/>
			<input type="reset" value="Reset" class="button is-light"/>
			
		</sp:form>
		
	<jsp:include page="footer.jsp"></jsp:include>
</html>