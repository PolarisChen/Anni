
let pool = require('../util/dbUtil');
let $sql = require('./notificationSqlMapping');

module.exports = {
  queryByUserId: async (userId) => {
    try {
      const notifications = await pool.query($sql.queryByUserId, +userId);
      return notifications;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  add: async (type, receiverId, senderId, subjectId, content) => {
    try {
      const ret = await pool.query($sql.insert, [type, receiverId, senderId, subjectId, content]);
      console.log('add', ret);
      return ret;
    } catch(err) {
      console.log(err);
      return err;
    }
  },
  updateStatus: async (id) => {
    try {
      const ret = await pool.query($sql.updateStatus, [+1, id]);
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
