const userDao = require('../dao/UserDao');

module.exports = {
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
        if (user.password !== password) {
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
  }
};