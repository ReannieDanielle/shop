var router = require( "express" ).Router()
// var mid = require( "../../../midwares" )

// router.use( mid.noAuthed )

router.get( "/", (req, res) => {
	res.render( "mainpage" )
});

router.use( "/login", require( "./subs/login" ) )
router.use( "/signup", require( "./subs/signup" ) )
router.use( "/logout", require( "./subs/logout" ) )


exports.home = router;
