<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>child vaccination scheduler</title>
<style type="text/css">
<%@include file="/WEB-INF/css/listpage.css" %>
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
		<div class="logo">Baby Health Tracker</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="/vaccines/vaccinefirstview"><em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em> Back </a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
			<div class="menu-list">
				<a href="/vaccines/vaccineaddform"><em class="fa fa-plus"
					style="font-size: 20px;"></em> Child</a>
			</div>
		</div>
	</nav>
	<div></div>
	<h1>child vaccination scheduler form</h1>
	<div id="root">
		<form:form
			action="/vac/vaccineSchedularform"
			method="get">
			<div class="row">
					<div class="col-25">
			<label> child id </label>
			</div>
			<div class="col-75">
			<input type="text" placeholder="child id" name="childId">
			<select name="childId" id="childId" required size=5>
						<option value="" selected disabled >Select Child</option>
						<c:forEach items="${listAllChildrenId}" var="child"
							varStatus="loop">
							<option value='${child.childId}'>${child.childName}-${child.childId} </option>
						</c:forEach>
					</select>
					</div></div>
			<input type='submit' value="fetch" name="submit">
		</form:form>
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
