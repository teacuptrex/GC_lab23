<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Grade</title>
</head>
<body>

<h1>Add Grade</h1>

	<form method="post" action="/addGrade">
	
		Name: <input type="text" name="name" /> <br />
	
		Type:
			<select name="type">
				<option>Assignment</option>
				<option>Quiz</option>
				<option>Exam</option>
			</select><br />
			
		Score: <input type="number" name="socre" min="0" max="100" /><br />
		
		Total: <input type="number" name="total" min="0" /><br />
		
		<input type="submit" />
	
	</form>

</body>
</html>