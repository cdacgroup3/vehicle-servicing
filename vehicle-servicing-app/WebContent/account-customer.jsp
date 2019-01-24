<%@page import="dto.ServiceCenter"%>
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
</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>
	
	<!-- Body -->
	<table>
		<%
			List<CustomerBill> customerOrders = (List<CustomerBill>) request.getAttribute("customerOrders");
			Iterator<CustomerBill> it = customerOrders.iterator();
			while(it.hasNext()) {
				CustomerBill customerBill = it.next();			
		%>
		<tr>
			<td>Bill Id: <%= customerBill.getBillId() %></td>
			<%
				List<String> services = customerBill.getServiceName();
				String serviceList = "";
				Iterator<String> it2 = services.iterator();
				while(it.hasNext()) {
					serviceList = serviceList + it.next();
				}
			%>
			<td>Services: <%= serviceList %></td>
			<td>Total Price: <%= customerBill.getTotalPrice() %></td>
		</tr>
		<% } %>
	</table>
</body>
</html>