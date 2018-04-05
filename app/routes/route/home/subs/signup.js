var router = require( "express" ).Router()

router.get( "/", ( req, res ) => {
    res.render("signup");
});
router.post("/", (req, res) =>{
    var db = require("../../../../db/index")();
    db.query(`INSERT INTO \`customer\` (\`cust_fn\`, \`cust_mn\`, \`cust_ln\`, \`cust_add\`, \`cust_email\`)
    VALUES("${req.body.fn}", "${req.body.mn}", "${req.body.ln}", "${req.body.address}",  "${req.body.email}");`, (err,results,fields) =>{
    if (err) throw err;
    var x= results;
    req.session.signup=x;
        db.query(`INSERT INTO \`account\` (\`cust_id\`, \`acc_username\`, \`acc_pass\`)
        VALUES("${req.session.signup.insertId}", "${req.body.user}", "${req.body.password}");`, (err,results,fields) =>{
        if (err) console.log(err);
        
        return res.redirect('/home?signupSuccess');
        });
    });
})

module.exports = router