var router = require( "express" ).Router()

router.get( "/", ( req, res ) => {
	res.render( "Boundary" )
})

module.exports = router