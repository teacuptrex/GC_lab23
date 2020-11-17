<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Grade</title>
</head>
<body>

<h1>Delete ${ grade.getName() } ${ grade.getType() } ${ grade.getTotal() }</h1>
	Are you sure<br />
	
	<a href="/reallydelete?id=${ grade.getId() }">Yes, delete!</a><br />
	<a href="/">No! Go back to list</a>

</body>
</html>