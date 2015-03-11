console.log("This works");

// var n = 2
// var x = "Pea Farmer"
// var y = "Saskatchewan"
// var z = "Matilda"

// console.log("You will be a " + x + " in " + y + ", and married to " + z + " with " + n + " kids.")

// == != evil twins of === and !==

// always use triple equals for comparison
//console.log() can take multiple arguments like so: console.log("This is an example", var_example);


var d = new Date();                     //can be rewritten as below:
var year = d.getFullYear();             //var year = new Date().getFullYear();
console.log(year);

if (year === 2015) {
    console.log("You are in the present!");
} else if (year < 2015){
    console.log("Whoa! Blast from the past!");
} else {
    console.log("Greetings from the future!");
}

// data structures

var languages = ["javascript", "ruby", "swift"];
languages.push("java"); //pushes java to the array and returns the new length of the array
languages.pop();        //removes the last element of an array and returns the element removed
languages.indexOf("ruby");  //finds the index location of the element searched
languages.slice(1,2);       //slices out the element with in the two index locations given as arguments
languages.slice(0,2);
languages.splice(1,0,"java"); //removes the

var myFavDrinks = ["whiskey", "coke", "beer"]

console.log("my 1st choice is " + myFavDrinks[0] + ", my second choice is " + myFavDrinks[1] + " and my third choice is " + myFavDrinks[2])
/*
for (i = 0; 1 < myFavDrinks.length; i++) {
    console.log("my ")
} 
*/






















