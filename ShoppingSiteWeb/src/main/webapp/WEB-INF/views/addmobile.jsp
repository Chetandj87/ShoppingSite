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
		<div class="container myclass">
		<div class="card">
			<sp:form modelAttribute="mobile" action="${pageContext.request.contextPath}/mobile/add" method="post" cssClass="col-lg-5 col-md-5 col-xm-12 col-xs-12">
			<h1 class="title">Add Mobile</h1>
			
			<div class="field is-horizontal">
			<div class="field-label is-normal">
		    	<label class="label">Mobile Name</label>
			</div>
			<div class="field-body">
		    <div class="field">
				<div class="control">
		        	<sp:input path="mobilename" cssClass="input" placeholder="Enter Mobile Name"/>
				</div>
		    </div>
			</div>
			</div>
			
			<div class="field is-horizontal">
			<div class="field-label is-normal">
				<label class="label">Brand Name</label>
			</div>
			<div class=field-body>
			<div class="field">
				<div class="control">
					<sp:input path="brandname" cssClass="input" placeholder="Enter Brand Name"/>
				</div>
			</div>
			</div>
			</div>
			
			<div class="field">
				<label>RAM</label>
				<div class="control">
					<sp:input path="ram" cssClass="input" placeholder="Enter RAM in GB"/>
				</div>
			</div>
			<div class="field">
				<label>Storage</label>
				<div class="control">
					<sp:input path="storage" cssClass="input" placeholder="Enter Storage in GB"/>
				</div>
			</div>
			<div class="field is-grouped">
			<p class="control">
				<input type="submit" value="Add Mobile" class="button is-primary"/>
			</p>
			<p class="control">
				<input type="reset" value="Reset" class="button is-light"/>
			</p>
				
			</div>
			</sp:form>
		</div>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
</html>