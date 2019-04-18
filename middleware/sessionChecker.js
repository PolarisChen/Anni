// Check for logged-in users
const sessionChecker = (req, res, next) => {
  if (req.session.userId && req.cookies.userId) {
    next();
  } else {
    res.redirect('/users/login');
  }
};
module.exports = sessionChecker;