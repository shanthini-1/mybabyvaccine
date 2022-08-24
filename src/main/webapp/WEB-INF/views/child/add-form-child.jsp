<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="addchildform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add child</title>
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
				<a href="/children/childfirstview"><em class="fa fa-arrow-circle-left"
					style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
		</div>
	</nav>
<div>${error}</div>
	<div id="root">
		<div>
			<h1 class="logotitle">Child Registeration</h1>
		</div>
		<div id="form">
			<addchildform:form action="/children/addchilds" method="post"
				modelAttribute="addChild">

				<addchildform:errors path="childId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="childName">Child Name</label>
					</div>
					<div class="col-75">
						<addchildform:input path="childName" type="text" name="child name"
							minlength="3" maxlength="25" id="child name"
							placeholder="child name" pattern="^[A-Za-z ]+[A-Za-z ]*{3-25}$"
							required="true" />
					</div>
				</div>
				<addchildform:errors path="childName" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="childDob">Child Dob </label>
					</div>
					<div class="col-75">
						<addchildform:input path="childDob" type="date"
							placeholder="birth date" required="true" id="dateNoFuture"
							onblur="checkDatenofuture();" />
					</div>
				</div>
				<addchildform:errors path="childDob" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="gender">Gender </label>
					</div>
					<div class="col-75">
						Male
						<addchildform:radiobutton path="gender" value="Male" required="true" />
						Female
						<addchildform:radiobutton path="gender" value="Female" />
					</div>
				</div>
				<addchildform:errors path="gender" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="birthWeight">Birth Weight</label>
					</div>
					<div class="col-75">
						<addchildform:input path="birthWeight" type="text"
							inputmode="decimal" name="birthWeight" maxlength="5"
							id="birthWeight" placeholder="birthWeight"
							pattern="^([0-9]*+\\.?[0-9]*|\\.[0-9]+)$" required="true" />
					</div>
				</div>
				<addchildform:errors path="birthWeight" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="birthPlace">Birth Place</label>
					</div>
					<div class="col-75">
						<addchildform:input path="birthPlace" type="text" name="city"
							minlength="3" maxlength="25" id="city" placeholder="city"
							pattern="^[A-Za-z]+[A-Za-z ]*$" required="true" />
					</div>
				</div>
				<addchildform:errors path="birthPlace" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="bloodGroup">Blood Group</label>
					</div>
					<div class="col-75">
						<select name="bloodGroup" class="text-box" required>
							<option value="" Selected disabled>select Blood group</option>
							<option value="A Positive">A Positive</option>
							<option value="B Positive">B Positive</option>
							<option value="AB Positive">AB Positive</option>
							<option value="A Negative">A Negative</option>
							<option value="B Negative">B Negative</option>
							<option value="AB Negative">AB Negative</option>
							<option value="O Positive">O Positive</option>
							<option value="O Negative">O Negative</option>
						</select>
					</div>
				</div>
				<addchildform:errors path="bloodGroup" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="hospitalId">Hospital Id</label>
					</div>
					 <div class="col-75">
					<select name="hospitalId" id="hospitalId" required>
							<option value="" selected disabled >Select Hospital</option>
							<c:forEach items="${listOfHospital}" var="hospitals">
								<option value='${hospitals.hospitalId}'>${hospitals.hospitalName}-${hospitals.hospitalId}</option>
							</c:forEach>
						</select>
						</div> 
				</div>
				<addchildform:errors path="hospitalId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="doctorId">Doctor Id</label>
					</div>
					<div class="col-75">
							<select name="doctorId" id="doctorId" required>
							<option value="" selected disabled >Select Doctor</option>
							
							<c:forEach items="${docName}" var="doctor">
								<option value='${doctor.userId}'> ${doctor.userName}-${doctor.userId}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<addchildform:errors path="doctorId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="fatherId">Father Id</label>
					</div>
				 <div class="col-75">
							<select name="fatherId" id="fatherId" required>
							<option value="" selected disabled >Select Father</option>
							<c:forEach items="${listOfFather}" var="father">
								<option value='${father.userId}'>${father.userName}-${father.userId}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<addchildform:errors path="fatherId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="motherId">Mother Id</label>
					</div>
					<div class="col-75">
							<select name="motherId" id="motherId" required>
							<option value="" selected disabled >Select Mother</option>
							<c:forEach items="${listOfMother}" var="mother">
								<option value='${mother.userId}'>${mother.userName}-${mother.userId}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<addchildform:errors path="motherId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="guardianId">Guardian Id</label>
					</div>
					<div class="col-75">
							<select name="guardianId" id="guardianId" required>
							<option value="" selected disabled >Select Guardian</option>
							<c:forEach items="${listOfGuardian}" var="guardian">
								<option value='${guardian.userId}'>${guardian.userName}-${guardian.userId}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<addchildform:errors path="guardianId" class="text-danger" />
				<div class="button-s">
					<addchildform:button>Add Child</addchildform:button>
				</div>
			</addchildform:form>
			${result}
		</div>
	</div>
	<footer>
		<p>
			create by shanthini <br>Copyright � 2022 &nbsp; All rights
			reserved.
		</p>
	</footer>
	<script>
	<%@include file="/WEB-INF/js/time.js" %>
	</script>
</body>
</html>