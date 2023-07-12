<?php
session_start();

if (empty($_SESSION['is_login'])) {
    return header('location:../auth/login.php');
}

echo 'Hai, ' . $_SESSION['nama'];
?>