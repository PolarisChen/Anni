const express = require('express');
const router = express.Router();
const userService = require('../service/userService');
const sessionChecker = require('../middleware/sessionChecker');

// Fetch user data with id
router.get('/', sessionChecker, (req, res, next) => {
  // TODO - Return user data
  userService.getUser(req.session.userId).then((ret)=>{
    res.json(ret);
  });
});
router.get('/:userId', (req, res, next) => {
  // TODO - Return user data
  userService.getUser(req.params.userId).then((ret)=>{
    res.json(ret);
  });
});

// Login
router
  .get('/login', (req, res, next) => {
    if (req.session.userId && req.cookies.userId) {
      res.redirect('/users');
    } else {
      res.render('login', { title: 'Log In' });
    }
  })
  .post('/login', (req, res, next) => {
    userService.login(req.body.email, req.body.password).then((ret)=>{
      if (ret.success === 1) {
        req.session.userId = ret.data.userId;
      }
      res.json(ret);
    });
  });

// Signup
router
  .get('/signup', (req, res, next) => {
    if (req.session.userId && req.cookies.userId) {
      res.redirect('/users');
    } else {
      res.render('signup', { title: 'Sign Up' });
    }
  })
  .post('/signup', (req, res, next) => {
    console.log(req.body.email, req.body.password);
    userService.signup(req.body.email, req.body.password).then((ret)=>{
      if (ret.success === 1) {
        req.session.userId = ret.data.userId;
      }
      res.json(ret);
    });
  });

// Logout
router.get('/logout', sessionChecker, (req, res) => {
  res.clearCookie('userId');
  req.session.destroy((err) => {
    if (err) {
      return console.log(err);
    } else {
      return res.redirect('/');
    }
  });
});

module.exports = router;
