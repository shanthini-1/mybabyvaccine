<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="addpersonform"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add person</title>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	display: block;
	overflow-x: hidden;
}

h1 {
	color: navy;
	text-align: center;
	font-family: sans-serif;
	margin-top: 1px;
}

/* Style the navigation bar */
.navbar {
	display: flex;
	flex-direction: row-reverse;
	justify-content: space-between;
	width: 100%;
	background-color: white;
	overflow: hidden;
	align-content: center;
}

/* Navbar links */
.navbar a {
	float: left;
	color: rgb(6, 70, 99);
	text-align: center;
	padding: 12px;
	text-decoration: none;
	font-size: 17px;
}

.navmenu {
	font-size: 20px;
	float: right;
	display: flex;
	justify-content: space-between;
	float: right;
	flex-wrap: nowrap;
	align-items: center;
	padding: 10px;
	padding-top: 0px;
}

.menu-list {
	padding: 0px;
}

/* Navbar links on mouse-over */
.navbar a:hover {
	background-color: rgb(236, 179, 101, 0.3);
}

.logo {
	padding-left: 20px;
	font-size: 150%;
	flex-wrap: inherit;
	padding-top: 7px;
	padding-bottom: 6px;
	color: #ECB365;
	border-radius: 50px;
	background-color: rgb(6, 70, 99, 0.9);
	padding-right: 22px;
	color: #ECB365;
	height: 50%;
}

span {
	padding-right: 40px;
	color: navy;
}

#root {
	background-color: rgb(236, 179, 101, 0.3);
	width: 75%;
	margin-left: auto;
	margin-right: auto;
	margin-top: 20px;
	margin-bottom: 90px;
	padding: 15px;
	border-radius: 10px;
}

#form {
	border: 2px;
	border-color: navy;
	margin: auto;
	width: 65%;
	line-height: 30px;
	padding: 15px;
}

.text-danger {
	color: red;
	font-size: 15px;
}

footer {
	padding: 10px;
	background-color: #04293A;
	color: #ECB365;
	text-shadow: black;
	text-align: center;
	text-shadow: black;
	text-shadow: black;
}

/* Style inputs, select elements and textareas */
input[type=text], [type=email], [type=date], [type=password], [type=tel],
	select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	resize: vertical;
	text-transform: capitalize;
}

/* Style the label to display next to the inputs */
label {
	padding: 10px 10px 10px 0;
	display: inline-block;
	text-shadow: black;
}

/* Style the submit button */
input[type=submit] {
	background-color: #04AA6D;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: right;
}

/* Style the container */
.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

/* Floating column for labels: 25% width */
.col-25 {
	float: left;
	width: 25%;
	margin-top: 0px;
}

/* Floating column for inputs: 75% width */
.col-75 {
	float: left;
	width: 75%;
	margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.col-25, .col-75, input[type=submit] {
		width: 100%;
		margin-top: 0;
	}
}

#formbuttons {
	display: flex;
	align-content: row;
	align-items: center;
	justify-content: space-between;
}

button {
	font-size: 20px;
	text-rendering: auto;
	color: buttontext;
	display: inline-block;
	text-align: center;
	align-items: center;
	box-sizing: border-box;
	background-color: buttonface;
	padding: 1px;
	border-width: 2px;
	border-radius: 10px;
	border-style: outset;
	border-color: navy;
}

a {
	text-decoration: none;
	color: navy;
}

button:hover {
	border-bottom-color: black;
	border: 2px solid rgb(6, 70, 99, 0.9);
}

.button-s {
	margin-top: 10px;
	text-align: center;
}
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
				<a href="/actionstarters/hospital-staff-firstpage.jsp"><em
					class="fa fa-arrow-circle-left" style="font-size: 30px;"></em></a>
			</div>
			<div class="menu-list">
				<a href="index.html"><em class="fa fa-home"
					style="font-size: 20px;"></em> Home</a>
			</div>

		</div>
	</nav>
	<div id="root">
		<div>
			<h1 class=".logotitle">User Registeration</h1>
		</div>
		<div id="form">
			<addpersonform:form action="addpersons" method="post"
				modelAttribute="addPerson">
				<div class="row">
					<div class="col-25">
						<label for="userId">User Id</label>
					</div>
					<div class="col-75">
						<addpersonform:input path="userId" type="text" name="user id"
							minlength="3" maxlength="6" id="user id" placeholder="user id"
							pattern="^[0-9]*$" required="true" />
					</div>
				</div>
				<addpersonform:errors path="userId" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="userName">User Name</label>
					</div>
					<div class="col-75">
						<addpersonform:input path="userName" type="text" name="username"
							minlength="3" maxlength="25" id="user name"
							placeholder="user name" pattern="^[A-Za-z ]+[A-Za-z ]*{3-25}$"
							required="true" />
					</div>
				</div>
				<addpersonform:errors path="userName" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="userDob">User Dob </label>
					</div>
					<div class="col-75">
						<addpersonform:input path="userDob" type="date"
							placeholder="birth date" />
					</div>
				</div>
				<addpersonform:errors path="userDob" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="gender">Gender</label>
					</div>
					<div class="col-75">
						<addpersonform:select path="gender" class="text-box"
							placeholder="gender" title="gender required" required="true">
							<addpersonform:option value="Male">Male</addpersonform:option>
							<addpersonform:option value="Female">Female</addpersonform:option>
						</addpersonform:select>
					</div>
				</div>
				<addpersonform:errors path="gender" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="personCategory">Person Category</label>
					</div>
					<div class="col-75">
						<addpersonform:select name="personCategory" path="personCategory"
							id="personCategory" required="true">
							<option value="Staff">Staff</option>
							<option value="User">User</option>
							<option value="Admin">Admin</option>
						</addpersonform:select>
					</div>
				</div>
				<addpersonform:errors path="personCategory" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="email">Email</label>
					</div>
					<div class="col-75">
						<addpersonform:input path="email" type="email" name="email"
							id="email" placeholder="email"
							pattern="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-zA-Z]{2,4}" size="30"
							style="text-transform: none;" required="true" />
					</div>
				</div>
				<addpersonform:errors path="email" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="phoneNumber">Phone Number</label>
					</div>
					<div class="col-75">
						<addpersonform:input path="phoneNumber" type="tel" id="phone"
							name="phone" placeholder="phone number"
							pattern="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"
							required="true" maxlength="10" minlength="10" />
					</div>
				</div>
				<addpersonform:errors path="phoneNumber" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="doorNumber">Door Number</label>
					</div>
					<div class="col-75">
						<addpersonform:input path="doorNumber" type="text" name="doorno"
							minlength="3" maxlength="25" id="door no" placeholder="door no"
							pattern="^[A-Za-z]+[0-9]+[A-Za-z ]*$" required="true" />
					</div>
				</div>
				<addpersonform:errors path="doorNumber" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="street">Street</label>
					</div>
					<div class="col-75">
						<addpersonform:input path="street" type="text" name="street"
							minlength="3" maxlength="25" id="street" placeholder="street"
							pattern="^[A-Za-z]+[A-Za-z ]*$" required="true" />
					</div>
				</div>
				<addpersonform:errors path="street" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="city">city</label>
					</div>
					<div class="col-75">
						<addpersonform:input path="city" type="text" name="city"
							minlength="3" maxlength="25" id="city" placeholder="city"
							pattern="^[A-Za-z]+[A-Za-z ]*$" required="true" />
					</div>
				</div>
				<addpersonform:errors path="city" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="pinCode">Pin Code</label>
					</div>
					<div class="col-75">
						<addpersonform:input path="pinCode" type="text" name="pincode"
							id="pincode" maxlength="6" minlength="6" pattern="^[6][0-9]{6}" />
					</div>
				</div>
				<addpersonform:errors path="pinCode" class="text-danger" />
				<div class="row">
					<div class="col-25">
						<label for="passWord">Password</label>
					</div>
					<div class="col-75">
						<addpersonform:input path="passWord" type="password" minlength="8"
							maxlength="25" placeholder="password"
							pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8, 20}$"
							required="true" />
					</div>
				</div>
				<addpersonform:errors path="passWord" class="text-danger" />
				<div class="button-s">
					<addpersonform:button>Add Person</addpersonform:button>
				</div>
			</addpersonform:form>
		</div>
	</div>
	<footer>
		<p>
			create by shanthini <br>Copyright © 2022 &nbsp; All rights
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