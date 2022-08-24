<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>child vaccine schedule</title>
<style>
<%@include file="/WEB-INF/css/person-add-form.css" %>
#root {
	margin-bottom: 290px;
	padding-bottom: 35px;
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
			<h1 class="logotitle">Child Vaccine Scheduler List</h1>
		</div>
		<div id="form">
			<form:form action="/vacschedular/vaccineSchedularViewform"
				method="get">
				<div class="row">
					<div class="col-25">
						<label> Child Register No: </label>
					</div>
					<div class="col-75">
						<select name="id" id="childId" required>
							<option value="" selected disabled>Select Child</option>
							<c:forEach items="${listAllChildrenId}" var="child"
								varStatus="loop">
								<option value='${child.childId}'>${child.childName}-${child.childId}
								</option>
							</c:forEach>
						</select>
					</div>
					</div>
				<input type='submit' value="Search" name="submit">
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