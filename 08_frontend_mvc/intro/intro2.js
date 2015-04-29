//javascript runs through twice - once for declaring variables and then twice to execute


//hoisting

var myName = "cody perry";

doSomething();

doSomethingElse();

function doSomethingElse() {
	var foo = 'bar';
	var laterFoo = undefined;
	console.log('hi you');
	console.log('laterFoo');	

	var laterFoo = 'laterBar';
}


function doSomething() {
	var foo = "bar"
	console.log("hi cody perry");
}