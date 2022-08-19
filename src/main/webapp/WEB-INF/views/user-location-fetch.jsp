<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Location Form</title>
</head>
<body>
	<h3>Fetch person and location</h3>
	<br>
	<form action="/user/person/getpersonlocation" method="get"
		style="margin: 0;">
		<label>enter id </label> <input type="text" placeholder="user id"
			name="perId"> <input type='submit' value="fetch"
			name="submit">
	</form>
</body>
</html>