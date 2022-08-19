<%@ page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Find Form</title>
</head>
<body>
	<h3>Find Hospital</h3>
	<br>
	<form:form action="/admin/hospital/fetchhospital" method="get">
				<label>Enter Hospital Id  </label> <input type="text"
					placeholder="hospital id" name="id"> <input type='submit'
					value="Find" name="submit">
			</form:form>
</body>
</html>