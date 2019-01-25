<%@page import="java.util.Iterator"%>
<%@page import="dto.CustomerBill"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<style>
	table { width: 50%; }
	td { border: solid 2px lightgrey; }
</style>
</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>
	
	<!-- Body -->
	<table>
		<tr>
			<td>Bill Id: </td>
			<td>Services: </td>
			<td>Total Price: </td>
		</tr>
		<%
			List<CustomerBill> customerOrders = (List<CustomerBill>) request.getAttribute("customerOrders");
			Iterator<CustomerBill> it = customerOrders.iterator();
			while(it.hasNext()) {
				CustomerBill customerBill = it.next();			
		%>
		<tr>
			<td><%= customerBill.getBillId() %></td>
			<td>
				<ul>
			<%
				List<String> serviceNamesList = customerBill.getServiceName();
				List<String> servicePricesList = customerBill.getServicePrice();
				Iterator<String> it2 = serviceNamesList.iterator();
				Iterator<String> it3 = servicePricesList.iterator();
				while(it2.hasNext() && it3.hasNext()) {
			%>
				<li><%= it2.next() + " -> Rs " + it3.next() %></li>
			<% } %>
				</ul>
			</td>
			
			<td><%= customerBill.getTotalPrice() %></td>
			<td>
				<form action="approve-payment.htm" method="post">
					<input type="hidden" name="billId" value="<%= customerBill.getBillId() %>">
					<button type="submit">APPROVE PAYMENT</button>
				</form>
			</td>
		</tr>
		<% } %>
	</table>
</body>
</html>