var router = require( "express" ).Router()
var mid = require( "../../../midwares" )

// router.use( mid.hasAuthAdmin )

router.get( "/", (req, res) => {
	res.render( "dashboard" );
})
router.use( "/orders", require( "./subs/orders" ) )
router.use( "/product", require( "./subs/product" ) )
router.use( "/order", require( "./subs/order" ) )
router.use( "/dashboard", require( "./subs/dashboard" ) )

exports.admin = router
