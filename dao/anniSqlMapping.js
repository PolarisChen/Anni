
let anni = {
  insert:'INSERT INTO annis(title, desc, quote, month, day, userId, type, markType, cover) VALUES(?,?,?,?,?,?,?,?,?)',
  update:'UPDATE annis set title=? where id=?',
  delete: 'DELETE FROM annis WHERE id=?',
  queryById: 'SELECT * FROM annis WHERE id=?',
  queryAll: 'SELECT * FROM annis'
};

module.exports = anni;
