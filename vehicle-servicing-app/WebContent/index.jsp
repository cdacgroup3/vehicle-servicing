<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car Fix | Home</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<style>
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
</style>
</head>
<body>

	<div class="bg container-fluid ">
		<div class="row bg-primary sticky-top" style="height: 70px;">
			<div class="col-2 text-light  make-center beautify">
				<img src="assets/images/2.png" alt="" style="height: 70px; width: 150px">
			</div>
			<div class="col-6 make-center"></div>
			<div class="col-4 make-center">
				<button type="button" class="btn btn-light mr-2">CONTACT</button>
				<button type="button" class="btn btn-light mr-2">REGISTER</button>
				<button type="button" class="btn btn-light mr-2">LOGIN</button>
				<button type="button" class="btn btn-light mr-2">ABOUT US</button>
			</div>
		</div>

		<div class="row">
			<div class="col-6 make-center"
				style="height: 90%; padding-top: 150px;">
				<div style="color: darkred">
					<h1>CAR CARE</h1>
					<h1>MADE EASY</h1>
					<br>
					<button type="submit" class="btn btn-primary">Learn More</button>
				</div>
			</div>

			<div class="col-6 make-center"
				style="height: 90%; padding-top: 150px;">
				<spr:form action="select-service.htm" style="width:100%;" commandName="customerCar">
					<div class="card" style="width: 90%">
						<h5 class="card-header">Car Selection</h5>
						<div class="card-body">
							<div class="form-group">
								<label for="exampleFormControlSelect1">Make</label>
								<spr:select class="form-control" path="carBrand">
									<spr:option value="Honda">Honda</spr:option>
									<spr:option value="Hyundai">Hyundai</spr:option>
									<spr:option value="Suzuki">Maruti Suzuki</spr:option>
									<spr:option value="Fiat">Fiat</spr:option>
									<spr:option value="Ford">Ford</spr:option>
								</spr:select>
							</div>
							<div class="form-group">
								<label for="exampleFormControlSelect1">Model</label>
								<spr:select class="form-control" path="carModel">
									<spr:option value="Accent">Accent(Diesel)</spr:option>
									<spr:option value="Accent">Accent(Petrol)</spr:option>
									<spr:option value="Creta">Creta(Diesel)</spr:option>
									<spr:option value="Creta">Creta(Petrol)</spr:option>
								</spr:select>
							</div>
						</div>
						
						<div class="make-center">
							<button type="submit" class="btn btn-primary">Get a Quote</button>
						</div>
					</div>
				</spr:form>
			</div>
		</div>
	</div>
</body>
</html>