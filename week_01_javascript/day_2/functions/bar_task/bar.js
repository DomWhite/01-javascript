
function doSomething() {
	var userAge = document.getElementById("userAge").value;
	console.log("userAge: ", userAge);
	parseInt(userAge, 10);	
if (userAge >= 18) {
	title.innerHTML = 'smash some beers';
} else {
	title.innerHTML = 'boo';
	}
}

//hey document can you get me the element with id 'btnEnter'
var btnEnter = document.getElementById("btnEnter");
btnEnter.addEventListener('click', doSomething);











