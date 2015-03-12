
var metro = {
	alamein: ["Flinders", "Richmond", "East Richmond", "Burnley", "Hawthorn", "Glenferrie"],
	glenWaverly: ["Flagstaff", "Melbourne Central", "Parliament", "Richmond", "Kooyong", "Tooronga"],
	sandringham: ["Southern Cross", "Richmond", "South Yarra", "Prahran", "Windsor"],
}
// function to calculate the distance between the 
function calcDistance(start, finish) {
	var start = metro./*line*/alamein.indexOf(startStation);        // Line (e.g. alamein) and startStation are taken from user
	var finish = metro./*line*/glenWaverly.indexOf(stopStation);	// Line (e.g. glenWaverly) and stopStation are taken from user
	var tripPartOne = Math.abs(start - ala_rich);
	var tripPartTwo = Math.abs(finish - glen_rich);
	var numberOfStops = tripPartOne + tripPartTwo;
	return numberOfStops;
}

var ala_rich = metro.alamein.indexOf("Richmond");       // hard coded index of each Richmond station
var glen_rich = metro.glenWaverly.indexOf("Richmond");
var sand_rich = metro.sandringham.indexOf("Richmond");

//////// Hard coded user inputs for testing ////////
var startStation = "Flinders";			
var stopStation = "Flagstaff";
////////////////////////////////////////////////////

var display = "If you get on at " + startStation + " & get off at " + stopStation + " you will have travelled " + calcDistance() + " stops."

document.write(display)






