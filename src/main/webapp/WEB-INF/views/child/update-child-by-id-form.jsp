<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>update child</title>
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
				<a href="/children/childfirstview"><em class="fa fa-arrow-circle-left"
					style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>

		</div>
	</nav>

	<div id="root">
		<div>
			<h1 class="logotitle">Child Update</h1>
		</div>
		<div id="form">

	<form:form action="/children/childmodifyform" method="get">
		<div class="row">
			<div class="col-25">
				<label for="childId">Child Id</label>
			</div>
			<div class="col-75">
				<form:input path="childId" type="text" name="user id"
					minlength="3" maxlength="6" id="user id" placeholder="user id"
					pattern="^[0-9]*$" required="true" />
			</div>
		</div>
		<form:errors path="childId" class="text-danger" />
		<div class="button-s">
			<form:button>Update Child</form:button>
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
</body>
</html>