<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="addform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add vaccine </title>
<style>
<%@include file="/WEB-INF/css/person-add-form.css" %>
</style>
<script type="text/javascript">
<%@include file="/WEB-INF/js/datecheck.js" %>
</script>
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
				<a href="/vaccines/vaccinefirstview"><em class="fa fa-arrow-circle-left"
					style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-calendar" style="font-size: 20px;"></em>
					check Schedule</a>
			</div>
		</div>
	</nav>
<div>${error}</div>
	<div id="root">
		<div>
			<h1 class="logotitle">Update Vaccination Status</h1>
		</div>
		<div id="form">
			<addform:form action="addvaccinationstatuss" method="post"
				modelAttribute="addvaccinationStatus">
				<div class="row">
					<div class="col-25">
						<label for="childId">Child Id</label>
					</div>
					<div class="col-75">
						<addform:input path="childId" name="childId" id="childId" type="text"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="vaccineId">Vaccine Id</label>
					</div>
					<div class="col-75">
						<addform:input path="vaccineId" name="vaccineId" id="vaccineId" type="text"/>
					</div>
				</div>
				
				<div class="row">
					<div class="col-25">
						<label for="dateOfVaccination">Date Of Vaccination </label>
					</div>
					<div class="col-75">
						<addform:input path="dateOfVaccination" type="date" id="dateNoFuture" onblur="checkDatenofuture();" required="true"/>
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
								<option value='${hospitalstaff.staffId}'> ${hospitalstaff.userName}-${hospitalstaff.userId}</option>
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
</body>
</html>