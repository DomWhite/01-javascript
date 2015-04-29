var simpsons = ["bart", "lisa", "ned"];
var griffins = ["Peter", "Meg", "Stewie"];

function logPerson(simpson) {
	console.log("hello " + simpson);
}
var utils = {
	each: function(arr, fn) {
		for (var i = 0; i < arr.length; i++) {
		// console.log(arr[i]);
		fn(arr[i]);
	},
	listArray: function(arr,fn){
		console.log(arr);

	}
}

function logFamily(family) {
	for (var i = 0; i < family.length; i++) {
		console.log(family[i]);
	}
}