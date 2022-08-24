<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updatechildform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Child Form</title>
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
				<a href="/children/childfirstview"><em
					class="fa fa-arrow-circle-left" style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>

		</div>
	</nav>

	<div id="root">
		<div>
			<h1 class="logotitle">Child Update form</h1>
		</div>
		<div id="form">
			<updatechildform:form action="/children/modifychilds" method="post"
				modelAttribute="modifyChild">
				<div class="row">
					<div class="col-25">
						<label for="childId">Child Register No</label>
					</div>
					<div class="col-75">
						<updatechildform:input path="childId" type="text" name="user id"
							minlength="3" maxlength="6" id="user id" placeholder="user id"
							pattern="^[0-9]*$" required="true" readonly="true"/>
					</div>
				</div>
				<updatechildform:errors path="childId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="childName">Child Name</label>
					</div>
					<div class="col-75">
						<updatechildform:input path="childName" type="text" name="childId"
							minlength="3" maxlength="25" id="user name"
							placeholder="child name" pattern="^[A-Za-z ]+[A-Za-z ]*{3-25}$"
							required="true" />
					</div>
				</div>
				<updatechildform:errors path="childName" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="childDob">Child Dob </label>
					</div>
					<div class="col-75">
						<updatechildform:input path="childDob" type="date"
							placeholder="birth date" required="true" />
					</div>
				</div>
				<updatechildform:errors path="childDob" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="gender">Gender </label>
					</div>
					<div class="col-75">
						Male
						<updatechildform:radiobutton path="gender" value="Male" required="true" />
						Female
						<updatechildform:radiobutton path="gender" value="Female" />
					</div>
				</div>

				<updatechildform:errors path="gender" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="birthWeight">Birth Weight</label>
					</div>
					<div class="col-75">
						<updatechildform:input path="birthWeight" type="text"
							name="birthWeight" maxlength="5" id="birthWeight"
							placeholder="birthWeight"
							pattern="^([0-9]*+\\.?[0-9]*|\\.[0-9]+)$" required="true" />
					</div>
				</div>
				<updatechildform:errors path="birthWeight" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="birthPlace">Birth Place</label>
					</div>
					<div class="col-75">
						<updatechildform:input path="birthPlace" type="text" name="city"
							minlength="3" maxlength="25" id="city" placeholder="city"
							pattern="^[A-Za-z]+[A-Za-z ]*$" required="true" />
					</div>
				</div>
				<updatechildform:errors path="birthPlace" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="hospitalId">Hospital Id</label>
					</div>
					 <div class="col-75">
					<select name="hospitalId" id="hospitalId" required>
							<option value='${modifyChild.hospitalId}' ><c:out value='${modifyChild.hospital.hospitalName}'></c:out></option>
							<c:forEach items="${listOfHospital}" var="hospitals">
								<option value='${hospitals.hospitalId}'>${hospitals.hospitalName}-${hospitals.hospitalId}</option>
							</c:forEach>
						</select>
						</div> 
				</div>
				<updatechildform:errors path="hospitalId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="doctorId">Doctor Id</label>
					</div>
					<div class="col-75">
							<select name="doctorId" id="doctorId" required>
							<option value='${modifyChild.doctorId}' ><c:out value='${modifyChild.doctor.hosStaff.userName}'></c:out></option>
							
							<c:forEach items="${docName}" var="doctor">
								<option value='${doctor.userId}'> ${doctor.userName}-${doctor.userId}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<updatechildform:errors path="doctorId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="fatherId">Father Id</label>
					</div>
				 <div class="col-75">
							<select name="fatherId" id="fatherId" required>
							<option value='${modifyChild.fatherId}' ><c:out value='${modifyChild.father.userName}'></c:out></option>
							<c:forEach items="${listOfFather}" var="father">
								<option value='${father.userId}'>${father.userName}-${father.userId}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<updatechildform:errors path="fatherId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="motherId">Mother Id</label>
					</div>
					<div class="col-75">
							<select name="motherId" id="motherId" required>
							<option value='${modifyChild.motherId}' ><c:out value='${modifyChild.mother.userName}'></c:out></option>
							<c:forEach items="${listOfMother}" var="mother">
								<option value='${mother.userId}'>${mother.userName}-${mother.userId}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<updatechildform:errors path="motherId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="guardianId">Guardian Id</label>
					</div>
					<div class="col-75">
							<select name="guardianId" id="guardianId" required>
							<option value='${modifyChild.guardianId}' ><c:out value='${modifyChild.guardian.userName}'></c:out></option>
							<c:forEach items="${listOfGuardian}" var="guardian">
								<option value='${guardian.userId}'>${guardian.userName}-${guardian.userId}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<updatechildform:errors path="guardianId" class="text-danger" />
				<div class="button-s">
					<updatechildform:button>Update Child</updatechildform:button>
				</div>
				<updatechildform:errors >${error}</updatechildform:errors>
			</updatechildform:form>
		</div>
	</div>
</body>
</html>