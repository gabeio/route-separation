module.exports = function(app){
  var util;
  util = require('util');
  app.all('*', function(req, res, next){
    return console.log(util.inspect(res.app.locals));
  });
  return app;
};