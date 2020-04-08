<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Contact us</title>
	</head>
	<jsp:include page="header.jsp"></jsp:include>
		<div class="container myclass">
			<h2 class="title">Contact us</h2>
			
			
			
		<div class="field is-horizontal">
			<div class="field-label is-normal">
    			<label class="label">From</label>
			</div>
			
	  		<div class="field-body">
	    		<div class="field">
					<p class="control is-expanded has-icons-left">
	        		<input class="input" type="text" placeholder="Name">
	        		<span class="icon is-small is-left">
	          		<i class="fas fa-user"></i>
	        		</span>
	      			</p>
	    		</div>
	    		
	    		<div class="field">
					<p class="control is-expanded has-icons-left has-icons-right">
	        		<input class="input is-success" type="email" placeholder="Email">
	        		<span class="icon is-small is-left">
	         		 <i class="fas fa-envelope"></i>
	        		</span>
	        		<span class="icon is-small is-right">
	          		<i class="fas fa-check"></i>
	        		</span>
	      			</p>
	    		</div>
	  		</div>
		</div>

<div class="field is-horizontal">
  <div class="field-label"></div>
  <div class="field-body">
    <div class="field is-expanded">
      <div class="field has-addons">
        <p class="control">
          <a class="button is-static">+91</a>
        </p>
        <p class="control is-expanded">
          <input class="input" type="tel" placeholder="Your phone number">
        </p>
      </div>
      <p class="help">Do not enter the first zero</p>
    </div>
  </div>
</div>


		<div class="field is-horizontal">
			<div class="field-label is-normal">
		    	<label class="label">Subject</label>
			</div>
			<div class="field-body">
		    <div class="field">
				<div class="control">
		        	<input class="input" type="text" placeholder="e.g. Partnership opportunity">
				</div>
		    </div>
			</div>
		</div>

		<div class="field is-horizontal">
			<div class="field-label is-normal">
			    <label class="label">Question</label>
			</div>
			<div class="field-body">
		    <div class="field">
				<div class="control">
		        	<textarea class="textarea" placeholder="Explain how we can help you"></textarea>
				</div>
		    </div>
		  </div>
		</div>

		<div class="field is-horizontal">
			<div class="field-label">
			<!-- Left empty for spacing -->
			</div>
			<div class="field-body">
		    	<div class="field">
					<div class="control">
		        		<button class="button is-primary">Send message</button>
					</div>
				</div>
			</div>
			</div>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
</html>