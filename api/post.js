var querystring = require('querystring');
module.exports = function(response,callback){
    var chunks = '';
    response.on('data',function(chunk){
        chunks += chunk;
    })
    response.on('end',function(){
        return callback(querystring.parse(chunks));
    })
}