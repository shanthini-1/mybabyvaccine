<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>child vaccination scheduler</title>
</head>
<body>
	<h1>child vaccination scheduler form</h1>
	<div id="root">
		<form:form
			action="/vaccinationschedular/vaccineSchedularform"
			method="get">
			<label> child id </label>
			<input type="text" placeholder="child id" name="childId">
			<input type='submit' value="fetch" name="submit">
		</form:form>
	</div>
</body>
</html>
