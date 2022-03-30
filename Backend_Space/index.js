const bodyParser = require('body-parser');
const express = require('express');
// server controller
const app = express();

// Cors Master
const cors = require("cors");

// Session initializer,management and terminating
const session = require('express-session');

// My secret issues
require('dotenv/config');

// Calling DB connection
const db = require("./config/db");

// For parsing json data..!!
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));

// Session Rules
app.use(session({
    secret:"secret",
    resave:true,
    saveUninitialized:false,
}));

// permit folders
app.use("/assets",express.static('assets'));

// Initialize template engine
app.set("view engine","ejs");
app.engine('ejs', require('ejs').__express);

// Route Midware
const route = require("./route/route");
app.use('/api',route);

// Connecting Database
db();


// starting my server
app.listen(process.env.PORT,()=>{console.log("server listenning on port: ",process.env.PORT)});