<!-- add-room.php -->
<html>
  <head>
  <title>Web107 - Final | Add Rooms</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  </head>
<?php
  require_once '../config/connect.php';

  $RoomTypeID = $_POST['roomtype_id'];
  $RoomNum = $_POST['roomnum'];
  $Floor = $_POST['floor'];
  $RoomStatus = $_POST['roomstatus'];

  if($RoomStatus == "on"){
    $RoomStatus = 0;
    $sql = "INSERT into Rooms (RoomType_ID, RoomNum, Floor, RoomStatus) VALUES (:roomtype_id, :roomnum, :floor, :roomstatus)";
      $statement = $pdo->prepare($sql);
      $statement->execute([':roomtype_id'=>$RoomTypeID, ':roomnum'=>$RoomNum, ':floor'=>$Floor, ':roomstatus'=>$RoomStatus]);
  }else{
      $sql = "INSERT into Rooms (RoomType_ID, RoomNum, Floor) VALUES (:roomtype_id, :roomnum, :floor)";
      $statement = $pdo->prepare($sql);
      $statement->execute([':roomtype_id'=>$RoomTypeID, ':roomnum'=>$RoomNum, ':floor'=>$Floor]);
  }
        if(statement){
          header('location:manage-rooms.php');
        };
?>  
</html>