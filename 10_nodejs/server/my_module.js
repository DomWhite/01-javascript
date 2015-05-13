var sayHello = function(){
	return "Hi";
};

var sayGoodbye = function() {
	return "Bye";
};

module.exports = { 
	hello: sayHello,
	goodbye: sayGoodbye
 };