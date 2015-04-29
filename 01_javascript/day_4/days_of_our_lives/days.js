
var daysOfWeek = ["monday","tuesday","wednesday","thursday","friday","saturday","sunday"];

daysOfWeek.pop();
daysOfWeek.unshift("sunday"); 	//daysOfWeek.splice(-6,0, "sunday"); produces the same result

console.log(daysOfWeek);

//var friday = week[5].toUpperCase();
//console.log(friday);


var newDays = daysOfWeek.splice(1,6)

var splitDays = [
				["monday","tuesday","wednesday","thursday","friday"],
				["saturday","sunday"]
]

splitDays[0][2] = "stubbies day";
