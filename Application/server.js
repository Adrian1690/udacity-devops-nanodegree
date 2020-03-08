var http = require('http');
var fileSystem = require('fs');
var path = require('path');


var handleRequest = function(request, response) {
  console.log('Received request for URL: ' + request.url);
  //response.writeHead(200);
  //response.end('Hello World!');

  var filePath = path.join(__dirname, 'index.html');
  //var stat = fileSystem.statSync(filePath);

  response.writeHead(200);

  var readStream = fileSystem.createReadStream(filePath);
    // We replaced all the event handlers with a simple call to readStream.pipe()
  readStream.pipe(response);

};

var www = http.createServer(handleRequest);
www.listen(80);