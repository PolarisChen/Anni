
let mysql = require('mysql');
let $conf = require('../conf/db');
let $sql = require('./anniSqlMapping');

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
            msg: 'Add Succeeded'
          };
        }
        jsonWrite(res, result);
        connection.release();
      });
    });
  },
  delete: function(req, res, next) {
    pool.getConnection(function(err, connection) {
      let id = +req.query.id;
      connection.query($sql.delete, id, function(err, result) {
        if (result.affectedRows > 0) {
          result = {
            code: 200,
            msg: 'Delete Succeeded'
          };
        } else {
          result = void 0;
        }
        jsonWrite(res, result);
        connection.release();
      });
    });
  },
  update: function(req, res, next) {
    let param = req.body;
    if (param.name == null || param.age == null || param.id == null) {
      jsonWrite(res, undefined);
      return;
    }
    pool.getConnection(function(err, connection) {
      connection.query($sql.update, [param.name, param.age, +param.id], function(err, result) {
        // Use pages to redirect
        if (result.affectedRows > 0) {
          res.render('suc', {
            result: result
          });
        } else {
          res.render('fail',  {
            result: result
          });
        }
        connection.release();
      });
    });
  },
  queryById: function(req, res, next) {
    let id = +req.query.id; // Convert to int for SQL
    pool.getConnection(function(err, connection) {
      connection.query($sql.queryById, id, function(err, result) {
        jsonWrite(res, result);
        connection.release();
      });
    });
  },
  queryAll: function(req, res, next) {
    pool.getConnection(function(err, connection) {
      connection.query($sql.queryAll, function(err, result) {
        jsonWrite(res, result);
        connection.release();
      });
    });
  }
};
