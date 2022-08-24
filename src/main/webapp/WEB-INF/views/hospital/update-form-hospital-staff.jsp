<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updatehospitalstaffform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Hospital Staff Form</title>
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
			<h1 class="logotitle">Update Hospital Staffs Details</h1>
		</div>
		<div id="form">
			<updatehospitalstaffform:form action="modifyhospitalstaffs"
				method="post" modelAttribute="modifyHospitalStaff">
			
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
					  Doctor <updatehospitalstaffform:radiobutton path="staffRole" value="Doctor" required="true"/>  
        					Attender <updatehospitalstaffform:radiobutton path="staffRole" value="Attender"/>
					</div>
				</div>
				<div class="button-s">
					<updatehospitalstaffform:button>Update Hospital Staff</updatehospitalstaffform:button>
				</div>
			</updatehospitalstaffform:form>
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