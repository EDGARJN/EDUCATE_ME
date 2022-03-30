const mongoose = require('mongoose');

// Schema for service data
serviceSchema = mongoose.Schema({
    title:{
        type:String,
        required:true
    },
    description:{
        type:String,
        required:true
    },
    role:{
        type:String,
        required:true
    },
    reg_date:{
        type:Date,
        default:Date.now()
    }
});

module.exports = mongoose.model("service",serviceSchema);