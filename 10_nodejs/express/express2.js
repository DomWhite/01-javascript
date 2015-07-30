
var app = require('express')(); //immediately call function
var http = require('http').Server(app);

app.set('views', './views'); //look within current folder
app.set('view engine', 'jade'); //view engine is jade
app.use(express.static('/public')); //static files (e.g. images) are found in /public

app.get('/', function(request, response){ //"signature" meaning Req/Res always get passed in

	console.log("you're going to /");
	response.render('index'); //.render is the syntax for jade (has to be in views dir)
});

app.get('/about', function(req, res){
	console.log("you're going to /about");
	res.send("<h2>About</h2>");
});

app.get('/test', function(req, res){
	console.log("you're going to /test");
	res.sendFile(__dirname + '/test.html');
});



app.listen(8000, function() {
	console.log('listening on port 8000');
});

