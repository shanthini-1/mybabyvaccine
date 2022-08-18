<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>Home</title>
<style>
<%@include file="/WEB-INF/css/homepage.css" %>
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
				<a href="#"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
			<div class="menu-list">
				<a href="#about"><em class="fa fa-info-circle"
					style="font-size: 20px;"></em> About Us</a>
			</div>
			<div class="menu-list">
				<a href="#contact"><em class="fa fa-address-book"
					style="font-size: 20px;"></em> Contact</a>
			</div>
			<div class="menu-list">
			 	<a href="/login/loginform"><em class="fa fa-sign-in"
					style="font-size: 20px;"></em> Login</a>
			</div>
			<div class="menu-list">
			 	<a href="/persons/addpersonform"><em class="fa fa-user"
					style="font-size: 20px;"></em> Sign up</a>
			</div>
		</div>

	</nav>
	<main>
		<div class="quote">
			<h3>
				<span>" Immunizations can save your child's life." </span>
			</h3>
		</div>
		<div>
			<div id="about">
				<h4>About</h4>
				<p>
					&emsp;<strong>MyBabyVaccine </strong>is an application that helps
					parents keep track of the vaccination needs of their children. A
					vaccination calendar gets generated for each child registered on
					parent’s id. This keeps a parent free from keeping manual records
					of the vaccination records of one’s child that are theretofore
					being kept in the traditional system. The child can be registered
					either by the hospital Staff or parent and record updated at any
					end gets updated on the registered id of the child . Thus,
					Vaccination records are Digitised.
				</p>
			</div>
			<div id="contact">
				<h4>Contact</h4>
				<ul>
					<li><em class="fa fa-map-marker" style="font-size: 20px">&nbsp;&nbsp;Ayanambakkam,
							<br>&emsp;Chennai,<br>&emsp;600 095.
					</em></li>
					<li><a href="tel:44-1234-1234" id="contact-list"> <em
							class="fa fa-phone" style="font-size: 20px; color: black"></em>&nbsp;&nbsp;+91-44-1234-1234
					</a></li>
					<li><a href="mailto:Babyhealthtracker@hmail.com"
						id="contact-list"> <em class="fa fa-envelope"
							style="font-size: 20px; color: black"></em>&nbsp;&nbsp;Babyhealthtracker@hmail.com
					</a></li>
				</ul>
			</div>
		</div>

	</main>

	<footer>
		<p>
			create by shanthini <br>Copyright &#169; 2022 &nbsp; All rights
			reserved.
		</p>
	</footer>

	<script>
		function refreshTime() {
			const timeDisplay = document.getElementById("time");
			const dateString = new Date().toLocaleTimeString();
			const formattedString = dateString.replace(" - ");
			timeDisplay.textContent = formattedString;
		}
		setInterval(refreshTime, 1000);
	</script>
</body>
</html>