
let user = {
  insert:'INSERT INTO annis(id, name) VALUES(0,?)',
  update:'UPDATE annis set title=? where id=?',
  delete: 'DELETE FROM annis WHERE id=?',
  queryById: 'SELECT * FROM annis WHERE id=?',
  queryAll: 'SELECT * FROM annis'
};

module.exports = user;
