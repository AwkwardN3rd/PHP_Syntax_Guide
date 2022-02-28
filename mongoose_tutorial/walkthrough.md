# Mongoose API Tutorial

## Quick over view on what Mongoose is:
* gives structure to MongoDB by offering a concept of Schemas and Models
* could be called ORM (object relation mapping) for MongoDB
* give the ability to give constraints in the form of Schema and enforces it
---
### This walk through will be directly referring to the code included.

## Getting Started
With Mongoose we are able to create Schemas to use where ever we need them in our code. Here I created a character schema with three properties all as a type String.

```
const characterSchema = mongoose.Schema({
  name:String,
  class:String,
  race:String
})
```

To use our schema, we need to convert our characterSchema into a Model we can work with. To do so, we pass it into mongoose.model(modelName, schema).

```
const character = mongoose.model("character", characterSchema, "characters")
```

## Add to Route
First we create a route using the post method because post methods are much more secure and its good practice to use them when adding to the database especially sensitive information.

Then we connect to the data base and create a new character object with the constraints of the characterSchema we created. To finish off we use the save function built in to mongoose and return the results.

```
app.post('/addto',function(req,res){
  mongoose.connect(database).then(()=>{ // connecting to our database
    console.log("db successfull");
    
    let addcharacter = new character({ // creating a new object with the constraints of the characterSchema
      name: req.body.name,
      class: req.body.class,
      race: req.body.race
    })
    
    addcharacter.save(function(err,data){ // the save function built in to the mongoose module
      if(err) return res.json({Error: err}); // if there is an error this will read the error out a little more clearly
      console.log("character added") // quick check
      return res.json(data); // returns what ever data came back through
    })
   })
})
```

Now in Postman we would input the properties and there values like so:

![alt text](https://github.com/AwkwardN3rd/Syntax_Guides/blob/master/mongoose_tutorial/images/addto.PNG)


## Read/Find Route
After creating the route and connecting to the database, we will then use the built in find function to find all.

```
app.get('/find',function(req,res){
   mongoose.connect(database).then(()=>{
    console.log("db successfull");
    character.find({},function(err,results){ 
      if(err) return res.json({Error: err});
      console.log(results)
      res.send(results)
    })
   })
})
```

Postman should read off all the characters from your database.

![alt text](https://github.com/AwkwardN3rd/Syntax_Guides/blob/master/mongoose_tutorial/images/delete.PNG)

## Update Route & Delete Route
Both the update and delete function are simular in they both take one property, find the match and either change or remove it.

```
//Update
character.updateOne({name:req.body.name, },{$set:{name:"Bob"}},function(err,results){
  if(err) return res.json({Error: err});
  console.log(results)
  return res.json(results);
})
    
//Delete
character.deleteOne({name:req.body.name},function(err,results){
  if(err) return res.json({Error: err});
  console.log(results)
  return res.json(results);
})
```

Update in Postman:

![alt text](https://github.com/AwkwardN3rd/Syntax_Guides/blob/master/mongoose_tutorial/images/find.PNG)

Delete in Postman:

![alt text](https://github.com/AwkwardN3rd/Syntax_Guides/blob/master/mongoose_tutorial/images/update.PNG)