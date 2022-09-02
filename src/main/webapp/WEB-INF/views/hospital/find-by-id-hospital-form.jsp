<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="findhospitalform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>find Hospital By Id</title>
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
		<div class="logo">MyBabyVaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/hospital/hospitalfirstview"><em
					class="fa fa-arrow-circle-left" style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
		</div>
	</nav>
	<div id="root">
		<div id="form">
			<h3>Hospital Details</h3>
			<findhospitalform:form action="" method="get"
				modelAttribute="fetchHospitalById">
				<div class="row">
					<div class="col-25">
						<label for="hospitalId">Hospital Id</label>
					</div>
					<div class="col-75">
						<findhospitalform:input path="hospitalId" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="hospitalName">Hospital Name</label>
					</div>
					<div class="col-75">
						<findhospitalform:input path="hospitalName" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="hospitalPlotNo">Hospital Plot No</label>
					</div>
					<div class="col-75">
						<findhospitalform:input path="hospitalPlotNo" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="hospitalStreet">Hospital Street</label>
					</div>
					<div class="col-75">
						<findhospitalform:input path="hospitalStreet" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="hospitalCity">Hospital City</label>
					</div>
					<div class="col-75">
						<findhospitalform:input path="hospitalCity" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="pinCode">Hospital pin Code</label>
					</div>
					<div class="col-75">
						<findhospitalform:input path="pinCode" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="contactPersonId">Contact Person Id</label>
					</div>
					<div class="col-75">
						<findhospitalform:input path="contactPersonId" />
					</div>
				</div>
			</findhospitalform:form>
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