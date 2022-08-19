<%@ page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updatechildform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Delete Form</title>
</head>
<body>
	<h3>Delete person</h3>
	<br>
	<form action="/user/person/persondeleteform" method="get" >
		<label >enter id </label> <input type="text"
			placeholder="user id" name="id"> <input type='submit'
			value="delete" name="submit">
	</form>
</body>
</html>