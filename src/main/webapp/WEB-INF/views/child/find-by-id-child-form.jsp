<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="findchildform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>find Child By Id</title>
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
				<a href="/children/fetchchildform"><em
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
			<findchildform:form action="" method="get"
				modelAttribute="fetchChildById">

				<div class="row">
					<div class="col-25">
						<label for="childId">Child Id</label>
					</div>
					<div class="col-75">
						<findchildform:input path="childId" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="childName">Child Name</label>
					</div>
					<div class="col-75">
						<findchildform:input path="childName" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="childDob">Child Dob </label>
					</div>
					<div class="col-75">
						<findchildform:input path="childDob" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="gender">Gender</label>
					</div>
					<div class="col-75">
						<findchildform:input path="gender" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="birthWeight">Birth Weight</label>
					</div>
					<div class="col-75">
						<findchildform:input path="birthWeight" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="birthPlace">Birth Place</label>
					</div>
					<div class="col-75">
						<findchildform:input path="birthPlace" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="bloodGroup">Blood Group</label>
					</div>
					<div class="col-75">
						<findchildform:input path="bloodGroup" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="hospitalId">Hospital Id</label>
					</div>
				<div class="col-75">
					<findchildform:input path="hospitalId" value="${childHospitaldetails.hospitalName}" readonly="true"/>
				</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="doctorId">Doctor Id</label>
					</div>
					<div class="col-75">
						<findchildform:input path="doctorId" value="${childDoctordetails.userName}" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="fatherId">Father Id</label>
					</div>
					<div class="col-75">
						<findchildform:input path="fatherId" value="${childDaddetails.userName}" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="motherId">Mother Id</label>
					</div>
					<div class="col-75">
						<findchildform:input path="motherId" value="${childMomdetails.userName}" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="guardianId">Guardian Id</label>
					</div>
					<div class="col-75">
						<findchildform:input path="guardianId" placeholder="-" value="${childGuardianDetails.userName}" readonly="true"/>
					</div>
				</div>
			</findchildform:form>
		</div>
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