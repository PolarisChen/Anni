const express = require('express');
const router = express.Router();
const userService = require('../service/userService');
const sessionChecker = require('../middleware/sessionChecker');

// Fetch user data with id
router.get('/', sessionChecker, (req, res, next) => {
  userService.getUser(req.session.userId).then((ret)=>{
    res.json(ret);
    // res.render('user', ret.data);
  });
});
router.get('/:userId', (req, res, next) => {
  userService.getUser(req.params.userId).then((ret)=>{
    res.json(ret);
    // res.render('user', ret.data);
  });
});

module.exports = router;
