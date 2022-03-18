<html>
  <head>
  <title>Web107 - Final | Make Reservations</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  </head>
  <a href='reservation.php'>View Reservations</a></p>
<h2>Start booking your reservation</h2>
  <form method="GET" action="?action">
    <p>Please put in the dates you would like to search by:</p>
    <label>Check In</label><input type="date" name="checkin"><br>
    <label>Check Out</label><input type="date" name="checkout"><br>
    <input class="btn btn-success" type="submit" value="Submit">
  </form>
  <div style="border:2px solid black; padding:10px; margin:10px;">
    <form action="book-res.php" method="POST">
    <label>Rooms Available </label><br><select name="roomid">
    <?php
      session_start();
      require_once 'config/connect.php';
      
      $checkin = $_GET['checkin'];
      $checkout = $_GET['checkout'];
      $_SESSION['checkin'] = $_GET['checkin'];
      $_SESSION['checkout'] = $_GET['checkout'];
      
      $username = $_SESSION['username'];
      echo $username;
      $sql = "SELECT Guest_ID from Guest WHERE FirstName = '$username'";
      $statement = $pdo->query($sql);
      while($row=$statement->fetch(PDO::FETCH_ASSOC)){
        $_SESSION['guestid'] = $row['Guest_ID'];
        echo $row['Guest_ID'];
      }
      
          // QUERY 1
          $sql = "CREATE VIEW Test AS 
          SELECT Rooms.Room_ID AS RoomID, Reservation.Room_ID, RoomType.RoomType from Rooms
          INNER JOIN Reservation on Rooms.Room_ID = Reservation.Room_ID
          INNER JOIN RoomType on RoomType.RoomType_ID = Rooms.RoomType_ID
          WHERE Reservation.CheckIn != '$checkin'";
          $statement = $pdo->query($sql);
        
          // QUERY 2
          $sql2 = "
Select Rooms.Room_ID, Rooms.RoomNum, RoomType.RoomType_ID, RoomType.Description  From Rooms
INNER JOIN RoomType on Rooms.RoomType_ID = RoomType.RoomType_ID
Where Rooms.Room_ID NOT IN (SELECT RoomID FROM Test)";
          $statement2 = $pdo->query($sql2);
    
          while($row=$statement2->fetch(PDO::FETCH_ASSOC)){
           ?>
            <option value="<?php echo $row['Room_ID'];?>"><?php echo "Room Number: " . $row['RoomNum'] . ' | ' . $row['Description'];?></option>
          <?php     } ?>
    
    <?php
          // QUERY 3
          $sql3 = "DROP VIEW Test;";
          $statement3 = $pdo->query($sql);

    ?>
      </select>
      <input type=hidden value=$checkin>
      <input type=hidden value=$checkout>
      <input class="btn btn-success" type=submit value="Make Reservation">      
    </form>
  </div>
<p><a href='logout.php'>Logout</a></p>
</html>