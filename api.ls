module.exports = ->
	process.express()
		.get '/:action', (req, res)->
			res.send req.params.action
	return app
