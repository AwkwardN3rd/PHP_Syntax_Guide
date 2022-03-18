<?php       

require_once 'config/connect.php';

 $sql = "select * from Rooms";
 $statement = $pdo->query($sql);
 $results = $statement->fetchAll(PDO::FETCH_ASSOC);
                          
foreach ($results as $room) {
  echo $room['Room_ID'] ; 
};
?>
