<?php
        $email = $_POST['email'];
        $password = $_POST['password'];
        
        require_once 'config/connect.php';

        //Select user
        if($email != "Admin@mail.com"){
        $sql = "SELECT password, username FROM Users WHERE email = '$email'";
        $statement = $pdo->query($sql);
          $results = $statement->fetch(PDO::FETCH_ASSOC);
          if($results['password'] == $password){
            session_start();
            $_SESSION['username'] = $results['username'];
            header("location: make-reservations.php");
          }
       else{
            echo "Invalid User ID or Password";
        }
        }else{
          header("location:/web107/final-projects/Motel3/admin/manage-rooms.php");
        }
?>