<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Hospital</title>
<style type="text/css">
<%@include file="/WEB-INF/css/listpage.css" %>
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
		<div class="logo">My Baby Vaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/hospitals/hospitalfirstview"><em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em> Back </a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
			<div class="menu-list">
				<a href="/hospitals/addhospitalform"><em class="fa fa-plus"
					style="font-size: 20px;"></em> Hospital</a>
			</div>
		</div>
	</nav>
	<div>
	</div>
	<div class="container">
			<table>
			<caption>Hospital</caption>
				<thead>
					<tr>
						<th>Hospital Id</th>
						<th>Hospital Name</th>
						<th>Hospital Plot No</th>
						<th>Hospital Street</th>
						<th>Hospital City</th>
						<th>Hospital pin Code</th>
						<th>Contact Person Id</th>
						<th>View Contact Person</th>
						<th>Update</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="hospital" items="${listAllTheHospitals}">
						<tr>
							<td>${hospital.hospitalId}</td>
							<td>${hospital.hospitalName}</td>
							<td>${hospital.hospitalPlotNo}</td>
							<td>${hospital.hospitalStreet}</td>
							<td>${hospital.hospitalCity}</td>
							<td>${hospital.pinCode}</td>
							<td>${hospital.contactPersonId}</td>
							<td><a href="/persons/fetchperson?id=${hospital.contactPersonId}">View</a></td>
							<td><a href="/hospitals/hospitalmodifyform?id=${hospital.hospitalId}">Edit</a></td>
							<td><a href="/hospitals/hospitaldeleteform?id=${hospital.hospitalId}">Delete</a></td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
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