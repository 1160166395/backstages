var mysql = require('mysql');//没有先安装
var conn = mysql.createConnection({
    "host":"localhost",
    "port":"3306",
    "user":"root",
    "password":'',
    "database":"yougou"
});
conn.connect();
module.exports = conn;