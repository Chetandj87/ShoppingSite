<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>Your Favorite Place For Shopping</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.8.1/css/bulma.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.8.1/css/bulma.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.8.1/css/bulma.css.map">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
	.button {
	 border-radius: 0;
	 border: none;
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
	.card-footer {
	border: none;
	}
	.label {
	 font-weight: lighter;
	}
	.myclass{
		margin: 0 auto;
	}
	.fix-footer {
    position: absolute;
    width: 100%;
    bottom: 0;
    overflow:hidden;
	}
}
</style>
</head>
<body>
	
	<nav class="navbar" role="navigation" aria-label="main navigation">
  		<div class="navbar-brand">
    		<a class="navbar-item" href="https://bulma.io">
      			<img src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
    		</a>

		    <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
		      <span aria-hidden="true"></span>
		      <span aria-hidden="true"></span>
		      <span aria-hidden="true"></span>
		    </a>
  		</div>

  		<div id="navbarBasicExample" class="navbar-menu">
    		<div class="navbar-start">
				<a class="navbar-item" href="${pageContext.request.contextPath}/home">Home</a>

      <div class="navbar-item has-dropdown is-hoverable">
				<a class="navbar-link">Mobile</a>

        	<div class="navbar-dropdown">
          		<a class="navbar-item" href="${pageContext.request.contextPath}/mobile/add">Add</a>
          		<a class="navbar-item" href="">Display</a>
          		<a class="navbar-item"></a>
          		<hr class="navbar-divider">
         		 <a class="navbar-item"></a>
        	</div>
      </div>
      
				<a class="navbar-item" href="${pageContext.request.contextPath}/aboutus">About Us</a>
				<a class="navbar-item" href="${pageContext.request.contextPath}/contactus">Contact</a>
    </div>

	    <div class="navbar-end">
			<div class="navbar-item">
		        <div class="buttons">
		          <a class="button is-primary" href=""><strong>Sign up</strong></a>
		          <a class="button is-light" href="">Log in</a>
		        </div>
			</div>
	    </div>
	</div>
</nav>
</body>
</html>