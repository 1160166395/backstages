var http = require("http");
var url = require("url");
var conn = require("./conn.js");

var express = require('express');
var app = express();
// 路由 
app.get('/psw', function (req, res) {
    var user = req.query.username;
    var sql = "select * from data where username='"+user+"'";
    conn.query(sql,(err,result)=>{
        console.log(result)
        res.end(JSON.stringify(result));
	})
})
//修改密码
app.get('/newPsw',function (req, res) {
    res.writeHead(200,{"content-type":"text/html,charset=utf-8"});
    var user = req.query.username;
    var psw = req.query.psw;
    var sql = "update data set password='"+psw+"' where username='"+user+"';"
    conn.query(sql,(err,result)=>{
    });
});
//修改数据
app.get('/data',function (req, res) {
    res.writeHead(200,{"content-type":"text/html,charset=utf-8"});
    var user = req.query.username;
    var gender = req.query.gender;
    var nickname = req.query.nickname;
    var phone = req.query.phone;
    var email = req.query.email;
    var text = req.query.text
    var sql = "update data set nickname='"+nickname+"',gender='"+gender+"',phone='"+phone+"',email='"+email+"',text='"+text+"' where username='"+user+"'";
    conn.query(sql,(err,result)=>{
    });
});
// 开启服务器 
var server = app.listen(8082);