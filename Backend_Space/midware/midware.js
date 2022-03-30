const multer = require('multer');
// declare dateformat
const df = require('dateformat');

// Setting our multer
var multerStorage = multer.diskStorage({
    destination:(req,file,cb)=>{
        cb(null,"assets/images_uploaded");
    },
    filename:(req,file,cb)=>{
        cb(null,df(Date.now(),"dd-mm-yyyy HH:MM:ss")+" myteam "+file.originalname)
    }
});

exports.upload = multer({storage:multerStorage});

module.exports;