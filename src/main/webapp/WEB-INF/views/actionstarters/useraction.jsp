<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>User Action</title>
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
				<a href="/login/loginform"> <em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-sign-out"
					style="font-size: 20px;"></em> log out</a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>
		</div>
	</nav>
	<div class="dashboard">
		<div class="dropdown">
			<div class="dropbtn">
				<a href="/persons/viewuser">User</a>
			</div>
		</div>
		<div class="dropdown">
			<div class="dropbtn">
				<a href="/vaccines/listallvaccinesuser">vaccine</a>
			</div>
		</div>
		<div class="dropdown">
			<div class="dropbtn">
				<a href="">Child</a>
			</div>
		</div>
	</div>
	<div class="body-content">

		<div>
			<a href="/persons/viewuser"><img
				src="https://www.theladders.com/wp-content/uploads/parents-baby-190626.jpg "
				alt="person" id="imgbd"> </a>
		</div>
		<div>
			<a href="/vaccines/listallvaccinesuser"><img
				src="https://www.bhf.org.uk/-/media/news-images/2021/september/syringe-and-vial-640x410.jpg?w=100%25&rev=8a0afcdac1474a998d8947904defc52b&hash=10602B13683498D6DF1AE8D386551BC7 "
				alt="vaccine" id="imgbd"> </a>
		</div>
		<div>
			<img
				src="https://static.toiimg.com/photo/68790934.cms "
				alt="Children" id="imgbd"> 
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