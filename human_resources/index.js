var http = require('http');
var colors = require('colors');

http.createServer(function(req, res) {
  // A parsed url to work with in case there are parameters
  var _url;

  // In case the client uses lower case for methods.
  // req.method = req.method.toUpperCase();
  console.log(req.method + ' ' + req.url);

  if (req.method !== 'GET') {
    res.writeHead(501, {
      'Content-Type': 'text/plain'
    });
    return res.end(req.method + ' is not supported by this server');
  }

  if (_url = /^\/employees$/i.exec(req.url)) {
    // return a list of employees
    res.writeHead(200);
    return res.end('employee list');
  } else if (_url = /^\/employees\/(\d+)$/i.exec(req.url)) {
    // find the employee by the id in the route
    res.writeHead(200);
    return res.end('a single employee');
  } else {
    // try to send the static file
    res.writeHead(200);
    res.end('static file maybe');
  }

  res.end('The current time is: ' + Date.now());
}).listen(8080);

console.log('Running on localhost:8080');