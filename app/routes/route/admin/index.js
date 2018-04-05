var router = require( "express" ).Router()

router.get( "/", (req, res) => {
	res.render( "dashboard" );
})
router.use( "/collection", require( "./subs/collection" ) )
router.use( "/maintenance", require( "./subs/maintenance" ) )
router.use( "/profile", require( "./subs/profile" ) )
router.use( "/status", require( "./subs/status") )
router.use( "/offenses_and_penalties", require( "./subs/offenses_and_penalties" ) )
router.use( "/drivers_and_staffs", require( "./subs/drivers_and_staffs" ) )
router.use( "/events", require( "./subs/events" ) )

exports.admin = router
