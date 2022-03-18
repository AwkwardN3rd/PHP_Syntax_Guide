<?php 
  require 'config.php';
   try{

      $dsn = "mysql:host=$host;dbname=$db;charset=UTF8";
      $pdo = new PDO($dsn, $user, $pw);
//       if($pdo){
//         echo "connected!";
//       }
   } 
catch(PDOException $e){ // excute this code IF Trys code doesnt work.
      echo $e->getMessage();
      // arrow operator -> accessing a method from an object
    }


?>