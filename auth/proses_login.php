<?php

session_start();

// menyisikan file koneksi
include_once '../koneksi.php';

// ambil data yang dikirim dari form
$nik = $_POST['nik'];
$password = $_POST['password'];

// buat query untuk membaca data
$query = "SELECT * FROM dosen WHERE nik = '$nik' AND password = '$password'";

// menjalankan query 
$exec = mysqli_query($koneksi, $query);

if (! $row = mysqli_fetch_assoc($exec)) {
    // ketika data tidak ditemukan
    return header('location: login.php');
}

// simpan data pakai session
$_SESSION['is_login'] = true;
$_SESSION['nama'] = $row['nama_dosen'];

return header('location:../dashboard/index.php');