var router = require( "express" ).Router()

router.get( "/", ( req, res ) => {
	res.render( "Mechanic" )
})

module.exports = router