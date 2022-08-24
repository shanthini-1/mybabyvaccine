<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>fetch vaccine</title>
<style type="text/css">
<%@include file="/WEB-INF/css/person-add-form.css" %>
#root {
	margin-bottom: 289px;
	padding-bottom: 34px;
}

input #childId {
	font-size: 20px;
}
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
				<a href="/vaccine/vaccine-firstpage"><em
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
			<h1 class="logotitle">Find child</h1>
		</div>
		<div id="form">
			<form:form action="/vaccines/fetchvaccine" method="get" >
				<div class="row">
					<div class="col-25">
						<label>User Id </label>
					</div>
					<div class="col-75">
						<input type="text" placeholder="Vaccine id" name="vaccineId"
							id="vaccineId" maxlength="6" pattern="^[0-9]*$" required>
					</div>
				</div>
				<div class="button-s">
					<input type="submit" value="Find vaccine" name="vaccineId" id="vaccine id">
				</div>
			</form:form>
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
z</body>
</html>