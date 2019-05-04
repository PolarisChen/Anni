
let anni = {
  insert:'INSERT INTO annis(title, desc, quote, month, day, userId, type, markType, cover) VALUES(?,?,?,?,?,?,?,?,?)',
  update:'UPDATE annis set title=?, desc=?, quote=?, month=?, day=?, type=?, markType=?, cover=? where id=?',
  delete: 'DELETE FROM annis WHERE id=?',
  queryById: 'SELECT a.*, u.name AS userName FROM annis a, users u WHERE a.id=? AND a.userId=u.id',
  queryAll: 'SELECT a.*, u.name AS userName FROM annis a, users u WHERE a.userId=u.id',
  insertLike: 'INSERT INTO anni_likes(anniId, userId) VALUES(?,?)',
  deleteLike: 'DELETE FROM anni_likes WHERE id=?',
  queryLike: 'SELECT COUNT(*) FROM anni_likes WHERE anniId=?',
  insertBookmark: 'INSERT INTO anni_bookmarks(anniId, userId) VALUES(?,?)',
  deleteBookmark: 'DELETE FROM anni_bookmarks WHERE id=?',
  queryBookmark: 'SELECT COUNT(*) FROM anni_bookmarks WHERE anniId=?',
  insertMark: 'INSERT INTO anni_marks(anniId, userId) VALUES(?,?)',
  deleteMark: 'DELETE FROM anni_marks WHERE id=?',
  queryMark: 'SELECT COUNT(*) FROM anni_marks WHERE anniId=?',
  insertImage: 'INSERT INTO anni_images(anniId, image, caption) VALUES(?,?,?)',
  deleteImage: 'DELETE FROM anni_images WHERE id=?',
  queryImage: 'SELECT * FROM anni_images WHERE anniId=?',
};

module.exports = anni;
