<%@ page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Hospital Contact Person Form</title>
</head>
<body>
	<h3>List Hospital Contact Person</h3>
	<br>
	<form:form action="/admin/hospital/gethospitalcontactperson" method="get">
				<label>Enter Contact Person Id </label> <input type="text"
					placeholder="contact person id" name="id"> <input
					type='submit' value="List Hospitals" name="submit">
			</form:form>
		
</body>
</html>