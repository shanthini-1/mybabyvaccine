<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Hospital Staff</title>
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
				<a href="/hospitalstaff/hospitalstafffirstview">
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

		<li><a href="/hospitalstaff/addhospitalstaffform">add
				Hospital staff</a>
		<li><a href="/hospitalstaff/hospitalstaffmodifyform">Update
				Hospital staff</a>
		<li><a href="/hospitalstaff/fetchstaffidform">Fetch Staff By Id </a>
		<li><a href="/hospitalstaff/listallhospitalstaffs">List
				of Hospital Staffs </a>
		<li><a href="/hospitalstaff/hospitalstaffdetailsfindform">Hospital Staff Detail </a>
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