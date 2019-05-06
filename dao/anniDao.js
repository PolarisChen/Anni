
let pool = require('../util/dbUtil');
let $sql = require('./anniSqlMapping');

module.exports = {
  add: async (title, desc, quote, year, month, day, type, markType, cover, userId) => {
    try {
      const ret = await pool.query($sql.insert, [title, desc, quote, year, month, day, type, markType, cover, userId]);
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
  queryAll: async () => {
    try {
      const annis = await pool.query($sql.queryAll);
      return annis;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  queryByUserId: async (userId) => {
    try {
      const annis = await pool.query($sql.queryByUserId, +userId);
      return annis;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  queryByLikerId: async (userId) => {
    try {
      const annis = await pool.query($sql.queryByLikerId, +userId);
      return annis;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  queryByBookmarkerId: async (userId) => {
    try {
      const annis = await pool.query($sql.queryByBookmarkerId, +userId);
      return annis;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  queryByMarkerId: async (userId) => {
    try {
      const annis = await pool.query($sql.queryByMarkerId, +userId);
      return annis;
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
      console.log('queryLike', ret, ret[0].num);
      return ret[0].num;
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
      console.log('queryBookmark', ret, ret[0].num);
      return ret[0].num;
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
      console.log('queryMark', ret, ret[0].num);
      return ret[0].num;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  addImage: async (id, image, caption) => {
    try {
      const ret = await pool.query($sql.insertImage, [id, image, caption]);
      console.log('addImage', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  deleteImage: async (id) => {
    try {
      const ret = await pool.query($sql.deleteImage, +id);
      console.log('deleteImage', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  queryImage: async (id) => {
    try {
      const ret = await pool.query($sql.queryImage, +id);
      console.log('queryImage', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
};
