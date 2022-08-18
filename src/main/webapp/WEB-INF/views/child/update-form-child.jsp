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
			<updatechildform:form action="addchilds" method="post"
				modelAttribute="addChild">
				<div class="row">
					<div class="col-25">
						<label for="childId">Child Id</label>
					</div>
					<div class="col-75">
						<updatechildform:input path="childId" type="text" name="user id"
							minlength="3" maxlength="6" id="user id" placeholder="user id"
							pattern="^[0-9]*$" required="true" />
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
						<updatechildform:select path="gender" class="text-box"
							title="gender required" required="true">
							<updatechildform:option value="Male">Male</updatechildform:option>
							<updatechildform:option value="Female">Female</updatechildform:option>
						</updatechildform:select>
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
						<label for="bloodGroup">Blood Group</label>
					</div>
					<div class="col-75">
						<updatechildform:select path="bloodGroup" class="text-box"
							placeholder="BloodGroup" title="Id must be required"
							required="true">
							<updatechildform:option value="A Positive">A Positive</updatechildform:option>
							<updatechildform:option value="B Positive">B Positive</updatechildform:option>
							<updatechildform:option value="AB Positive">AB Positive</updatechildform:option>
							<updatechildform:option value="A Negative">A Negative</updatechildform:option>
							<updatechildform:option value="B Negative">B Negative</updatechildform:option>
							<updatechildform:option value="AB Negative">AB Negative</updatechildform:option>
							<updatechildform:option value="O Positive">O Positive</updatechildform:option>
							<updatechildform:option value="O Negative">O Negative</updatechildform:option>
						</updatechildform:select>
					</div>
				</div>
				<updatechildform:errors path="bloodGroup" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="hospitalId">Hospital Id</label>
					</div>
					<div class="col-75">
						<updatechildform:input path="hospitalId" type="text"
							name="user id" minlength="3" maxlength="6" id="user id"
							placeholder="user id" pattern="^[0-9]*$" required="true" />
					</div>
				</div>
				<updatechildform:errors path="hospitalId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="doctorId">Doctor Id</label>
					</div>
					<div class="col-75">
						<updatechildform:input path="doctorId" type="text" name="user id"
							minlength="3" maxlength="6" id="user id" placeholder="user id"
							pattern="^[0-9]*$" required="true" />
					</div>
				</div>
				<updatechildform:errors path="doctorId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="fatherId">Father Id</label>
					</div>
					<div class="col-75">
						<updatechildform:input path="fatherId" type="text" name="user id"
							minlength="3" maxlength="6" id="user id" placeholder="user id"
							pattern="^[0-9]*$" required="true" />
					</div>
				</div>
				<updatechildform:errors path="fatherId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="motherId">Mother Id</label>
					</div>
					<div class="col-75">
						<updatechildform:input path="motherId" type="text" name="user id"
							minlength="3" maxlength="6" id="user id" placeholder="user id"
							pattern="^[0-9]*$" required="true" />
					</div>
				</div>
				<updatechildform:errors path="motherId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="guardianId">Guardian Id</label>
					</div>
					<div class="col-75">
						<updatechildform:input path="guardianId" type="text"
							name="user id" minlength="3" maxlength="6" id="user id"
							placeholder="user id" pattern="^[0-9]*$" required="true" />
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