-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2023 at 01:31 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akademik_1111`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nik` char(15) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Nomor Induk Karyawan',
  `nama_dosen` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Nama Dosen',
  `alamat_dosen` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Alamat Dosen'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nik`, `nama_dosen`, `alamat_dosen`) VALUES
('1903001', 'Muhammad Rudyanto Arief', 'Perum Merapi View 20'),
('1903002', 'Muhammad Rifat Arief', 'Ploso Kuning 31'),
('1903003', 'Ruth Damayanthie Arief', 'Jl. Kaliurang 95'),
('1903004', 'Neneng Sundarsih', 'Perum Timoho Asri 22'),
('1903005', 'Rahayana', 'Jl. Kaliurang 92');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `nim` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `kode_mk` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`nim`, `kode_mk`) VALUES
('06.11.0001', 'SBDTI'),
('06.11.0002', 'SBDTI'),
('06.11.0003', NULL),
('06.11.0004', 'CSMI'),
('05.11.0011', 'SBDTI'),
('05.11.0011', 'RPL'),
('05.02.0001', 'AKT1'),
('05.02.0001', 'PVMI'),
('05.02.0002', 'AKT1');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Nomor Induk Mahasiswa',
  `nik` char(15) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'FK_mahasiswa_dosen',
  `nama_mhs` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Nama Mahasiswa',
  `alamat_mhs` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Alamat Mahasiswa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nik`, `nama_mhs`, `alamat_mhs`) VALUES
('05.02.0001', '1903004', 'Andi Malarangeng', 'Jl. Gejayan 25'),
('05.02.0002', NULL, 'Muhamma Arief', 'Jl. Solo KM 10 No 21'),
('05.11.0011', '1903003', 'Michael', 'Perum Seturan Permai 21'),
('05.11.0012', '1903001', 'Arief Rahman Hakim', 'Perum Seturan Permai 21'),
('05.11.0013', '1903004', 'Munariyadi Djaila', 'Jl. Tunggala 23i'),
('06.11.0001', '1903001', 'Muhammad Rayhan', 'Perum Condongcatur 22'),
('06.11.0002', '1903001', 'Median Irianto', 'Jl. Kaliurang 93'),
('06.11.0003', '1903004', 'Kundarita Djaila', 'Jl. Magelang 52'),
('06.11.0004', '1903003', 'Kamarudin', 'Jl. Seturan 23'),
('06.11.0005', '1903001', 'Marzuki', 'Jl. Condongcatur 34'),
('07.11.0010', '1903004', 'Sri Rejeki Djaila', 'Jl. Kaliurang 53');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_mk` char(6) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Kode Mata Kuliah',
  `nik` char(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kode_ruang` char(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_mk` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Nama Mata Kuliah',
  `deskripsi_mk` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Deskripsi Mata Kuliah'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_mk`, `nik`, `kode_ruang`, `nama_mk`, `deskripsi_mk`) VALUES
('AKT1', '1903004', '3.3.3', 'Pengantar Akuntansi 1', 'Pengantar Akuntansi 1 D3MI'),
('CSMI', '1903001', '2.2.1', 'Client Server', 'Client Server D3MI 2 SKS'),
('PBD', '1903001', '3.2.1', 'Pemrograman Basis Data', 'Pemrograman Basis Data 4 SKS'),
('PK1', '1903002', '2.3.5', 'Pemrograman Komputer 1', 'Pemrograman Komputer 1 S1TI'),
('PVMI', '1903001', '3.2.1', 'Pemrograman Visual', 'Pemrograman Visual D3MI'),
('RPL', '1903005', '2.3.9', 'Rekayasa Perangkat Lunak', 'Rekayasa Perangkat Lunak S1TI'),
('SBDTI', '1903001', '2.3.5', 'Sistem Basis Data', 'Sistem Basis Data S1TI 4 SKS');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `kode_ruang` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `lokasi_ruang` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kapasitas_ruang` int NOT NULL
) ;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`kode_ruang`, `lokasi_ruang`, `kapasitas_ruang`) VALUES
('1.2.2', 'Unit 1 Lantai 2', 75),
('2.2.1', 'Unit 2 Lantai 2', 75),
('2.3.5', 'Unit 2 Lantai 3', 75),
('2.3.9', 'Unit 2 Lantai 3', 100),
('3.2.1', 'Unit 3 Lantai 2', 50),
('3.3.3', 'Unit 3 Lantai 3', 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `fk_mahasiswa_dosen` (`nik`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_mk`),
  ADD KEY `fk_nik_matkul` (`nik`),
  ADD KEY `fk_matkul_ruang` (`kode_ruang`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`kode_ruang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_mahasiswa_dosen` FOREIGN KEY (`nik`) REFERENCES `dosen` (`nik`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `fk_matkul_ruang` FOREIGN KEY (`kode_ruang`) REFERENCES `ruang` (`kode_ruang`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_nik_matkul` FOREIGN KEY (`nik`) REFERENCES `dosen` (`nik`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
