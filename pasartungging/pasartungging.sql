-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2017 at 03:15 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pasartungging`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE IF NOT EXISTS `tb_kategori` (
`id_kat` int(2) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `tgl_input_kat` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kat`, `kategori`, `tgl_input_kat`) VALUES
(1, 'SEPATU', '2015-06-13 09:20:34'),
(3, 'TAS', '2015-06-13 09:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE IF NOT EXISTS `tb_login` (
`id_user` int(2) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `pass_user` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id_user`, `nama_user`, `pass_user`, `nama`, `level`, `status`) VALUES
(1, 'ad', 'ad', 'Admin Olshop', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_merk`
--

CREATE TABLE IF NOT EXISTS `tb_merk` (
`id_merk` int(2) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `tgl_input_merk` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_merk`
--

INSERT INTO `tb_merk` (`id_merk`, `merk`, `tgl_input_merk`) VALUES
(1, 'VANS', '2015-06-13 11:14:49'),
(2, 'EIGER', '2015-06-13 14:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE IF NOT EXISTS `tb_produk` (
`id_produk` int(2) NOT NULL,
  `judul` varchar(220) NOT NULL,
  `harga` int(20) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `id_merk` int(2) NOT NULL,
  `id_kat` int(2) NOT NULL,
  `ket` text NOT NULL,
  `status` enum('publish','draft') NOT NULL,
  `counter` int(5) NOT NULL,
  `tgl_input_pro` datetime NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `judul`, `harga`, `jumlah`, `kondisi`, `id_merk`, `id_kat`, `ket`, `status`, `counter`, `tgl_input_pro`, `foto`) VALUES
(1, 'Baju Cewek', 6000009, '5', 'Baju Cewek', 2, 3, 'Barang bagus, mantap barang', 'publish', 0, '2015-06-13 13:48:35', 'blebeau.jpg'),
(2, 'Power Bank', 1200000, '10', 'Baru', 2, 3, 'Mantap lah pokoknya', 'publish', 0, '2015-06-13 15:10:57', 'banjar.jpg'),
(3, 'Celan Dalam', 1234555, '3', 'Bekas', 1, 1, 'Hahahaha', 'publish', 2, '2015-06-13 15:11:38', 'ungu.jpg'),
(4, 'Sapu Tangan', 3000000, '4', 'Baru', 1, 1, 'Bagus kok', 'publish', 1, '2015-06-13 15:12:16', '1922253_840651915960630_2004795134_n.jpg'),
(5, 'Tas Eigeer', 40000000, '3', 'Baru', 2, 3, 'Bolong dikit', 'publish', 1, '2015-06-13 15:12:57', 'super-cub_bagus.jpg'),
(6, 'iPhone 8', 2147483647, '1', 'iPhone 8', 1, 1, 'Ada akiknya looo', 'publish', 1, '2015-06-13 15:13:49', 'body-kiri.jpg'),
(7, 'HTC 5', 600000, '223', 'Baru', 1, 1, 'Batrai drop', 'draft', 0, '2015-06-13 15:14:23', 'yell.jpg'),
(8, 'Tas Consina', 400000, '33', 'Bekas', 1, 1, 'Bolong banya, sering di pake naik gunung ini mah', 'publish', 3, '2015-06-13 15:15:16', 'street-cub.jpg'),
(9, 'Helm GM', 453333330, '4', 'Bekas', 1, 1, 'Banyak ni numpuk', 'publish', 1, '2015-06-13 15:16:10', 'redgo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_visitor`
--

CREATE TABLE IF NOT EXISTS `tb_visitor` (
`no` int(7) NOT NULL,
  `ip` varchar(40) DEFAULT NULL,
  `os` varchar(40) DEFAULT NULL,
  `browser` varchar(40) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_visitor`
--

INSERT INTO `tb_visitor` (`no`, `ip`, `os`, `browser`, `tanggal`) VALUES
(15, '::1', 'Unknown Windows OS', 'Chrome 43.0.2357.124', '2015-06-14 14:31:32'),
(16, '::1', 'Unknown Windows OS', 'Firefox 22.0', '2015-06-14 14:32:35'),
(17, '::1', 'Unknown Windows OS', 'Firefox 53.0', '2017-04-26 06:21:39'),
(18, '::1', 'Unknown Windows OS', 'Firefox 54.0', '2017-07-05 02:04:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
 ADD PRIMARY KEY (`id_kat`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_merk`
--
ALTER TABLE `tb_merk`
 ADD PRIMARY KEY (`id_merk`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
 ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_visitor`
--
ALTER TABLE `tb_visitor`
 ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
MODIFY `id_kat` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_merk`
--
ALTER TABLE `tb_merk`
MODIFY `id_merk` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
MODIFY `id_produk` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_visitor`
--
ALTER TABLE `tb_visitor`
MODIFY `no` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
