
let pool = require('../util/dbUtil');
let $sql = require('./commentSqlMapping');

module.exports = {
  queryByAnniId: async (anniId) => {
    try {
      const comments = await pool.query($sql.queryByAnniId, +anniId);
      return comments;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  add: async (content, parentId, userId, anniId) => {
    try {
      const ret = await pool.query($sql.insert, [content, parentId, userId, anniId]);
      console.log('add', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  update: async (content, parentId, userId, anniId, commentId) => {
    try {
      const ret = await pool.query($sql.update, [content, parentId, userId, anniId, commentId]);
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