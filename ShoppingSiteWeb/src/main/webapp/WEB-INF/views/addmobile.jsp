<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Mobile</title>
</head>
	<jsp:include page="header.jsp"></jsp:include>
		<div class="container">
			<sp:form modelAttribute="mobile" action="${pageContext.request.contextPath}/mobile/add" method="post" cssClass="col-lg-5 col-md-5 col-xm-12 col-xs-12">
			<h1>Add Mobile</h1>
			<div class="form-group">
				<label>Mobile Name</label>
				<sp:input path="mobilename" cssClass="form-control" placeholder="Enter Mobile Name"/>
			</div>
			<div class="form-group">
				<label>Brand Name</label>
				<sp:input path="brandname" cssClass="form-control" placeholder="Enter Brand Name"/>
			</div>
			<div class="form-group">
				<label>RAM</label>
				<sp:input path="ram" cssClass="form-control" placeholder="Enter RAM in GB"/>
			</div>
			<div class="form-group">
				<label>Storage</label>
				<sp:input path="storage" cssClass="form-control" placeholder="Enter Storage in GB"/>
			</div>
			<div class="form-group">
				<input type="submit" value="Add Mobile" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
			</sp:form>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
</html>