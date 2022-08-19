<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Hospital Staff Person Form</title>
</head>
<body>
	<h3>Find Hospital Staff Person</h3>
	<br>
	<form:form action="/admin/hospitalstaff/gethospitalstaffpersondetails"
		method="get">
		<label>Enter Staff Id</label>
		<input type="text" placeholder="hospital staff id" name="id">
		<input type='submit' value="Find Details" name="submit">
	</form:form>
</body>
</html>