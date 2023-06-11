<?php

// menyisikan file koneksi
include_once './koneksi.php';

// mengambil data dari url
$nik = $_GET['nik'];

// mencari data yang mau diedit 
$query = "SELECT * FROM dosen WHERE nik = '$nik' LIMIT 1";

// menjalankan query 
$exec = mysqli_query($koneksi, $query);

if (! $row = mysqli_fetch_assoc($exec)) {
    // ketika data tidak ditemukan
    return header('location: daftar_dosen.php');
}

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Edit Data Dosen</title>
  </head>
  <body>
    <div class="container py-2">
      <h1 class="mb-3">Edit Data Dosen</h1>

      <form action="edit_dosen_action.php" method="post">
        <input type="hidden" name="nik" value="<?= $row['nik'] ?>">
        <!-- <div class="mb-3">
          <label for="nik" class="form-label">NIK Dosen</label>
          <input type="text" class="form-control" id="nik" name="nik" value="<?=  $row['nik'] ?>" required>
        </div> -->
        <div class="mb-3">
          <label for="nama" class="form-label">Nama Dosen</label>
          <input type="text" class="form-control" name="nama" id="nama" value="<?=  $row['nama_dosen'] ?>" required>
        </div>
        <div class="mb-3">
          <label for="alamat" class="form-label">Alamat Dosen</label>
          <textarea name="alamat" id="alamat" rows="4" class="form-control" required><?=  $row['alamat_dosen'] ?></textarea>
        </div>
        <div class="mb-3">
          <button type="submit" class="btn btn-primary float-end mx-3">Edit</button>
          <a href="daftar_dosen.php" class="btn btn-danger float-end mx-3">Cancel</a>
        </div>
      </form>
    </div>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>