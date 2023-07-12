<?php
session_start();

if (empty($_SESSION['is_login'])) {
    return header('location:auth/login.php');
} 

return header('location:dashboard/index.php');
?>