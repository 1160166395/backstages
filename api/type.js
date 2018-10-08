var http = require("http");
var url = require("url");
var conn = require("./conn.js");
var express = require('express');
var app = express();
var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded());
// 路由 
app.get('/type', function (req, res) {
    res.writeHead(200,{"content-type":"text/html,charset=utf-8"});
    var sql = "select * from type";
    conn.query(sql,(err,result)=>{
        res.end(JSON.stringify(result));
    });
});
//分页获取
app.get('/goods', function (req, res) {
    res.writeHead(200,{"content-type":"text/html,charset=utf-8"});
    let qty = req.query.qty;
    let page = req.query.page;
    var name = req.query.name;
    var type = req.query.type;
    if(name == ''&& type == ''){
        let sql = "select * from goods";
        conn.query(sql,(err,result)=>{
            let data = result;
            let len = result.length;
            data = data.splice((page-1)*qty,qty)
            res.end(JSON.stringify([data,len]));
        });
    }else if(name == ''){
        let sql = "select * from goods where type = '"+type+"'";
        conn.query(sql,(err,result)=>{
            let data = result;
            let len = result.length;
            data = data.splice((page-1)*qty,qty)
            res.end(JSON.stringify([data,len]));
        });
    }else if(type == ''){
        let sql = "select * from goods where name = '"+name+"'";
        conn.query(sql,(err,result)=>{
            let data = result;
            let len = result.length;
            data = data.splice((page-1)*qty,qty)
            res.end(JSON.stringify([data,len]));
        });
    }else{
        let sql = "select * from goods where type = '"+type+"' and name ='"+name+"'";
        conn.query(sql,(err,result)=>{
            let data = result;
            let len = result.length;
            data = data.splice((page-1)*qty,qty)
            res.end(JSON.stringify([data,len]));
        });
    }
    
});
//删除类
app.get('/del',function (req, res) {
    res.writeHead(200,{"content-type":"text/html,charset=utf-8"});
    var type = req.query.type;console.log(type)
    var sql = "delete from type where type = '"+type+"'";
    conn.query(sql,(err,result)=>{
    });
    var sql2 = "delete from goods where type ='"+type+"'";
    conn.query(sql2,(err,result)=>{
    });
    res.end();
});
//删除单个商品
app.get('/delgood',function (req, res) {
    res.writeHead(200,{"content-type":"text/html,charset=utf-8"});
    var id = req.query.id;
    var sql = "delete from goods where id = '"+id+"'";
    conn.query(sql,(err,result)=>{
    });
    res.end();
});
//删除多个
app.get('/delgoods',function (req, res) {
    res.writeHead(200,{"content-type":"text/html,charset=utf-8"});
    var all = req.query.all;
    var sql = "delete from goods where id in ("+all+")";
    conn.query(sql,(err,result)=>{
    });
    res.end();
});
//添加类 
app.get('/add',function (req, res) {
    res.writeHead(200,{"content-type":"text/html,charset=utf-8"});
    var con = req.query.con;
    var sql = "insert into type (type) values ('"+con+"')";
    conn.query(sql,(err,result)=>{
    });
    var sql1 = "select * from type";
    conn.query(sql1,(err,result)=>{
        res.end(JSON.stringify(result));
    });

});
//添加商品
app.get('/addgood',function (req, res) {
    res.writeHead(200,{"content-type":"text/html,charset=utf-8"});
    var type = req.query.type;
    var name = req.query.name;
    var sale = req.query.price;
    var sql = "insert into goods (type,name,sale) values ('"+type+"','"+name+"','"+sale+"')";
    conn.query(sql,(err,result)=>{
    });
    var sql1 = "select * from type";
    conn.query(sql1,(err,result)=>{
        res.end(JSON.stringify(result));
    });

});
//更改
app.get('/change',function (req, res) {
    res.writeHead(200,{"content-type":"text/html,charset=utf-8"});
    var id = req.query.id;
    var type = req.query.type;
    let types = '';
    var sql = "select type from type where id= '"+id+"'";
    conn.query(sql,(err,result)=>{
        types = result[0].type;
        var sql3 = "update goods set type='"+type+"' where type = '"+types+"'";
        conn.query(sql3,(err,result)=>{
        });
    });
    var sql2 = "update type set type='"+type+"' where id = '"+id+"'";
    conn.query(sql2,(err,result)=>{
    });
    res.end();
});
app.get('/changesale',function (req, res) {
    res.writeHead(200,{"content-type":"text/html,charset=utf-8"});
    var sale = req.query.sale;
    var id = req.query.id;
    var sql2 = "update goods set sale='"+sale+"' where id = '"+id+"'";
    conn.query(sql2,(err,result)=>{
    });
    res.end();
});
//修改发布状态
app.get('/release',function(req,res){
    res.writeHead(200,{"content-type":"text/html,charset=utf-8"});
    var id = req.query.id;
    let state = req.query.state?'':true;
    var sql = "update goods set state='"+state+"' where id = '"+id+"'";
    conn.query(sql,(err,result)=>{
    });
    res.end();
});
app.listen(8081);