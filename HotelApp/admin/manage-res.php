<html>
  <head>
  <title>Web107 - Final | Reservations</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  </head>
 <p><a href='manage-rooms.php'>View Rooms</a></p>
 <p><a href='manage-guests.php'>View Guests</a></p>
 <p><a href='manage-res.php'>View Reservations</a></p>
 <h1>Reservations</h1>
 <div style="border:2px solid black; padding:10px; margin:10px;">
    <?php
    
        require_once '../config/connect.php';

        $sql = "select * From Reservation";
        $statement = $pdo->query($sql);
        while($row = $statement->fetch(PDO::FETCH_ASSOC)){
            echo "ReservationID: " . $row["Reservation_ID"] . "\n | \n" . "GuestID: " . $row["Guest_ID"] . "\n | \n" . "RoomID: " . $row["Room_ID"] . "\n | \n" . "CheckIn: " . $row["CheckIn"] . "\n | \n" . "CheckOut: " . $row["CheckOut"] . "\n | \n" . "Notes: " . $row["Notes"] . "<br>";
        }
    ?>
     <form action="edit-notes.php" method=POST>
        <h3 style="border-top:1px solid black">Edit Notes</h3>
       <label>ReservationID</label><input type=number name=resid><br>
       <label>Notes</label>
       <textarea name="notes" rows="6" cols="25"></textarea><br>
       <input class="btn btn-success" type="submit" value="Submit">
     </form>
   </div>
</div>
<p><a href='../logout.php'>Logout</a></p>
 </html>