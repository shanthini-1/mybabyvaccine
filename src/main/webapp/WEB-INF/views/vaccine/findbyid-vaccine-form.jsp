<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="viewform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>find Vaccine</title>
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
				<a href="/vaccines/vaccinefirstview"><em
					class="fa fa-arrow-circle-left" style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>

		</div>
	</nav>
	<div id="root">
		<div>
			<h1 class="logotitle">Vaccine</h1>
		</div>
		<div id="form">
		<viewform:form action="" method="get" modelAttribute="findvaccinebyid">
			
			<div class="row">
					<div class="col-25">
				<label for="vaccineName">Vaccine Name </label>
			</div>
		<div class="col-75">
				<viewform:input path="vaccineName" readonly="true" />
			</div>
			</div>
		<div class="row">
					<div class="col-25">
				<label for="vacDescription">Description</label>
			</div>
		<div class="col-75">
				<viewform:input path="vacDescription" readonly="true" />
			</div>
			</div>
				<div class="row">
					<div class="col-25">
				<label for="week">Week</label>
			</div>
			<div class="col-75">
				<viewform:input path="week" readonly="true" />
			</div>
			</div>
			<div class="row">
					<div class="col-25">
				<label for="dosage">Dosage</label>
			</div>
			<div class="col-75">
				<viewform:input path="dosage" readonly="true" />
			</div>
			</div>
		<div class="row">
					<div class="col-25">
				<label for="suggestion">Suggestion</label>
			</div>
			<div class="col-75">
				<viewform:input path="suggestion" readonly="true" />
			</div>
			</div>
			<div class="row">
					<div class="col-25">
				<label for="vaccinePrice">Vaccine price</label>
			</div>
			<div class="col-75">
				<viewform:input path="vaccinePrice" readonly="true" />
			</div>
			</div>
			</viewform:form>
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