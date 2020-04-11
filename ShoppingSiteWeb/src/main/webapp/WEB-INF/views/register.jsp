<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<sp:form modelAttribute="user" action="${pageContext.request.contextPath}/user/add" method="post">
			<h1>Registration Form</h1>
			<div>
				<label>Username</label>
				<sp:input path="username" placeholder="Enter Username"/>
			</div>
			<div>
				<label>Email</label>
				<sp:input path="email" placeholder="Enter Email"/>
			</div>
			<div>
				<label>Password</label>
				<sp:password path="password" placeholder="Enter Password"/>
			</div>
			<div>
				<input type="submit" value="Register"/>
				<input type="reset" value="Reset"/>
			</div>
		</sp:form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>