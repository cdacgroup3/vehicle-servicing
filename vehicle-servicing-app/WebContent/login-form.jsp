<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %> 	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<style>
.bg {
	background-image: url("1.jpg");
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.make-center {
	display: flex;
	justify-content: center;
	align-items: center
}

.make-right {
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

.make-left {
	display: flex;
	justify-content: flex-start;
	align-items: center;
}

.beautify {
	font-weight: bold;
	font-size: 25px;
	color: black;
}
</style>
</head>
<body>
	<div class=" container-fluid sticky-top">
		<div class="row bg-primary" style="height: 70px;">
			<div class="col-3 make-left">
				<a href="home.html" style="color: black"><h3>HOME</h3></a>
			</div>
			<div class="col-6 make-center">
				<h1>LOGIN FORM</h1>
			</div>
			<div class=" col-3 make-right mt-2"></div>

		</div>
	</div>
	<div class=" bg container-fluid">
		<div class="row ">
			<div class="col-4"></div>

			<div class="col-4  " style="width: 90%">
				<spr:form action="login-check.htm" commandName="customer">
					<div class="form-group">
						<label class=" beautify" for="Inputusername">Name</label> 
						<spr:input type="text" class="form-control" path="customerName" placeholder="Enter Username" /> 						
					</div>
					<div class="form-group">
						<label class="beautify" for="InputPassword">Password</label> 
						<spr:input type="password" class="form-control" path="password" placeholder="Password" />
					</div>

					<button type="submit" class="btn btn-primary">Submit</button>
					<br> 
					<a href="registration.htm" style="color: black; font-weight: bold; font-size: 25px">New User Register Here</a>
				</spr:form>

			</div>
			<div class="col-4"></div>
		</div>
	</div>
</body>
</html>