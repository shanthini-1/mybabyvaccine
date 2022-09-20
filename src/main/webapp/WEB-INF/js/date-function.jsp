<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>weekday holiday
</title>

<style type="text/css">
h3{
color:green;
}
</style>
</head>
<body>
<h1>WeekDay/HoliDay</h1>
<label for="date">Date</label>
<input id="testdate" type="date" name="date" >
<button onclick="checkDateType();">Clik Me!</button>
<h3 id="demo"></h3>
<script>
function checkDateType(){
	let inputDate = document.getElementById("testdate").value;
	const date = Date.parse(inputDate);
	let day = date.getDay();
	console.log(day);
	document.getElementById("demo").innerHTML = day;
}
</script>
</body>
</html>