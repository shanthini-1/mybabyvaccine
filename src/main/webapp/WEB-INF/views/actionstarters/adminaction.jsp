<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Staff Action</title>
<style type="text/css">
<%@include file="/WEB-INF/css/staffactionpage.css" %>
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
				<a href="/login/loginform">
				<em	class="fa fa-arrow-circle-left" style="font-size: 20px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="index.jsp"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>
		</div>
	</nav>
	<div class="dashboard">
		<div class="dropdown">
			<div class="dropbtn">
				<a href="/hospitals/hospitalfirstview">Hospital</a>
			</div>
		</div>
		<div class="dropdown">
			<div class="dropbtn">
				<a href="/locations/locationfirstview">Loaction</a>
			</div>
		</div>
		<div class="dropdown">
			<div class="dropbtn">
				<a href="/staffs/hospitalstafffirstview">Staff</a>
			</div>
		</div>
	</div>
	<div class="body-content">

		<div>
			<a href="/hospitals/hospitalfirstview" ><img
				src="https://cdn.xxl.thumbs.canstockphoto.com/hospital-building-with-glass-wall-and-mirrored-building-hospital-glass-building-mirrored-sky-and-stock-illustration_csp74041566.jpg " alt="hospital" id="imgbd">
			</a>
		</div>
		<div>
			<a href="/locations/locationfirstview"><img
				src="https://st.depositphotos.com/1064045/1994/i/950/depositphotos_19942491-stock-photo-navigation.jpg "
				alt="location" id="imgbd"> </a>
		</div>
		<div>
			<a href="/staffs/hospitalstafffirstview"><img
				src="https://www.aamc.org/sites/default/files/Workforce%20Report%201200x666.jpg "
				alt="staff" id="imgbd"> </a>
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