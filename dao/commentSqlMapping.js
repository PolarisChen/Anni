
let comment = {
  insert:'INSERT INTO comments(content, parentId, userId, anniId) VALUES(?,?,?,?)',
  update:'UPDATE comments set content=?, parentId=?, userId=?, anniId=? where id=?',
  delete: 'DELETE FROM comments WHERE id=?',
  queryByAnniId: 'SELECT * FROM comments WHERE anniId=?',
};

module.exports = comment;
