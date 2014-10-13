// Generated by LiveScript 1.2.0
var express, responseTime, winston, argv, router, app, server;
express = require('express');
responseTime = require('response-time');
winston = require('winston');
argv = require('yargs').argv;
router = express.Router();
app = express();
app.use(responseTime()).use(function(req, res, next){
  console.log(req.url);
  return next();
}).use('/api', require('./api.js'));
if (argv.http != null || process.env.http != null || process.env.PORT != null) {
  winston.info('started on port ' + (argv.http || process.env.http || process.env.PORT) + ' at ' + new Date(Date.now()));
  server = app.listen(argv.http || process.env.http || process.env.PORT);
} else {
  winston.error('no port specified please use --http <port> / http or port environment variable');
  process.exit();
}