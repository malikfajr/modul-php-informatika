<?php
// menyisipkan koneksi
include_once './koneksi.php';

// menangkap data yang dikirim ke dalam variabel
$nik = $_POST['nik'];
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];

// membuat query sql
$query = "UPDATE dosen SET nama_dosen = '$nama', alamat_dosen = '$alamat' WHERE nik = '$nik'";

// menjalankan query 
$exec = mysqli_query($koneksi, $query);

if (!$exec) {
    // ketika gagal insert
    die('Gagal merubah data. ' . mysqli_error($koneksi));
}

// jika  berhasil akan dialihkan ke halaman daftar dosen
return header('location: daftar_dosen.php');
?>