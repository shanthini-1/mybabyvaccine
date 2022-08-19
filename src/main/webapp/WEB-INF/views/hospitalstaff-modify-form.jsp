<%@ page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HospitalStaff Modify Form</title>
</head>
<body>
	<h3>Modify HospitalStaff</h3>
	<br>
<form action="/admin/hospitalstaff/hospitalstaffupdateform" method="get">
				<label>Enter staff Id</label> <input type="text"
					placeholder="hospital staff id" name="id"> <input type='submit'
					value="Update" name="submit">
			</form>
</body>
</html>