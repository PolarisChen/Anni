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
  }

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
  }

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

  addAnni: async (title, desc, quote, month, day, userId, type, markType, cover) => {
    try {
      const ret = await anniDao.add(title, desc, quote, month, day, userId, type, markType, cover);
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
  }
};