<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Contact us</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
<section class="section">
	<div class="container">
	<h2 class="title">Contact us</h2>
	<div class="columns">
	  	<div class="column is-half">
	  		<div class="field">
			  <label class="label">Name</label>
			  <div class="control">
			    <input class="input" type="text" placeholder="e.g Alex Smith">
			  </div>
			</div>
			
			<div class="field">
			  <label class="label">Email</label>
			  <div class="control">
			    <input class="input" type="email" placeholder="e.g. alexsmith@gmail.com">
			  </div>
			</div>
			
			<div class="field">
			  <label class="label">Subject</label>
			  <div class="control">
			    <input class="input" type="text" placeholder="e.g. Partnership opportunity">
			  </div>
			</div>
			
			<div class="field">
				<label class="label">Question</label>
				<div class="control">
					<textarea class="textarea" placeholder="Explain how we can help you"></textarea>
				</div>
			</div>
			
			<div class="field">
		    	<div class="control">
		        <button class="button is-primary">Send message</button>
		    	</div>
		    </div>
    
	  	</div>
  	</div>
	</div>
</section>	
<jsp:include page="footer.jsp"></jsp:include>
</html>