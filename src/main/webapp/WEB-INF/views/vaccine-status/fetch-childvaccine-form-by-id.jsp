<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="viewform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vaccine Details</title>
</head>
<body>
<h3>List Vaccine List for child</h3>
	<br>
		<form action="/admin/vaccinationstatus/fetchvaccinationstatusbyid" method="get">
				<label>enter vaccine id </label> <input type="text" placeholder="vaccine id"
					name="vid"> <label>enter child id </label> <input type="text" placeholder="child id"
					name="cid"> <input type='submit' value="fetch" name="submit">
			</form>
</body>
</html>