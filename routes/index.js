const express = require('express');
const router = express.Router();
const anniService = require('../service/anniService');
const userService = require('../service/userService');
const sessionChecker = require('../middleware/sessionChecker');

/* GET home page. */
router.get('/', (req, res, next) => {
  anniService.getAllAnnis().then(ret => {
    res.render('index', { title: 'Hello', annis: ret.data });
  });
});


router.get('/notifications', sessionChecker, (req, res, next) => {
  userService.getNotifications(req.session.userId).then((ret)=>{
    res.json(ret);
    // res.render('notification', { notifications: ret.data });
  });
});

// router.get('/post', sessionChecker, (req, res, next) => {
router.get('/post', (req, res, next) => {
  res.render('anni-post', { title: 'Post' });
});

router.post('/post', sessionChecker, (req, res, next) => {
  const {title, desc, quote, month, day, type, markType, cover, userId} = req.body;
  anniService.addAnni(title, desc, quote, month, day, type, markType, cover, userId).then((ret)=>{
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
        req.session.userName = ret.data.name;
        req.session.userAvatar = ret.data.avatar;
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
        req.session.userName = ret.data.name;
        req.session.userAvatar = ret.data.avatar;
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
