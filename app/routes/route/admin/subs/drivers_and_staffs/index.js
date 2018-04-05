var router = require( "express" ).Router()

router.use( "/driver", require( "./subs/driver" ) )
router.use( "/staff", require( "./subs/staff") )
router.use( "/mechanic", require( "./subs/mechanic" ) )

router.get( "/", ( req, res ) => {
	res.redirect( "/admin/drivers_and_staffs/driver" )
})

module.exports = router