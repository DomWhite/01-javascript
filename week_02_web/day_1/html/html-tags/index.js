$(document).ready(function() {
	var $h1 = $(".outer h1").html("I AM VERY HUNGRY");			// is the same as var div = document.getElementsByClassName("outer")[0].getElementsByTagName("h1")[0];
	//instead of using array notation, we still want a jquery object use eq()
	// console.log(h1.eq(0).html("does this work?"));
	// h1.html("I am very hungry")  	//h1.innerHTML = "I am very hungry" 



	//.menu li:last-child
	var $lastListItemOfMenu = $(".menu li:last-child").html("join now")

	//	var $newElement = $("<li>free stuff</li>").addClass('cool').html("free stuff");
	//	var $newElement = $("<li>free stuff</li>").addClass('cool'); //	window.$newElement = $("<li>free stuff</li>");
	//	$('.menu').append($newElement); //prepend for start of list
	//	var $newElement = $("<li>free stuff</li>").appendTo('.menu') for single line
	
	$newElement = $("<li></li>", {  //you can leave out the </li>
		class: 'cool', 
		id: "sweet", 
		style: "background-color: red"
	}).html("works");

	$newElement.appendTo(".menu");

})

// window.onload = function() {
// var div = document.getElementsByClassName("outer")[0].getElementsByTagName("h1")[0];
// console.log(div);
// }