<html>
  <head>
  <title>Web107 - Final | Make Reservations</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  </head><p>
  <a href='reservation.php'>View Reservations</a></p>
<h2>Start booking your reservation</h2>
  <form method="GET" action="make-res-results.php">
    <p>Please put in the dates you would like to search by:</p>
    <label>Check In</label><input type="date" name="checkin"><br>
    <label>Check Out</label><input type="date" name="checkout"><br>
    <input class="btn btn-success" type="submit" value="Submit">
  </form>
  <p><a href='logout.php'>Logout</a></p>
</html>