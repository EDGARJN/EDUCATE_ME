const mongoose = require('mongoose');

donorModel = mongoose.Schema({
    d_name:{
        type:String,
        required:true
    },
    d_contact:{
        type:String,
        required:true
    },
    d_email:{
        type:String,
        required:true
    },
    reg_date:{
        type:Date,
        default:Date.now()
    }
});

module.exports = mongoose.model("donor",donorModel);