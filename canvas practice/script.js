var my_canvas = document.getElementById("canvas");
var context = my_canvas.getContext("2d");

context.beginPath();
/* .arc(x, y, radius, startAngle, endAngle)
where x is how far over to the right you start, y is how far down you start, 
radius is the radius of the circle, 
startAngle is the beginning angle, and endAngle is the ending angle. 
A circle goes from the angles 0 to 2 * Math.PI.
*/

context.arc(95, 85, 40, 0, 2*Math.PI);


context.stroke();


/*
You can draw squares and rectangles using the .strokeRect() method, 
which takes four arguments: 
1) 	how far in from the left to put the upper-left corner of the rectangle, 
2)  how for down to put the upper-left corner of the rectangle, 
3)  the width of the rectangle, 
4)   and the height. 
*/
context.fillStyle = "green"; //to change color of fill

context.strokeRect(10, 10, 50, 20); //an empty rectangle
context.fillRect(70, 85, 50, 20);  //a filled in rectangle

context.font = "30px Garamond"; 	//sets font size and family
context.fillText("Hello!",15,175); // tells what to write and coordinates


var guessesLeft = 8
document.getElementById("guessesLeft").innerHTML = guessesLeft
var hangGame = document.getElementById("hangGame").getContext("2d");
	hangGame.fillStyle = "white";


var drawHangMan = {
	ground: function() {hangGame.fillRect(30, 450, 350, 20)},	/*ground*/

	upright: function() {hangGame.fillRect(60, 90, 20, 370)},		/*upright*/


	horizontal: function() {hangGame.fillRect(60, 90, 200, 20)},		/*horizontal*/

	noose: function() {hangGame.fillRect(220, 110, 10, 40)},		/*noose*/

	head: function() {	
		hangGame.beginPath();
		hangGame.arc(225, 170, 30, 0, 2*Math.PI);		/*head*/
		hangGame.fillStyle = "white";
		hangGame.fill();
		hangGame.stroke();
		},
	body: function() {hangGame.fillRect(220,200,10,100)}, 		/*body*/

	arms: function() {
		hangGame.beginPath();
	    hangGame.moveTo(190, 240);
	    hangGame.lineTo(240, 180);				/*Left Arm*/
	    hangGame.lineWidth = 10;
	    hangGame.strokeStyle = "white";
	    hangGame.fill();
	    hangGame.stroke();

	    hangGame.beginPath();
	    hangGame.moveTo(225, 200);
	    hangGame.lineTo(260, 240);				/*Right Arm*/
	    hangGame.lineWidth = 10;
	    hangGame.strokeStyle = "white";
	    hangGame.fill();
	    hangGame.stroke();
		},
	legs: function() {
	   	hangGame.beginPath();
	    hangGame.moveTo(195, 330);
	    hangGame.lineTo(225, 290);
	    hangGame.lineWidth = 10;				/*Left Leg*/
	    hangGame.strokeStyle = "white";
	    hangGame.fill();
	    hangGame.stroke();

	    hangGame.beginPath();
	    hangGame.moveTo(225, 290);
	    hangGame.lineTo(255, 330);				/*Right Leg*/
	    hangGame.lineWidth = 10;
	    hangGame.strokeStyle = "white";
	    hangGame.fill();
	    hangGame.stroke();
		},
}

function runSwitch() {
switch (guessesLeft) {
  case 7:
    console.log("7");
    break;
  case 6:
    console.log("6");
    break;
  case 5:
    console.log("5");
    break;
  case 4:
    console.log("4");
    break;
  case 3:
  	console.log("3");
  case 2:
    console.log("2");
    break;
  case 1:
    console.log("1");
    break;
  default:
    console.log("It's not working");
	}
}


// var upright = document.getElementById("upright").getContext("2d");

// var horizontal = document.getElementById("horizontal").getContext("2d");

// var noose = document.getElementById("noose").getContext("2d");

// var head = document.getElementById("head").getContext("2d");

// var body = document.getElementById("body").getContext("2d");

// var arms = document.getElementById("arms").getContext("2d");

// var legs = document.getElementById("legs").getContext("2hangGame