<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
</head>
<body>
	<%=request.getAttribute("msg") %>
</body>
</html>