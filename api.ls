module.exports = do ->
	process.express()
		.get '/:action', (req, res)->
			res.send req.params.action
