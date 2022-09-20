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
<input id="testdate" type="date" name="testdate" >
<button onclick="checkDateType()">Clik Me!</button>
<h3 id="demo"></h3>
<script>
function checkDateType(){
	let inputDate = document.getElementById('testdate').valueAsDate;
	/* console.log(inputDate);
	const weekday = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]; */
	let day =inputDate.getDay();
	/* console.log(day); */
	if(day == 0 || day==6){
		document.getElementById("demo").innerHTML = "holiday";
	}else{
	document.getElementById("demo").innerHTML = "working day";
	}
}
</script>
</body>
</html>