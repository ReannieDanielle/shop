var router = require( "express" ).Router()

router.get( "/", ( req, res ) => {
	var x= req.session.admin.acc_username;
	res.render( "dashboard", {name: x})
})

module.exports = router