var app = require("express")()
require("dotenv").config()
require("./app/boot")(app)
require("./app/routes")(app)

app.get('/', (req, res) => {
	res.redirect("/admin")
})

app.listen(app.get("port"), () => {
	console.log(`Now listening on http://localhost:${app.get("port")}`)
})
