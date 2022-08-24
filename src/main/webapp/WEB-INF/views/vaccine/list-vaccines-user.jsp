<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of vaccine</title>
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
		<div class="logo">Baby Health Tracker</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/login/userpagea"><em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em> Back </a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
		</div>
	</nav>
	<div></div>
	<div class="container">
			<table>
				<caption>vaccines</caption>
				<thead>
					<tr>
						<th>Vaccine Id</th>
						<th>Vaccine Name</th>
						<th>Week</th>
						<th>Vaccine Description</th>
						<th>Dosage</th>
						<th>Suggestion</th>
						<th>Vaccine Price</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="vac" items="${allvaccines}">
						<tr>
							<td>${vac.vaccineId}</td>
							<td>${vac.vaccineName}</td>
							<td>${vac.week}</td>
							<td>${vac.vacDescription}</td>
							<td>${vac.dosage}</td>
							<td>${vac.suggestion}</td>
							<td>${vac.vaccinePrice}</td>
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