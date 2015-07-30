// var express = require('express');
// var app = express();

var app = require('express')(); //immediately call function
var http = require('http').Server(app);

app.get('/', function(request, response){ //"signature" meaning Req/Res always get passed in

	console.log("you're going to /");
	response.send('<h1>hello express</h1>'); // .send instead of .write is express syntax
});

app.get('/about', function(req, res){
	console.log("you're going to /about");
	res.send("<h2>About</h2>");
});

app.listen(8000, function() {
	console.log('listening on port 8000');
});

