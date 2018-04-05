exports.authed = (req, res, next) => {
	if(req.session.user)
		res.redirect("/user")
	else
		next()
}

exports.nauthed = (req, res, next) => {
	if(req.session.user)
		next()
	else
		res.redirect("/login")
}
