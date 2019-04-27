
let pool = require('../util/dbUtil');
let $sql = require('./anniSqlMapping');

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
  queryAll: async () => {
    try {
      const annis = await pool.query($sql.queryAll);
      return annis;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  add: async (title, desc, quote, month, day, type, markType, cover, userId) => {
    try {
      const ret = await pool.query($sql.insert, [title, desc, quote, month, day, type, markType, cover, userId]);
      console.log('add', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  queryById: async (id) => {
    try {
      const annis = await pool.query($sql.queryById, +id);
      return annis[0];
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  update: async (title, desc, quote, month, day, type, markType, cover, anniId) => {
    try {
      const ret = await pool.query($sql.update, [title, desc, quote, month, day, type, markType, cover, anniId]);
      console.log('update', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
};
