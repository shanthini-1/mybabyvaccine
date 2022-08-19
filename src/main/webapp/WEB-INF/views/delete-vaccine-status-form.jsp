<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete vaccine status</title>
</head>
<body>
			<form:form action="/admin/vaccinationstatus/vaccinationstatusdeleteform"
				method="get">
				<label>enter vaccine id </label> <input type="text" placeholder="vaccine id"
					name="vid"> <label>enter child id </label> <input type="text" placeholder="child id"
					name="cid"><input type='submit' value="delete"
					name="submit">
			</form:form>
</body>
</html>