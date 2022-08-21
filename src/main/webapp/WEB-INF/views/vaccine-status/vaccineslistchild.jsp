<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Child Details by vaccine Id</title>
</head>
<body>
	<div id="root">
		<form:form action="/admin/vaccinationstatus/childvaccinestatuslistbychild"
		method="get">
		<h1>List Child details By vaccine</h1>
		<label>enter vaccine id </label>
		<input type="text" placeholder="vaccine id" name="vId">
		<input type='submit' value="fetch" name="submit">
	</form:form>
	</div>
</body>
</html>