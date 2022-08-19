<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>list children by doctor</title>
</head>
<body>
	<form:form action="/children/listchildbydoctorid" method="get">
		<h3>list child by Doctor id</h3>
		<label>enter id </label>
		<input type="text" placeholder="doctor id" name="doctorId">
		<input type='submit' value="fetch" name="submit">
	</form:form>
</body>
</html>