/**
 * 
 */



function checkDatenofuture() {
       let date = document.getElementById('bDate').value;
       let now = new Date();
       let dt1 = Date.parse(now),
       dt2 = Date.parse(date);
       if (dt2 >= dt1) {
            alert("Date must be in the past");
       }
 }

function checkDatenopast() {
	let date = document.getElementById('NoFutureDate').value;
	let now = new Date();
	let dt1 = Date.parse(now),
		dt2 = Date.parse(date);
	if (dt2 < dt1) {
		alert("Date must be in the future");
	}
}