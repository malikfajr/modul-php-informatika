<?php
session_start();
session_unset();
session_destroy();

return header('location: ../auth/login.php');
exit();
?>