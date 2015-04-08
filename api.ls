module.exports = do ->
	require! {
		"express"
		"util"
	}
	app = express()
	app.all '*', (req, res)->
		res.send util.inspect app.locals
	return app
