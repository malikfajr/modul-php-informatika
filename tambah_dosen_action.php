<?php
// menyisipkan koneksi
include_once './koneksi.php';

// menangkap data yang dikirim ke dalam variabel
$nik = $_POST['nik'];
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];

// membuat query sql
$query = "INSERT INTO dosen VALUES ('$nik', '$nama', '$alamat')";

// menjalankan query 
$exec = mysqli_query($koneksi, $query);

if (!$exec) {
    // ketika gagal insert
    die('Gagal menambah data. ' . mysqli_error($koneksi));
}

// jika  berhasil akan dialihkan ke halaman daftar dosen
return header('location: daftar_dosen.php');
?>