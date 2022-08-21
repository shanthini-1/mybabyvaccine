<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Vaccine Scheduler</title>
<style type="text/css">
<%@include file="/WEB-INF/css/firstpages.css" %></style>
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
		<div class="logo">My Baby Vaccine</div>

		<div class="navmenu">
			<div class="menu-list">
				<a href="/vaccinationschedular/vaccineSchedularfirstview"> <em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>
		</div>
	</nav>
	<div class="main">
		<div class="dashboard">
	<ul>
		<li><a href="/vaccinationschedular/vaccineSchedularformparam">Vaccine Scheduler </a></li>
		<li><a href="/vaccinationschedular/vaccineSchedularformparam">Vaccine Scheduler </a></li>
		
	</ul>
	</div>
			<div class="img">
				<img alt="vaccine"
					src="https://t4.ftcdn.net/jpg/01/74/93/63/360_F_174936335_kyiXGzt4sqBc9DUNaswWXTfACTrxTuE3.jpg">
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