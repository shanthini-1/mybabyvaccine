<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<a href="index.html"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>
		</div>
	</nav>
	<div class="dashboard">
		<div class="dropdown">
			<div class="dropbtn">
				<a href="/children/childfirstview">Children</a>
			</div>
		</div>
		<div class="dropdown">
			<div class="dropbtn">
				<a href="/vaccines/vaccinefirstview">Vaccine</a>
			</div>
		</div>
		<div class="dropdown">
			<div class="dropbtn">
				<a href="/persons/userfirstview">Person</a>
			</div>
		</div>
	</div>
	<div class="body-content">

		<div>
			<a href="/children/childfirstview " ><img
				src="https://static.toiimg.com/photo/68790934.cms " alt="child" id="imgbd">
			</a>
		</div>
		<div>
			<a href="/vaccines/vaccinefirstview "><img
				src="https://www.bhf.org.uk/-/media/news-images/2021/september/syringe-and-vial-640x410.jpg?w=100%25&rev=8a0afcdac1474a998d8947904defc52b&hash=10602B13683498D6DF1AE8D386551BC7 "
				alt="vaccine" id="imgbd"> </a>
		</div>
		<div>
			<a href="/persons/userfirstview"><img
				src="https://www.theladders.com/wp-content/uploads/parents-baby-190626.jpg "
				alt="user" id="imgbd"> </a>
		</div>
	</div>
	<footer>
		<p>
			create by shanthini <br>Copyright &#169; 2022 &nbsp; All rights
			reserved.
		</p>
	</footer>
<script type="text/javascript">
	<%@include file="/WEB-INF/js/time.js" %>
</script>
</body>
</html>