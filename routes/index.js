var express = require('express');
var router = express.Router();
var mod=require('../models/schema.js');
var mysql      = require('mysql');
 var connection = mysql.createConnection({
   host     : 'localhost',
   user     : 'root',
   password : 'root',
   database : 'qms'
 });

/* GET home page. */
router.post('/', function(req, res) {
  var dt =new Date();
  connection.query('INSERT INTO form_details (user, submit_date) VALUES (?,?) ',["pavan",dt], function(err, rows, fields) {
    if (!err){
      var new_id;
      var val=[];
      connection.query("SELECT MAX(id) FROM form_details", function (err, result2, fields) {
        if (err) throw err;
        new_id=result2[0]['MAX(id)'];
        for(key in req.body){
          var x=[];
          x.push(key,req.body[key],new_id);
          val.push(x);
        }
        connection.query('INSERT INTO submissions (question,answer,formid) VALUES ? ',[val], function(err,result) {
          if (!err){
            console.log("data inserted");
            res.send("success");
          }
          else
            console.log('Error while performing Query2.'+err);
        });
      });
    }
    else
      console.log('Error while performing Query.'+err);
  });
  //connection.end();
  
  res.send({"msg":"submitted"});
});

router.post('/submit', function(req, res) {
  console.log(req.body.data.details);
});

module.exports = router;