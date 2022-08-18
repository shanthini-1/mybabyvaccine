<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete child</title>
<style>

</style>
</head>
<body>
	<form:form action="/children/childdeleteform" method="get">
		<label>Enter Id </label>
		<input type="text" placeholder="child id" name="id">
		<input type='submit' value="Delete" name="submit">
	</form:form>
</body>
</html>