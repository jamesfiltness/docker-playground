var express = require('express');
var app = express();

app.get('/', function(req, res) {
  res.send("Hello world! NODE_ENV is " + process.env.NODE_ENV);
});

app.listen(3000);
