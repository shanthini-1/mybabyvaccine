<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>vaccineschedule list by date</title>
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
<div>${error}</div>
	<header>
		<div>
			<span id="time"> </span>
		</div>
	</header>
	
	<nav class="navbar">
		<div class="logo">MyBabyVaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/vaccines/vaccinefirstview"><em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em> Back </a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
			
		</div>
	</nav>
	<div><input id="sInput" type="text" placeholder="Search.."></div>
	<br>
	<div class="container">
			<table>
			<caption>Vaccine Schedule List</caption>
				<thead>
					<tr>
					<th>Child Id</th>
					<th>Child Name</th>
					<th>Vaccine Id</th>
					<th>Vaccine Name</th>
					<th>Date To Vaccinate</th>
					<th>Update Status</th>

				</tr>
				</thead>
				<tbody>
					 <c:forEach var="vac" items="${vaccinesch}"> 
						<tr>
							<td>${vaccinesch.child.childId}</td>
							<td>${vaccinesch.child.childName}</td>
							<td>${vaccinesch.vaccine.vaccineId}</td>
							<td>${vaccinesch.vaccine.vaccineName}</td>
							<td>${vaccinesch.dateToVaccinate}</td>
							<td></td>
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