const mongoose = require('mongoose');

observerModel = mongoose.Schema({
    o_name:{
        type:String,
        required:true
    },
    o_communicate:{
        type:String,
        required:true
    },
    relationship:{
        type:String,
    },
    full_name:{
        type:String,
        required:true
    },
    birth_certificate:{
        type: String,
        
    },
    passport_size:{
        type:String,
        
    },
    settlement:{
        type:String,
    },
    sch_name:{
        type:String,
    },
    expectation:{
        type:String,
        required:true
    },
    reg_date:{
        type:Date,
        default:Date.now()
    }
});

module.exports = mongoose.model("observer",observerModel);