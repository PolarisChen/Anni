
let mysql = require('mysql');
let $conf = require('../conf/db');
let $sql = require('./userSqlMapping');

let pool  = mysql.createPool($conf.mysql);

let jsonWrite = function(res, ret) {
  if (typeof ret === 'undefined') {
    res.json({
      code: '1',
      msg: 'Failed'
    });
  } else {
    res.json(ret);
  }
};

module.exports = {
  add: function(req, res, next) {
    pool.getConnection(function(err, connection) {
      let param = req.query || req.params;

      connection.query($sql.insert, [param.name, param.age], function(err, result) {
        if (result) {
          result = {
            code: 200,
            msg: 'Succeeded'
          };
        }

        jsonWrite(res, result);

        connection.release();
      });
    });
  }
};
