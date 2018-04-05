var router = require( "express" ).Router()

router.get( "/", ( req, res ) => {
	res.render( "Staff" )
})

module.exports = router