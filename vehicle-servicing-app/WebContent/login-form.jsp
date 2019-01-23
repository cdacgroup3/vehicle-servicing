<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %> 	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">

<style>
	.login-form {
		padding: 20px 25px;
		background: #d6f7d1;
	}
	.login-form input {
		background: #f4f7f8;
	}
	input.invalid {
		border: 1px solid red;
	}
	.login-form button {
		margin-top: 35px;
		background: #01704f;
	}
	
	.form-group { position: relative; }
	.login-form .form-group span {
		position: absolute;
	    top: 40px;
	    left: 110%;
	    width: 310px;
	}
</style>

</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>

	<!-- Body -->	
	<div class="container-fluid main mt-5">
		<div class="row">
			<div class="col-4"></div>

			<div class="col-4 login-form">
				<h2 class="text-center">LOGIN</h2>
				<spr:form action="login-check.htm" commandName="customer">
					<div class="form-group mt-4">
						<label for="customer-name">Name:</label> 
						<spr:input type="text" class="form-control" path="customerName" id="customer-name" placeholder="Enter Username" /> 						
					</div>
					<div class="form-group mt-4">
						<label for="password">Password:</label> 
						<spr:input type="password" class="form-control" path="password" id="password" placeholder="Enter Password" />
					</div>

					<button type="submit" class="btn btn-lg btn-block btn-success text-light mb-3" id="loginBtn">SUBMIT</button>
					
					<a href="registration.htm">New User? Register Here</a>
				</spr:form>

			</div>
			
			<div class="col-4"></div>
		</div>
	</div>
	
	<script src="assets/js/jquery.min.js"></script>	
	<script>
		$(document).ready(function() {
			$("#loginBtn").on('click', function(e){
				e.preventDefault();
				let flag = true;

				var input = $("#customer-name").val();
				if(input){
					$('#customer-name').removeClass("invalid").addClass("valid");
					$('#customer-name').next('span').remove();
				}
				else {
					if($('#customer-name').next('span').length == 0) {
						$('#customer-name').after('<span class="text-danger">Name can\'t be empty!</span>');
					} 					
					$('#customer-name').removeClass("valid").addClass("invalid");
					flag = false;
				}

				input = $("#password").val();
				if(input){
					$('#password').removeClass("invalid").addClass("valid");
					$('#password').next('span').remove();
				}
				else {
					if($('#password').next('span').length == 0) {
						$('#password').after('<span class="text-danger">Password can\'t be empty!</span>');
					} 					
					$('#password').removeClass("valid").addClass("invalid");
					flag = false;
				}

				if(flag==true) {
					 $("form").submit();
				} 
			});
		});
	</script>
</body>
</html>