<?php
session_start();

if(isset($_SESSION['user'])){
    header("Location: Views/dashboard.php");
}else{
    header("Location: Views/login.php");
}
exit();
?>