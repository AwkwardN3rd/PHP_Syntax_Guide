# JavaScript Syntax Guide
---
## JavaScript Variables.

There are ''three ways'' to set a variable

```javascript
let myVariable = 3;
//let allows you to declare variables that are limited in scope to the block, statement or expression on which it is used

var myVariable = "cat";
// where as var defines a variable globally, or locally to an function regardless of block scope

const answerToLife = 42;
//const is similar to let in its limited in scope but once assigned a value it can NOT be reassigned.
```

>
''*'' Const: It does not define a constant value.// It defines a constant reference to a value//. Because of this you //can't reassign a value, array or object// but you// can change the elements and properties of a constant array and or object.//

---
## JavaScript Comparison Statements

Comparison operators are used in logical statements to determine equality or difference between variables or values.

Examples:

**Equal to**

```javaccript
x == 5
->true

x == '5' 
->true

x == 8 
->false
```

**Equal value and Equal type**

```javascript
x === 5
->true 

x === '5'
->false // This wont work because we are comparing a number to a string
```

**Not Equal**

```javascript
x != 8
->true
```

**Not Equal value or Not Equal type**

```javascript
x !== 5 
->false

x !== '5' 
->true 

x !== 8
->true
```

**Greater than**

```javascript
x > 8
->false
```

**Less than**

```Javascript
x < 8
->true
```

**Greater then or Equal to**

```javascript
x >= 8
->false
```

**Less than or Equal to**

```javascript
x <= 8
-> true
```

---

## JavaScript Boolean Statements

Very often, in programming, you will need a data type that can only have one of two values, like

* YES / NO
* ON / OFF
* TRUE / FALSE

You can use the Boolean( ) function to find out if an expression or variable is true:

```javascript
Boolean(10 > 9)
->true
```

Everything with a "value" is true

```javascript
100
3.14
-14
"Hello"
'false'
7 + 1 - 3.14
```

Everything without a "value" is false

```javascript
//The Boolean value of 0 (zero) is false
let x = 0;
Boolean(x);
->false

//The Boolean value of -0 (minus zero) is false
let x -0;
Boolean(x);
->false

//The Boolean value of "" (empty string) is false
let x = "";
Boolean(x);
->false

//The Boolean value of undefined is false
let x;
Boolean(x);
->false

//The Boolean value of null is false
let x = null;
Boolean(x);
->false

//The Boolean value of false is (you guessed it) false
let x = false;
Boolean(x);
->false

//The Boolean value of NaN is false
let x = 10 / "Hallo";
Boolean(x);
->false
```

Booleans can also be defined as objects with the keyword new ''but'' don't. It slows down execution speed. The new keyword complicates the code. This can produce some unexpected results.

---
## JavaScript Arrays

Arrays are used to store multiple values in a single variable. they can have strings, numbers or objects in them. 

**Syntax:**

```javascript
const array-name = [item1, item2, ...];

```

**Example:**

```javascript
const myArray = ["one","two","three","four"];
//It is a common practice to declare arrays with the const keyword
```

Array index start with 0. You access an array element by referring to the index number:

```javascript
let x = myArray[0];
->'one'
```

You can also call the whole array in the console with just the name of the array 

```javascript
myArray
->(4) ['one', 'two', 'three', 'four']
// (4) this is the total length of the array along with everything inside
```

There's also many different properties and methods that are built-in to JavaScript.

```javascript
myArray.length 
-> 4 
//REMEMBER The length property is always one more than the highest array index. So you can use that in different ways..

const fruits = ["Banana", "Orange", "Apple", "Mango"];
fruits[0];
-> "Banana"

fruits[fruits.length - 1];
-> "Mango"
```

The easiest way to add a new element to an array is using the push() method but you can also use .length:

```javascript
fruits.push("Lemon");
-> "Banana", "Orange", "Apple", "Lemon"

fruits[fruits.length] = "Lemon";
-> "Banana", "Orange", "Apple", "Lemon"
```

Many programming languages support arrays with named indexes.

Arrays with named indexes are called associative arrays (or hashes).

JavaScript does not support arrays with named indexes.

In JavaScript, arrays always use numbered indexes.  

```javascript
const person = [];
person[0] = "John";
person[1] = "Doe";
person[2] = 46;
person.length;    // Will return 3
person[0];        // Will return "John"
```

**When should you use Arrays vs Objects?**

Use *objects* when you want the //element names to be strings(text)// and use *arrays* when you want the //element names to be numbers.//

There are two ways to create an empty array:

```javascript
const points = new Array();
const points = []; // This way is a safer bet as the "new" key word can produce some unexpected results
```

But if you want to create an array with 40 undefined elements..

```javascript
const points = new Array(40);
```

---
## JavaScript Objects

Object consist of properties, methods, and values. The values are written as name:value pairs (name and value separated by a colon).

```javascript
const person = {
firstName:"John",
lastName:"Doe", 
age:50, 
eyeColor:"blue"
};
```
You can access object properties in two ways:

**//objectName.propertyName//** Example: //person.lastName;//

**//objectName["prapertyName"]//** Example: //person["lastName"];//


```javascript
//say you wanted the "fullName"	

function() {return this.firstName + " " + this.lastName;}
```

---
## JavaScript Functions

A JavaScript function is a block of code designed to perform a particular task and is executed when "something" invokes it (calls it). A JavaScript function is defined with the function keyword, followed by a name, followed by parentheses (). 

Function names can contain letters, digits, underscores, and dollar signs (but don't use dollar signs its dumb).

Functions may include parameters inside the parentheses (parameter1, parameter2, ...) 

**Why Functions?**
You can reuse code: Define the code once, and use it many times.


```javascript
function myFunction(p1, p2) {
  return p1 * p2;   // The function returns the product of p1 and p2
}

myFunction(4, 3);

->12
```

Say we were calling a function through the ''DOM'' we would need to call it a little differently:

```html
<body>
<h2>JavaScript Functions</h2>
<p>This example calls a function which performs a calculation, and returns the result:</p>
<p id="demo"></p> <!--this is here so you can access the script--> 
<script>
function myFunction(p1, p2) {
  return p1 * p2;
}
document.getElementById("demo").innerHTML = myFunction(4, 3);
</script>
</body>

->12
```

Accessing a function without () will return the function definition instead of the function result:

```html
<body>
<p id="demo"></p>
</body>
<script>
function toCelsius(f) {
  return (5/9) * (f-32);
}
document.getElementById("demo").innerHTML = toCelsius;
</script>

-> function toCelsius(f) { return (5/9) * (f-32); }
```

---
## JavaScript Functions & Parameters

Function parameters are the names listed in the function definition but remember:

* function definitions do not specify data types for parameters.
* functions do not perform type checking on the passed arguments.
* functions do not check the number of arguments received.
* if a function is called with missing arguments, the missing values are set to undefined.


This way you can simply use a function to find (for instance) the highest value in a list of numbers:

```html
<body>
<p id="demo"></p>
</body>
<script>
function findMax() {
  let max = -Infinity;
  for(let i = 0; i < arguments.length; i++) {
    if (arguments[i] > max) {
      max = arguments[i];
    }
  }
  return max;
} 
document.getElementById("demo").innerHTML = findMax(4, 5, 6);
</script>
```

Or create a function to sum all input values:

```javascript
x = sumAll(1, 123, 500, 115, 44, 88);
function sumAll() {
  let sum = 0;
  for (let i = 0; i < arguments.length; i++) {
    sum += arguments[i];
  }
  return sum;
}
```

---
## JavaScript Loops

Loops are handy, if you want to run the same code over and over again, each time with a different value.

**First example** of looping over an array

```javascript
let myNumbers = [20,30,40,50,60,70,80];

    for(i=0; i<myNumbers.length; i++){ //this loops over the length of the array
        //console.log(myNumbers[i]);
    }
```

**Second example** is looping over an object

```javascript
let rainbow = {
   color1: "Red",
   color2: "Orange",
   color3: "Yellow",
   color4: "Green",
   color5: "Blue",
   color6: "Purple"
    }
// This loop will console log every index value of the object but when it comes to the index that equals "Yellow" it will print "Pink!"
for(let x in rainbow){ // x represents each property in the person object
   if(rainbow[x] == "Yellow"){ 
      console.log(x + ": Pink!");
   }
   else{ //if you leave out the else statement then "Pink!" will print out before the Yellow but will still print it out
      console.log(x + ": " + rainbow[x]);
   }
```

## Different Kinds of Loops

JavaScript supports different kinds of loops:

* **for** - loops through a block of code a number of times
* **for/in** - loops through the properties of an object
* **for/of** - loops through the values of an inerrable object
* **while** - loops through a block of code while a specified condition is true
* **do/while** - also loops through a block of code while a specified condition is true

**The "for" loop has the following syntax:**

Statement 1 is executed (one time) before the execution of the code block.

Statement 2 defines the condition for executing the code block.

Statement 3 is executed (every time) after the code block has been executed.

```javascript
for (statement 1; statement 2; statement 3) {
  // code block to be executed
}

//----------------Example----------------//

for (let i = 0; i < 5; i++) {
  text += "The number is " + i + "<br>";
}
```

>
Note: Normally you will use statement 1 to initialize the variable used in the loop (let i = 0).
This is not always the case, JavaScript doesn't care. Statement 1 is optional. Same thing with the other statements.
Often statement 2 is used to evaluate the condition of the initial variable. If you omit statement 2, you must provide a break inside the loop otherwise it will never end
Often statement 3 increments the value of the initial variable.


If you omit a statement:

```javascript
for (; i < len; i++) { //omit statement 1
//does something
}

//OR

for (; i < len; ) { //omit statement 2
//does something
}
```

**"for in" statement loops through the properties of an Object:**

* The for in loop iterates over a person object
* Each iteration returns a key (x)
* The key is used to access the value of the key
* The value of the key is person[x]

```javascript
for (key in object) {
  // code block to be executed
}

//----------------Example----------------//

const person = {fname:"John", lname:"Doe", age:25};
let text = "";
for (let x in person) {
  text += person[x];
}
```

**The JavaScript "for in" statement can also loop over the properties of an Array:**

```JavaScript
for (variable in array) {
  code
}

//----------------Example----------------//

const numbers = [45, 4, 9, 16, 25];
let txt = "";
for (let x in numbers) {
  txt += numbers[x];
}
```

**The JavaScript "for of" statement loops through the values of an iterable object.**

It lets you loop over iterable data structures such as Arrays, Strings, Maps, NodeLists, and more:

```javascript
for (variable of iterable) {
  // code block to be executed
}

//----------------Examples----------------//
//-----------Looping over an Array-----------//

const cars = ["BMW", "Volvo", "Mini"];
let text = "";
for (let x of cars) {
  text += x;
}
->BMW
Volvo
Mini

//-----------Looping over a String-----------//

let language = "JavaScript";
let text = "";
for (let x of language) {
text += x;
}
```
**The "while" loop loops through a block of code as long as a specified condition is true.**

```JavaScript
while (condition) {
  // code block to be executed
}

//----------------Examples----------------//

while (i < 10) { //the loop will run, over and over again, as long as a variable (i) is less than 10:
  text += "The number is " + i;
  i++;
}

//If you forget to increase the variable used in the condition, the loop will never end. This will crash your browser.
```

**The "do while" loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true.**


```javascript
do {
  // code block to be executed
}
while (condition);

//----------------Examples----------------//

do {
  text += "The number is " + i;
  i++;
}
while (i < 10);
```

---

## JavaScript Data Types

In programming, data types are an important concept, they allow the computer to solve inputs properly.

For instance, we can say:

```javascript
let x = 20 + "Cat"
```

Now technically adding the number 20 to Cat doesn't make much sense but with the rules set in place it will come as a string. Another example would be:

```javascript
let x = "Cheese" + 3 + 10
->'Cheese310'

let x = 3 + 10 + "Cheese"
->'13Cheese'
```

**JavaScript Strings**

Strings are written with quotes. You can use single or double quotes:

```javascript
let catName1 = "Bean"
let catName2 = 'Pip'
```

JavaScript numbers can be written with, or without decimals:

```javascript
let x1 = 34.00;     // Written with decimals
let x2 = 34;        // Written without decimals

let y = 123e5;      // 12300000
let z = 123e-5;     // 0.00123
```

Then of course there's arrays and objects which was already covered above^

**The "typeof" Operator** returns the type of a variable or an expression:

```javascript
typeof ""             // Returns "string"
typeof "John"         // Returns "string"
typeof (3 + 4)        // Returns "number"
typeof 0              // Returns "number"
typeof (3)            // Returns "number"
```

In JavaScript, a variable without a value, has the value undefined. The type is also undefined.

```javascript
let color;    // Value is undefined, type is undefined
```

Any variable can be emptied, by setting the value to undefined. The type will also be undefined.

```javascript
color = undefined;    // Value is undefined, type is undefined
```

**Empty Values**

An empty value has nothing to do with undefined. An empty string has both a legal value and a type.

```javascript
let color = ""; //the value is "", the typeof is "string"
```

---

## JavaScript Comments

There are single line comments and multi line:

```javascript
//This would be a single line comment

/*
This would be 
a multi line
comment
*/
```

>
Note! If you want to comment a huge section of code you can highlight the section then press Ctrl + /


## JavaScript Linking js file to html

To link a js file you need to link the file in the script tag using src:

```JavaScript
<script src="index.js"></script>
```

Stick it anywhere outside of html block, at the very top bellow DOCTYPE or at the very bottom