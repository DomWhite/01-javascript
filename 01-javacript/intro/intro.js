console.log("This works");

// var n = 2
// var x = "Pea Farmer"
// var y = "Saskatchewan"
// var z = "Matilda"

// console.log("You will be a " + x + " in " + y + ", and married to " + z + " with " + n + " kids.")

// == != evil twins of === and !==

// always use triple equals for comparison
//console.log() can take multiple arguments like so: console.log("This is an example", var_example);


var d = new Date();						//can be rewritten as below:
var year = d.getFullYear();				//var year = new Date().getFullYear();
console.log(year);

if (year === 2015) {
	console.log("You are in the present!");
} else if (year < 2015){
	console.log("Whoa! Blast from the past!");
} else {
	console.log("Greetings from the future!");
}