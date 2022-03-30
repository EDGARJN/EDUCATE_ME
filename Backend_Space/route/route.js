const express = require('express');
const route = express.Router();




//           >>>>>>>>>>>>>  Calling Pages    >>>>>>>>>>>>>> ..!!

route.get("/",(req,res)=>{
    res.render('index');
});

// Call Controller
const clientCont = require("../controller/client.controller");

// Pull Student Data
route.get('/get_client',clientCont.getClient);

// Student Registration Page
route.get('/st_reg',(req,res)=>{res.render('Authentication student')});

// Observer RegPage
route.get('/obs_reg',(req,res)=>{res.render('Authentication parent')});

// AdminLoginPage   
route.get("/secret_me",(req,res)=>{res.render('adminLogin')});

// services
route.get('/regiService',(req,res)=>{res.render('inputData')})

// About Us
route.get('/aboutUs',(req,res)=>{res.render('About Pamoja')})

// PayPal Payment
route.get("/pay",(req,res)=>{res.render("paypal")});





//    >>>>>>>>>>>>   CALLING CONTROLLER      >>>>>>>>>>>>

// Calling Clientcontroller
const clientController = require('../controller/client.controller');

// Calling DonorController
const donorController = require('../controller/donor.controller');

// Claling Observer controller
const observerController = require('../controller/observer.controller');

// Calling Admn Controller
const adminController = require('../controller/admin.controller');

// calling ServiceController
const ServiceController = require('../controller/service.controller');

// Calling PayPal Controller
const payPalController =  require("../controller/paypal/paypal.controller");

// Calling multer for passing files
const multer = require('../midware/midware');
const upload = multer.upload;





   //    >>>>>>>>>  API INDUSTRY  >>>>>>>>>>>>>>

// create client api
route.post("/createClient",upload.array("img"),clientController.createClient);

// create new donor api
route.post("/createDonor",donorController.createDonor);

// create new Observer api
route.post("/createObserver",upload.array("img"),observerController.createObserver);

// createAdmin API
route.post("/createAdmin",adminController.createAdmin);

// LogiN API for Admin
route.post("/logAdmin",adminController.logAdmin);

// Service Register/Inserted
route.post("/regService",ServiceController.postService);

// Service Pull
route.get('/ourService',ServiceController.getService);


// PAYMENT ISSUES

//Payment Amount
route.post("/payPal",payPalController.payPalInc);

//When successed
route.get("/success",payPalController.payPalSucces);

// When it failed
route.get("/cancel",(req,res)=>{res.send("Failed To Pay")});



module.exports = route;
