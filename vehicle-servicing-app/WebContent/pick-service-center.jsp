<%@page import="dto.CustomerBill"%>
<%@page import="java.util.Iterator"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@page import="dto.ServiceCenter"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pick service center</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<style>
	span {
		display: block;
	}
</style>
</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>
	
	<h1>PICK SERVICE CENTER</h1>
	
	<spr:form action="confirm-order.htm" commandName="serviceCenterPicked">
	<%
		List<ServiceCenter> serviceCenters = (List<ServiceCenter>) request.getAttribute("serviceCenters");
		Iterator<ServiceCenter> it = serviceCenters.iterator();
		while (it.hasNext()) {
			ServiceCenter sc = it.next();
	%>
		<div>
		
			<spr:radiobutton path="mobileNo" value="<%= sc.getMobileNo() %>" />
			<h3><%= sc.getServiceCenterName() %></h3>
			<span>Email: <%= sc.getEmail() %></span>
			<span>Mobile No: <%= sc.getMobileNo() %></span>
			<span>Address: <%= sc.getAddress() %></span>
			<span>Zipcode: <%= sc.getZipcode() %></span>
		</div>		
	<% } %>
	
		<%-- <spr:input type="hidden" path="serviceName" value="<%= ((CustomerBill)request.getAttribute(\"customerBill\")).getServiceName() %>" />
		<spr:input type="hidden" path="servicePrice" value="<%= ((CustomerBill)request.getAttribute(\"customerBill\")).getServicePrice() %>" />
		<spr:input type="hidden" path="totalPrice" value="<%= ((CustomerBill)request.getAttribute(\"customerBill\")).getTotalPrice() %>" /> --%>
		<button type="submit" class="btn">CONFIRM BOOKING</button>
	</spr:form>
</body>
</html>