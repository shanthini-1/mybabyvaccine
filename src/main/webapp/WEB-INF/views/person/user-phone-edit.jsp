<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="updatepersonform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User edit page</title>
<style>
<%@include file="/WEB-INF/css/person-add-form.css" %>
#root{
    margin-bottom: 228px;
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
				<a href="/persons/viewuser"><em
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
			<h1 class="logotitle">Change Phone Number</h1>
		</div>
		<div id="form">
			<form action="updatephone" method="post">
				<div class="row">
					<div class="col-25">
						<label for="userName">User Name</label>
					</div>
					<div class="col-75">
						<input type="text" name="userName"
							min="3" maxlength="25" id="user name" value="${userl.userName}"
							placeholder="user name" pattern="^[A-Za-z]+[A-Za-z ]*$"
							required="required" readonly/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="phoneNumber">Phone Number</label>
					</div>
					<div class="col-75">
						<input  type="tel" id="phone"
							name="phoneNumber" placeholder="phone number"
							required="required" maxlength="10" min="10" />
					</div>
				</div>
				<div class="button-s">
					<input type="submit" value="submit">
				</div>
				<br>
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
