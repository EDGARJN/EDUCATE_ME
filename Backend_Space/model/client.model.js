const mongoose = require("mongoose");

// Clientmodel
clientModel = mongoose.Schema({
    full_name:{
        type:String,
        required:true
    },
    birth_certificate:{
        type: String,
        required:true
    },
    passport_size:{
        type:String,
        required:true
    },
    settlement:{
        type:String,
    },
    sch_name:{
        type:String,
    },
    challenge:{
        type:String,
        required:true     
    },
    expectation:{
        type:String,
        required:true
    },
    guardian:{
        type:String,
        required:true
    },
    guardian_no:{
        type:String,
        required:true
    },
    reg_date:{
        type:Date,
        default:Date.now(),
    }
});

module.exports = mongoose.model("client",clientModel);