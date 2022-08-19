<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Fetch</title>
</head>
<body>
		<h3>Fetch person</h3><br>
		<form action="/user/person/fetchperson" method="get" style="margin: 0;">
			<label>Enter id </label> <input type="text" placeholder="user id"
				name="id"> <input type='submit' value="Search User" name="submit">
		</form>
</body>
</html>