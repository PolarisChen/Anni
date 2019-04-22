const anniDao = require('../dao/AnniDao');

module.exports = {
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
};