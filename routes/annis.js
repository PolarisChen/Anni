const express = require('express');
const router = express.Router();
const anniService = require('../service/anniService');
const sessionChecker = require('../middleware/sessionChecker');

router.get('/', (req, res, next) => {
  anniService.getAllAnnis().then((ret)=>{
    res.json(ret);
    // res.render('anni-list', { annis: ret.data });
  });
});

router.post('/:anniId/update', sessionChecker, (req, res, next) => {
  const {title, desc, quote, month, day, type, markType, cover, anniId} = req.body;
  anniService.updateAnni(title, desc, quote, month, day, type, markType, cover, anniId).then((ret)=>{
    res.json(ret);
  });
});

router.post('/:anniId/delete', sessionChecker, (req, res, next) => {
  const {anniId} = req.params;
  anniService.deleteAnni(anniId).then((ret)=>{
    res.json(ret);
  });
});

router.get('/:anniId', (req, res, next) => {
  anniService.getAnni(req.params.anniId).then((ret)=>{
    // res.json(ret);
    res.render('anni-detail', ret.data);
  });
});

router.post('/:anniId/like', sessionChecker, (req, res, next) => {
  anniService.likeAnni(req.params.anniId, req.session.userId).then(ret => {
    res.json(ret);
  });
});

router.post('/:anniId/bookmark', sessionChecker, (req, res, next) => {
  anniService.bookmarkAnni(req.params.anniId, req.session.userId).then(ret => {
    res.json(ret);
  });
});

router.post('/:anniId/mark', sessionChecker, (req, res, next) => {
  anniService.markAnni(req.params.anniId, req.session.userId).then(ret => {
    res.json(ret);
  });
});

router.post('/:anniId/comments/', sessionChecker, (req, res, next) => {
  const {content, parentId, userId, anniId} = req.body;
  anniService.addComment(content, parentId, userId, anniId).then(ret => {
    res.json(ret);
  });
});

router.post('/:anniId/comments/:commentId/like', sessionChecker, (req, res, next) => {
  anniService.likeComment(req.params.commentId, req.session.userId).then(ret => {
    res.json(ret);
  });
});

module.exports = router;