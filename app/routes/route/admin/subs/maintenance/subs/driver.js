var router = require( "express" ).Router()

router.get( "/", ( req, res ) => {
	res.render( "Driver" )
})

module.exports = router