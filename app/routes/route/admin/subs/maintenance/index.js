var router = require( "express" ).Router()

router.use( "/route", require( "./subs/route" ) )
router.use( "/inspection", require( "./subs/inspection") )
router.use( "/driver", require( "./subs/driver") )
router.use( "/renting", require( "./subs/renting") )
router.use( "/stocks", require( "./subs/stocks") )

router.get( "/", ( req, res ) => {
	res.redirect( "/admin/maintenance/route")
})

module.exports = router