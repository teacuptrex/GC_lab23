<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grade Confirmation</title>
</head>
<body>

<h1>Grade Added</h1>
	Name: <c:out value="${ grade.getName() }" /><br />
	Type: ${ grade.getType() }<br />
	Score: <fmt:formatNumber value="${ grade.getScore()" type="number" minIntegerDigits="1" /><br />
	Total: <fmt:formatNumber value="${ grade.getTotal()" type="number" minIntegerDigits="1" /><br />
	
	<a href="/">Return to Grade List</a>

</body>
</html>