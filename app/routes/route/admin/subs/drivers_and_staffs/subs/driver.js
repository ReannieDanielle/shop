var router = require( "express" ).Router()
var db = require( "../../../../../../db" )()

router.get( "/", ( req, res ) => {
	const q = `
		select driver.*, driver_type.dtype_desc 
		from driver, driver_type
		where driver.dtype_id=driver_type.dtype_id
	`

	db.query( q, ( err, out ) => {
		console.log( out )
		res.render( "Driver", {
			dets: out[0]
		})
	})
})

router.post( "/edit", ( req, res ) => {
	const q = `
		update driver
		set
			`
})

module.exports = router