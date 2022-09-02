<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="findpersonform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Person location</title>
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
				<a href="/hospitals/listallhospitals"><em
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
			<h1 class="logotitle">User Details</h1>
		</div>
		<div id="form">
			<findpersonform:form action="" method="get"
				modelAttribute="persondetails">
				<div class="row">
					<div class="col-25">
						<label for="userName">User Name</label>
					</div>
					<div class="col-75">
						<findpersonform:input path="userName" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="userDob">User Dob </label>
					</div>
					<div class="col-75">
						<findpersonform:input path="userDob" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="gender">Gender</label>
					</div>
					<div class="col-75">
						<findpersonform:input path="gender" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="personCategory">Person Category</label>
					</div>
					<div class="col-75">
						<findpersonform:input path="personCategory" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="email">Email</label>
					</div>
					<div class="col-75">
						<findpersonform:input path="email" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="phoneNumber">Phone Number</label>
					</div>
					<div class="col-75">
						<findpersonform:input path="phoneNumber" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="doorNumber">Door Number</label>
					</div>
					<div class="col-75">
						<findpersonform:input path="doorNumber" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="street">Street</label>
					</div>
					<div class="col-75">
						<findpersonform:input path="street" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="city">city</label>
					</div>
					<div class="col-75">
						<findpersonform:input path="city" readonly="true" />
					</div>
				</div>
			</findpersonform:form>
			<findpersonform:form action="/persons/listallpersons" method="get"
				modelAttribute="locationdetails">
				<div class="row">
					<div class="col-25">
						<label for="pinCode">Pin Code</label>
					</div>
					<div class="col-75">
						<findpersonform:input path="pinCode" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="district">District</label>
					</div>
					<div class="col-75">
						<findpersonform:input path="district" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="stateName">State Name</label>
					</div>
					<div class="col-75">
						<findpersonform:input path="stateName" readonly="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="country">Country</label>
					</div>
					<div class="col-75">
						<findpersonform:input path="country" readonly="true" />
					</div>
				</div>
			</findpersonform:form>
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