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
	.login-tabs .active {
		background-color: #28a745;
	    color: #fff;
	    font-weight: 700;
	}

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
	<div class="container-fluid main mt-3">
		<div class="row login-tabs">
			<div class="col-6">
				<button type="button" class="btn btn-block btn-outline-success active" 
				id="user-login-tab">User Login</button>
			</div>
			<div class="col-6">
				<button type="button" class="btn btn-block btn-outline-success" 
				id="center-login-tab">Service Center Login</button>
			</div>
		</div>
	
		<div class="row mt-3">
			<div class="col-4"></div>

			<div class="col-4 login-form">
				<h2 class="text-center">LOGIN</h2>
				
				<!-- User Login Form -->
				<spr:form action="login-check.htm" commandName="customer" id="customer-login-form">
					<div class="form-group mt-4">
						<label for="customer-name">Name:</label> 
						<spr:input type="text" class="form-control" path="customerName" id="customer-name" placeholder="Enter name" /> 						
					</div>
					<div class="form-group mt-4">
						<label for="password">Password:</label> 
						<spr:input type="password" class="form-control" path="password" id="password" placeholder="Enter password" />
					</div>

					<button type="submit" class="btn btn-lg btn-block btn-success text-light mb-3" id="loginBtn">SUBMIT</button>
					
					<a href="registration.htm">New User? Register Here</a>
				</spr:form>
				
				<!-- Service Center Login Form -->
				<spr:form action="center-login-check.htm" commandName="serviceCenter" id="center-login-form" class="d-none">
					<div class="form-group mt-4">
						<label for="center-name">Name:</label> 
						<spr:input type="text" class="form-control" path="serviceCenterName" id="center-name" placeholder="Enter name" /> 						
					</div>
					<div class="form-group mt-4">
						<label for="center-password">Password:</label> 
						<spr:input type="password" class="form-control" path="password" id="center-password" placeholder="Enter password" />
					</div>

					<button type="submit" class="btn btn-lg btn-block btn-success text-light mb-3" id="centerLoginBtn">SUBMIT</button>
					
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
					 $("#customer-login-form").submit();
				} 
			});

			$("#centerLoginBtn").on('click', function(e){
				e.preventDefault();
				let flag = true;

				var input = $("#center-name").val();
				if(input){
					$('#center-name').removeClass("invalid").addClass("valid");
					$('#center-name').next('span').remove();
				}
				else {
					if($('#center-name').next('span').length == 0) {
						$('#center-name').after('<span class="text-danger">Name can\'t be empty!</span>');
					} 					
					$('#center-name').removeClass("valid").addClass("invalid");
					flag = false;
				}

				input = $("#center-password").val();
				if(input){
					$('#center-password').removeClass("invalid").addClass("valid");
					$('#center-password').next('span').remove();
				}
				else {
					if($('#center-password').next('span').length == 0) {
						$('#center-password').after('<span class="text-danger">Password can\'t be empty!</span>');
					} 					
					$('#center-password').removeClass("valid").addClass("invalid");
					flag = false;
				}

				if(flag==true) {
					 $("#center-login-form").submit();
				} 
			});

			$('#user-login-tab').on('click', function() {
				$('#customer-login-form').removeClass('d-none');
				$('#center-login-form').addClass('d-none');
				$('#center-login-tab').removeClass('active');
				$(this).addClass('active');
			});

			$('#center-login-tab').on('click', function() {
				$('#center-login-form').removeClass('d-none');
				$('#customer-login-form').addClass('d-none');
				$('#user-login-tab').removeClass('active');
				$(this).addClass('active');
			});
		});
		
	</script>
</body>
</html>