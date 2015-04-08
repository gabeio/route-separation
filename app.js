var express, responseTime, app, server;
express = require('express');
responseTime = require('response-time');
app = express();
app.locals.test = "something";
app.use(responseTime());
require('./api.js')(app);
if (process.env.http != null || process.env.PORT != null) {
  console.log('started on port ' + (process.env.http || process.env.PORT) + ' at ' + new Date(Date.now()));
  server = app.listen(process.env.http || process.env.PORT);
} else {
  console.error('no port specified please use --http <port> / http or port environment variable');
  process.exit();
}