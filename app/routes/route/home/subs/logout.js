var router = require( "express" ).Router()

router.get( "/", ( req, res ) => {
	delete req.session
	res.redirect( "/" )
})

module.exports = router;