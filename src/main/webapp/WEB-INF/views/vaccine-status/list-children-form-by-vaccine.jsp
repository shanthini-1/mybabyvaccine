<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Children list  vaccinationStatus of vaccine</title>
</head>
<body>
<h3>Fetch person and location</h3><br>
			<form action="/vaccinationstatus/vaccineslistforchildren" method="get" style="margin: 0;">
				<label>enter vaccine id </label> <input type="text" placeholder="vaccine id"
					name="id"> <input type='submit' value="fetch" name="submit">
			</form>
</body>
</html>