<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="addhospitalstaffform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Hospital Staff</title>
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
				<a href="/hospitalstaff/hospitalstafffirstview"><em class="fa fa-arrow-circle-left"
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
			<h1 class="logotitle">Add Hospital Staff</h1>
		</div>
		<div id="form">

			<addhospitalstaffform:form action="addhospitalstaffs" method="post"
				modelAttribute="addHospitalStaff">
				<div class="row">
					<div class="col-25">
						<label for="hospitalId">Hospital Id</label>
					</div>
					<div class="col-75">
						<select name="hospitalId" id="hospitalId" required>
							<option value="" selected disabled >Select
								Person</option>
							<c:forEach items="${listAllTheHospitals}" var="hospital">
								<option value='${hospital.hospitalId}'>${hospital.hospitalName}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="staffId">Staff Id</label>
					</div>
					<div class="col-75">
					 <select name="staffId" id="staffId" required>
							<option value="" selected disabled >Select
								Person</option>
							<c:forEach items="${listOfstaffs}" var="staffPerson">
								<option value='${staffPerson.userId}'>${staffPerson.userName}</option>
							</c:forEach>
						</select> 
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="staffRole">Staff Role</label>
					</div>
					<div class="col-75">
					  Doctor <addhospitalstaffform:radiobutton path="staffRole" value="Doctor" required="true"/>  
        					Attender <addhospitalstaffform:radiobutton path="staffRole" value="Attender"/>
					</div>
				</div>
				<div class="button-s">
					<addhospitalstaffform:button>Add Hospital Staff</addhospitalstaffform:button>
				</div>
			</addhospitalstaffform:form>
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