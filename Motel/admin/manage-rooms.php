<!-- 
Back End

The back-end of the application will include the following files

    manage-customers.php - a file to view, and manage customers data.
    manage-reservations.php - a file to view and manage reservations.
    manage-rooms.php a file to view and manage rooms that shows room status, and an ability to add new rooms.
-->

<html>
  <head>
  <title>Web107 - Final | Manage Rooms</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  </head>
 <p><a href='manage-rooms.php'>View Rooms</a></p>
 <p><a href='manage-guests.php'>View Guests</a></p>
 <p><a href='manage-res.php'>View Reservations</a></p> 
    <h1>Manage Rooms</h1>
  <div style="border:2px solid black; padding:10px; margin:10px;">
  <?php

    require_once '../config/connect.php';
    
    $sql = "select * from Rooms";
    $statement = $pdo->query($sql);
    while($row = $statement->fetch(PDO::FETCH_ASSOC)){
      echo "RoomID: " . $row["Room_ID"] . "\n | \n" . "RoomTypeID: " . $row["RoomType_ID"] . "\n | \n" . "Room Number: " . $row["RoomNum"] . "\n | \n" . "Floor: " . $row["Floor"] . "\n | \n" . "Room Status: " . $row["RoomStatus"] . "<br>";
    }
  ?>
  <div style="border:2px solid black; padding:10px; margin:10px;">
    <h3>Edit Rooms Status</h3>
      <form action = "edit-rooms.php" method=GET>
        <label>Room Number</label><input type=number name=roomnum><br>
        <label>Status</label><select name="roomstatus">
          <option value=1>Active</option>
        <option value=0>Inactive</option>
        </select><br><br>
        <input class="btn btn-success" type="submit" value="Submit"><br>
      </form>
    
      <h3 style="border-top:1px solid black">Add new Rooms</h3>
      <form action="add-room.php" method=POST>
        <label>Room Type ID</label><input type=number name="roomtype_id"><br>
        <label>Room Number</label><input type=number name=roomnum><br>
        <label>Floor</label><select name="floor">
        <option value=1>1</option>
        <option value=2>2</option>
        </select><br>
        <label>Set room as inactive?</label><br><input type=radio name=roomstatus value=on><br><br>
        <input class="btn btn-success" type="submit" value="Submit">
      </form>
  </div>
  <p><a href='../logout.php'>Logout</a></p>
</html>
