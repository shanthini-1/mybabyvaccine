<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Location Delete Form</title>
</head>
<body>
	<h3>Delete Location</h3>
	<br>
	<form:form action="/admin/location/locationdeleteform" method="get">
		<label>Enter PinCode </label>
		<input type="text" placeholder="pin code" name="id">
		<input type='submit' value="Delete" name="submit">
	</form:form>
</body>
</html>