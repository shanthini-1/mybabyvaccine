<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Modify Form</title>
</head>
<body>
	<h3>Modify person</h3>
	<br>
	<form action="/user/person/personmodifyform" method="get"
		style="margin: 0;">
		<label>enter id </label> <input type="text" placeholder="user id"
			name="id"> <input type='submit' value="update" name="submit">
	</form>

</body>
</html>