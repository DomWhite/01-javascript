//var userAge = prompt("What is your age?")
// var userAge = document.getElementById('userAge').value;
// var userAge;
// var title = document.getElementById('title');


// if (userAge >= 18) {
// 	// console.log('smash some beers');
// 	title.innerHTML = 'smash some beers';
// } else {
// 	// console.log('boo');
// 	title.innerHTML = 'boo';
// }

/*
function doSomething() {
console.log("it works");
}

var btnEnter = document.getElementById("btnEnter");

btnEnter.addEventListener('click', doSomething); //click is an event there are many other events to listen for
*/

function doSomething() {
	var userAge = document.getElementById('userAge').value;
	console.log("userAge: ", userAge);
	parseInt(userAge, 10);		

	/* 	To convert string to integer use parseInt();
		parseInt( , ) takes two arguments. The first is the string represented in digits 
		being changed to an integer. 
		The second is the radix (or base), which is usually base 10 or decimal. */
	

if (userAge >= 18) {
	title.innerHTML = 'smash some beers';
} else {
	title.innerHTML = 'boo';
	}
}

//hey document can you get me the element with id 'btnEnter'
var btnEnter = document.getElementById("btnEnter");
btnEnter.addEventListener('click', doSomething);











