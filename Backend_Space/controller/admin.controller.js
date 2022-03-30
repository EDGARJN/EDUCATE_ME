// Calling adminSchema
const admin_model = require('../model/adminLogin.model');

// Method for creating new admin
exports.createAdmin = async(req,res)=>{
    let admin_name = req.body.admin_name;
    let admin_password = req.body.admin_password;

    try{
      var admin_data = await new admin_model({admin_name:admin_name,admin_password:admin_password});
      admin_data.save();
      res.status(200).json({message:"Welcome Mr Admin",admin_data});
    }catch (e){
        res.status(400).json({message:"You are not admin due to error: ", e});
    }
};

// API for Admin Login
exports.logAdmin = async(req,res)=>{
    let admin_name = req.body.admin_name;
    let admin_password = req.body.admin_password;

    try{
          var logOk = await admin_model.find({admin_name:admin_name,admin_password:admin_password});

          logOk.length > 0?
          res.redirect('/regiService') : res.redirect('/secret_me');
    } catch (e){
        res.status(400).json({message:"Your not Edgar.. Why You Forget Your Credintials..?",e});
    }
}

module.exports;