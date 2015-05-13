// node is async
var http = require('http');

// signature
var callback = function(response) {
	response.setEncoding('utf-8');

	var total = "";
	response.on('data', function(data) {
		total += data;
	});

	response.on('end', function(){
		console.log(total);
	});
};

// "callback" do this upon finishing get request
http.get('http://www.google.com', callback); 