console.log("hi");
// http://stackoverflow.com/questions/1646698/what-is-the-new-keyword-in-javascript


// constructor function
// when called  new Foobar() it creates an object with the following properties
function Foobar(title) {
	this.title = title;

	var hello = function() {
		console.log('hello world');
	}

	this.helloWorld = hello;

}

// remember functions are objects

//add a function to the objects to the Foobar create
Foobar.prototype.greetings = function() {
	console.log('greetings');
}

//every object in js has link to the prototype object
// var obj = {}
// obj.deposit = function(){
// }

//ATM example

function Account(amount) {
	this.balance = amount;
}

Account.prototype.deposit = function(amount) {
	this.balance = this.balance + amount 
}



