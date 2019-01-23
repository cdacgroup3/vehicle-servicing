<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %> 		
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>

	<!-- Body -->
	<div class="container-fluid mt-2">
		<div class="row">
			<div class="col-6 make-center">
				<button type="button" class="btn btn-dark btn-block">User
					Registration</button>
			</div>
			<div class="col-6 make-center">
				<button type="button" class="btn btn-secondary btn-block ">Service
					Center Registration</button>
			</div>



		</div>

		<!-- User Registration Form -->

		<div class="row mt-2">
			<div class="col-12">
				<div class="card make-center">
					<div class="card-body">
					<spr:form action="performRegistration.htm" commandName="customer">
						<div class="form-group">
							<label for="formGroupExampleInput">
								<h4>&#128102 User Name</h4>
							</label> 
							<spr:input type="text" class="form-control" path="customerName" placeholder="Name" />
						</div>


						<div class="form-group">
							<label for="formGroupExampleInput">
								<h4>&#128241 Mobile No</h4>
							</label> 
							<spr:input type="number" class="form-control" path="mobileNo" id="formGroupExampleInput" placeholder="Mobile no" />
						</div>


						<div class="form-group">
							<label for="formGroupExampleInput">
								<h4>&#9993 Email Id</h4>
							</label> 
							<spr:input type="email" class="form-control" path="email" id="formGroupExampleInput" placeholder="Email id" />
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
							<spr:input type="number" class="form-control" path="zipcode" id="formGroupExampleInput" placeholder="zipcode" />
						</div>

						<div class="form-group">
							<label for="formGroupExampleInput2">
								<h4>Password</h4>
							</label> 
							<spr:input type="password" class="form-control" path="password" id="formGroupExampleInput2" placeholder="password" />
						</div>

						<button type="submit" class="btn btn-primary mr-4">Register</button>
						<button type="button" class="btn btn-primary">Cancel</button>
						
					</spr:form>	
					</div>
				</div>
			</div>
		</div>


	</div>

	<!-- Service Registration Form -->	
	<div class="container-fluid">
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
		</div>
	</div>
</body>
</html>