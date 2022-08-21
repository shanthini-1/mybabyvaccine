<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>child vaccine status detail form</title>
</head>
<body>
	<form:form action="/admin/vaccinationstatus/childrenvaccinelist"
		method="get">
		<h1>vaccine status details of child</h1>
		<label>enter child id </label>
		<input type="text" placeholder="child id" name="cid">
		<input type='submit' value="fetch" name="submit">
	</form:form>
</body>
</html>