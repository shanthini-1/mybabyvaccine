<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	display: block;
	overflow-x: hidden;
	background-image:
		"https://media.istockphoto.com/photos/cute-asian-baby-girl-closing-her-face-and-playing-peekaboo-or-hide-picture-id1128821974?k=20&m=1128821974&s=612x612&w=0&h=_8guKk7yamGJLQibY2GAdMVRssXEqW1QecRc1TMb3ds=";
}

h1, h3, h4 {
	align-content: center;
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
.center{
margin-top:256px;
margin-left:482px;
}
button:hover {
	border-bottom-color: black;
}
</style>
</head>
<body>
	<div class=center>
		<h1>Sorry for the inconvenience !</h1>
		<h3>Error</h3>
		<h4>Message:${error}</h4>
	
	<div >
		<a href="/"><button>Go to Home</button></a>
	</div>
	</div>

</body>
</html>