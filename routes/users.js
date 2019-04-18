let express = require('express');
let router = express.Router();
let userDao = require('../dao/userDao');
let userService = require('../service/userService');

// Fetch user data with id
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

// Login
router
  .get('/login', (req, res, next) => {
    res.render('login', { title: 'Log In' });
  })
  .post('/login', (req, res, next) => {
    console.log(req.body.email, req.body.password);
    userService.login(req.body.email, req.body.password).then((data)=>{
      res.json(data);
    });
  });

// Signup
router
  .get('/signup', (req, res, next) => {
    res.render('signup', { title: 'Sign Up' });
  })
  .post('/signup', (req, res, next) => {
    console.log(req.body.email, req.body.password);
    userService.signup(req.body.email, req.body.password).then((data)=>{
      res.json(data);
    });
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
