const express = require('express');
const router = express.Router();
const anniService = require('../service/anniService');
const sessionChecker = require('../middleware/sessionChecker');

router.get('/', (req, res, next) => {
  anniService.getAllAnnis().then((ret)=>{
    res.json(ret);
  });
});
router.get('/:anniId', (req, res, next) => {
  anniService.getAnni(req.params.anniId).then((ret)=>{
    res.json(ret);
  });
});

module.exports = router;