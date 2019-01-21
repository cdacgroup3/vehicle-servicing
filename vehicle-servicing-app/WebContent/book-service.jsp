<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car Fix | Book Services</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">

</head>
<body>

	<!--header-->
	<div class="container-fluid  sticky-top" style="height: 120px">
		<div style="height: 80px" class="bg-primary"></div>


		<!--body selection buttons-->
		<div class=" row  bg-primary mt-1"
			style="height: 40px; background: whitesmoke; width: 100%; margin: 0%">
			<div class="col-3">
				<button type="button" 
					class="btn btn-outline-secondary text-light btn-block" id="servicing-service-tab">Servicing</button>
			</div>
			<div class="col-3">
				<button type="button"
					class="btn btn-outline-secondary text-light btn-block" id="repairing-service-tab">Repairing</button>
			</div>
			<div class="col-3">
				<button type="button"
					class="btn btn-outline-secondary text-light btn-block" id="denting-service-tab">Denting/Painting</button>
			</div>
			<div class="col-3">
				<button type="button"
					class="btn btn-outline-secondary text-light btn-block" id="emergency-service-tab">Emergency</button>
			</div>

		</div>
	</div>

	<div class="container-fluid">
	<div class="row">
	<div class="col-8">
	<%
		String serviceType = (String) request.getAttribute("serviceType");
	%>
	<%
		if (serviceType.equals("servicing")) {
	%>
		<div class="service-info-book" data-visible="true">
			<%@ include file="book-servicing.jsp"%>
		</div>
		<div class="service-info-book" data-visible="false">
			<%@ include file="book-repairing.jsp"%>
		</div>
		<div class="service-info-book" data-visible="false">
			<%@ include file="book-denting.jsp"%>
		</div>
		<div class="service-info-book" data-visible="false">
			<%@ include file="book-emergency.jsp"%>
		</div>
	<%
		} else if (serviceType.equals("repairing")) {
	%>
		<div class="service-info-book" data-visible="false">
			<%@ include file="book-servicing.jsp"%>
		</div>
		<div class="service-info-book" data-visible="true">
			<%@ include file="book-repairing.jsp"%>
		</div>
		<div class="service-info-book" data-visible="false">
			<%@ include file="book-denting.jsp"%>
		</div>
		<div class="service-info-book" data-visible="false">
			<%@ include file="book-emergency.jsp"%>
		</div>
	<%
		} else if (serviceType.equals("denting")) {
	%>
		<div class="service-info-book" data-visible="false">
			<%@ include file="book-servicing.jsp"%>
		</div>
		<div class="service-info-book" data-visible="false">
			<%@ include file="book-repairing.jsp"%>
		</div>
		<div class="service-info-book" data-visible="true">
			<%@ include file="book-denting.jsp"%>
		</div>
		<div class="service-info-book" data-visible="false">
			<%@ include file="book-emergency.jsp"%>
		</div>
	<% 
		} else if (serviceType.equals("emergency")) {
	%>
		<div class="service-info-book" data-visible="false">
			<%@ include file="book-servicing.jsp"%>
		</div>
		<div class="service-info-book" data-visible="false">
			<%@ include file="book-repairing.jsp"%>
		</div>
		<div class="service-info-book" data-visible="false">
			<%@ include file="book-denting.jsp"%>
		</div>
		<div class="service-info-book" data-visible="true">
			<%@ include file="book-emergency.jsp"%>
		</div>
	<% 
		}
	%>
	</div>

	<!--bill payment-->
	<div class="col-4">
		<div class="card  mt-2 " style="width: 90%;">
			<div class="card-body">
				<h5 class="card-title text-center">Your Quote</h5>
				<p class="card-text">Vehicle:
				<div class="service-list">
					<div class="service-item" id="service-item-dummy">
						<span class="service-item-name"></span>
						<span class="service-item-price text-right"></span>
					</div>
				</div>
				</p>
			</div>
			<ul class="list-group list-group-flush">
				<div class="row">
					<div class="col-8 ">
						<h6>
							<span class="text-danger"> &emsp; Market Cost: </span>
						</h6>
					</div>
					<div class="col-4">
						<h6>
							<span class="text-danger"> <del> Rs. 2345</del>
							</span>
						</h6>
					</div>
				</div>
				<div class="row">
					<div class="col-8">
						<h6>
							<span> &emsp; CC Price: </span>
						</h6>
					</div>
					<div class="col-4">
						<h6>
							<span> Rs. 2345 </span>
						</h6>
					</div>
				</div>
				<div class="row">
					<div class="col-8">
						<h6>
							<span> &emsp; Total: </span>
						</h6>
					</div>
					<div class="col-4">
						<h6>
							<span class="text-success"> Rs. 2345 </span>
						</h6>
					</div>
				</div>

				<div class="card-body">
					<button type="button"
						class="btn btn-outline-secondary btn-block bg-danger text-light">BOOK
						NOW</button>
				</div>
		</div>

	</div>
	</div>
	</div>
	
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/site.js"></script>
</body>
</html>