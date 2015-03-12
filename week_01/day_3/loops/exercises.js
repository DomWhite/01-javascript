///////// Loop through values 1 to 20 and display whether it's odd or even
/*
for (var i = 1; i <= 20; i+=1) {
	if (i % 2 === 0) {
		console.log(i + " is even")
	} else {
		console.log(i + " is odd")
	}
}
*/

////////// Loop through values 1 to 10 and displaying it multiplied by 9
/*
for (var i = 1; i <=10; i+=1) {
	var result = i * 9;
	console.log(i + " x 9 = " + result);
	}
*/

////nested FOR loops
/*
for (var i = 1; i <=10; i+=1) {
	for (var j = 1; j <=10; j+=1) {
		console.log(i + " * " + j + " = " + i * j);
	}
}
*/

/////////// Using a function to evaluate scores called in a FOR Loop

function assignGrade (score) {
	if (score >= 50 && score <=59) {
			return "E";
		} else if (score >= 60 && score <=69) {
			return "D"
		} else if (score >= 70 && score <=79) {
			return "C";
		} else if (score >= 80 && score <=89) {
			return "B";
		} else if (score >= 90 && score <=100) {
			return "A"
		} else {
			return "F"
		}
}


	for (var testScore = 0; testScore <=100; testScore+=1) {
		console.log("For " + testScore + ", you got grade " + assignGrade(testScore));
	}

