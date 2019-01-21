<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dto.CustomerCar"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car Fix | Services</title>

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
	<%
		CustomerCar cc = (CustomerCar)request.getAttribute("customerCar");
	%>
	
	<div class="container-fluid">
		<div class="row bg-primary bg" style="height: 70px">
			<div class="col-3 make-left ">
				<h1 class="text-light">Car Fix</h1>
			</div>
			<div class="col-3"></div>
			<div class="col-6 make-right ">
				<button type="button" class="mr-2 mt-2 btn btn-lg text-light "
					style="height: 50px">Home</button>
				<button type="button" class="mr-2 mt-2 btn btn-lg text-light"
					style="height: 50px">Change Vehicle</button>
				<button type="button" class="mt-2 btn btn-lg text-light"
					style="height: 50px">Log In</button>
			</div>

		</div>
	</div>
	<div class="container-fluid  ">
		<div class="row  make-center  " style="height: 50px">
			<h3>How can we help with your <%= cc.getCarBrand() + " of model " + cc.getCarModel() %> ?</h3>
		</div>


		<div class="row mt-2">
			<div class="col-6" id="servicingService">
				<div class=" card service-card cardhover car-servicing">
					<br>
					<div class="card-image make-center">
						<img src="assets/images/service.png" height="200px" width="250px">
					</div>
					<div class="card-content make-center">
						<h3 class="service-headers">Servicing</h3>
						<h4 class="service-description"></h4>
					</div>
				</div>
			</div>
			
			<div class="col-6">
				<div data-class="Emergency"
					class="card service-card cardhover car-servicing">
					<br>
					<div class="card-image make-center">
						<img class="" src="assets/images/download.png" height="200px"
							width="250px">
					</div>
					<div class="card-content make-center">
						<h3 class="service-headers">Repairing</h3>
						<h4 class="service-description"></h4>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-2">
			<div class="col-6">
				<div data-class="Emergency" class="card service-card cardhover car-servicing">
					<br>
					<div class="card-image make-center">
						<img class="" src="assets/images/painting.png" height="200px"
							width="250px">
					</div>
					<div class="card-content make-center">
						<h3 class="service-headers">Denting/Painting</h3>
						<h4 class="service-description"></h4>
					</div>
				</div>
			</div>
			<div class="col-6">
				<div data-class="Emergency"
					class="card service-card cardhover car-servicing">
					<br>
					<div class="card-image make-center">
						<img class="" src="assets/images/emg.png" height="200px" width="250px">
					</div>
					<div class="card-content make-center">
						<h3 class="service-headers">Emergency</h3>
						<h4 class="service-description"></h4>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/site.js"></script>
</body>
</html>