<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete vaccine</title>
</head>
<body>
	<form:form action="/admin/vaccine/vaccinedeleteform" method="get">
		<label>enter vaccine id </label>
		<input type="text" placeholder="vaccine id" name="id">
		<input type='submit' value="delete" name="submit">
	</form:form>
</body>
</html>