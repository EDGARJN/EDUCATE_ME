// Calling model from client
const client_model = require("../model/client.model");

// createClient
exports.createClient = async (req, res) => {
  var birth = req.files[0].path;
  var p_size = req.files[1].path;
  var fname = req.body.fname;
  var sch = req.body.sch;
  var challenge = req.body.challenge;
  var expectation = req.body.expectation;
  var guardian = req.body.guardian;
  var g_no = req.body.g_no;
  var settle = req.body.settle;
  try {
    var c_data = new client_model({
      full_name: fname,
      birth_certificate: birth,
      passport_size: p_size,
      sch_name: sch,
      challenge: challenge,
      expectation: expectation,
      guardian: guardian,
      guardian_no: g_no,
      settlement: settle,
    });

    await c_data.save();
    res
      .status(200)
      .json({ message: "Client Created Successfully..: ", c_data });
  } catch (e) {
    res.status(400).json({ message: "Error On insertion of Data: ", e });
  }
};

// Pull Client
 exports.getClient = async(req,res)=>{
    try {
        var pulledData = await client_model.find();
        res.status(200).json({message:"Client Pulled Hoola", pulledData});
    } catch (error) {
        res.status(401).json({message:"There are some issue happen check your logs Boe"});
        console.log("Server : Hey Boe This is an error",error);
    }
};

module.exports;
