<html>
  <head>
  <title>Web107 - Final | Edit Rooms</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  </head> 
<?php
  require_once '../config/connect.php';

  $RoomNum = $_GET['roomnum'];
  $RoomStatus = $_GET['roomstatus'];  
  echo $RoomStatus;

  $sql = "UPDATE Rooms SET RoomStatus = :roomstatus WHERE RoomNum = :roomnum";

  $statement = $pdo->prepare($sql); 
      $statement->execute([':roomstatus'=>$RoomStatus, ':roomnum'=>$RoomNum]);
  echo "Room Number: " . $RoomNum . " status has been changed to " . $RoomStatus;
  
          if(statement){
          header('location:manage-rooms.php');
        };
?>  
</html>