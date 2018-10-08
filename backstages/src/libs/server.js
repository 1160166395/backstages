let db = require(' ./mysql.js ');

function Fruit(app){
    app.get('/user',function(req,res){
        res.append('Access-Control-Allow-Origin','*');
        db.connect('SELECT * FROM yiguowang',function(error,data){
        res.send(data);
        // console.log(2222);
      });

    });
};