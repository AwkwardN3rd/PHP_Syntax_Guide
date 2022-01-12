# PHP Syntax Guide
---
## Basics

* PHP scripts start with <?php and ends with the ?> tag. 
* Every PHP statement ends with a semicolon (;)
* You can embed PHP in HTML files.

**Example**
`
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>A Simple File</title>
</head>
<body>
    <h1><?php echo "Hello, world!";?></h1>
</body>
</html>
`
---
## Comments

`
<?php
// This is a single line comment
# This is also a single line comment
echo "Hello, world!";
/*This
is a
multi line
comment*/
?>

`
---
## Variables

* A variable does not need to be declared before adding a value to it.
* All variables start with a $ sign, followed by the name.
* Variable name must start with a letter or the underscore character _ .
* Can NOT start with a number
* A variable name cannot contain spaces.

`
<?php
$greeting = 'Heyo!';
$num = 7;

echo $greeting; // Output: Heyo!
echo $num; // Output: 7;
?>
`
---
## Constants

* A constant is a name or an identifier for a fixed value.

`
<?php
// Defining constant
define("SITE_URL", "https://www.twitter.com");
 
// Using constant
echo 'Welcome to - ' . SITE_URL;
?>
`
---
## Echo / Print / var_dump

### Echo

* Echo statement can output one or more strings. 
* Can display anything that can be displayed to the browser, such as string, numbers, variables values, the results of expressions etc.

`
$colors = array("Red", "Purple", "Blue");

echo "My favourite colour is " . $colors[1]; 
`

### Print

* Accepts only one argument at a time.
* Outputs only the strings.
* Slow compared to that of echo.

`
print_r($colors);
`
### var_dump

* Dumps information about a variable

`
<?php
//Example 1
$b = 3.1;
$c = true;
var_dump($b, $c); // Output:float(3.1) bool(true)

Example 2
$colors = array("Red", "Purple", "Blue");
var_dump($colors) // Output: array(3) { [0]=> string(3) "Red" [1]=> string(6) "Purple" [2]=> string(4) "Blue" }
?>
`

---
## Data Types

### Integers

`
$a = 123; // decimal number
var_dump($a);

$b = -123; // a negative number
var_dump($b);

$c = 0x1A; // hexadecimal number
var_dump($c);

$d = 0123; // octal number
var_dump($d);
`

### Strings

* can be as large as up to 2GB
* strlen() function is used to calculate the number of characters inside a string.
* str_word_count() function counts the number of words in a string.
* str_replace() replaces all occurrences of the search text within the target string. 
* strrev() function reverses a string.

**NOTE**
Theres a difference between single quotes (') and double quotes("). 

Single quotes Examples:

`
$my_str = 'Bubbles';

echo 'Hello, $my_str!<br>';      // Displays: Hello, $my_str!
echo 'I like\t$my_str!';         // Displays: I like\t$my_str! 
echo 'I\'ll be back';            // Displays: I'll be back
`
Double quotes Examples:

`
echo "Hello, $my_str!<br>";      // Displays: Hello, Bubbles!
echo "I like\t$my_str!";          // Displays: I like  Bubbles!
`

### Floating Point 

`
<?php
$a = 1.234;
var_dump($a);
 
$b = 10.2e3;
var_dump($b);
 
$c = 4E-10;
var_dump($c);
?>
`

### Booleans

`
<?php
// Assign the value TRUE to a variable
$show_error = true;
var_dump($show_error);
?>
`
### Arrays

* sort() [Ascending] and rsort() [Descending] — For sorting indexed arrays
* asort() [Ascending] and arsort() [Descending] — For sorting associative arrays by value
* ksort() [Ascending] and krsort() [Descending] — For sorting associative arrays by key

#### Indexed array

* An array with a numeric key.

`
<?php
// Define an indexed array
$colors = array("Red", "Green", "Blue");
?>
// the indexes are automatically assigned and start with 0, and the values can be any data type.

<?php
$colors[0] = "Red"; 
$colors[1] = "Green"; 
$colors[2] = "Blue"; 
?>
//indexes are assigned manually
`

#### Associative Arrays

* the keys assigned to values can be arbitrary and user defined strings

`
Example 1
<?php
// Define an associative array
$myCats = array("Oreo"=>5, "Bean"=>1.5, "Pip"=>1.5);
?>

Example 2
<?php
$myCats["Oreo"] = "5";
$myCats["Bean"] = "1.5";
$myCats["Pip"] = "1.5";
?>
`

#### Multidimensional Arrays

* an array in which each element can also be an array and each element in the sub-array can be an array

`
<?php
// Define a multidimensional array
$contacts = array(
  array(
    "name" => "Robert Downey",
    "email" => "ironmanrocks@mail.com"
  ),
  array(
    "name" => "Jennifer Lawrence",
    "email" => "alteregoGail@mail.com"
  ),
  array(
    "name" => "Tom Holland",
    "email" => "cantkeepsecrets@mail.com"
  )
);
// Access nested value
echo "Tom Holland's Email-id is: " . $contacts[2]["email"];
?>
`

### Objects

* object is a specific instance of a class which serve as templates for objects.
* Every object has properties and methods corresponding to those of its parent class.

`
<?php
// Class definition
class greeting{
   // properties
    public $str = "Hello World!";
    
    // methods
    function show_greeting(){
       return $this->str;
    }
}
 
// Create object from class
$message = new greeting;
var_dump($message);
?>
`

### Null

* NULL value is used to represent empty variables

### Resources

* A resource is a special variable, holding a reference to an external resource.
* Resource variables typically hold special handlers to opened files and database connections.

`
<?php
// Open a file for reading
$handle = fopen("note.txt", "r");
var_dump($handle);
echo "<br>";
 
// Connect to MySQL database server with default setting
$link = mysql_connect("localhost", "root", "");
var_dump($link);
?>
`
## Operators

`
<?php
//Arithmetic Operators
echo($x + $y);  Addition
echo($x - $y);  Subtraction
echo($x * $y);  Multiplication
echo($x / $y);  Division
echo($x % $y);  Modulus

//Assignment Operators

<?php
$x = 10;  Assign
echo $x; // Outputs: 10
 
$x = 20;  
$x += 30; Add and assign
echo $x; // Outputs: 50
 
$x = 50;
$x -= 20; Subtract and assign
echo $x; // Outputs: 30
 
$x = 5;
$x *= 25; Multiply and assign	
echo $x; // Outputs: 125
 
$x = 50;
$x /= 10; Divide and assign quotient
echo $x; // Outputs: 5
 
$x = 100;
$x %= 15; Divide and assign modulus
echo $x; // Outputs: 10

//Comparison Operators
$x = 25;  
$y = 35; 
$z = "25";  
var_dump($x == $z);  // Outputs: boolean true     Equal
var_dump($x === $z); // Outputs: boolean false    Identical (True if $x is equal to $y, and they are of the same type)
var_dump($x != $y);  // Outputs: boolean true     Not equal
var_dump($x !== $z); // Outputs: boolean true     Not identical (True if $x is not equal to $y, or they are not of the same type)
var_dump($x < $y);   // Outputs: boolean true     Less than
var_dump($x > $y);   // Outputs: boolean false    Greater than
var_dump($x <= $y);  // Outputs: boolean true     Greater than or equal to
var_dump($x >= $y);  // Outputs: boolean false    Less than or equal to

// Incrementing and Decrementing
++$x	Pre-increment     Increments $x by one, then returns $x
$x++	Post-increment     Returns $x, then increments $x by one
--$x	Pre-decrement    Decrements $x by one, then returns $x
$x--	Post-decrement    Returns $x, then decrements $x by one

//Logical Operators
&&    $x && $y    True if both $x and $y are true
||	  $x || $y    True if either $$x or $y is true
!	    !$x     True if $x is not true

//String Operators
.	      Concatenation   $str1 . $str2
.=	    Concatenation assignment  $str1 .= $str2

//Array Operators
+	    Union     $x + $y
==	  Equality    $x == $y
===	  Identity    $x === $y
!=    Inequality    $x != $y
<>	  Inequality    $x <> $y
!==	  Non-identity  $x !== $y

//Spaceship Operator

//new spaceship operator (<=>) which can be used for comparing two expressions. It is also known as combined comparison operator.

//The spaceship operator returns 0 if both operands are equal, 1 if the left is greater, and -1 if the right is greater. It basically provides three-way comparison as shown in the following table:

// Comparing Integers 
echo 1 <=> 1; // Outputs: 0
echo 1 <=> 2; // Outputs: -1
echo 2 <=> 1; // Outputs: 1
 
// Comparing Floats
echo 1.5 <=> 1.5; // Outputs: 0
echo 1.5 <=> 2.5; // Outputs: -1
echo 2.5 <=> 1.5; // Outputs: 1
 
// Comparing Strings
echo "x" <=> "x"; // Outputs: 0
echo "x" <=> "y"; // Outputs: -1
echo "y" <=> "x"; // Outputs: 1
?>
`

## Loops 

* while — loops through a block of code as long as the condition specified evaluates to true.

**NOTE** the condition is evaluated at the beginning of each loop iteration

`
<?php
$i = 20;
while($i >= 1){
   $i--;
    echo "The number is " . $i . "<br>";
}
?>
`

* do…while — the block of code executed once and then condition is evaluated. If the condition is true the statement is repeated as long as the specified condition is true.

**NOTE** the condition is evaluated at the end of the loop iteration
`
<?php
$i = 1;
do{
   $i++;
   echo "The number is " . $i . "<br>";
}
while($i <= 3);
?>
`

* for — loops through a block of code until the counter reaches a specified number.

`
<?php
for($i=1;$i<=10;$i++){
echo "The number is " . $i . "<br>"
}
?>
`

* foreach — loops through a block of code for each element in an array.

`
//Example 1
<?php
$colors = array("Red", "Green", "Blue");
 
// Loop through colors array
foreach($colors as $value){
   echo $value . "<br>";
}

//Example 2
 $superhero = array(
    "name" => "Tom Holland",
    "email" => "cantkeepsecrets@mail.com",
    "age" => 25
);
 
// Loop through superhero array
foreach($superhero as $key => $value){
   echo $key . " : " . $value . "<br>";
}
?>
`
* if, else, and elseif statements
`
<?php
$statement = "Acording to google you are: ";
$answer = array("short","average", "tall", "extremely tall", "gigantism");

function height_qualifications($height){
if ($height <= 170.688)
  echo $statement . $answer[0];
elseif($height <= 179.832);
  echo $statement . $answer[1];
elseif($height <= 156.057);
  echo $statement . $answer[2];
elseif($height <= 195.072);
  echo $statement . $answer[3];
elseif($height <= 210.312);
  echo $statement . $answer;
}

?>
`

## Functions

`
//Basic syntax of creating a custom function:
function myFunction(){
   // Code to be executed
}

//Function with parameters
function myFunc($oneParameter, $twoParameter){
   // Code to be executed
}

//Functions with optional parameters
<?php
// Defining function
function customFont($font, $size=1.5){
   echo "<p style=\"font-family: $font; font-size: {$size}em;\">Hello, world!</p>";
}
 
// Calling function
customFont("Arial", 2);
customFont("Times", 3);
customFont("Courier");
?>
`

### Variable Scope

Variables anywhere in a PHP script however, the location is important. Variables declared within a function are local and they cannot be viewed or changed from outside of the funciton.

`
<?php
funciton test(){
$greeting = "Hello!";
echo $greeting;
}

test(); // Outputs: Hello!

echo $greeting; // Outputs: undefined variable error
?>
`

Same thing if you try to access of import an outside variable inside the function.

`
<?php
$greeting = "Hello!";

funciton test(){
echo $greeting;
}

test(); // Outputs: undefined variable error

echo $greeting; // Outputs: Hello!
?>
`

If you need to import a variable from the program into a function, or vice versa. In such case you can use the global keyword as shown:

`
<?php
$greeting = "Hello!";

funciton test(){
global $greeting;
echo $greeting;
}

test(); // Outputs: Hello!
echo $greeting; // Outputs: Hello!

// Assign a new value to variable
$greeting = "noway hosay";
test(); // Outputs: noway hosay
echo $greeting; // Outputs: noway hosay
?>
`
### Recursive Functions

A recursive function is a function that calls itself again and again until a condition is satisfied.

`
<?php
// Defining recursive function
function printValues($arr) {
    global $count;
    global $items;
    
    // Check input is an array
    if(!is_array($arr)){
        die("ERROR: Input is not an array");
    }
    
    /*
    Loop through array, if value is itself an array recursively call the
`