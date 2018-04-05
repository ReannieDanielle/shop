var router = require( "express" ).Router()
var mid = require( "../../../midwares" )

router.use( mid.nauthed )

router.get( "/", (req, res) => {
	res.render( "user" );
})

exports.user = router
