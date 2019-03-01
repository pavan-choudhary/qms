var mongoose = require('mongoose');
Schema = mongoose.Schema;
mongoose.connect("mongodb://abcd1234:abcd1234@ds135255.mlab.com:35255/qms",{useNewUrlParser: true});
var db = mongoose.connection;
db.on('error', console.error.bind(console, 'connection error:'));
db.once('open', function() {
    console.log("db connected");
});

let RF_14=new Schema({
    description:String,
    name: String,
    city: String,
});

let json_RF_14={
    title:"Test Form RF-14",
    description:"Determination of materials Finer than 75 μm sieve<br> IS : 2386 (Part 1) – 1963",
    type:'object',
    properties: {
        'sample_details':{
            'type':'string',
            'title':'Sample Details'
        }
    },
};

var form_RF_14 = mongoose.model('RF_14',RF_14);
module.exports={form_RF_14,RF_14};