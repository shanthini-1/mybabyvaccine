<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Child</title>
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
				<a href="/actionstarters/staffaction">
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
		<li><a href="/children/addchildform">Add Child </a>
		<li><a href="/children/listallchilds">List Children </a>
		<li><a href="/children/fetchchildform">Fetch Child </a>
		<li><a href="/children/fetchchildbyhospitalid">List
				Children by Hospital </a>
		<li><a href="/children/fetchchildbydoctorid">List
				Children by Doctor</a>
		<li><a href="/children/fetchhospitalandchildform">fetch
				Child hospital</a>
		<li><a href="/children/fetchchildandparent">fetch Child
				parent</a>
		<li><a href="/children/fetchchildandguardian">fetch Child
				guardian</a>
	</ul>
	</div>
	<div class="img"><img alt="child" src="https://rukminim1.flixcart.com/image/416/416/jwaztzk0/poster/v/f/g/medium-p40681-baby-wall-poster-original-imafhyggyntd9wng.jpeg?q=70"></div>
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