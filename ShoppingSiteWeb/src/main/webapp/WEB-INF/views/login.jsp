<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login - Shopping Site</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<form action='<sp:url value="/loginaction"></sp:url>' method="post">
			<h1>Login Page</h1>
			<div>
				<label>Enter Username</label>
				<input type="text" name="username" placeholder="Enter Username"/>
			</div>
			<div>
				<label>Enter Password</label>
				<input type="password" name="password" placeholder="Enter Password"/>
			</div>
			<div>
				<input type="submit" value="Login"/>
				<input type="reset" value="Reset"/>
				<input type="submit" value="Forgot Password"/>
			</div>
	</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>