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
<title>Insert title here</title>
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
	
	<spr:form action="confirm-order.htm" commandName="serviceCenterName">
	<%
		List<ServiceCenter> serviceCenters = (List<ServiceCenter>) request.getAttribute("serviceCenters");
		Iterator<ServiceCenter> it = serviceCenters.iterator();
		while (it.hasNext()) {
			ServiceCenter sc = it.next();
	%>
		<div>
			<h3><%= sc.getServiceCenterName() %></h3>
			<span>Email: <%= sc.getEmail() %></span>
			<span>Mobile No: <%= sc.getMobileNo() %></span>
			<span>Address: <%= sc.getAddress() %></span>
			<span>Zipcode: <%= sc.getZipcode() %></span>
			<input type="hidden" value="<%= sc.getServiceCenterName() %>">
		</div>		
	<% } %>
	
	<button type="submit" class="btn">CONFIRM BOOKING</button>
	</spr:form>
</body>
</html>