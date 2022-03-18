<html>
  <head>
  <title>Web107 - Final | Delete</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  </head>
 <p><a href='index.php'>Go Back</a></p><br>
<?php

require_once 'config/connect.php';

$ResID = $_GET['resid'];
$sql = "DELETE FROM Reservation WHERE (Reservation_ID) = (:resid)";

$statement = $pdo->prepare($sql); 
    $statement->execute([
      //then executes the statement
      
      ':resid' => $ResID 
      //binds the new variable to the paramitor
    ]);
if(statement){
  header('location:reservation.php');
}
?>  
</html>