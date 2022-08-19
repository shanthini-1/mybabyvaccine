<%@ page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Staff Delete Form</title>
</head>
<body>
	<h3>Delete Hospital Staff</h3>
	<br>
	<form:form action="/admin/hospitalstaff/hospitalstaffdeleteform" method="get">
				<label>Enter Id </label> <input type="text"
					placeholder="hospital staff id" name="id"> <input type='submit'
					value="delete" name="submit">
			</form:form>
</body>
</html>