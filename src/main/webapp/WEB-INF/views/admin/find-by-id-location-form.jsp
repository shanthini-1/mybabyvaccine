<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="viewlocationform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>find Location</title>
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
				<a href="/locations/locationfirstview"><em
					class="fa fa-arrow-circle-left" style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="index.jsp"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>

		</div>
	</nav>
	<div id="root">
		<div id="form">
			<viewlocationform:form action="" method="get"
				modelAttribute="fetchLocationById">
				<div>
					<label for="pinCode">Pin Code</label>
				</div>
				<div>
					<viewlocationform:input path="pinCode" readonly="true" />
				</div>
				<div>
					<label for="district">District</label>
				</div>
				<div>
					<viewlocationform:input path="district" readonly="true" />
				</div>
				<div>
					<label for="stateName">State Name</label>
				</div>
				<div>
					<viewlocationform:input path="stateName" readonly="true" />
				</div>
				<div>
					<label for="country">Country</label>
				</div>
				<div>
					<viewlocationform:input path="country" readonly="true" />
				</div>
				</viewlocationform:form>
				<div class="button-s">
			<button onclick="document.location='/location/findlocationform'">Back</button>
		     </div>
		</div>
	</div>
</body>
</html>