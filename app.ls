#!/usr/bin/env lsc
require! <[ express response-time winston ]>

argv = require('yargs').argv

router = express.Router()
app = express()

# settings
app
	.use response-time()               # include response time in headers
	.use (req,res,next)->
		console.log req.url
		next()
	#.use '/static', express.static(__dirname + '/static')
	#.use '/', require! \./index
	.use '/api', require('./api.js')
	#.use '/test', require! \./test

if argv.http? or process.env.http? or process.env.PORT?
	winston.info 'started on port '+(argv.http || process.env.http || process.env.PORT)+' at '+new Date(Date.now())
	server = app.listen (argv.http || process.env.http || process.env.PORT)
else
	winston.error 'no port specified please use --http <port> / http or port environment variable'
	process.exit()
