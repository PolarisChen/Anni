
let notification = {
  insert: 'INSERT INTO notifications(type, receiverId, senderId, subjectId, content) VALUES(?,?,?,?,?)',
  updateStatus: 'UPDATE notifications set status=? WHERE id=?',
  delete: 'DELETE FROM notifications WHERE id=?',
  queryByUserId: 'SELECT * FROM notifications WHERE userId=?',
};

module.exports = notification;
