<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Child</title>
<style type="text/css">
<%@include file="/WEB-INF/css/listpage.css" %>
</style>
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
<%@include file="/WEB-INF/js/search.js" %>
</script>
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
				<a href="/children/childfirstview"><em class="fa fa-arrow-circle-left"
					style="font-size: 20px;"></em> Back </a>
			</div>
			<div class="menu-list">
				<a href="/"><em class="fa fa-home" style="font-size: 20px;"></em>
					Home</a>
			</div>
			<div class="menu-list">
				<a href="/children/addchildform"><em class="fa fa-plus"
					style="font-size: 20px;"></em> Child</a>
			</div>
		</div>
	</nav>
	<div><input id="sInput" type="text" placeholder="Search..">
</div>
	<div class="container">
		<table>
			<caption>List of Child</caption>
			<thead>
				<tr>
					<th>Child Register No</th> 
					<th>Child Name</th>
					<th>Child Dob</th>
					<th>Gender</th>
					<th>Birth Weight</th>
					<th>Birth Place</th>
					<th>Blood Group</th>
					<th>Hospital Id</th>
					<th>Doctor Id</th>
					<th>Father Id</th>
					<th>Mother Id</th>
					<th>Guardian Id</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody id="myTableData">
				<c:forEach var="child" items="${listAllChilds}">
					<tr>
						<td>${child.childId}</td> 
						<td>${child.childName}</td>
						<td>${child.childDob}</td>
						<td>${child.gender}</td>
						<td>${child.birthWeight}</td>
						<td>${child.birthPlace}</td>
						<td>${child.bloodGroup}</td>
						<td>${child.hospital.hospitalName}</td>
						<td>${child.doctor.hosStaff.userName}</td>
						<td>${child.father.userName}</td>
						<td>${child.mother.userName}</td>
						<td>${child.guardian.userName}</td>
						<td><a id='btn' href="/children/childmodifyform?childId=${child.childId}">Edit</a></td>
						<td><a id='btn' href="/children/childdeleteform?childId=${child.childId}" onclick="return confirm('Are you sure you want to delete child ${child.childId}?');">Delete</a></td>
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