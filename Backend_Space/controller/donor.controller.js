// Call donor model
const donor_model = require('../model/donor.model');

// Creating new Donor
exports.createDonor = async(req,res)=>{
    var d_name = req.body.d_name;
    var d_contact = req.body.d_contact;
    var d_email = req.body.d_email;

    try{
    var donorData = await new donor_model({
        d_name:d_name,
        d_contact:d_contact,
        d_email:d_email
    });
    donorData.save();
    res.status(200).json({message:"New Donor Successfully Registered: ",donorData})
    }catch (e){
        res.status(400).json({message:"Error while inserting new Donor"});
    }
} 

module.exports;