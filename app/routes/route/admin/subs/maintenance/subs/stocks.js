var router = require( "express" ).Router()

router.get( "/", ( req, res ) => {
	res.render( "Stocks" )
})

module.exports = router