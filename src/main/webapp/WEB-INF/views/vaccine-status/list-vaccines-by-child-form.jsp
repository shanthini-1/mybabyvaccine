<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Child</title>
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
		<div>${error}</div>
	</header>
	<nav class="navbar">
		<div class="logo">My Baby Vaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/vaccines/vaccinefirstview"><em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em> Back </a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
			<div class="menu-list">
				<a href="/vaccines/vaccineaddform"><em class="fa fa-plus"
					style="font-size: 20px;"></em> Child</a>
			</div>
		</div>
	</nav>
	<div><input id="sInput" type="text" placeholder="Search.."></div>
	<br>
	<div class="container">
			<table>
				<caption>vaccination status of child</caption>
				<thead>
					<tr>
						<th>Child Id</th>
						<th>Vaccine Id</th>
						<th>dateOfVaccination</th>
						<th>vaccinatedStatus</th>
						<th>hospitalId</th>
						<th>attenderId</th>
						<th>babyWeight</th>
						<th>babyHeigh</th>
						
					</tr>
				</thead>
			<tbody id="myTableData">
					<c:forEach var="vac" items="${listofvaccines}">
						<tr>
						<td>${vac.childId}</td>
							<td>${vac.vaccineId}</td>
							<td>${vac.dateOfVaccination}</td>
							<td>${vac.vaccinatedStatus}</td>
							<td>${vac.hospitalId}</td>
							<td>${vac.attenderId}</td>
							<td>${vac.babyWeight}</td>
							<td>${vac.babyHeight}</td>
							
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