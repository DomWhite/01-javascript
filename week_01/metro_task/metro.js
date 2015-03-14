
var metro = {
	"Alamein": ["Flinders", "Richmond", "East Richmond", "Burnley", "Hawthorn", "Glenferrie"],
	"Glen Waverly": ["Flagstaff", "Melbourne Central", "Parliament", "Richmond", "Kooyong", "Tooronga"],
	"Sandringham": ["Southern Cross", "Richmond", "South Yarra", "Prahran", "Windsor"],
}

function calcDistance(start, finish) {
	var start = metro[startL].indexOf(startS);			//gets the index of starting station
	var finish = metro[stopL].indexOf(stopS);			//gets the index of finishing station

	var tripPartOne;																	
	if (startL === "Alamein") {								
		var tripPartOne = Math.abs(start - ala_rich);
	} else if (startL === "Glen Waverly") {
		var tripPartOne = Math.abs(start - glen_rich);
	} else if (startL === "Sandringham") {
		var tripPartOne = Math.abs(start - sand_rich);
	}

	var tripPartTwo;
	if (stopL === "Alamein") {
		var tripPartTwo = Math.abs(finish - ala_rich);
	} else if (stopL === "Glen Waverly") {
		var tripPartTwo = Math.abs(finish - glen_rich);
	} else if (stopL === "Sandringham") {
		var tripPartTwo = Math.abs(finish - sand_rich);
	}


	//var tripPartOne = Math.abs(start - ala_rich);
	//var tripPartTwo = Math.abs(finish - glen_rich);
	var numberOfStops = tripPartOne + tripPartTwo;			//at the moment returning NaN
	return numberOfStops;
}
//Eventually these prompts with be replaced by input from the user via <input> alternatively dropdown lists <select> could be used to minimise incorrect input
var startL = prompt("Which line is your starting station on? Alamein, Glen Waverly or Sandringham")
var startS = prompt("Which station are you starting your journey from?")
var stopL = prompt("Which line is your finishing station on? Alamein, Glen Waverly or Sandringham")
var stopS = prompt("Which station are you finishing your journey at")


//function will be called on button click
function startingStation() {
	var startLine = document.getElementById("startline").value;
	console.log("Starting line: ", startLine);
}

// hard coded index of each lines Richmond station
var ala_rich = metro["Alamein"].indexOf("Richmond");       
var glen_rich = metro["Glen Waverly"].indexOf("Richmond");
var sand_rich = metro["Sandringham"].indexOf("Richmond");

/*
//////// Hard coded user inputs for testing ////////
var startL = "Alamein";
var startS = "Flinders";
var stopL = "Glen Waverly";		
var stopS = "Flagstaff";
////////////////////////////////////////////////////
*/

var result = "If you get on at " + startS + " & get off at " + stopS + " you will have travelled " + calcDistance() + " stops."

document.getElementById("display".p).innerHTML = document.write(result)		// is in black below the lower input boxes - How to apply css?




