<html>
  <head>
  <title>Web107 - Final | Edit</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  </head>
  <?php
  
    require_once '../config/connect.php';

    $ResId = $_POST['resid'];
    $Notes = $_POST['notes'];
  
      $sql = "UPDATE Reservation set Notes = :notes WHERE Reservation_ID = '$ResId'";
      $statement = $pdo->prepare($sql);
      $statement->execute([':notes'=>$Notes]);
      header('location:manage-res.php');

  ?>
</html>

<!-- NOT FINISHED -->