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

<body class="select-service-page">
	<!-- Header -->
	<%@ include file="header.jsp"%>	
	
	<!-- Body -->
	<div class="container-fluid main">
		<div class="row help-car-name make-center">
			<h2>How can we help with your ${customerCar.carBrand} of model ${customerCar.carModel}?</h2>
		</div>
		

		<div class="row">
			<div class="col-6" id="servicing-service">
				<div class="card">
					<img class="card-img-top" src="assets/images/service-type-servicing.png" height="100px">
					<div class="card-body text-center">
						<h3 class="card-title">Servicing</h3>
						<p class="card-text">Complete service including engine oil and filters change. Genuine spares used.</p>
					</div>
				</div>
			</div>
			
			<div class="col-6" id="repairing-service">
				<div class="card">
					<img class="card-img-top" src="assets/images/service-type-repairing.png" height="100px">
					<div class="card-body text-center">
						<h3 class="card-title">Repairing</h3>
						<p class="card-text">All kinds of car repairs - clutch overhaul, brakes overhaul etc.</p>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="row mt-2">
			<div class="col-6" id="denting-service">
				<div class="card">
					<img class="card-img-top" src="assets/images/service-type-denting.png" height="100px">
					<div class="card-body text-center">
						<h3 class="card-title">Denting/Painting</h3>
						<p class="card-text">Fix all the scratches and dents for a brand new look for your car.</p>
					</div>
				</div>
			</div>
			
			<div class="col-6" id="emergency-service">
				<div class="card">
					<img class="card-img-top" src="assets/images/service-type-emergency.png" height="100px">
					<div class="card-body text-center">
						<h3 class="card-title">Emergency</h3>
						<p class="card-text">24*7 emergency services including battery jumpstart, flat tyre support etc. </p>
					</div>
				</div>
			</div>
		</div>		
		
	</div>	
	
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/site.js"></script>
</body>

<%-- <body>
	<!-- Header -->
	<%@ include file="header.jsp"%>	
	
	<!-- Body -->
	<div class="container-fluid  ">
		<div class="row  make-center  " style="height: 50px">
			<h3>How can we help with your <%= cc.getCarBrand() + " of model " + cc.getCarModel() %> ?</h3>
			<h3>How can we help with your ${customerCar.carBrand} of model ${customerCar.carModel}?</h3>
		</div>


		<div class="row mt-2">
			<div class="col-6" id="servicing-service">
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
			
			<div class="col-6" id="repairing-service">
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
			<div class="col-6" id="denting-service">
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
			<div class="col-6" id="emergency-service">
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
</body> --%>
</html>