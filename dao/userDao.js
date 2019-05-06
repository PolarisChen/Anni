
let pool = require('../util/dbUtil');
let $sql = require('./userSqlMapping');

module.exports = {
  add: async (name, email, password) => {
    try {
      const avatar = "default-avatar.jpg";
      const cover = "default-cover.jpg";
      const bio = "Yesterday is but today's memory, and tomorrow is today's dream. — Khalil Gibran";
      const ret = await pool.query($sql.insert, [name, email, password, avatar, cover, bio]);
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
