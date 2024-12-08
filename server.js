const mongoose = require("mongoose");
const next = require("next");
const dotenv = require("dotenv");

const dev = process.env.NODE_ENV != "production";
const nextServer = next({ dev });
const handle = nextServer.getRequestHandler();

require("dotenv").config();

const app = require("./app");

const DB = process.env.DATABASE;
    


mongoose
.connect("mongodb://localhost:27017/BlockChain", {
    useNewUrlParser: true,
    useCreateIndex: true,
    useFindAndModify: false,
})
.then(() => console.log("DB connection successful!"));

const port = 3000;

let server;
nextServer.prepare().then(() => {
    app.get("*", (req, res) => {
        return handle(req, res);
    });

    app.listen(port, () => {
        console.log(`App running on port ${port}....`);
    });
});
