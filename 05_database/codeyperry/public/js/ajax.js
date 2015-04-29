/*
var request = new XMLHttpRequest();

request.onreadystatechange = function() {

	// console.log('readyState has changed');
	// console.log('readyState', this.readyState);
	// console.log('responseText', this.responseText);

	if (this.readyState === 4) {
		console.log('Done')
		document.write( this.responseText );
	}
};

request.open('GET', '/slow');
request.send();

console.log('AJAX request is probably still running');
*/

$(document).ready(function() {

	$.getJSON('/api/students').done(function(data) {
		console.log(data.luckyNumber);
	});

});

// $(document).ready(function() {

// 	var displayResult = function(data) {
// 		console.log(data);
// 	};

// 	$.getJSON('/api/students').done(displayResult)
// 	});