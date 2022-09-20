<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sign in page</title>
<style>
<%@ include file="/WEB-INF/css/loginpage.css"%>
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
				<a href="/"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em> Back</a>
			</div>
		</div>
	</nav>
	<div class="wrapper fadeInDown">
		<div class="formContent">
			<h2 class="active">Sign In</h2>
			<form:form action="checklogin" method="post"
				modelAttribute="userLogin" class="wrapper">
				<div class="contentitem">
					<div class="col-a">
						<label for="personCategory">Person Category</label>
					</div>
					<div class="col-b">
						<form:select name="personCategory" path="personCategory"
							id="personCategory" required="true" class="inputa">
							<option value="Staff">Staff</option>
							<option value="User">User</option>
							<option value="Admin">Admin</option>
						</form:select>
						<form:errors path="personCategory" class="text-danger"></form:errors>
					</div>

					<div class="col-a">
						<label for="email">Email</label>
					</div>
					<div class="col-b">
						<form:input path="email" type="email" id="email"
							placeholder="email"
							pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2, 4}$" size="30"
							style="text-transform: none;" required="true" class="inputa" />


						<form:errors path="email" class="text-danger"></form:errors>
					</div>
					<div class="col-a">
						<label for="passWord">Password</label>
					</div>
					<div class="col-b">
						<form:input path="passWord" type="password" minlength="8"
							maxlength="25" placeholder="password"
							pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8, 20}$"
							required="true" class="inputa" />

						<form:errors path="passWord" class="text-danger" />
					</div>
				</div>
				<form:button class="inputs">Log in</form:button>
			</form:form>
			
			<div id="formFooter">
				<a class="underlineHover" href="/persons/addpersonform"
					id="addperson">New Registration</a>
			</div>
		</div>
	</div>
	<footer>
		<p>
			create by shanthini <br>Copyright &#169; 2022 &nbsp; All rights
			reserved.
		</p>
	</footer>
	<script>
			<%@include file="/WEB-INF/js/time.js" %>
	</script>
</body>
</html>