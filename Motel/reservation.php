<html>
  <head>
  <title>Web107 - Final | Reservations </title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  </head>
 <p><a href='make-reservations.php'>Book a Reservation</a></p>
 <h1>Reservations</h1>
 <div style="border:2px solid black; padding:10px; margin:10px;">
    <?php
        require_once 'config/connect.php';
        session_start();
        $username = $_SESSION['username'];
   
        $sql = "SELECT Guest_ID from Guest WHERE FirstName = '$username'";
        $statement = $pdo->query($sql);
        while($row=$statement->fetch(PDO::FETCH_ASSOC)){
          $_SESSION['guestid'] = $row['Guest_ID'];
        }
        $guestid = $_SESSION['guestid'];

        $sql = "select * From Reservation WHERE Guest_ID = '$guestid'";
        $statement = $pdo->query($sql);
   
        while($row = $statement->fetch(PDO::FETCH_ASSOC)){
             echo "ReservationID: " . $row["Reservation_ID"] . "\n | \n" . "GuestID: " . $row["Guest_ID"] . "\n | \n" . "RoomID: " . $row["Room_ID"] . "\n | \n" . "CheckIn: " . $row["CheckIn"] . "\n | \n" . "CheckOut: " . $row["CheckOut"] . "\n | \n" . "Notes: " . $row["Notes"] . "<br>";
        };
    ?>
   <div style="border:2px solid black; padding:10px; margin:10px;">
    <h3>Delete Reservation</h3>
     <form action="delete-button.php" method=GET>
       <label>ReservationID</label><input type=number name=resid>
       <input class="btn btn-success" type="submit" value="Submit">
     </form>
   </div>
  </div>
  <p><a href='logout.php'>Logout</a></p>
</html>