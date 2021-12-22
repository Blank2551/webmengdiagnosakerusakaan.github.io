-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 07:40 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_kerusakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `kode`, `gejala`) VALUES
(1, 'G001', 'Apakah tekanan bensin di injektor keluar?'),
(2, 'G002', 'Apakah suplai arus tegangan keluar?'),
(3, 'G003', 'Apakah tegangan listrik masuk pada pompa bensin?'),
(4, 'G004', 'Apakah mesin tidak bekerja seperti normal?'),
(5, 'G005', 'Apakah mobil sering mogok?'),
(6, 'G006', 'Apakah pipa pompa berbunyi?'),
(7, 'G007', 'Apakah memiliki kebocoran pada pompa air?'),
(8, 'G008', 'Apakah  memiliki kesulitan pada saat menyalakan mobil?'),
(9, 'G009', ' Apakah kunci kontak bermasalah saat menyalakan mobil?'),
(10, 'G010', 'Apakah suara mesin terdengar lemah?'),
(11, 'G011', 'Apakah mesin tidak bekerja seperti normal?'),
(12, 'G012', 'Apakah mobil sering mogok?'),
(13, 'G013', 'Apakah saat menyalakan mesin  terasa berat?'),
(14, 'G014', 'Apakah bunyi klakson berkurang atau tidak berbunyi?'),
(15, 'G015', 'Apakah lampu mobil redup?'),
(16, 'G016', 'Apakah lampu di interior mobil tidak menyala?'),
(17, 'G017', 'Apakah lampu jarak jauh mati?'),
(18, 'G018', 'Apakah lampu mobil mati sebelah?'),
(19, 'G019', 'Apakah lampu rem mati?'),
(20, 'G020', 'Apakah lampu sein mati salah satu'),
(21, 'G021', 'Apakah tegangan arus  berfungsi?'),
(22, 'G022', 'Apakah minyak rem berkurang?'),
(23, 'G023', 'Apakah piringan rem berbunyi?'),
(24, 'G024', 'Apakah saat menginjak pedal rem agak jauh?'),
(25, 'G025', 'Apakah saat mobil terdiam tidak bisa menahan gravitasi?'),
(26, 'G026', 'Apakah tuas rem sulit di turunkan?'),
(27, 'G027', 'Apakah saat mengrem mobil terasa bergetar?'),
(28, 'G028', 'Apakah roda mobil terasa berat saat berjalan?'),
(29, 'G029', 'Apakah velg berwarna hitam atau berkarat?'),
(30, 'G030', 'Apakah memiliki kebocoran pada mnyak rem?'),
(31, 'G031', 'Apakah saat menginjak rem mobil tidak berhenti?');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kerusakaan`
--

CREATE TABLE `tb_kerusakaan` (
  `id` int(5) NOT NULL,
  `kerusakaan` varchar(50) NOT NULL,
  `info` longtext NOT NULL,
  `solusi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kerusakaan`
--

INSERT INTO `tb_kerusakaan` (`id`, `kerusakaan`, `info`, `solusi`) VALUES
(1, 'Pompa bensin', 'terjadi kerusakan pada pompa bensin ', 'Pada dasarnya harus menggantikan komponen tersebut dengan yang original'),
(2, 'Busi', 'Terjadi kerusakan pada busi ', 'Busi di setel lagi apabila batasan jaraknya jauh dan apabila businya rusak harus di ganti dengan yang baru'),
(3, 'Pompa Air', 'Terjadi kerusakaan pada pompa air', 'Harus di ganti dengan yang baru'),
(4, 'Dinamo Starter', 'Terjadi kerusakaan pada dinamo starter', 'Dinamo starter harus di ganti dengan yang baru'),
(5, 'Koil', 'Terjadi kerusakaan pada koil', 'Harus di ganti secara keseluruhan'),
(6, 'Aki', 'Terjadi kerusakaan pada aki', 'Melakukan charging/mengisi daya kembali dengan alatnya'),
(7, 'Sekring', 'Terjadi kerusakaan pada sekring', 'Harus di melakukan pergantian dengan yang baru'),
(8, 'Bohlam', 'Terjadi Kerusakaan pada bohlam', 'Harus di ganti secara keseluruhan'),
(9, 'Grounding', 'Terjadi kerusakaan pada grounding', 'Harus di lakukan pergantian dengan komponen yang baru'),
(10, 'Rem tangan', 'Terjadi kerusakaan pada rem tangan', 'Harus dilakukan penyetelan kembali pada rem tangan apabila masih tidak berfungsi maka harus melakukan pergantian pada labrang'),
(11, 'Piringan cakram', 'Terjadi kerusakaan pada piring cakram', 'Melakukan pergantian dengan cakram yang baru'),
(12, 'Piston rem', 'Terjadi kerusakaan pada piston rem', 'Harus di bongkar kembali dan di perbaiki apabila piston rem sudah melebihi pada batasnya harus di ganti dengan yang baru'),
(13, 'Seal piston', 'Terjadi kerusakaan pada seal piston', 'Harus menggantikan dengan yang baru '),
(14, 'Kanvas rem', 'Terjadi kerusakaan pada kanvas rem', 'Harus di lakukan pergantian dengan komponen yang baru');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rule`
--

CREATE TABLE `tb_rule` (
  `id` int(5) NOT NULL,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL,
  `G013` tinyint(1) DEFAULT NULL,
  `G014` tinyint(1) DEFAULT NULL,
  `G015` tinyint(1) DEFAULT NULL,
  `G016` tinyint(1) DEFAULT NULL,
  `G017` tinyint(1) DEFAULT NULL,
  `G018` tinyint(1) DEFAULT NULL,
  `G019` tinyint(1) DEFAULT NULL,
  `G020` tinyint(1) DEFAULT NULL,
  `G021` tinyint(1) DEFAULT NULL,
  `G022` tinyint(1) DEFAULT NULL,
  `G023` tinyint(1) DEFAULT NULL,
  `G024` tinyint(1) DEFAULT NULL,
  `G025` tinyint(1) DEFAULT NULL,
  `G026` tinyint(1) DEFAULT NULL,
  `G027` tinyint(1) DEFAULT NULL,
  `G028` tinyint(1) DEFAULT NULL,
  `G029` tinyint(1) DEFAULT NULL,
  `G030` tinyint(1) DEFAULT NULL,
  `G031` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rule`
--

INSERT INTO `tb_rule` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`, `G011`, `G012`, `G013`, `G014`, `G015`, `G016`, `G017`, `G018`, `G019`, `G020`, `G021`, `G022`, `G023`, `G024`, `G025`, `G026`, `G027`, `G028`, `G029`, `G030`, `G031`) VALUES
(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kerusakaan`
--
ALTER TABLE `tb_kerusakaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rule`
--
ALTER TABLE `tb_rule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rule`
--
ALTER TABLE `tb_rule`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_kerusakaan`
--
ALTER TABLE `tb_kerusakaan`
  ADD CONSTRAINT `tb_kerusakaan_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_rule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
