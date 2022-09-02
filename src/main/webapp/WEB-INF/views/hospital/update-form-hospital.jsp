<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updatehospitalform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Hospital Form</title>
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
				<a href="/hospitals/hospitalfirstview"><em class="fa fa-arrow-circle-left"
					style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
		</div>
	</nav>
	<div id="root">
		<div>
			<h1 class="logotitle">Update Hospital Detail </h1>
		</div>
		<div id="form">
			<updatehospitalform:form action="/hospitals/modifyhospitals" method="post"
				modelAttribute="modifyHospital">
		<div class="row">
					<div class="col-25">
					<label for="hospitalId">Hospital Id</label>
				</div>
				<div class="col-75">
					<updatehospitalform:input path="hospitalId" readonly="true"/>
				</div>
				</div>
		<div class="row">
					<div class="col-25">
						<label for="hospitalName">Hospital Name</label>
					</div>
					<div class="col-75">
						<updatehospitalform:input path="hospitalName" type="text" name="hospitalName"
							minlength="3" maxlength="25" id="hospitalName"
							placeholder="Hospital Name" pattern="^[A-Za-z ]+[A-Za-z ]*{3-25}$"
							required="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="hospitalPlotNo">Hospital Plot No</label>
					</div>
					<div class="col-75">
						<updatehospitalform:input path="hospitalPlotNo" type="text" name="hospitalPlotNo"
							minlength="1" maxlength="10" id="door no" placeholder="hospital Plot No"
							pattern="[0-9A-Za-z+-\\/]*$" required="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="hospitalStreet">Hospital Street</label>
					</div>
					<div class="col-75">
						<updatehospitalform:input path="hospitalStreet" type="text" name="street"
							minlength="3" maxlength="25" id="street" placeholder="street name"
							pattern="^[A-Za-z]+[A-Za-z ]*$" required="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="hospitalCity">Hospital City</label>
					</div>
					<div class="col-75">
						<updatehospitalform:input path="hospitalCity" type="text" name="city"
							minlength="3" maxlength="25" id="city" placeholder="city name"
							pattern="^[A-Za-z]+[A-Za-z ]*$" required="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="pinCode">Hospital pin Code</label>
					</div>
					<div class="col-75">
					 <select name="pinCode" id="pinCode" required>
							<option value="" selected disabled>Select Pincode</option>
							<c:forEach items="${listOfpincode}" var="code" varStatus="loop">
								<option value='${code}'>${code}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="contactPersonId">Contact Person Id</label>
					</div>
					<div class="col-75">
					<select name="contactPersonId" id="contactPersonId" required>
							<option value="" selected disabled >Select Person</option>
							<c:forEach items="${listAllStaffs}" var="cPerson">
								<option value='${cPerson.userId}'>${cPerson.userName}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="button-s">
					<updatehospitalform:button>Update Hospital</updatehospitalform:button>
				</div>
			</updatehospitalform:form>
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