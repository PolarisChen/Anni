const express = require('express');
const router = express.Router();
const userDao = require('../dao/userDao');
const userService = require('../service/userService');
const sessionChecker = require('../middleware/sessionChecker');

// Fetch user data with id
router.get('/', sessionChecker, (req, res, next) => {
  res.send('respond with a resource (logged in)');
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
    console.log(req.body.email, req.body.password);
    userService.login(req.body.email, req.body.password).then((ret)=>{
      if (ret.success === 1) {
        console.log('login success', ret.data.userId);
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

router.get('/logout', sessionChecker, (req, res) => {
  res.clearCookie('userId');
  res.redirect('/');
});

router.get('/addUser', function(req, res, next) {
  userDao.add(req, res, next);
});

router.get('/queryAll', function(req, res, next) {
  userDao.queryAll(req, res, next);
});

router.get('/query', function(req, res, next) {
  userDao.queryById(req, res, next);
});

router.get('/deleteUser', function(req, res, next) {
  userDao.delete(req, res, next);
});

router.post('/updateUser', function(req, res, next) {
  userDao.update(req, res, next);
});

module.exports = router;
