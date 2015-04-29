// 

function app() {

		// function declaration 
		//(this can be called from anywhere, useful for debugging as the function is named)
    function doSomething() {

    };

    //function expression 
    //(prefer to use this one, more expressive in that it is a variable that be passed around)
    var doSomethingElse = function() {

    };

    var hey = "hi";

}

app();
// // declaration and call at the same time by putting parentheses at the end
// (function() {}) ();
// so above is written as:

//iife 
//this is creating privacy
(function() {
	function doSomething() {
		console.log("")
	};
})();