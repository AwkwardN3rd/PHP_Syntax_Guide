<html>
  <head>
  <title>Web107 - Final | Guests</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  </head>
 <p><a href='manage-rooms.php'>View Rooms</a></p>
 <p><a href='manage-guests.php'>View Guests</a></p>
 <p><a href='manage-res.php'>View Reservations</a></p>
 <h1>Customers</h1>
 <div style="border:2px solid black; padding:10px; margin:10px;">
    <?php
    
        require_once '../config/connect.php';

        $sql = "select * From Guest";
        $statement = $pdo->query($sql);
        while($row = $statement->fetch(PDO::FETCH_ASSOC)){
            echo "GuestID: " . $row["Guest_ID"]  . "\n | \n" . "Name: " . $row["FirstName"] . " " . $row["LastName"] . "\n | \n" .  "Address: " . $row["StreetAddress"] . "\n | \n" .  "City: " . $row["City"] . "\n | \n" .  "Province: " . $row["Province"] . "\n | \n" . "Country: " . $row["Country"]  . "\n | \n" . "PostalCode: " . $row["PostalCode"] . "\n | \n".  "Phone Number: " .$row["PhoneNum"] . "\n | \n" . "Email: " . $row["Email"] . "<br>";
        }
    ?>
   <div style="border:2px solid black; padding:10px; margin:10px;">
    <h3>Delete Guest</h3>
     <form action="delete.php" method=GET>
       <label>GuestID</label><input type=number name=guestid>
       <input class="btn btn-success" type="submit" value="Submit">
     </form>
   </div>
  </div>
  <p><a href='../logout.php'>Logout</a></p>
 </html>