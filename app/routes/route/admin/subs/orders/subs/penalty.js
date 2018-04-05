var router = require( "express" ).Router()

router.get( "/", ( req, res ) => {
	res.render( "Penalty" )
})

module.exports = router