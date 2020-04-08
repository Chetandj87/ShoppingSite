<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login - Shopping Site</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<main>
<div class="container">
<div class="columns is-centered">
<div class="card">
	<div class="card-content login">
		<p class="title">Already a member?</p>
		<p class="subtitle">Sign in to continue.</p>
 		<div class="field">
 			<label class="label">Email</label>
 		<div class="control">
 			<input class="input" name="username" type="text" placeholder="Email address">
 		</div>
 		</div>
 		<div class="field">
 			<label class="label">Password</label>
 		<div class="control">
	 		<input class="input" name="password" type="email" placeholder="My password">
 		</div>
 		</div>
 			<h6 class="subtitle is-6 has-text-centered">or</h6>
 		<div class="has-text-centered">
 			<a class="button is-link">Facebook</a>
 			<a class="button is-info">Twitter</a>
 		</div>
 		</div>
 		<footer class="card-footer">
 			<p class="card-footer-item register"><span>Register</span></p>
 		</footer>
</div>
</div>
</div>
</main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>