
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
  },
  addLike: async (id, userId) => {
    try {
      const ret = await pool.query($sql.insertLike, [id, userId]);
      console.log('addLike', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  deleteLike: async (id) => {
    try {
      const ret = await pool.query($sql.deleteLike, +id);
      console.log('deleteLike', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  queryLike: async (id) => {
    try {
      const ret = await pool.query($sql.queryLike, +id);
      console.log('queryLike', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  addBookmark: async (id, userId) => {
    try {
      const ret = await pool.query($sql.insertBookmark, [id, userId]);
      console.log('addBookmark', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  deleteBookmark: async (id) => {
    try {
      const ret = await pool.query($sql.deleteBookmark, +id);
      console.log('deleteBookmark', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  queryBookmark: async (id) => {
    try {
      const ret = await pool.query($sql.queryBookmark, +id);
      console.log('queryBookmark', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  addMark: async (id, userId) => {
    try {
      const ret = await pool.query($sql.insertMark, [id, userId]);
      console.log('addMark', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  deleteMark: async (id) => {
    try {
      const ret = await pool.query($sql.deleteMark, +id);
      console.log('deleteMark', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  queryMark: async (id) => {
    try {
      const ret = await pool.query($sql.queryMark, +id);
      console.log('queryMark', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
};
