<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %> 		
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CarFix | Register</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<style>
	.register-form {
		padding: 15px;
		background: #d6f7d1;
	}
	.register-form input {
		background: #f4f7f8;
	}
	input.invalid {
		border: 1px solid red;
	}
	
	.register-form button {
		width: 47%;
		display: inline-block;
	}
	
	#customerRegisterBtn { background: #01704f; }
	.register-form button:nth-child(2) { background: #b2d8cd; }
	#customerRegisterBtn:hover {
	    background-color: #218838;
	    border-color: #1e7e34;
	}
	
	.form-group { position: relative; }
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
		<div class="row">
			<div class="col-6 make-center">
				<button type="button" class="btn btn-dark btn-block">User Registration</button>
			</div>
			<div class="col-6 make-center">
				<button type="button" class="btn btn-secondary btn-block ">Service Center Registration</button>
			</div>
		</div>

		<!-- User Registration Form -->

		<div class="row mt-3">
			<div class="col-4"></div>
			<div class="col-4 register-form">
				<h4 class="text-center mb-3">REGISTER</h4>
				<spr:form action="performRegistration.htm" commandName="customer">
					<div class="form-group">
						<!--  <label for="customer-name">&#128102 Name:</label> -->
						<spr:input type="text" class="form-control" path="customerName" id="customer-name" placeholder="Enter name" />
					</div>	
	
					<div class="form-group">
						<!-- <label for="mobile-no">&#128241 Mobile No:</label> -->
						<spr:input type="text" class="form-control" path="mobileNo" id="mobile-no" placeholder="Enter mobile no" />
					</div>	
	
					<div class="form-group">
						<!-- <label for="password">Password:</h4></label> -->
						<spr:input type="password" class="form-control" path="password" id="password" placeholder="Enter password" />
					</div>
	
					<div class="form-group">
						<!-- <label for="email">&#9993 Email Id:</h4></label>  -->
						<spr:input type="email" class="form-control" path="email" id="email" placeholder="Enter email id" />
					</div>
	
					<div class="form-group">
						<!-- <label for="zipcode">Zipcode:</label>  -->
						<spr:input type="text" class="form-control" path="zipcode" id="zipcode" placeholder="Enter zipcode" />
					</div>
	
					<div class="form-group">
						<!-- <label for="formGroupExampleInput">&#127968 Address:</label>  -->
						<spr:textarea rows="3" cols="50" class="form-control" path="address" id="address" placeholder="Enter address"></spr:textarea>	
					</div>
	
					<div class="text-center">
						<button type="submit" class="btn btn-success text-light mr-3" id="customerRegisterBtn">Register</button>
						<button type="button" class="btn">Cancel</button>		
					</div>			
				</spr:form>	
			</div>
			<div class="col-4"></div>
		</div>
	</div>

	<!-- Service Registration Form -->	
	<%-- <div class="container-fluid">
		<div class="row mt-2">
			<div class="col-12">
				<div class="card make-center">
					<div class="card-body">
					<spr:form action="performServiceCenterRegistration.htm" commandName="serviceCenter">
						<div class="form-group">
							<label for="formGroupExampleInput">
								<h4>&#128102 Service Centre Name</h4>
							</label> 
							<spr:input type="text" class="form-control" path="serviceCenterName" id="formGroupExampleInput" placeholder="Name" />
						</div>



						<div class="form-group">
							<label for="formGroupExampleInput">
								<h4>&#128241 Mobile No</h4>
							</label> 
							<spr:input type="number" class="form-control" path="mobileNo" placeholder="Mobile no" />
						</div>



						<div class="form-group">
							<label for="formGroupExampleInput">
								<h4>&#9993 Email Id</h4>
							</label> <spr:input type="email" class="form-control" path="email" placeholder="Email id" />
						</div>

						<div class="form-group">
							<label for="formGroupExampleInput">
								<h4>&#127968 Address</h4>
							</label><br>
							<spr:textarea rows="3" cols="50" path="address"></spr:textarea>

						</div>


						<div class="form-group">
							<label for="formGroupExampleInput">
								<h4>Zipcode</h4>
							</label> 
							<spr:input type="number" class="form-control" path="zipcode" placeholder="zipcode" />
						</div>

						<div class="form-group">
							<label for="formGroupExampleInput2">
								<h4>Password</h4>
							</label> <spr:input type="password" class="form-control" path="password" placeholder="password" />
						</div>
						
						<div class="form-group">
							<label for="formGroupExampleInput2">
								<h4>No. of slots to allocate:</h4>
							</label> <spr:input type="text" class="form-control" path="slot" placeholder="No of slot" />
						</div>


						<button type="submit" class="btn btn-primary mr-4">Register</button>
						<button type="button" class="btn btn-primary">Cancel</button>
					</spr:form>
					</div>
				</div>
			</div>
		</div> --%>
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
					 $("form").submit();
				} 
			});
		});
	</script>
</body>
</html>