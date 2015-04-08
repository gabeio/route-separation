module.exports = (app)->
	require! {
		"util"
	}
	app.all '*', (req, res, next)->
		console.log util.inspect res.app.locals
	return app
