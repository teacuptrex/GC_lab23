<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Grades - Home</title>
</head>
<body>
<h1>All Grades</h1>
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Type</th>
				<th>Score</th>
				<th>Total</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="grade" items =  "${ grades }" >
			
			<tr>
				<td><c:out value="${grade.getName() }" /></td>
				<td>${grade.getType() }</td>
				<td><fmt:formatNumber value="${ grade.getScore()" type="number" minIntegerDigits="1" /></td>
				<td><fmt:formatNumber value="${ grade.getTotal()" type="number" minIntegerDigits="1" /></td>
				<td><a href="/delete?id=${ grade.getId() }">delete</a></td>
			</tr>
			
			</c:forEach>
		</tbody>
	</table>

</body>
</html>