
$(document).ready(function() {

	$.getJSON('/api/students').done(function(data) {
		console.log(Object.keys(data));
		var names = data;
		var $students = $('#students');

		for(var i=0; i < names.length; i++) {
			var $li = $('<li>').html(names[i]['name']); 
			$students.append($li);
		}
	});

});

// var options = {
// 	url: '/api/students',
// 	dataType: 'json'
// }

// var hooray = function() {
// 	console.log('hooray');
// }

// $.ajax(options).done(function(students) {	//make the call
// 	var names = students;
// 		var $students = $('#students');

// 		for(var i=0; i < names.length; i++) {
// 			var $li = $('<li>').html(names[i]['name']); 
// 			$students.append($li);
// 		}
// });