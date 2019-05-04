
let comment = {
  insert: 'INSERT INTO comments(content, parentId, userId, anniId) VALUES(?,?,?,?)',
  update: 'UPDATE comments set content=? WHERE id=?',
  delete: 'DELETE FROM comments WHERE id=?',
  queryByAnniId: 'SELECT c.*, u.name AS userName FROM comments c, users u WHERE c.anniId=? AND c.userId=u.id',
  insertLike: 'INSERT INTO comment_likes(commentId, userId) VALUES(?,?)',
  deleteLike: 'DELETE FROM comment_likes WHERE id=?',
  queryLike: 'SELECT COUNT(*) FROM comment_likes WHERE commentId=?',
};

module.exports = comment;
