module.exports = function(){
  var express, util, app;
  express = require('express');
  util = require('util');
  app = express.Router();
  app.all('/', function(req, res){
    return res.send(util.inspect(req.app.locals));
  });
  return app;
}();