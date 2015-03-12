/*
var metro = {
	alamein: ["Flinders", "Richmond", "East Richmond", "Burnley", "Hawthorn", "Glenferrie"],
	glenWaverly: ["Flagstaff", "Melbourne Central", "Parliament", "Richmond", "Kooyong", "Tooronga"],
	sandringham: ["Southern Cross", "Richmond", "South Yarra", "Prahran", "Windsor"],
}
userStart = metro.alamein[0];
userEnd = metro.alamein[4];
*/

var alamein = ["Flinders", "Richmond", "East Richmond", "Burnley", "Hawthorn", "Glenferrie"];
var glenWaverly = ["Flagstaff", "Melbourne Central", "Parliament", "Richmond", "Kooyong", "Tooronga"];
var sandringham = ["Southern Cross", "Richmond", "South Yarra", "Prahran", "Windsor"];

// tripStart = alamein[0];
// tripEnd = alamein[4];

input_one = "Flinders"; 			//This will be obtained from the user
input_two = "Hawthorn";				//This will be obtained from the user


function calcDistance(test1, test2) {
	test1 = alamein.indexOf(input_one);
	test2 = alamein.indexOf(input_two);
	var dist = Math.abs(test1 - test2);
	return dist;
}
