#!/usr/bin/env lsc
require! <[ response-time ]>
process.express = require('express')
app = process.express()
app
	.use response-time()
	.use '/api', require('./api.js')
if process.env.http? or process.env.PORT?
	console.log 'started on port '+(process.env.http || process.env.PORT)+' at '+new Date(Date.now())
	server = app.listen (process.env.http || process.env.PORT)
else
	console.error 'no port specified please use --http <port> / http or port environment variable'
	process.exit()
