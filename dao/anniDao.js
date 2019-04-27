
let pool = require('../util/dbUtil');
let $sql = require('./anniSqlMapping');

module.exports = {
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
  delete: async (id) => {
    try {
      const ret = await pool.query($sql.delete, +id);
      console.log('delete', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  }
};
