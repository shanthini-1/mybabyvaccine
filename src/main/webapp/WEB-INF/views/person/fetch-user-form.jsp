<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Fetch</title>
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
		<div class="logo">MyBabyVaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/person/user-firstpage"><em
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
			<h1 class="logotitle">Find Person</h1>
		</div>
		<div id="form">
			<form action="/persons/getpersonlocation" method="get">
				<div class="row">
					<div class="col-25">
						<label>User Id </label>
					</div>
					<div class="col-75">
						<input type="text" placeholder="Enter id" name="userId"
							id="userId" maxlength="6" pattern="^[0-9]*$" required>
					</div>
				</div>
				<div class="button-s">
					<input type="submit" value="Search User" name="userId" id="user id">
				</div>
			</form>
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