<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Person with location</title>
<style>
<%@include file="/WEB-INF/css/person-add-form.css" %>
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<header>
		<div>
			<span id="time"> </span>
		</div>
	</header>
	<nav class="navbar">
		<div class="logo">My Baby vaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/persons/userfirstview"><em
					class="fa fa-arrow-circle-left" style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>

		</div>
	</nav>
	<div id="root">
		<div id="vacform">
			<table>
				<caption>User Detail</caption>
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
						<th>Edit</th>
						<th>Delete</th>
						
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
							<td><a href="/persons/personmodifyform?id=${person.userId}">Edit</a></td>
						<td><a
							href="/persons/persondeleteform?id=${person.userId}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<footer>
		<p>
			create by shanthini <br>Copyright © 2022 &nbsp; All rights
			reserved.
		</p>
	</footer>
	<script>
			<%@include file="/WEB-INF/js/time.js" %>
	</script>
</body>
</html>