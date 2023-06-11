<?php

// konstanta alamat database
define('hostname', 'localhost');
define('db_user', 'root');
define('db_pass', '');
define('db_name', 'db_akademik_1111');

// variabel untuk menampung database
$koneksi = mysqli_connect(hostname, db_user, db_pass, db_name);

if (!$koneksi) {
    // ketika koneksi gagal
    die('Gagal terkoneksi ke database. ' . mysqli_connect_error());
}

?>