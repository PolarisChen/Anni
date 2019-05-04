const express = require('express');
const router = express.Router();
const anniService = require('../service/anniService');
const sessionChecker = require('../middleware/sessionChecker');

/* GET home page. */
router.get('/', (req, res, next) => {
  anniService.getAllAnnis().then(ret => {
    res.render('index', { title: 'Hello', annis: ret.data });
  });
});

module.exports = router;
