<?php
require_once 'config/connect.php';

$User = $_POST['fname'];
$lname = $_POST['lname'];
$Email = $_POST['email'];
$Password = $_POST['password'];
//CREATE USERS
$sql = 'INSERT INTO Users (username,password,email) VALUES (:fname,:password,:email)';
$statement = $pdo->prepare($sql);
$statement->execute([
    ':fname' => $User,
    ':email' => $Email,
    ':password' => $Password
]);
//CREATE GUEST
$sql = 'INSERT INTO Guest (FirstName,LastName,Email) Values (:fname,:lname,:email)';
$statement = $pdo->prepare($sql);
$statement->execute([
    ':fname' => $User,
    ':lname' => $lname,
    ':email' => $Email
]);
session_start();
$_SESSION['username'] = $User;
header("location:make-reservations.php");
?>