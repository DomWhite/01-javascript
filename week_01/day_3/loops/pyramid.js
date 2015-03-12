var userChar = prompt("Enter a character");
var spaceChar = " "
var maxRow = prompt("How many rows would you like your pyramid to be made of?");
var row = 1;
var charCount = 1;

while (row <= maxRow) {
	var line = spaceChar.repeat(maxRow - row) + userChar.repeat(charCount) + spaceChar.repeat(maxRow - row);
	console.log(line);
	row += 1;
	charCount += 2;
}


// while (row <= maxRow) {
// 	charArray.push(userChar);
// 	row += 1;
//}


/*
var character = prompt("Enter a character")

var rows = Math.round(prompt("How many rows would you like your pyramid to be made of?"))

	document.write("<center>"); 	//write a center tag to make sure the pyramid displays correctly(try it without this step to see what happens)
for(var i = 0; i <= rows; i++) {	//a loop, this counts from 0 to 10 (how many rows of stars)

	for(var x = 0; x <= i; x++) {	// a loop, counting from 0 to whatever value i is currently on
		document.write(character);
	}
	document.write("<br/>"); 		//write a br tag, meaning new line, after every star in the row has been created
}
document.write("</center>"); 		//close the center tag, opened at the beginning

*/













