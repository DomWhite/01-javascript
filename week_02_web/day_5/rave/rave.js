var squares = document.getElementById('contributions-calendar').getElementsByTagName('rect');		//looking for 'rect' within 'contributions-calendar'
																									//this quickens the search to increase effeciency.

// function expression we can 
// assigning an annoymous function to a variable
var randomRGB = function() {
	return Math.floor(Math.random() * (225 - 0));
}

// schedular: calls a function every 10 milliseconds. Any function can be passed in. 
//In this case the function has a for loop determining 3 random number
// .fill is the css property (it could be background-color, or color, etc)
var rave = function () {
	setInterval(function(){
		for (var i = 0; i < squares.length; i++) {
			var fillColor = 'rgb(' + randomRGB() + ',' + randomRGB() + ',' + randomRGB() + ')';
			squares[i].style.fill = fillColor; //can be written squares[i].style.fill = 'rgb(' + randomRGB() + ',' + randomRGB() + ',' + randomRGB() + ')';
		}
		document.getElementsByTagName('body')[0].style.backgroundColor = 'rgb(' + randomRGB() + ',' + randomRGB() + ',' + randomRGB() + ')';
	}, 10);
}
//.getElementsByTagName returns an array of all the tags in the document, it's useful for getting elements with a class but no ID
//e.g. a page has 4 divs and when you call document.getElementsByTagName('div') it would return ['div','div','div','div']
// the last div is selected by getElementsByTagName('div')[3]

// function declaration
function randomRGB () {

}