// "this" keyword

//reference to an object in a function. To do with context NOT scope!
// "this" is javascripts way of pointing to the object in question

// rules of "this"
// precedence is in reverse order

// 1. default is global
//		window object

// 2. implicit (set to object)
//	e.g. person.greeting() "this" refers to person not greeting();

// 3. explicit (see bind below)
//	person.greeting.call(foo) "this" refers to foo

// 4. the new keyword
//  var a = new greeting(); "this" refers to a


// var fullname = 'dt';

function person() {
	console.log(this.fullname);
}

var cody = {
	fullname: "cody",
	person: person,
	foo: function() {
		console.log('my fullname is ' + this.fullname);
	}
}

var perry = {
	fullname: "perry"
}

// bind 'this' to somewhere else 

// person();
// intro3.js:13 undefined

//.call() can be used to change the context

// person.call(cody);
// intro3.js:13 cody

// person.call(perry);
// intro3.js:13 perry

//cody.person.call(perry);  using call() overrides cody.person with perry.person
// intro3.js:13 perry