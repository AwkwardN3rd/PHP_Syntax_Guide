<!-- Front End

The front-end of the application will include the following files

    Index.php - allowing customers to create an account, that will be required before they can be make a reservation.
    reservations.php - a file to allow customers to create a reservation using your hotel database.
// 
    res-manage.php - a file to allow customers to manage their reservations. (cancel)

Back End

The back-end of the application will include the following files

    manage-customers.php - a file to view, and manage customers data.
    manage-reservations.php - a file to view and manage reservations.
    manage-rooms.php a file to view and manage rooms that shows room status, and an ability to add new rooms.
 -->

<html>
  <head>
  <title>Web107 - Final | Insert</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  </head>
  <body>
      <?php
        require_once 'config/connect.php';
     
        $UserId = $_POST['userid']; // AT A LATER DATE this will be got with authenication
        $RoomId = $_POST['roomid'];
        $CheckIn = $_POST['checkin'];
        $CheckOut = $_POST['checkout'];
        $Notes = $_POST['notes'];

        session_start();
        $_SESSION['guestID']=$UserId;
      
      
        $sql = 'INSERT INTO Reservation (Guest_ID, Room_ID, CheckIn, CheckOut, Notes) VALUES (:userid,:roomid,:checkin,:checkout,:notes)';

        $statement = $pdo->prepare($sql);
        $statement->execute([':userid'=>$UserId, ':roomid'=>$RoomId, ':checkin'=>$CheckIn, ':checkout'=>$CheckOut, ':notes'=>$Notes]);
        
        if(statement){
          header('location:index.php');
        };
      ?>
    </p>
  </body>
</html>