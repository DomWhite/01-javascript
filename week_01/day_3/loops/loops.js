//var counter = 0;

/*
while (counter <= 10) {
	debugger;			//debugger function can be used to pause the script
	console.log("the value of counter is " + counter);
	counter += 1;
}

console.log("all done"); */

/////Fizz Buzz/////

// var maxPlays = prompt("How many times would you like to play?");
// parseInt(maxPlays, 10);

/* function go() {
    var maxPlays = document.getElementById("name").value;
    alert("The user typed '" + maxPlays + "'");
    parseInt(maxPlays, 10);
*/

/*
while (counter <= maxPlays) {
	if (counter % 3 === 0 && counter % 5 === 0) {
		console.log("fizzbuzz");	
	} else if (counter % 3 === 0) {
		console.log("fizz");
	} else if (counter % 5 === 0) {
		console.log("buzz");
	} else {
		console.log(counter);
	}
	counter+=1
}

}
*/

/*
///////	Secret Number Guessing Game ///////
var secretNumber = //make randomly generated number;
// input from user will always be a string
var guess = prompt("Enter a number")

while (parseInt(guess, 10) !== secretNumber) {
	console.log("wrong, you fail, guess again")
	guess = prompt("Enter a number")
	debugger;
}

console.log("go cody perry");
*/


var instruments = ["guitar", "piano", "cajon"];

var count = 0;

while (count < instruments.length) {
	console.log(instruments[count]);
	count+=1;
}

////////////// FOR LOOP ////////////// 
// for (assignment; end condition; increment) 

for (var count = 0; count < instruments.length; count +=1 ) {
	console.log(instruments[count]);
}


var carArray = ["Porsche", "McLaren", "BMW"]

for (var i = 0; i < carArray.length; i += 1) {
	console.log("The number " + (i+1) + " element in array is " + carArray[i])
}

var carArray_2 = ["Porsche", "McLaren", "BMW"]

for (var i = carArray_2.length-1; i >= 0 ; i -= 1) {
	console.log("The number " + (i+1) + " element in array is " + carArray[i])
}

///////	Secret Number Guessing Game ///////
var secretNumber = 26;

//for (var guess = prompt("Enter a number"); guess === secretNumber; ) {
	//console.log()
//}

	/*
while (parseInt(guess, 10) !== secretNumber) {
	console.log("wrong, you fail, guess again")
	guess = prompt("Enter a number")
}

console.log("go cody perry");
*/





