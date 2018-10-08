var mysql = require('mysql')

exports.connect = function (sql, callback) {
  var db = mysql.createConnection({
    host: ' localhost ', // 数据库URL
    port: '3306', // 数据库端口，默认3306
    user: 'root',
    // password:'ww315117',
    database: 'yiguowang'
  })
  db.connect()
  db.query(sql, callback)
  db.end()
}