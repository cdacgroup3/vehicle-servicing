<%@page import="dto.CustomerBill"%>
<%@ page import ="java.util.List"%>
<%@ page import ="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car Fix | Book Services</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">

</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>
	

	<!-- Body -->
	<div class="container-fluid">
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
		<spr:form action="checkout-login.htm" method="post" commandName="customerBill">
		<div class="card  mt-2 " style="width: 90%;">
			<div class="card-body">
				<h5 class="card-title text-center">Your Quote</h5>
				<p class="card-text">Vehicle: ${customerCar.carBrand}
				
				<div class="service-list">
					<div class="service-item" id="service-item-dummy">
						<span class="service-item-name"></span>
						<span class="service-item-price text-right"></span>
						<spr:input type="hidden" class="service-item-name" path="serviceName" value="" />
						<spr:input type="hidden" class="service-item-price" path="servicePrice" value="" />
 					</div>
 					
 					<% 
 					if(session.getAttribute("customerBill")!=null) {
 						CustomerBill customerBill = (CustomerBill)session.getAttribute("customerBill");
 						List<String> serviceNameList = customerBill.getServiceName();
 						List<String> servicePriceList = customerBill.getServicePrice();
 						Iterator<String> it1 = serviceNameList.iterator();
 						Iterator<String> it2 = servicePriceList.iterator();
 						
 						System.out.println(serviceNameList);
 						System.out.println(servicePriceList);

 						while (it1.hasNext() && it2.hasNext()) {
 							String s1 = it1.next();
 							String s2 = it2.next();
 					%>
 					<div class="service-item">
						<span class="service-item-name"><%= s1 %></span>
						<span class="service-item-price text-right"><%= s2 %></span>						
						<spr:input type="hidden" class="service-item-name" path="serviceName" value="<%= s1 %>" />
						<spr:input type="hidden" class="service-item-price" path="servicePrice" value="<%= s2 %>" />
 	 				</div>
 	 				<% }
 					} %>
				</div>	
			</div>
				<div class="row">
					<div class="col-8 ">
						<h6>
							<span class="text-danger"> &emsp; Market Cost: </span>
						</h6>
					</div>
					<div class="col-4">
						<h6>
							<span class="text-danger"> <del> Rs. 0</del>
							</span>
						</h6>
					</div>
				</div>
				<div class="row check">
					<div class="col-8">
						<h6>
							<span> &emsp; Total: </span>
						</h6>
					</div>
					<div class="col-4">
						<h6>
							<span class="text-dark" id="totalprice"> Rs.0 </span>
						</h6>
					</div>
				</div>
				<div class="row check">
					<div class="col-8">
					</div>
					<div class="col-4">
						<h6>
							<span class="text-success">Save <span id="saveprice">Rs. 0 </span>
						</h6>
					</div>
				</div>

				<div class="card-body">
					<button type="submit" class="btn btn-outline-secondary btn-block bg-danger text-light" id="checkout-login">BOOK NOW</button>
					<!-- <a href="checkout-login.htm" class="btn btn-outline-secondary btn-block bg-danger text-light">BOOK NOW</a> -->
				</div>
		</div>
		</spr:form>
	</div>
	</div>
	</div>
	
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/site.js"></script>
</body>
</html>