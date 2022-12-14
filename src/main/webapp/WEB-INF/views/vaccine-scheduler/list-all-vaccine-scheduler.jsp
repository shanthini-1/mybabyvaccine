<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Vaccine Scheduler List</title>
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
			<caption>vaccine schedule list</caption>
				<thead>
					<tr>
					<th>Child Register No</th>
					<th>Child Name</th>
					<th>Child DOB</th>
					<th>Vaccine Name</th>
					<th>Month of Vaccination</th>
					<th>Dosage</th>
					<th>Suggestion</th>
					<th>Date To Vaccinate</th>
					<th>Vaccination Status</th>
					<th>No.Of.Days to vaccinate</th>
					<th>Update Status</th>
					

				</tr>
				</thead>
				<tbody id="myTableData">
					 <c:forEach var="vac" items="${listAllSchedules}" varStatus="loop"> 
						<tr>
							<td>${vac.childId}</td>
							<td>${vac.child.childName}</td>
							<td>${vac.child.childDob}</td>
							<td>${vac.vaccine.vaccineName}</td>
							<td>${vac.vaccine.week}</td>
							<td>${vac.vaccine.dosage}</td>
							<td>${vac.vaccine.suggestion}</td>
							<td>${vac.dateToVaccinate}</td>
							<td>${vacSts[loop.index]}</td>
							<td>${vacEx[loop.index]}</td>
							 <td><a id='btn' href="/vaccinationstatus/vaccinationstatusmodifyform?cid= ${vac.childId}&vid=${vac.vaccineId}">Update</a></td>
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