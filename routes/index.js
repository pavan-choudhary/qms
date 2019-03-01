var express = require('express');
var router = express.Router();
var mod=require('../models/schema.js');

/* GET home page. */
router.get('/', function(req, res) {
  console.log("API request at .");
  var RF_14={
    title: "Test Format- RF-14",
      description: "Determination of materials Finer than 75 μm sieve.",
      type: "object",
      properties:{
        details:{
          title:"Sample Details",
          type: "object",
          properties:{
            Supplier:{type:"string" },
            date:{type:"number" ,title:"Date of Test" },
            Source:{type:"string" },
            Plant:{type:"string" },
            Aggregate_Type: {
              "type": "array",
              "title": "Aggregate Types",
              "items": {
                "type": "string",
                "enum": [ "River Sand", "Crushed Sand","Crushed Rock Fines"]
              },
              "uniqueItems": true
            },
          }
        },
      }
  };
  res.send({"form":RF_14});
});

router.post('/submit', function(req, res) {
  console.log(req.body.data.details);
});

module.exports = router;