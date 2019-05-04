
let pool = require('../util/dbUtil');
let $sql = require('./userSqlMapping');

module.exports = {
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
