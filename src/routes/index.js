const express = require("express");
const router = express.Router();
const userRouter = require("./userRouter");
const sellerRouter = require("./sellerRouter");
const adminRouter = require("./adminRouter");

let initWebRouter = (app) => {
  app.use("/user", userRouter);
  app.use("/seller", sellerRouter);
  app.use("/admin", adminRouter);
};

module.exports = initWebRouter;
