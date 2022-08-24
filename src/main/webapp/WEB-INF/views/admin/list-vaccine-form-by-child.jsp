<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List Vaccine status By Child Form</title>
</head>
<body>
	
				<h3>Fetch vaccines list of child</h3><br>
			<form action="/vaccinationstatus/childrenlistforvaccines" method="get" style="margin: 0;">
				<label>enter child id </label> <input type="text" placeholder="child id"
					name="id"> <input type='submit' value="fetch" name="submit">
			</form>
</body>
</html>