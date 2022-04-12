<?php
require_once 'config/connect.php';

session_start();
//$username = $_SESSION['username'];
$guestid = $_SESSION['guestid'];
$roomid = $_POST['roomid'];
$checkin = $_SESSION['checkin'];
$checkout = $_SESSION['checkout'];

echo "$checkin, $checkout, $guestid";

//QUERY 1
$sql1 = 'INSERT INTO Reservation (Guest_ID, Room_ID, CheckIn, CheckOut) VALUES (:guestid,:roomid,:checkin,:checkout)';
$statement = $pdo->prepare($sql1);
$statement->execute([':guestid'=>$guestid, ':roomid'=>$roomid, ':checkin'=>$checkin, ':checkout'=>$checkout]);

//QUERY 2
// $sql2 = "UPDATE Rooms SET RoomStatus = 0 WHERE Room_ID = '$roomid'";
// $statement = $pdo->prepare($sql2);
// $statement->execute();
  
header('location:reservation.php');
?>