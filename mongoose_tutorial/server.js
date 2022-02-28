//Getting started by reqiring all the moduals i'll be needing
const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const app = express();

app.use(bodyParser.json()); // this formats the body of the form on our html page as JSON
app.use(bodyParser.urlencoded({extended:true})); // and then accepts the form body

//Here im setting a variable that connects to my database which i will then call to connect in each route individually
let database = 'mongodb://localhost:27017/test';

// Setting the schema for Character
const characterSchema = mongoose.Schema({
  name:String,
  class:String,
  race:String
})
const character = mongoose.model("character", characterSchema, "characters") // to use the schema we then convert it by passing it in to 

app.get('/',function(req,res){// this is our main route, its currently set up to direct the user to the index.html file
  res.sendFile('index.html',{root:__dirname})
})

//Creating new Characters
app.post('/addto',function(req,res){
  mongoose.connect(database).then(()=>{ // connecting to our database
    console.log("db successfull");
    
    //res.json({message: "POST new song"}); // this is a simple test function for postman it all allows you to check that the connection is working. Mostly used in debugging.
    
    let addcharacter = new character({ // this is creating a new object with the constraints of the characterSchema
      name: req.body.name,
      class: req.body.class,
      race: req.body.race
    })
    
    addcharacter.save(function(err,data){ // the save function is built in to the mongoose module
      if(err) return res.json({Error: err}); // if there is an error this will read the error out a little more clearly
      console.log("character added") // quick check
      return res.json(data); // returns what ever data came back through
    })
   })
})

//Finding all characters
app.get('/find',function(req,res){ // this find function will find all info in the collection
   mongoose.connect(database).then(()=>{ // connecting to our database
    console.log("db successfull"); // quick check
    character.find({},function(err,results){ // the find function is a built in function 
      if(err) return res.json({Error: err});
      console.log(results)
      res.send(results) // shows our results
    })
   })
})

//Update a specific character by name
app.get('/update',function(req,res){
   mongoose.connect(database).then(()=>{ // connecting to our database
    console.log("db successfull"); // quick check
    character.updateOne({name:req.body.name, },{$set:{name:"Bob"}},function(err,results){ // the update one function in built in to mongoose
      if(err) return res.json({Error: err});
      console.log(results)
      return res.json(results); // shows our results
    })
   })
})

//Deleting a character by name
app.get('/delete',function(req,res){
  mongoose.connect(database).then(()=>{ // connecting to our database
    console.log("db successfull"); // quick check
    character.deleteOne({name:req.body.name},function(err,results){
      // the delete one function in built in to mongoose
      if(err) return res.json({Error: err});
      console.log(results)
      return res.json(results); // shows our results
    })
  })
})


app.listen(3001);