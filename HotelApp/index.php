<html>
  <head>
  <title>Web107 - Final | Make Reservations</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="styles.css">
  </head>
  <div class="container">
  <!-- Content here -->
  
    <div class="row">
    <div class="col-sm">
<h1>
  Hotel User Login
  </h1>
<form action=login-users.php method=POST>
  
  <div class="form-group">
    <label>Email address</label>
    <input type="email" name="email" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label>Password</label>
    <input type="password" name="password" placeholder="Password">
  </div>
  <small id="emailHelp" class="form-text text-muted">We'll never share your information with anyone else.</small><br>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
   </div>

  
  <br> 
     
    <div class="col-sm">
<h1>
  Hotel Sign up
  </h1>
<form action=create-users.php method=POST>
  
   <div class="form-group">
    <label>Firstname</label>
    <input type="text" name="fname" placeholder="First Name">
  </div>
   <div class="form-group">
    <label>Last Name</label>
    <input type="text" name="lname" placeholder="Last Name">
  </div>
  <div class="form-group">
    <label>Email address</label>
    <input type="email" name="email" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label>Password</label>
    <input type="password" name="password" placeholder="Password">
  </div>
  <small id="emailHelp" class="form-text text-muted">We'll never share your information with anyone else.</small><br>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
   </div>
  </div>
  </div>
</html>
<?php
session_start();
?>