const mongoose = require('mongoose');

// Clling DB properties
const dbProperties = require('./properties');
// mongoLInk
const db_link = dbProperties.DB;

module.exports = ()=>{
    var needed = {
        useNewUrlParser:true,
        useUnifiedTopology:true
    };

    mongoose.connect(db_link,needed);
    mongoose.Promise = global.Promise;

    mongoose.connection.on("connected",(e)=>{console.log("Database Connected BY DEFAULT ON: ",db_link)});
    mongoose.connection.on("error",(e)=>{console.log("Error occured due to: ", e)});
};