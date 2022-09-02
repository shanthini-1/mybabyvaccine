<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of vaccine status</title>
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
		<div class="logo">My Baby vaccine </div>
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
				<a href="/vacschedular/listallvaccineSchedule"><em class="fa fa-calendar"
					style="font-size: 20px;"></em> Vaccine scheduler </a>
			</div>
			
		</div>
	</nav>
	<div><input id="sInput" type="text" placeholder="Search.."></div>
	<br>
	<div class="container">
			<table>
				<caption>Vaccine Status</caption>
				<thead>
					<tr>
						<th>Child Register No</th>
						<th>Child Name</th>
						<th>Vaccine Name</th>
						<th>Date Of Vaccination</th>
						<th>Hospital Id</th>
						<th>Attender</th>
						<th>Baby Weight</th>
						<th>Baby Hieght</th>
						<th>Vaccinated Status</th>
						<th>Update Status</th>
						
					</tr>
				</thead>
				<tbody id="myTableData">
					<c:forEach var="vac" items="${allVaccinationStatuslist}">
						<tr>
							<td>${vac.childId}</td>
							<td>${vac.child.childName}</td>
							<td>${vac.vaccine.vaccineName}</td>
							<td>${vac.dateOfVaccination}</td>
							<td>${vac.hospital.hospitalName}</td>
							<td>${vac.attender.hosStaff.userName}</td>
							<td>${vac.babyWeight}</td>
							<td>${vac.babyHeight}</td>
							<td>${vac.vaccinatedStatus}</td>
							 <td><a id='btn' href="/vaccinationstatus/vaccinationstatusmodifyform?cid= ${vac.childId}&vid=${vac.vaccineId}">Update</a></td>
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