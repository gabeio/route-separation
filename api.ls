module.exports = do ->
	require! express
	app = express()
	app.get '/:action', (req, res)->
		res.send req.params.action
	return app
