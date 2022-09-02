<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>child vaccination scheduler</title>
<style>
<%@include file="/WEB-INF/css/listall.css" %>
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
		<div class="logo">MyBabyVaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/vaccines/vaccinefirstview"><em
					class="fa fa-arrow-circle-left" style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>

		</div>
	</nav>
	<div id="root">
		<div>
			<h1 class="logotitle">Child Detail</h1>
		</div>
		<div id="form">
			<form:form action="" method="get" modelAttribute="childDetail">
				<div class="row">
					<div class="col-25">
					<label for="childId">Child Id</label>
				</div>
				<div class="col-75">
					<form:input path="childId" readonly="true"/>
				</div>
				</div>
				<div class="row">
					<div class="col-25">
					<label for="childName">Child Name</label>
				</div>
			<div class="col-75">
					<form:input path="childName" readonly="true"/>
				</div>
				</div>
				<div class="row">
					<div class="col-25">
					<label for="childDob">Child Dob </label>
				</div>
				<div class="col-75">
					<form:input path="childDob" readonly="true"/>
				</div>
				</div>
				<div class="row">
					<div class="col-25">
					<label for="gender">Gender</label>
				</div>
			<div class="col-75">
					<form:input path="gender" readonly="true"/>
				</div>
				</div>
			</form:form>
		</div>
	</div>
<hr/>

	<div class="container">
			<table>
			<caption>vaccine schedule list</caption>
				<thead>
					<tr>
						<th>Vaccine Id</th>
						<th>Vaccine Name</th>
						<th>Date To Vaccinate</th>
						<th>Update Status</th>

					</tr>
				</thead>
					 <c:forEach var="vac" items="${vaccinesch}"> 
					 
						<tr>
							<td>${vac.vaccine.vaccineId}</td>
							<td>${vac.vaccine.vaccineName}</td>
							<td>${vac.dateToVaccinate}</td>
							 <td><a id='btn' href="/vaccinationstatus/vaccinationstatusmodifyform?cid= ${childDetail.childId}&vid=${vac.vaccine.vaccineId}">Update</a></td> 
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
