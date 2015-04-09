require! {
	"express"
	"util"
}
app = express.Router()
app.all '/', (req, res)->
	res.send util.inspect req.app.locals
return app
module.exports = app
