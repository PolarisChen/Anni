
let pool = require('../util/dbUtil');
let $sql = require('./anniSqlMapping');

function getRandom(min, max) {
  return Math.floor(Math.random() * (+max - +min)) + +min;
}

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
  addData: async (anni) => {
    try {
      for (let i = 1; i <= 4; i++) {
        const anniId = anni.id;
        if (getRandom(0, 4) > 0) await pool.query($sql.insertLike, [anniId, i]);
        if (getRandom(0, 4) > 0) await pool.query($sql.insertBookmark, [anniId, i]);
        if (getRandom(0, 4) > 0) await pool.query($sql.insertMark, [anniId, i]);
        const contents = [
          'It is a wonderful day!',
          'Science and technology revolutionize our lives, but memory, tradition and myth frame our response.',
          'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.',
          'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.',
          'Memory... is the diary that we all carry about with us.',
          'I have a memory like an elephant. I remember every elephant I\'ve ever met.'
        ];
        const content = contents[getRandom(1, 100) % contents.length];
        if (getRandom(0, 8) > 0) await pool.query($sql.insertComment, [content, 0, i, anniId]);
      }
      return {};
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
