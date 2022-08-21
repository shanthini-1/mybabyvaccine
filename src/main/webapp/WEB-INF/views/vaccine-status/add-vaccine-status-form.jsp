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
			<h1 class="logotitle">Child Registeration</h1>
		</div>
		<div id="form">
			<addform:form action="addvaccinationstatuss" method="post"
				modelAttribute="addvaccinationStatus">
				<div class="row">
					<div class="col-25">
						<label for="childId">Child Id</label>
					</div>
					<div class="col-75">
						<%-- <addform:input path="childId" /> --%>
						<addform:select path="childId" name="cid" id="cid">
					<%-- <addform:option value=''>-select-</addform:option> --%>
						<c:forEach items="${listAllChildrenId}" var="childId"
							varStatus="loop">
							<addform:option value='${childId}'>${childId}</addform:option>
						</c:forEach>
					</addform:select> 
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="vaccineId">Vaccine Id</label>
					</div>
					<div class="col-75">
						<%-- <addform:input path="vaccineId" /> --%>
						<addform:select path="vaccineId" name="vid" id="vid" placeholder="vaccine id">
				<%-- 	<addform:option value=''>-select-</addform:option> --%>
						<c:forEach items="${allvaccines}" var="vaccine"
							varStatus="loop">
							<addform:option value='${vaccine.vaccineId}'>${vaccine.vaccineName}-${vaccine.vaccineId} </addform:option>
						</c:forEach>
					</addform:select> 
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
						<%-- <addform:input path="vaccinatedStatus" /> --%>
						 Vaccinated <addform:radiobutton path="vaccinatedStatus" value="Vaccinated" required="true"></addform:radiobutton> 
        					Not-Vaccinated <addform:radiobutton path="vaccinatedStatus" value="Not-Vaccinated"></addform:radiobutton>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="hospitalId">Hospital Id</label>
						
					</div>
					<div class="col-75">
						<%-- <addform:input path="hospitalId" /> --%>
						<addform:select path="hospitalId" name="hid" id="hid">
				<%-- 	<addform:option value='' >-select-</addform:option> --%>
						<c:forEach items="${listAllTheHospitals}" var="hospital"
							varStatus="loop">
							<addform:option value='${hospital.hospitalId}'>${hospital.hospitalName} </addform:option>
						</c:forEach>
					</addform:select>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="attenderId">Attender Id</label>
					</div>
					<div class="col-75">
						<%-- <addform:input path="attenderId" /> --%>
						<addform:select path="attenderId" name="sid" id="sid">
				<%-- 	<addform:option value='' >-select-</addform:option> --%>
						<c:forEach items="${listAllAttenders}" var="hospitalstaff"
							varStatus="loop">
							<addform:option value='${hospitalstaff.staffId}'>${hospitalstaff.staffId} </addform:option>
						</c:forEach>
					</addform:select>
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
					<addform:button>Add Vaccination status</addform:button>
				</div>

			</addform:form>
		</div>
	</div>
</body>
</html>