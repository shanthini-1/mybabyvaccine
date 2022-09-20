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
		<div class="logo">MyBabyVaccine</div>
		<div class="navmenu">
			<div class="menu-list">
				<a href="#"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
			<div class="menu-list">
				<a href="#about" onclick="myFunction('about')"><em class="fa fa-info-circle"
					style="font-size: 20px;"></em>  About Us</a>
			</div>
			<div class="menu-list">
				<a href="#contact" onclick="myFunction('contact')"><em class="fa fa-address-book"
					style="font-size: 20px;"></em> Contact</a>
			</div>
			<div class="menu-list">
				<a class="logbtn"
					onclick="document.getElementById('id01').style.display='block'"
					style="width: auto;">
					<em class="fa fa-sign-in" style="font-size: 20px;"></em> Login
				</a>
			</div>
		</div>

	</nav>
	<main>
		<div class="quote">
			<h1>
				<span>Immunizations can save your child's life.</span>
			</h1>
		</div>
	</main>
	<div>
		<div id="id01" class="modal">

			<form:form class="modal-content animate" action="/login/checklogin"
				method="post" modelAttribute="userLogin" name="loginform" id="loginform">
				<div class="imgcontainer">
					<span onclick="document.getElementById('id01').style.display='none'"
						class="close" title="Close Modal">&times;</span>
						<em class="fa fa-user-circle-o" style="font-size: 90px; color: navy"></em>
				</div>

		<div class="formContent">
			<h2 class="active">Sign In</h2>
					<div class="col-a">
						<label for="personCategory">Person Category</label>
					</div>
					<div class="col-b">
						<select name="personCategory" id="personCategory"
							required="required" class="inputa">
							<option value="Staff">Staff</option>
							<option value="User">User</option>
							<option value="Admin">Admin</option>
						</select>
					</div>

					<div class="col-a">
						<label for="email">Email</label>
					</div>
					<div class="col-b">
						<input name="email" type="email" id="email" placeholder="email"
							pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2, 4}$" size="30"
							style="text-transform: none;" required="required" class="inputa" />


						 <form:errors path="email" class="text-danger"></form:errors> 
					</div>
					<div class="col-a">
						<label for="passWord">Password</label>
					</div>
					<div class="col-b">
						<input name="passWord" type="password" maxlength="25"
							placeholder="password"
							pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8, 20}$"
							required="required" class="inputa" />

						 <form:errors path="passWord" class="text-danger" /> 
					</div>
					<div>${result}</div>
				</div>
				<div class="containerA" style="background-color: #f1f1f1">
					<button type="button"
						onclick="document.getElementById('id01').style.display='none'"
						class="cancelbtn">Cancel</button>
						<div>
					<button type="submit" class="logbtnA">Login</button>
						</div>
				</div>
			</form:form>
		</div>
	</div>
	<div class="inner_div">
			<div id="about" style="display: none;">
				<h4>About</h4>
				<p>
					&emsp;<strong>MyBabyVaccine </strong>is an application that helps
					parents keep track of the vaccination needs of their children. A
					vaccination calendar gets generated for each child registered on
					parent id. This keeps a parent free from keeping manual records
					of the vaccination records of ones child that are theretofore
					being kept in the traditional system. The child can be registered
					either by the hospital Staff or parent and record updated at any
					end gets updated on the registered id of the child . Thus,
					Vaccination records are Digitised.
				</p>
			</div>
			<div id="contact" style="display: none;">
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
	<script type="text/javascript">
		function myFunction(divId) {
			var x = document.getElementById(divId);
			if (x.style.display === "none") {
				x.style.display = "block";
			} else {
				x.style.display = "none";
			}
		}
	</script>
	<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
	
</body>
</html>