<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car Fix | Home</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<!-- <style>
body, html {
	height: 100%;
	margin: 0;
}

.bg {
	background-image: url("assets/images/1.jpg");
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
	justify-content: right;
	align-items: center;
}

.beautify {
	font-size: 35px;
}
</style> -->
</head>
<body>
	<header class="container-fluid">
		<div class="row">
			<nav class="navbar navbar-expand-lg">
				<a class="navbar-brand" href="#">
					<img src="assets/images/logo3.png" height="85px">
				</a>
				<div class="navbar-collapse justify-content-end">
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link h5 mr-10" href="">Why Us?</a>
						</li>
						<li class="nav-item">
							<a class="nav-link h5" href="">Features</a>
						</li>
						<li class="nav-item">
							<a class="nav-link h5" href="">Brands</a>
						</li>
						<li class="nav-item">
							<a class="nav-link h5" href="">Contact Us</a>
						</li>
						<li class="nav-item">
							<a class="nav-link h5" href="">Sign Up/Sign In</a>
						</li>
					</ul>
				</div>
				
			</nav>
		</div>		
	</header>

	<div class="main container-fluid">
		<div class="row">
			<div class="banner-box col-12 w-100">
				<div class="banner row h-100 align-items-center ">
					<div class="col-6">
						<div class="banner-info text-center enlarge-text text-light">
							<span>Instantly book your</span>	 
							<span>next car service.</span>
							<a href="#" class="btn text-light">Learn more</a>
						</div>
					</div>
					<div class="col-6">
						<div class="card mx-auto rounded">
							<div class="card-body">
								<h4 class="card-title mb-4">Car Selection</h4>
								<spr:form action="select-service.htm" commandName="customerCar">
									<div class="form-group">
										<label for="carBrand"><span class="h6">MAKE</span></label>
										<spr:select class="form-control" path="carBrand" id="carBrand">
											<spr:option value="Honda">Honda</spr:option>
											<spr:option value="Hyundai">Hyundai</spr:option>
										</spr:select>
									</div>
									<div class="form-group">
										<label for="carModel"><span class="h6">MODEL</span></label>
										<spr:select class="form-control" path="carModel" id="carModel">
											<spr:option value="Accent">Accent(Diesel)</spr:option>
											<spr:option value="Accent">Accent(Petrol)</spr:option>
										</spr:select>
									</div>
									<div class="make-center">										
										<button type="submit" class="btn text-light">Get a quote</button>	
									</div>
								</spr:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row justify-content-center text-center pt-5 pb-5">
			<div class="col-12">
				<h2>WHY US?</h2>
			</div>
			<div class="row col-10 mt-3">
				<div class="col-3">				
					<i class="cg-icon icon-cg-location"></i>
					<h5>WE MAKE IT EASY</h5>
					<p>Get a quote and book a service online 24/7. Our mechanics will come to your home or office, even on evenings and weekends.</p>
				</div>

				<div class="col-3">
					<i class="cg-icon icon-cg-fair"></i>
					<h5>FAIR AND TRANSPARENT PRICING</h5>
					<p>We offer fair and transparent pricing and savings up to 40% compared to other workshops. Book with confidence.</p>
				</div>

				<div class="col-3">
					<i class="cg-icon icon-cg-quality"></i>
					<h5>GENUINE SPARES</h5>
					<p>All our workshops use genuine OES/OEM parts. Quality is of utmost importance to us.</p>
				</div>

				<div class="col-3">
					<i class="cg-icon icon-cg-spark"></i>
					<h5>HAPPINESS GUARANTEED</h5>
					<p>We only work with highly rated mechanics. All services are backed by our 2-month / 2,000-km warranty.</p>
				</div>
			</div>			
		</div>

		<div class="row justify-content-center text-center how-it-works pt-5 pb-5">
			<div class="col-12 mt-2">
				<h2>HOW IT WORKS</h2>
			</div>
			<div class="row col-10 mt-3">
				<div class="col-3">				
					<img src="assets/images/how-it-works-1.png" height="150px">
					<div class="mt-4">						
						<span>1</span>
						<h5 class="mt-3">SELECT YOUR VEHICLE</h5>
					</div>
				</div>
				<div class="col-3">				
					<img src="assets/images/how-it-works-2.png" height="150px">
					<div class="mt-4">						
						<span>2</span>
						<h5 class="mt-3">SELECT A SERVICE</h5>
					</div>
				</div>
				<div class="col-3">				
					<img src="assets/images/how-it-works-3.png" height="150px">
					<div class="mt-4">						
						<span>3</span>
						<h5 class="mt-3">GET AN UPFRONT ESTIMATE</h5>
					</div>
				</div>
				<div class="col-3">				
					<img src="assets/images/how-it-works-4.png" height="150px">
					<div class="mt-4">						
						<span>4</span>
						<h5 class="mt-3">BOOK AND RELAX</h5>
					</div>
				</div>
			</div>			
		</div>

		<div class="row justify-content-center text-center pt-5 pb-5">
			<div class="col-12 mt-2">
				<h2>WE SERVICE ALL MAKES AND MODELS</h2>
			</div>
			<div class="row col-10 mt-4">
				<div class="col-2">
					<img src="assets/images/brand-audi.png" height="100px" title="Audi">
				</div>
				<div class="col-2">
					<img src="assets/images/brand-chevrolet.png" height="100px" title="Chevrolet">
				</div>
				<div class="col-2">
					<img src="assets/images/brand-hyundai.png" height="100px" title="Hyundai">
				</div>
				<div class="col-2">
					<img src="assets/images/brand-skoda.png" height="100px" title="Skoda">
				</div>
				<div class="col-2">
					<img src="assets/images/brand-tata.png" height="100px" title="Tata">
				</div>
				<div class="col-2">
					<img src="assets/images/brand-volkswagen.png" height="100px" title="Volkswagen">
				</div>
			</div>
		</div>
	</div>
</body>
</html>