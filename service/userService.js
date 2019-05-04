const bcrypt = require('bcrypt');
const userDao = require('../dao/userDao');
const anniDao = require('../dao/anniDao');
const commentDao = require('../dao/commentDao');
const notificationDao = require('../dao/notificationDao');

module.exports = {
  getUser: async (id) => {
    try {
      const user = await userDao.queryById(id);
      const annis = await anniDao.queryByUserId(id);
      const likes = await anniDao.queryByLikerId(id);
      const bookmarks = await anniDao.queryByBookmarkerId(id);
      const comments = await commentDao.queryByUserId(id);
      if (typeof user === 'undefined') {
        return {
          success: 0,
          msg: 'User not exists',
          data: {}
        }
      } else {
        return {
          success: 1,
          msg: '',
          data: {
            id: user.id,
            name: user.name,
            email: user.email,
            bio: user.bio,
            avatar: user.avatar,
            cover: user.cover,
            annis: annis,
            likes: likes,
            bookmarks: bookmarks,
            comments: comments
          }
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  },

  getNotifications: async (id) => {
    try {
      const notifications = await notificationDao.queryByUserId(id);
      if (typeof notifications === 'undefined') {
        return {
          success: 0,
          msg: 'No notifications',
          data: {}
        }
      } else {
        return {
          success: 1,
          msg: '',
          data: notifications
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  },

  login: async (email, password) => {
    try {
      const user = await userDao.queryByEmail(email);
      if (typeof user === 'undefined') {
        return {
          success: 0,
          msg: 'User not exists',
          data: {}
        }
      } else {
        if (!bcrypt.compareSync(password, user.password)) {
          return {
            success: 0,
            msg: 'Incorrect password',
            data: {}
          }
        } else {
          return {
            success: 1,
            msg: '',
            data: {
              userId: user.id
            }
          }
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  },

  signup: async (email, password) => {
    try {
      const user = await userDao.queryByEmail(email);
      if (typeof user !== 'undefined') {
        return {
          success: 0,
          msg: 'User exists',
          data: {}
        }
      } else {
        const salt = bcrypt.genSaltSync();
        password = bcrypt.hashSync(password, salt);
        const ret = await userDao.add(email, password);
        if (typeof ret === 'undefined') {
          return {
            success: 0,
            msg: 'Signup failed',
            data: {}
          }
        } else {
          return {
            success: 1,
            msg: '',
            data: {
              userId: ret.insertId
            }
          }
        }
      }
    } catch (err) {
      console.log(err);
      return err;
    }
  }
};