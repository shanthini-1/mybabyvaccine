<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updateform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Vaccine Form</title>
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
		<div class="logo">MyBabyVaccine</div>
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
			<updateform:form action="modifyvaccines" method="post"
				modelAttribute="modifyvaccine">
			<div class="row">
					<div class="col-25">
						<label for="vaccineName">Vaccine Name </label>
					</div>
					<div class="col-75">
						<updateform:input path="vaccineName" type="text" name="childId"
							minlength="3" maxlength="25" id="user name"
							placeholder="child name" pattern="^[A-Za-z]+[A-Za-z ]*{3-25}$"
							required="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="vacDescription">Description</label>
					</div>
					<div class="col-75">
						<updateform:input path="vacDescription" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="week">Month</label>
					</div>
					<div class="col-75">
						<updateform:input path="week" type="text" name="week" maxlength="2"
							id="week" placeholder=" no of month" pattern="^\\d*{2}$"
							required="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="dosage">Dosage</label>
					</div>
					<div class="col-75">
						<updateform:input path="dosage" type="text" name="dosage"
							maxlength="2" id="dosage" placeholder="dosage"
							pattern="^[0-9]*{2}$" required="true" />
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="suggestion">Suggestion</label>
					</div>
					<div class="col-75">
						<updateform:select path="suggestion" class="text-box"
							placeholder="suggestion" title="it must be required"
							required="true">
							<updateform:option value="">-select-</updateform:option>
							<updateform:option value="If available"> If Available</updateform:option>
							<updateform:option value="Compulsory"> Compulsory</updateform:option>
							<updateform:option value="Optional"> Optional</updateform:option>
						</updateform:select>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="vaccinePrice">Vaccine price</label>
					</div>
					<div class="col-75">
						<updateform:input path="vaccinePrice" pattern="^\d+(?:\.\d{0,2})$"
							type="text" name="vaccinePrice" maxlength="9" id="vaccinePrice"
							placeholder="vaccinePrice" required="true" />
					</div>
				</div>
				<div class="button-s">
					<updateform:button>Add Vaccine</updateform:button>
				</div>
			</updateform:form>
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