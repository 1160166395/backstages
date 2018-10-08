var express = require('express');
var app = express();
app.use(express.static('../main.js'));
require('./server.js').drug(app);

app.listen(2666);