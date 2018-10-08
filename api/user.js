var http = require("http");
var url = require("url");
var conn = require("./conn.js");
var mysql = require('mysql');
var bp = require('body-parser');

var express = require('express');
var app = express();
app.use(bp.json())

//路由 login
app.post("/wlogin", function (req, res) {
    // console.log(aa)
    var strname=req.body.username;
    console.log(strname)
    var strpass=req.body.password;
    var sql = "SELECT * FROM data WHERE username ='"+ strname+"' and password='"+strpass+"'";
    conn.query(sql,(err,result)=>{
        if(err){
            res.send(err);
        }else{
            res.send(result);
        }
        res.end();    
    });
})



//开启服务器 
var server = app.listen(8083)