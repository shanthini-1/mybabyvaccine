<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>modify vaccine</title>
</head>
<body>
<form:form action="/admin/vaccinationstatus/vaccinationstatusmodifyform"
				method="get">
				<h1>vaccine status update form</h1>
				<label>enter vaccine id </label> <input type="text" placeholder="vaccine id"
					name="vid"> <label>enter child id </label> <input type="text" placeholder="child id"
					name="cid"> <input type='submit' value="update"
					name="submit">
			</form:form>
</body>
</html>