
var metro = {
	"Alamein": ["Flinders", "Richmond", "East Richmond", "Burnley", "Hawthorn", "Glenferrie"],
	"Glen Waverly": ["Flagstaff", "Melbourne Central", "Parliament", "Richmond", "Kooyong", "Tooronga"],
	"Sandringham": ["Southern Cross", "Richmond", "South Yarra", "Prahran", "Windsor"],
}

function calcDistance(start, finish) {
	var startLine = document.getElementById("startLine").value;
	var startStation = document.getElementById("startStation").value;
	var stopLine = document.getElementById("stopLine").value;		
	var stopStation = document.getElementById("stopStation").value;

	var start = metro[startLine].indexOf(startStation);			//gets the index of starting station
	var finish = metro[stopLine].indexOf(stopStation);			//gets the index of finishing station

	var tripPartOne;																	
	if (startLine === "Alamein") {								// 	This If statement determines which line's Richmond
		var tripPartOne = Math.abs(start - ala_rich);			//	station index to use. It is then subtracted from the
	} else if (startLine === "Glen Waverly") {					//	index of the departure station. Integer is then converted
		var tripPartOne = Math.abs(start - glen_rich);			//	into a positive via Math.abs()
	} else if (startLine === "Sandringham") {
		var tripPartOne = Math.abs(start - sand_rich);
	}

	var tripPartTwo;
	if (stopLine === "Alamein") {								// 	This If statement determines which line's Richmond
		var tripPartTwo = Math.abs(finish - ala_rich);			//	station index to use. It is then subtracted from the
	} else if (stopLine === "Glen Waverly") {					//	index of the arrival station. Integer is then converted
		var tripPartTwo = Math.abs(finish - glen_rich);			//	into a positive via Math.abs()
	} else if (stopLine === "Sandringham") {
		var tripPartTwo = Math.abs(finish - sand_rich);
	}

	var numberOfStops = tripPartOne + tripPartTwo;				// number of stops determined by adding the outcomes of

	var result = "If you depart " + startStation.toUpperCase() + " and disembark at " + stopStation.toUpperCase() + " you will have travelled " + numberOfStops + " stop/s.";
	document.getElementById("display").innerHTML = result;
}


// hard coded index of each lines Richmond station
var ala_rich = metro["Alamein"].indexOf("Richmond");       
var glen_rich = metro["Glen Waverly"].indexOf("Richmond");
var sand_rich = metro["Sandringham"].indexOf("Richmond");

document.getElementById("btnGo").onclick = calcDistance;
