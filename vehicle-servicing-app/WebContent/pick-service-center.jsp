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
  .funkyradio label {
    width: 50%;
    border-radius: 3px;
    border: 2px solid #D1D3D4;
    font-weight: normal;
  }  
  .funkyradio input[type="radio"]:empty
  {
    display: none;
  }  
  .funkyradio input[type="radio"]:empty ~ label
  {
    position: relative;
    line-height: 2.5em;
    text-indent: 3em;
    margin-top: 1em;
    cursor: pointer;
  } 
  .funkyradio input[type="radio"]:empty ~ label:before
  {
    position: absolute;
    display: block;
    height: 3em;
    content: '';
    width: 3em;
    background: #D1D3D4;
    border-radius: 3px 0 0 3px;
  }
  .funkyradio input[type="radio"]:checked ~ label:before,
  .funkyradio input[type="checkbox"]:checked ~ label:before {
    content: '\2714';
    text-indent: .9em;
    color: #333;
    background-color: #ccc;
  }
  .funkyradio-success input[type="radio"]:checked ~ label:before,
  .funkyradio-success input[type="checkbox"]:checked ~ label:before {
    color: #fff;
    background-color: #5cb85c;
  }
</style>
</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>
	
	<h1>PICK SERVICE CENTER</h1>
	
	<spr:form action="confirm-order.htm" commandName="serviceCenterPicked">
	<div class="funkyradio">
	<%
		List<ServiceCenter> serviceCenters = (List<ServiceCenter>) request.getAttribute("serviceCenters");
		Iterator<ServiceCenter> it = serviceCenters.iterator();
		while (it.hasNext()) {
			ServiceCenter sc = it.next();
	%>
		<div class="funkyradio-success">
			<div>		
				<spr:radiobutton path="mobileNo" value="<%= sc.getMobileNo() %>" id="<%= String.valueOf(sc.getMobileNo()) %>" />
				<label for="<%= sc.getMobileNo() %>" class="card" >
				<h3 class="card-header"><%= sc.getServiceCenterName() %></h3>
				<span>Email: <%= sc.getEmail() %></span>
				<span>Mobile No: <%= sc.getMobileNo() %></span>
				<span>Address: <%= sc.getAddress() %></span>
				<span>Zipcode: <%= sc.getZipcode() %></span>
			</div>		
		</div>
	<% } %>
	
		<%-- <spr:input type="hidden" path="serviceName" value="<%= ((CustomerBill)request.getAttribute(\"customerBill\")).getServiceName() %>" />
		<spr:input type="hidden" path="servicePrice" value="<%= ((CustomerBill)request.getAttribute(\"customerBill\")).getServicePrice() %>" />
		<spr:input type="hidden" path="totalPrice" value="<%= ((CustomerBill)request.getAttribute(\"customerBill\")).getTotalPrice() %>" /> --%>
		<button type="submit" class="btn">CONFIRM BOOKING</button>
	</div>
	</spr:form>
</body>
</html>