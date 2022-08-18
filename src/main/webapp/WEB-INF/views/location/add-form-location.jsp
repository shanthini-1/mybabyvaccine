<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="locationaddform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Location</title>
<style>
<%@include file="/WEB-INF/css/addlocation.css" %>
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
		<div class="logo">My Baby Vaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/locations/locationfirstview"><em
					class="fa fa-arrow-circle-left" style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="index.html"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>

		</div>
	</nav>
	<div id="root">
		<div>
			<h1>Add New Location</h1>
		</div>
		<div id="form">
			<locationaddform:form action="addlocations" method="post"
				modelAttribute="addLocation">
				<div class="row">
					<div class="col-25">
						<label for="pinCode">Pin Code</label>
					</div>
					<div class="col-75">
						<locationaddform:input path="pinCode" type="text" name="pincode"
							minlength="6" maxlength="6" id="pin" pattern="^[1-9][0-9]{5}$"
							value="" placeholder="pincode" required="false" />
					</div>
				</div>
				<locationaddform:errors path="pinCode" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="district">District</label>
					</div>
					<div class="col-75">
						<locationaddform:input path="district" type="text" name="district"
							minlength="3" maxlength="25" id="pin" placeholder="district"
							pattern="^[A-Za-z]+[A-Za-z ]*$" required="true" />
					</div>
				</div>
				<locationaddform:errors path="district" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="stateName">State Name</label>
					</div>
					<div class="col-75">
						<locationaddform:input path="stateName" type="text"
							name="stateName" minlength="3" maxlength="25" id="pin"
							placeholder="stateName" pattern="^[A-Za-z]+[A-Za-z ]*$"
							required="true" />
					</div>
				</div>
				<locationaddform:errors path="stateName" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="country">Country</label>
					</div>
					<div class="col-75">
						<locationaddform:input path="country" type="text" name="country"
							minlength="3" maxlength="25" id="pin" placeholder="country"
							pattern="^[A-Za-z]+[A-Za-z ]*$" required="true" />
					</div>
				</div>
				<locationaddform:errors path="country" class="text-danger" />
				<div id="formbuttons">
					<div>
						<locationaddform:button>
							<a href="/location/addlocationform">Back</a>
						</locationaddform:button>
					</div>
					<div>
						<locationaddform:button>Add Location</locationaddform:button>
					</div>
				</div>
			</locationaddform:form>
		</div>
	</div>
	<footer>
		<p>
			create by shanthini <br>Copyright © 2022 &nbsp; All rights
			reserved.
		</p>
	</footer>
	<script>
		function refreshTime() {
			const timeDisplay = document.getElementById("time");
			const dateString = new Date().toLocaleTimeString();
			const formattedString = dateString.replace(" - ");
			timeDisplay.textContent = formattedString;
		}
		setInterval(refreshTime, 1000);
	</script>
</body>
</html>