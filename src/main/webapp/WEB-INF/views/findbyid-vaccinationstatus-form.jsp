<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="viewform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find Vaccine</title>
</head>
<body>
	<div id="root">
		<div id="form">
		<viewform:form action="" method="get" modelAttribute="findVaccinationStatusById">
			<div>
			<label for="childId">child Id</label>
		</div>
		<div>
			<viewform:input path="childId" readonly="true"/>
		</div>
		<div>
			<label for="vaccineId">vaccine Id</label>
		</div>
		<div>
			<viewform:input path="vaccineId" readonly="true"/>
		</div>
		<div>
			<label for="dateOfVaccination">Date of Vaccination </label>
		</div>
		<div>
			<viewform:input path="dateOfVaccination" readonly="true"/>
		</div>
		<div>
			<label for="vaccinatedStatus">Vaccinated Status</label>
		</div>
		<div>
			<viewform:input path="vaccinatedStatus" readonly="true"/>
		</div>
		<div>
			<label for="hospitalId">Hospital Id</label>
		</div>
		<div>
			<viewform:input path="hospitalId" readonly="true"/>
		</div>
		<div>
			<label for="attenderId">Attender Id</label>
		</div>
		<div>
			<viewform:input path="attenderId" readonly="true"/>
		</div>
		<div>
			<label for="babyWeight">Baby Weight</label>
		</div>
		<div>
			<viewform:input path="babyWeight" readonly="true"/>
		</div>
		<div>
			<label for="babyHeight">Baby Height</label>
		</div>
		<div>
			<viewform:input path="babyHeight" readonly="true"/>
		</div>
		</viewform:form>
		</div>
		</div>
</body>
</html>