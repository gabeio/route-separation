module.exports = ->
	require! express
	app = express()
	app.get '/:action', (req, res)->
			console.log (req.params)
			res.send req.params.action
	return app
