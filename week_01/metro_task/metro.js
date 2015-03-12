/*
var alamein = ["Flinders", "Richmond", "East Richmond", "Burnley", "Hawthorn", "Glenferrie"];
var glenWaverly = ["Flagstaff", "Melbourne Central", "Parliament", "Richmond", "Kooyong", "Tooronga"];
var sandringham = ["Southern Cross", "Richmond", "South Yarra", "Prahran", "Windsor"];

*/

//var input_one = "Hawthorn"; 			//This will be obtained from the user
//var input_two = "Flinders";				//This will be obtained from the user


var metro = {
	alamein: ["Flinders", "Richmond", "East Richmond", "Burnley", "Hawthorn", "Glenferrie"],
	glenWaverly: ["Flagstaff", "Melbourne Central", "Parliament", "Richmond", "Kooyong", "Tooronga"],
	sandringham: ["Southern Cross", "Richmond", "South Yarra", "Prahran", "Windsor"],
}

function calcDistance(stop1, stop2) {
	var stop1 = metro.alamein.indexOf(input_one);
	var stop2 = metro.alamein.indexOf(input_two);
	var numberOfStops = Math.abs(stop1 - stop2);
	return numberOfStops;
}



var input_one = "Flinders"
var input_two = "Hawthorn"

console.log("If you get on at " + input_one + " & get off at " + input_two + " you will have travelled " + calcDistance() + " stops.")







