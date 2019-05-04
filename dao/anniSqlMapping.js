
let anni = {
  insert:'INSERT INTO annis(title, desc, quote, month, day, userId, type, markType, cover) VALUES(?,?,?,?,?,?,?,?,?)',
  update:'UPDATE annis set title=?, desc=?, quote=?, month=?, day=?, type=?, markType=?, cover=? where id=?',
  delete: 'DELETE FROM annis WHERE id=?',
  queryById: 'SELECT * FROM annis WHERE id=?',
  queryAll: 'SELECT * FROM annis',
  insertLike: 'INSERT INTO anni_likes(anniId, userId) VALUES(?,?)',
  deleteLike: 'DELETE FROM anni_likes WHERE id=?',
  insertBookmark: 'INSERT INTO anni_bookmarks(anniId, userId) VALUES(?,?)',
  deleteBookmark: 'DELETE FROM anni_bookmarks WHERE id=?',
  insertMark: 'INSERT INTO anni_marks(anniId, userId) VALUES(?,?)',
  deleteMark: 'DELETE FROM anni_marks WHERE id=?',
};

module.exports = anni;
