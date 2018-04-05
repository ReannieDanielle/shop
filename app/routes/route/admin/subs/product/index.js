var router = require( "express" ).Router()
var db = require("../../../../../db/index")();
router.get( "/", ( req, res ) => {
    db.query(`SELECT * FROM prod_stock, prod_category WHERE prod_stock.category_id=prod_category.category_id`, (err, results, fields) => {
        if (err) throw err;
    res.render( "product", {stock: results})
    });
})
router.get( "/addproduct", ( req, res ) => {
	res.render( "addproduct" )
});
router.post("/addproduct", (req, res) =>{
    
    db.query(`INSERT INTO \`prod_stock\` (\`category_id\`, \`prod_name\`, \`prod_desc\`, \`price\`, \`stock_no\`, \`UOM\`, \`status\`)
    VALUES("${req.body.category}", "${req.body.name}", "${req.body.desc}", "${req.body.price}",  "${req.body.stock}",  "${req.body.uom}",  "");`, (err,results,fields) =>{
    if (err) throw err;
    var x= results;
    return res.redirect('/admin/product?productAdded');
    });
})


module.exports = router;