<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Hospital</title>
<style type="text/css">
<%@include file ="/WEB-INF/css/firstpages.css" %>

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
		<div class="logo">My Baby Vaccine</div>

		<div class="navmenu">
			<div class="menu-list">
				<a href="/hospitals/hospitalfirstview">
				<em	class="fa fa-arrow-circle-left" style="font-size: 20px;"></em></a>
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
		<li><a href="/hospitals/addhospitalform">Add Hospital </a></li>
		<li><a href="/hospitals/listallhospitals">list All
				Hospital </a></li>
		<li><a href="/hospitals/hospitalfindform">Find Hospital
		</a></li>
		<li><a href="/hospitals/hoscontactfindform">Find Contact
				Person</a></li>
	</ul>
		</div>
	<div class="img"><img alt="hospital" src="https://rukminim1.flixcart.com/image/416/416/jwaztzk0/poster/v/f/g/medium-p40681-baby-wall-poster-original-imafhyggyntd9wng.jpeg?q=70"></div>
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