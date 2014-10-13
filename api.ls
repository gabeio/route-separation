module.exports = ->
	app = process.express()
	app.get '/:action', (req, res)->
			console.log (req.params)
			res.send req.params.action
	return app
