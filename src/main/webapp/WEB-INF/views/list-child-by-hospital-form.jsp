<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>list children by hospital</title>
</head>
<body>
	<form:form action="/children/listchildbyhospitalid" method="get">
		<h3>list child by Hospital id</h3>
		<label>enter id </label>
		<input type="text" placeholder="hospital id" name="hospitalId">
		<input type='submit' value="fetch" name="submit">
	</form:form>
</body>
</html>