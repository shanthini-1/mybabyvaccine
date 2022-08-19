<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Location</title>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	display: block;
	overflow: hidden;
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
.navbar a  {
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
}


/* Navbar links on mouse-over */
.navbar a:hover {
	background-color: rgb(236, 179, 101, 0.3);
}

.logo {
	padding-left: 20px;
	font-size: 150%;
	flex-wrap: inherit;
	padding-top: 18px;
	color: #ECB365;
	border-radius: 50px;
	background-color: rgb(6, 70, 99, 0.9);
	padding-right: 20px;
	color: #ECB365;
}

span {
	padding-right: 40px;
	color: navy;
}

#root {
	width: 100%;
	margin-left: auto;
	margin-right: auto;
	margin-top: 20px;
	margin-bottom: 144px;
	color: rgb(236, 179, 101, 0.5);
}

#form {
	margin: auto;
	width: 50%;
	line-height: 30px;
	padding: 15px;
}

.text-danger {
	color: red;
	font-size: 15px;
}

.container {
	max-width: 1000px;
	margin-right: auto;
	margin-left: auto;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.container {
	max-width: 1000px;
	margin-right: auto;
	margin-left: auto;
	display: flex;
	align-items: flex-start;
}

table {
	table-layout: auto;
	width: 100%;
	display: table;
	border-collapse: separate;
	box-sizing: border-box;
	text-indent: initial;
	border-spacing: 2px;
	border-color: grey;
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

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: rgb(236, 179, 101, 0.3);
}
tr : hover{
 color :rgb(6, 70, 99, 0.9); 
}
a{
text-decoration: none;
color:inherit;
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
				<a href="/"><em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em> Back </a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
			<div class="menu-list">
				<a href="/loctaions/addlocationform"><em class="fa fa-plus"
					style="font-size: 20px;"></em> Location</a>
			</div>
		</div>
	</nav>
	<div></div>
	<div class="container">

		<table>
			<caption>
				<strong>List of All Location</strong>
			</caption>
			<thead>
				<tr>
					<th>Pin Code</th>
					<th>District</th>
					<th>State Name</th>
					<th>Country</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="locationCode" items="${listAllLocation}">
					<tr>
						<td>${locationCode.pinCode}</td>
						<td>${locationCode.district}</td>
						<td>${locationCode.stateName}</td>
						<td>${locationCode.country}</td>
						<td><a
							href="/locations/locationmodifyform?locId=${locationCode.pinCode}">Edit</a></td>
						<td><a
							href="/locations/locationdeleteform?locId=${locationCode.pinCode}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<footer>
		<p>
			create by shanthini <br>Copyright © 2022 &nbsp; All rights
			reserved.
		</p>
	</footer>
	<script>
			<%@include file="/WEB-INF/js/time.js" %>
	</script>
</body>
</html>