var router = require( "express" ).Router()
var mid = require( "../../../midwares" )

router.use( mid.hasAuthMember )
router.get( "/",  (req, res) => {
	res.render( "homeuser" );
})

exports.user = router
