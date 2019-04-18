
let user = {
  insert:'INSERT INTO users(email, password) VALUES(?,?)',
  update:'UPDATE users set name=? where id=?',
  delete: 'DELETE FROM users WHERE id=?',
  queryById: 'SELECT * FROM users WHERE id=?',
  queryAll: 'SELECT * FROM users',
  queryByEmail: 'SELECT * FROM users WHERE email=?'
};

module.exports = user;
