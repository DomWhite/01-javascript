var http = require('http');
var url = require('url');

var app = function(request, response) {

	console.log(request.url)

var path = url.parse(request.url).pathname

switch(path) {
	case '/':
	response.writeHead(200, {'Content-Type':'text/html'});
	response.write('hello world ');
	break;
	default:
	response.writeHead(404);
	response.write('404 - oops ');
	break;

}
	// home '/'
	// home page
if (request.url === "/") {
	response.write('home page');
}

	//about '/about'
	//about page
if (request.url === "/about") {
	response.write('about page');
}

if (request.url === "/aden") {
	response.write('aden is a cock head');
}

	response.end();
};

var server = http.createServer(app);

server.listen(8000);
