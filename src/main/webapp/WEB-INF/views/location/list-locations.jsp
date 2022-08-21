<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Location</title>
<style>
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
		<div class="logo">Baby Health Tracker</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/"><em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em> Back </a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
			<div class="menu-list">
				<a href="/loctaions/addlocationform"><em class="fa fa-plus"
					style="font-size: 20px;"></em> Location</a>
			</div>
		</div>
	</nav>
	<div></div>
	<div class="container">

		<table>
			<caption>
				<strong>List of All Location</strong>
			</caption>
			<thead>
				<tr>
					<th>Pin Code</th>
					<th>District</th>
					<th>State Name</th>
					<th>Country</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="locationCode" items="${listAllLocation}">
					<tr>
						<td>${locationCode.pinCode}</td>
						<td>${locationCode.district}</td>
						<td>${locationCode.stateName}</td>
						<td>${locationCode.country}</td>
						<td><a
							href="/locations/locationmodifyform?locId=${locationCode.pinCode}">Edit</a></td>
						<td><a
							href="/locations/locationdeleteform?locId=${locationCode.pinCode}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<footer>
		<p>
			create by shanthini <br>Copyright � 2022 &nbsp; All rights
			reserved.
		</p>
	</footer>
	<script>
			<%@include file="/WEB-INF/js/time.js" %>
	</script>
</body>
</html>