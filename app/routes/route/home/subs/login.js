var router = require( "express" ).Router()

router.get( "/", ( req, res ) => {
    res.render("mainpage");
});

router.post('/',(req, res) => {
    var db = require("../../../../db/index")();
    
    db.query(`SELECT * FROM account, customer WHERE account.cust_id=customer.cust_id AND cust_email="${req.body.email}"`, (err, results, fields) => {
        if (err) throw err;
        if (results.length === 0) return res.redirect('/home/login?incorrect');

        var user = results[0];

        if (user.acc_pass !== req.body.password) {
            console.log('error');
            req.flash('error', 'Error password or user account.');
            console.log(req.flash('error', 'Error password or user account.'));
            return res.redirect('/home/login?incorrect');
        }
        delete user.password;

        req.session.user = user;
        if(req.session.user.cust_email=="admin@admin"){
            req.session.admin=user;
            
            return res.redirect('/admin/dashboard')
        }
        else{
            req.session.member=user;
            return res.redirect('/user')
        } 
    });
});

module.exports = router