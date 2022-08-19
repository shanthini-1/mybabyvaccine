<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Person with location</title>
</head>
<body>
	<div id="root">
		<div id="vacform">
			<table>
				<thead>
					<tr>
						<th>User Id</th>
						<th>User Name</th>
						<th>User Dob</th>
						<th>Gender</th>
						<th>Person Category</th>
						<th>Email</th>
						<th>Phone Number</th>
						<th>Door Number</th>
						<th>Street</th>
						<th>City</th>
						<th>Pin Code</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="person" items="${listAllPersons}">
						<tr>
							<td>${person.userId}</td>
							<td>${person.userName}</td>
							<td>${person.userDob}</td>
							<td>${person.gender}</td>
							<td>${person.personCategory}</td>
							<td>${person.email}</td>
							<td>${person.phoneNumber}</td>
							<td>${person.doorNumber}</td>
							<td>${person.street}</td>
							<td>${person.city}</td>
							<td>${person.pinCode}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>