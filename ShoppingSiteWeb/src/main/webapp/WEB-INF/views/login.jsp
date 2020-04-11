<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login - Shopping Site</title>
<style type="text/css">
.button.noradius {
 border-radius: 0px;
 border: none;
}
.card-footer-item.nopadding{
padding: 0px;
}
.card-content.login {
background-color: #f9f6f6;
 border: none;
 height: 400px;
 padding: 20px;
}
.card-footer-item.register {
 background-color: #284863;
 color: white;
}
.input{
border-width:1px;
 border-radius:15px;
}
.card-footer.noborder {
border: none;
border-top:0px;
}
.label {
 font-weight: lighter;
}
</style>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<section class="section">
	<div class="container">
		<h2 class="title">Login Page</h2>
		<div class="columns is-centered">
		<div class="column is-3">
		<div class="card">
			<form action='<sp:url value="/loginaction"></sp:url>' method="post">
			<div class="card-content login">
					 <p class="title">Already a member?</p>
					 <p class="subtitle">Sign in to continue.</p>
					 
					<div class="field">
						<label class="label">Enter Username</label>
						<div class="control">
						<input class="input" type="text" name="username" placeholder="Enter Username"/>
						</div>
					</div>
					<div class="field">
						<label class="label">Enter Password</label>
						<div class="control">
						<input class="input" type="password" name="password" placeholder="Enter Password"/>
						</div>
					</div>
			</div>
			<footer class="card-footer noborder">
					<p class="card-footer-item nopadding"><input class="button is-primary is-fullwidth noradius" type="submit" value="Login"/></p>
			</footer>
			<footer class="card-footer noborder">
					<p class="card-footer-item nopadding"><input class="button is-info is-fullwidth noradius" type="reset" value="Reset"/></p>
			</footer>
			<footer class="card-footer noborder">
					<p class="card-footer-item nopadding"><input class="button is-warning is-fullwidth noradius" type="submit" value="Forgot Password"/></p>
			</footer>
			
			</form>
		</div>
		</div>
	</div>
	</div>
</section>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>