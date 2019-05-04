const anniDao = require('../dao/AnniDao');

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

  addAnni: async (title, desc, quote, month, day, type, markType, cover, userId) => {
    try {
      const ret = await anniDao.add(title, desc, quote, month, day, type, markType, cover, userId);
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
  }
};