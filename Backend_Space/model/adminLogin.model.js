const mongoose =  require('mongoose');

adminSchema = mongoose.Schema({
    admin_name:{
        type:String,
        required:true
    },
    admin_password:{
        type:String,
        unique:true
    },
    reg_date:{
        type:Date,
        default:Date.now()
    }
});

module.exports = mongoose.model("admin",adminSchema);