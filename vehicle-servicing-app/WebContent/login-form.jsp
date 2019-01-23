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
</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>

	<!-- Body -->	
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