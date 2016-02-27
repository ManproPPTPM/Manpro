-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2016 at 08:38 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pptpm`
--

-- --------------------------------------------------------

--
-- Table structure for table `(-daftar_barang)`
--

CREATE TABLE IF NOT EXISTS `(-daftar_barang)` (
  `kode_barang` char(4) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `stok` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `(-log_peminjaman)`
--

CREATE TABLE IF NOT EXISTS `(-log_peminjaman)` (
  `kode_peminjaman` char(8) NOT NULL,
  `kode_barang` char(4) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` enum('PINJAM','KEMBALI') NOT NULL DEFAULT 'PINJAM'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `(-daftar_barang)`
--
ALTER TABLE `(-daftar_barang)`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `(-log_peminjaman)`
--
ALTER TABLE `(-log_peminjaman)`
  ADD PRIMARY KEY (`kode_peminjaman`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
