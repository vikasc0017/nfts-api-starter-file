const express = require("express");
const cors = require("cors");

const nftRouter = require("./Api/Routers/nftRouter");
const userRouter = require("./Api/Routers/userRouter");

//middleware
const app = express();
app.use(express.json({ limit: "1000kb" }));

app.use(cors());
app.use("*", cors());

//routes
app.use("/api/v1/NFTs", nftRouter);
app.use("/api/v1/user", userRouter);

module.exports = app;