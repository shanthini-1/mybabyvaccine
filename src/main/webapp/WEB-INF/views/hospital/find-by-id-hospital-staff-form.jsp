<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="findhospitalstaffform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>find Hospital Staff Person By Id</title>
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
		<div class="logo">My Baby vaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/hospitalstaff/hospitalstafffirstview"><em
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
		<h3>Staff Details</h3>
			<findhospitalstaffform:form action="" method="get"
				modelAttribute="fetchHospitalStaffById">
				<div class="row">
					<div class="col-25">
						<label for="staffId">Staff Id</label>
					</div>
					<div class="col-75">
						<findhospitalstaffform:input path="staffId" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="staffRole">Staff Role</label>
					</div>
					<div class="col-75">
						<findhospitalstaffform:input path="staffRole" readonly="true" />
					</div>
				</div>
			</findhospitalstaffform:form>
			<findhospitalstaffform:form action="" method="get"
				modelAttribute="fetchHospitalById">
				<div class="row">
					<div class="col-25">
						<label for="hospitalName">Hospital Name</label>
					</div>
					<div class="col-75">
						<findhospitalstaffform:input path="hospitalName" />
					</div>
				</div>
			</findhospitalstaffform:form>
			<findhospitalstaffform:form action="" method="get"
				modelAttribute="fetchstaffById">
				<div class="row">
					<div class="col-25">
						<label for="userName">User Name</label>
					</div>
					<div class="col-75">
						<findhospitalstaffform:input path="userName" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="userDob">User Dob </label>
					</div>
					<div class="col-75">
						<findhospitalstaffform:input path="userDob" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="gender">Gender</label>
					</div>
					<div class="col-75">
						<findhospitalstaffform:input path="gender" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="email">Email</label>
					</div>
					<div class="col-75">
						<findhospitalstaffform:input path="email" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="phoneNumber">Phone Number</label>
					</div>
					<div class="col-75">
						<findhospitalstaffform:input path="phoneNumber" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="city">city</label>
					</div>
					<div class="col-75">
						<findhospitalstaffform:input path="city" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="pinCode">Pin Code</label>
					</div>
					<div class="col-75">
						<findhospitalstaffform:input path="pinCode" readonly="true" />
					</div>
				</div>
			</findhospitalstaffform:form>
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