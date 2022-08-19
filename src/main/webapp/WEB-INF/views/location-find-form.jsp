<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Location Find Form</title>
</head>
<body>
	<h3>Find Location</h3>
	<br>
	<form:form action="/admin/location/fetchlocation" method="get">
		<label>Enter Id</label>
		<input type="text" placeholder="pin code" name="id">
		<input type='submit' value="Find" name="submit">
	</form:form>

</body>
</html>