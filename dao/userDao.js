
let pool = require('../util/dbUtil');
let $sql = require('./userSqlMapping');

// let jsonWrite = function(res, ret) {
//   if (typeof ret === 'undefined') {
//     res.json({
//       code: '1',
//       msg: 'Failed'
//     });
//   } else {
//     res.json(ret);
//   }
// };

module.exports = {
  // delete: function(req, res, next) {
  //   pool.getConnection(function(err, connection) {
  //     let id = +req.query.id;
  //     connection.query($sql.delete, id, function(err, result) {
  //       if (result.affectedRows > 0) {
  //         result = {
  //           code: 200,
  //           msg: 'Delete Succeeded'
  //         };
  //       } else {
  //         result = void 0;
  //       }
  //       jsonWrite(res, result);
  //       connection.release();
  //     });
  //   });
  // },
  // update: function(req, res, next) {
  //   let param = req.body;
  //   if (param.name == null || param.age == null || param.id == null) {
  //     jsonWrite(res, undefined);
  //     return;
  //   }
  //   pool.getConnection(function(err, connection) {
  //     connection.query($sql.update, [param.name, param.age, +param.id], function(err, result) {
  //       // Use pages to redirect
  //       if (result.affectedRows > 0) {
  //         res.render('suc', {
  //           result: result
  //         });
  //       } else {
  //         res.render('fail',  {
  //           result: result
  //         });
  //       }
  //       connection.release();
  //     });
  //   });
  // },
  // queryById: function(req, res, next) {
  //   let id = +req.query.id; // Convert to int for SQL
  //   pool.getConnection(function(err, connection) {
  //     connection.query($sql.queryById, id, function(err, result) {
  //       jsonWrite(res, result);
  //       connection.release();
  //     });
  //   });
  // },
  // queryAll: function(req, res, next) {
  //   pool.getConnection(function(err, connection) {
  //     connection.query($sql.queryAll, function(err, result) {
  //       jsonWrite(res, result);
  //       connection.release();
  //     });
  //   });
  // },
  add: async (email, password) => {
    try {
      const ret = await pool.query($sql.insert, [email, password]);
      console.log('add', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  queryByEmail: async (email) => {
    try {
      const users = await pool.query($sql.queryByEmail, email);
      return users[0];
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  queryById: async (id) => {
    try {
      const users = await pool.query($sql.queryById, +id);
      return users[0];
    } catch(err) {
      console.log(err);
      return err;
    }
  }
};
