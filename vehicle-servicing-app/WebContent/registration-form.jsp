<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CarFix | Register</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<style>
.register-tabs .active {
	background-color: #28a745;
    color: #fff;
    font-weight: 700;
}

.register-form .bg {
	padding: 15px;	
	background: #d6f7d1;
}

.register-form input {
	background: #f4f7f8;
}

input.invalid,
textarea.invalid {
	border: 1px solid red;
}

.register-form button {
	width: 47%;
	display: inline-block;
}

#customerRegisterBtn, #centerRegisterBtn {
	background: #01704f;
}

.register-form button:nth-child(2) {
	background: #b2d8cd;
}

#customerRegisterBtn:hover {
	background-color: #218838;
	border-color: #1e7e34;
}

.form-group {
	position: relative;
}

.register-form .form-group span {
	position: absolute;
	top: 6px;
	left: 105%;
	width: 310px;
}
</style>
</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>

	<!-- Body -->
	<div class="container-fluid main mt-3">
		<div class="row register-tabs">
			<div class="col-6">
				<button type="button" class="btn btn-block btn-outline-success active" 
				id="user-register-tab">User Registration</button>
			</div>
			<div class="col-6">
				<button type="button" class="btn btn-block btn-outline-success" 
				id="center-register-tab">Service Center Registration</button>
			</div>
		</div>

		
		<div class="row mt-3 register-form">
			<div class="col-4"></div>
			<div class="col-4 bg">
				<h4 class="text-center mb-3">REGISTER</h4>
				
				<!-- User Registration Form -->
				<spr:form action="performRegistration.htm" commandName="customer" id="customer-register-form">
					<div class="form-group">
						<spr:input type="text" class="form-control" path="customerName"
							id="customer-name" placeholder="Enter name" />
					</div>

					<div class="form-group">
						<spr:input type="text" class="form-control" path="mobileNo"
							id="mobile-no" placeholder="Enter mobile no" />
					</div>

					<div class="form-group">
						<spr:input type="password" class="form-control" path="password"
							id="password" placeholder="Enter password" />
					</div>

					<div class="form-group">
						<spr:input type="email" class="form-control" path="email"
							id="email" placeholder="Enter email id" />
					</div>

					<div class="form-group">
						<spr:input type="text" class="form-control" path="zipcode"
							id="zipcode" placeholder="Enter zipcode" />
					</div>

					<div class="form-group">
						<spr:textarea rows="3" class="form-control" path="address"
							id="address" placeholder="Enter address"></spr:textarea>
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-success text-light mr-3"
							id="customerRegisterBtn">Register</button>
						<button type="button" class="btn">Cancel</button>
					</div>
				</spr:form>			
			
				<!-- Service Center Registration Form -->
				<spr:form action="performServiceCenterRegistration.htm" commandName="serviceCenter" id="center-register-form" class="d-none">
					<div class="form-group">
						<spr:input type="text" class="form-control"
							path="serviceCenterName" id="center-name"
							placeholder="Enter name" />
					</div>

					<div class="form-group">
						<spr:input type="text" class="form-control" path="mobileNo"
							id="center-mobile-no" placeholder="Enter mobile no" />
					</div>

					<div class="form-group">
						<spr:input type="password" class="form-control" path="password"
							id="center-password" placeholder="Enter password" />
					</div>

					<div class="form-group">
						<spr:input type="email" class="form-control" path="email"
							id="center-email" placeholder="Enter email id" />
					</div>

					<div class="form-group">
						<spr:textarea rows="3" class="form-control" path="address"
							id="center-address" placeholder="Enter address"></spr:textarea>
					</div>


					<div class="form-group">
						<spr:input type="number" class="form-control" path="zipcode"
							id="center-zipcode" placeholder="Enter zipcode" />
					</div>

					<div class="form-group">
						<spr:input type="text" class="form-control" path="slot" id="slot"
							placeholder="Enter number of slots" />
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-success text-light mr-3"
							id="centerRegisterBtn">Register</button>
						<button type="button" class="btn">Cancel</button>
					</div>
				</spr:form>
				
			</div>
			<div class="col-4"></div>
		</div>

		
		<!-- <div class="row mt-3 register-form d-none">
			<div class="col-4"></div>
			<div class="col-4 bg">
				<h4 class="text-center mb-3">REGISTER</h4>
				
			</div>

			<div class="col-4"></div>
		</div> -->
	</div>



	<script src="assets/js/jquery.min.js"></script>
	<script>
	$(document).ready(function() {
		$("#customerRegisterBtn").on('click', function(e){
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
			var regex = /^[0-9]{10}$/;
			var is_mobile = regex.test($('#mobile-no').val());
			if(is_mobile){
				$('#mobile-no').removeClass("invalid").addClass("valid");
				$('#mobile-no').next('span').remove();
			}
			else {
				if($('#mobile-no').next('span').length == 0) {
					$('#mobile-no').after('<span class="text-danger">Mobile no should be 10 digits!</span>');
				}
				$('#mobile-no').removeClass("valid").addClass("invalid");
				flag = false;
			}
			regex = /^.{6,}$/;
			var is_password = regex.test($('#password').val());
			if(is_password){
				$('#password').removeClass("invalid").addClass("valid");
				$('#password').next('span').remove();
			}
			else {
				if($('#password').next('span').length == 0) {
					$('#password').after('<span class="text-danger">Password should be minimum 6 characters!</span>');
				}
				$('#password').removeClass("valid").addClass("invalid");
				flag = false;
			}
			regex = /^[0-9]{6}$/;
			var is_zipcode = regex.test($('#zipcode').val());
			if(is_zipcode){
				$('#zipcode').removeClass("invalid").addClass("valid");
				$('#zipcode').next('span').remove();
			}
			else {
				if($('#zipcode').next('span').length == 0) {
					$('#zipcode').after('<span class="text-danger">Zipcode should be 6 digits!</span>');
				}					
				$('#zipcode').removeClass("valid").addClass("invalid");
				flag = false;
			}
			
			regex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
			var is_email = regex.test($('#email').val());
			if(is_email){
				$('#email').removeClass("invalid").addClass("valid");
				$('#email').next('span').remove();
			}
			else {
				if($('#email').next('span').length == 0) {
					$('#email').after('<span class="text-danger">Email id is not valid!</span>');
				}					
				$('#email').removeClass("valid").addClass("invalid");
				flag = false;
			}
			input = $("#address").val();
			if(input){
				$('#address').removeClass("invalid").addClass("valid");
				$('#address').next('span').remove();
			}
			else {
				if($('#address').next('span').length == 0) {
					$('#address').after('<span class="text-danger">Address can\'t be empty!</span>');
				} 					
				$('#address').removeClass("valid").addClass("invalid");
				flag = false;
			}
			
			if(flag==true) {
				 $("#customer-register-form").submit();
			} 
		});

		$("#centerRegisterBtn").on('click', function(e){
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
			var regex = /^[0-9]{10}$/;
			var is_mobile = regex.test($('#center-mobile-no').val());
			if(is_mobile){
				$('#center-mobile-no').removeClass("invalid").addClass("valid");
				$('#center-mobile-no').next('span').remove();
			}
			else {
				if($('#center-mobile-no').next('span').length == 0) {
					$('#center-mobile-no').after('<span class="text-danger">Mobile no should be 10 digits!</span>');
				}
				$('#center-mobile-no').removeClass("valid").addClass("invalid");
				flag = false;
			}
			regex = /^.{6,}$/;
			var is_password = regex.test($('#center-password').val());
			if(is_password){
				$('#center-password').removeClass("invalid").addClass("valid");
				$('#center-password').next('span').remove();
			}
			else {
				if($('#center-password').next('span').length == 0) {
					$('#center-password').after('<span class="text-danger">Password should be minimum 6 characters!</span>');
				}
				$('#center-password').removeClass("valid").addClass("invalid");
				flag = false;
			}
			regex = /^[0-9]{6}$/;
			var is_zipcode = regex.test($('#center-zipcode').val());
			if(is_zipcode){
				$('#center-zipcode').removeClass("invalid").addClass("valid");
				$('#center-zipcode').next('span').remove();
			}
			else {
				if($('#center-zipcode').next('span').length == 0) {
					$('#center-zipcode').after('<span class="text-danger">Zipcode should be 6 digits!</span>');
				}					
				$('#center-zipcode').removeClass("valid").addClass("invalid");
				flag = false;
			}
			
			regex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
			var is_email = regex.test($('#center-email').val());
			if(is_email){
				$('#center-email').removeClass("invalid").addClass("valid");
				$('#center-email').next('span').remove();
			}
			else {
				if($('#center-email').next('span').length == 0) {
					$('#center-email').after('<span class="text-danger">Email id is not valid!</span>');
				}					
				$('#center-email').removeClass("valid").addClass("invalid");
				flag = false;
			}
			input = $("#center-address").val();
			if(input){
				$('#center-address').removeClass("invalid").addClass("valid");
				$('#center-address').next('span').remove();
			}
			else {
				if($('#center-address').next('span').length == 0) {
					$('#center-address').after('<span class="text-danger">Address can\'t be empty!</span>');
				} 					
				$('#center-address').removeClass("valid").addClass("invalid");
				flag = false;
			}
			
			if(flag==true) {
				 $("#center-register-form").submit();
			} 
		});

		$('#user-register-tab').on('click', function() {
			$('#center-register-form').addClass('d-none');
			$('#customer-register-form').removeClass('d-none');
			$('#center-register-tab').removeClass('active');
			$(this).addClass('active');
		});

		$('#center-register-tab').on('click', function() {
			$('#customer-register-form').addClass('d-none');
			$('#center-register-form').removeClass('d-none');
			$('#user-register-tab').removeClass('active');
			$(this).addClass('active');
		});
	});
	</script>
</body>
</html>