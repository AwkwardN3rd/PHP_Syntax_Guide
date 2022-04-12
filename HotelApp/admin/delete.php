<?php
require_once '../config/connect.php';

$guestID = $_GET['guestid'];
$sql = "DELETE FROM Guest WHERE (Guest_ID) = (:guestid)";

$statement = $pdo->prepare($sql); 
    $statement->execute([
      //then executes the statement
      
      ':guestid' => $guestID 
      //binds the new variable to the paramitor
    ]);
if(statement){
  header('location:manage-guests.php');
}
?>  