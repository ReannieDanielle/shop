var app = require("express")()
require("dotenv").config()
require("./app/boot")(app)
require("./app/routes")(app)
require("./app/db")(app)

app.get('/', (req, res) => {
	res.redirect("/home")
})

app.listen(app.get("port"), () => {
	console.log(`Now listening on http://localhost:${app.get("port")}`)
})
