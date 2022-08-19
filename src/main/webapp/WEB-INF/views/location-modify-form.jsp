<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Location Modify Form</title>
</head>
<body>
	<h3>Modify Location</h3>
	<br>
	<form:form action="/admin/location/locationmodifyform" method="get">
		<label>Enter PinCode </label>
		<input type="text" placeholder="pin code" name="id">
		<input type='submit' value="Update" name="submit">
	</form:form>
</body>
</html>