<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="addform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>modify vaccination status</title>
<style>
<%@include file="/WEB-INF/css/person-add-form.css" %>
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
				<a href="/vaccines/vaccinefirstview"><em
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

			<addform:form action="/vaccinationstatus/modifyvaccinationstatuschild" method="post"
				modelAttribute="modifyvaccinationStatus">
				<div class="row">
					<div class="col-25">
						<label for="childId">Child Id</label>
					</div>
					<div class="col-75">
						<addform:input path="childId" name="childId" id="childId" type="text" value="${childdetail.childId}" required="true" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="vaccineId">Vaccine Id</label>
					</div>
					<div class="col-75">
						<addform:input path="vaccineId" name="vaccineId" id="vaccineId" type="text" value="${vacdetail.vaccineId}"  required="true" readonly="true"/>
					</div>
				</div>
				
				<div class="row">
					<div class="col-25">
						<label for="dateOfVaccination">Date Of Vaccination </label>
					</div>
					<div class="col-75">
						<addform:input path="dateOfVaccination" type="date" id="NoFutureDate" onblur="checkDatenofuture();" required="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="vaccinatedStatus">Vaccinated Status</label>
					</div>
					<div class="col-75">
						 Vaccinated <addform:radiobutton path="vaccinatedStatus" value="Vaccinated" required="true"></addform:radiobutton> 
        					Not-Vaccinated <addform:radiobutton path="vaccinatedStatus" value="Not-Vaccinated"></addform:radiobutton>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="hospitalId">Hospital Id</label>
						
					</div>
					<div class="col-75">
						<select name="hospitalId" id="hospitalId" required>
						<option value="" selected disabled >Select Hospital</option>
						<c:forEach items="${listAllTheHospitals}" var="hospital"
							varStatus="loop">
							<option value='${hospital.hospitalId}'>${hospital.hospitalName} </option>
						</c:forEach>
					</select>
					
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="attenderId">Attender Id</label>
					</div>
					<div class="col-75">
						<select name="attenderId" id="attenderId" required>
							<option value="" selected disabled >Select Attender</option>
							
							<c:forEach items="${listAllAttenders}" var="hospitalstaff">
								<option value='${hospitalstaff.staffId}'> ${hospitalstaff.hosStaff.userName}-${hospitalstaff.hosStaff.userId}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="babyWeight">Baby Weight</label>
					</div>
					<div class="col-75">
						<addform:input path="babyWeight"  type="text" inputmode="decimal"
							name="babyWeight" maxlength="5" id="babyWeight"
							placeholder="babyWeight"
							pattern="^([0-9]*{3}+\\.?[0-9]*|\\.[0-9]+)$" required="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="babyHeight">Baby Height</label>
					</div>
					<div class="col-75">
						<addform:input path="babyHeight"  type="text" inputmode="decimal"
							name="babyHeight" maxlength="5" id="babyHeight"
							placeholder="babyHeight"
							pattern="^([0-9]*{2}+\\.?[0-9]*|\\.[0-9]+)$" required="true" />
					</div>
				</div>
				<div class="button-s">
					<addform:button>Update Vaccination status</addform:button>
				</div>
			</addform:form>
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