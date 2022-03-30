// calling service model 
const service_model = require('../model/service.model');

// Create API for posting service in our DB
exports.postService = async(req,res)=>{
    var title = req.body.title;
    var description = req.body.description;
    var role =req.body.role;

    try{
        var serviceData = await new service_model({title:title,description:description, role:role});
        serviceData.save();
        res.status(200).json({message:"Service Inserted Successfully",serviceData}); 
    }catch (e){
        res.status(400).json({message:"Error on inserting Service",e});
    }
}

// Service pull
exports.getService = async(req,res)=>{
    try{
       var serData =  await service_model.find({}).sort({_id:-1});
       var role = serData[0].role;
       console.log(role);
       res.status(200).json({msg:"Our Service are: ",serData});
       
    //    if(role == "service"){
    //     res.render('Services We Provide',{serData});
    //    }else{
    //        res.send("Imekataa");
    //    }

    }catch (e){
        res.status(400).json({message:"Error On Pull Service Data"});
    }
    
}

// Vision Pull


module.exports;