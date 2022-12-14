<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Hospital Staff</title>
<style type="text/css">
<%@include file="/WEB-INF/css/listpage.css" %>
</style>
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
<%@include file="/WEB-INF/js/search.js" %>
</script>
</head>
<body>
	<header>
		<div>
			<span id="time"> </span>
		</div>
	</header>
	<nav class="navbar">
		<div class="logo">MyBabyVaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/hospitalstaff/hospitalstafffirstview"><em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em> Back </a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
			<div class="menu-list">
				<a href="/hospitalstaff/addhospitalstaffform"><em class="fa fa-plus"
					style="font-size: 20px;"></em> Hospital</a>
			</div>
		</div>
	</nav>
<div>${error}</div>
<div><input id="sInput" type="text" placeholder="Search.."></div><br>
	<div class="container">
			<table>
				<caption>Hospital Staff</caption>
				<thead>
					<tr>
						<th>Hospital Name</th>
						<th>Staff Id</th>
						<th>Staff Name</th>
						<th>Staff Role</th>
						<th>view</th>
						<th>Edit</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="hospitalstaff" items="${listAllHospitalStaffs}">
						<tr>
							<td>${hospitalstaff.hospital.hospitalName}</td>
							<td>${hospitalstaff.staffId}</td>
							<td>${hospitalstaff.hosStaff.userName}</td>
							<td>${hospitalstaff.staffRole}</td>
							<td><a id='btn' href="/hospitalstaff/gethospitalstaffpersondetails?id=${hospitalstaff.staffId}">view</a></td>
							<td><a id='btn' href="/hospitalstaff/hospitalstaffupdateform?id=${hospitalstaff.staffId}">Edit</a></td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	<footer>
		<p>
			create by shanthini <br>Copyright ? 2022 &nbsp; All rights
			reserved.
		</p>
	</footer>
	<script>
	<%@include file="/WEB-INF/js/time.js" %>
	</script>
</body>
</html>