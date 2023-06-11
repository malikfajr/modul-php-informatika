<?php
// menyisipkan koneksi
include_once './koneksi.php';

// menangkap data yang dikirim dari url
$nik = $_GET['nik'];

// membuat query sql
$query = "DELETE FROM dosen WHERE nik = '$nik'";

// menjalankan query 
$exec = mysqli_query($koneksi, $query);

if (!$exec) {
    // ketika gagal insert
    die('Gagal menghapus data. ' . mysqli_error($koneksi));
}

// jika  berhasil akan dialihkan ke halaman daftar dosen
return header('location: daftar_dosen.php');
?>