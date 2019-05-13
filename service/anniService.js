const anniDao = require('../dao/anniDao');
const commentDao = require('../dao/commentDao');

const decorateAnni = async (anni, id) => {
  try {
    anni.likeCount = await anniDao.queryLike(id);
    anni.bookmarkCount = await anniDao.queryBookmark(id);
    anni.markCount = await anniDao.queryMark(id);
    anni.comments = await commentDao.queryByAnniId(id);
    anni.images = await anniDao.queryImage(id);
  } catch (err) {
    console.log(err);
    return err;
  }
};

module.exports = {
  getAllAnnis: async () => {
    try {
      const annis = await anniDao.queryAll();
      if (typeof annis === 'undefined') {
        return {
          success: 0,
          msg: 'No annis',
          data: {}
        }
      } else {
        for (let i = 0; i < annis.length; i++) {
          let anni = annis[i];
          await decorateAnni(anni, anni.id);
          // await anniDao.addData(anni);
        }
        return {
          success: 1,
          msg: '',
          data: annis
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  },

  getAnni: async (id) => {
    try {
      const anni = await anniDao.queryById(id);
      if (typeof anni === 'undefined') {
        return {
          success: 0,
          msg: 'Anni not exists',
          data: {}
        }
      } else {
        await decorateAnni(anni, id);
        return {
          success: 1,
          msg: '',
          data: anni
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  },

  addAnni: async (title, desc, quote, year, month, day, type, markType, cover, userId) => {
    try {
      const ret = await anniDao.add(title, desc, quote, year, month, day, type, markType, cover, userId);
      if (typeof ret === 'undefined') {
        return {
          success: 0,
          msg: 'Add anni failed',
          data: {}
        }
      } else {
        return {
          success: 1,
          msg: '',
          data: {
            anniId: ret.insertId
          }
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  },

  updateAnni: async (title, desc, quote, month, day, type, markType, cover, anniId) => {
    try {
      const ret = await anniDao.add(title, desc, quote, month, day, type, markType, cover, anniId);
      if (typeof ret === 'undefined') {
        return {
          success: 0,
          msg: 'Update anni failed',
          data: {}
        }
      } else {
        return {
          success: 1,
          msg: '',
          data: {
            anniId: ret.insertId // TODO change key name
          }
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  },

  deleteAnni: async (anniId) => {
    try {
      const ret = await anniDao.delete(anniId);
      if (typeof ret === 'undefined') {
        return {
          success: 0,
          msg: 'Delete anni failed',
          data: {}
        }
      } else {
        return {
          success: 1,
          msg: '',
          data: {
            anniId: ret.insertId // TODO change key name
          }
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  },

  likeAnni: async (id, userId) => {
    try {
      const ret = await anniDao.addLike(id, userId);
      if (typeof ret === 'undefined') {
        return {
          success: 0,
          msg: 'Like anni failed',
          data: {}
        }
      } else {
        return {
          success: 1,
          msg: '',
          data: {
            anniId: id
          }
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  },

  bookmarkAnni: async (id, userId) => {
    try {
      const ret = await anniDao.addBookmark(id, userId);
      if (typeof ret === 'undefined') {
        return {
          success: 0,
          msg: 'Bookmark anni failed',
          data: {}
        }
      } else {
        return {
          success: 1,
          msg: '',
          data: {
            anniId: id
          }
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  },

  markAnni: async (id, userId) => {
    try {
      const ret = await anniDao.addMark(id, userId);
      if (typeof ret === 'undefined') {
        return {
          success: 0,
          msg: 'Mark anni failed',
          data: {}
        }
      } else {
        return {
          success: 1,
          msg: '',
          data: {
            anniId: id
          }
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  },

  addComment: async (content, parentId, userId, anniId) => {
    try {
      const ret = await commentDao.add(content, parentId, userId, anniId);
      if (typeof ret === 'undefined') {
        return {
          success: 0,
          msg: 'Add comment failed',
          data: {}
        }
      } else {
        return {
          success: 1,
          msg: '',
          data: {
            anniId: anniId
          }
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  },

  likeComment: async (commentId, userId) => {
    try {
      const ret = await commentDao.addLike(commentId, userId);
      if (typeof ret === 'undefined') {
        return {
          success: 0,
          msg: 'Like comment failed',
          data: {}
        }
      } else {
        return {
          success: 1,
          msg: '',
          data: {
            commentId: id
          }
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  }
};