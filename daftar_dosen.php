<?php

// menyisikan file koneksi
include_once './koneksi.php';

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Daftar Dosen</title>
  </head>
  <body>
    <div class="container py-2">
      <h1 class="mb-3">Daftar Dosen</h1>

      <a href="tambah_dosen.php" class="btn btn-secondary btn-sm">+ Tambah Dosen</a>

      <table class="table table-striped">
        <thead>
          <tr>
            <th>No</th>
            <th>NIK</th>
            <th>Nama</th>
            <th>Alamat</th>
          </tr>
        </thead>
        <tbody>
          <?php
            // membuat perintah query
            $query = "SELECT nik, nama_dosen, alamat_dosen FROM dosen";

            // menjalankan query dan menampungnya di variabel
            $rows = mysqli_query($koneksi, $query);

            $i = 1;
            // melakukan perulangan sebanyak baris yang diambil dari hasil query
            while ($row = mysqli_fetch_assoc($rows)) {  
          ?>

            <tr>
              <td><?= $i ?></td>
              <td><?= $row['nik'] ?></td>
              <td><?= $row['nama_dosen'] ?></td>
              <td><?= $row['alamat_dosen'] ?></td>
            </tr> 

          <?php  
            $i++;
            }
          ?>
        </tbody>
      </table>
    </div>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>