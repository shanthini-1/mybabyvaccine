<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Fetch children</title>
</head>
<body>

	<form:form action="/children/fetchchild" method="get">
		<label>enter id </label>
		<input type="text" placeholder="child id" name="id">
		<input type='submit' value="Fetch" name="submit">
	</form:form>
</body>
</html>