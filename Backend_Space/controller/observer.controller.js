// calling Observer Model...
const obs_model = require('../model/observer.model');

exports.createObserver = async(req,res)=>{
    var o_name = req.body.o_name;
    var o_communicate = req.body.o_communicate;
    // var relationship = req.body.relationship;
    // var birth = req.files[0].path;
    // var p_size = req.files[1].path;
    var fname = req.body.fname;
    var sch = req.body.sch;
    // var challenge = req.body.challenge;
    var expectation = req.body.expectation;
    // var guardian = req.body.guardian;
    // var g_no = req.body.g_no;
    var settle = req.body.settle;

    try{
        var oData = await new obs_model({
            o_name:o_name,
            o_communicate:o_communicate,
            // relationship:relationship,
            full_name:fname,
            // birth_certificate:birth,
            // passport_size:p_size,
            sch_name:sch,
            // challenge:challenge,
            expectation:expectation,
            // guardian:guardian,
            // guardian_no:g_no,
            settlement:settle
        });
        oData.save();
        res.send(oData);
    }catch (e){
        res.status(400).json({message:"Error on creating new Observer..",e});
    }
}

module.exports;