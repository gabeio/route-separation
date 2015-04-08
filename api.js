module.exports = function(){
  var express, util, app;
  express = require('express');
  util = require('util');
  app = express();
  app.all('*', function(req, res){
    return res.send(util.inspect(app.locals));
  });
  return app;
}();