-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2018 at 11:49 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokosepatukita`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_Barang` int(11) NOT NULL,
  `nama_Barang` varchar(30) NOT NULL,
  `harga_Barang` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `merk_sepatu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_pembelian`
--

CREATE TABLE `item_pembelian` (
  `id_beli` int(11) DEFAULT NULL,
  `jml_Barang` int(11) NOT NULL,
  `item_Harga` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `id_Barang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_penjualan`
--

CREATE TABLE `item_penjualan` (
  `id_Jual` int(11) DEFAULT NULL,
  `harga_Item` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_Barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_Karyawan` int(11) NOT NULL,
  `nama_Karyawan` varchar(30) NOT NULL,
  `alamat_Karyawan` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `PASSWORDs` varchar(30) NOT NULL,
  `telp_Karyawan` varchar(15) NOT NULL,
  `hak_akses` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `operasional`
--

CREATE TABLE `operasional` (
  `id_ops` int(11) NOT NULL,
  `id_Karyawan` int(11) DEFAULT NULL,
  `total_ops` int(11) DEFAULT NULL,
  `nama_ops` varchar(30) NOT NULL,
  `tgl_ops` datetime DEFAULT NULL,
  `lama_durasi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_Pelanggan` int(11) NOT NULL,
  `nama_Pelanggan` varchar(30) NOT NULL,
  `alamat_Pelanggan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_Beli` int(11) NOT NULL,
  `tanggal_Beli` datetime DEFAULT NULL,
  `id_Karyawan` int(11) DEFAULT NULL,
  `id_Supplier` int(11) DEFAULT NULL,
  `id_Barang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_Jual` int(11) NOT NULL,
  `tanggal_Jual` datetime DEFAULT NULL,
  `id_Karyawan` int(11) DEFAULT NULL,
  `id_Pelanggan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_Supplier` int(11) NOT NULL,
  `nama_Supplier` varchar(30) NOT NULL,
  `alamat_Supplier` varchar(50) NOT NULL,
  `telp_Supplier` varchar(15) NOT NULL,
  `email_Supplier` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_Barang`);

--
-- Indexes for table `item_pembelian`
--
ALTER TABLE `item_pembelian`
  ADD KEY `id_beli` (`id_beli`),
  ADD KEY `id_Barang` (`id_Barang`);

--
-- Indexes for table `item_penjualan`
--
ALTER TABLE `item_penjualan`
  ADD KEY `id_Barang` (`id_Barang`),
  ADD KEY `id_Jual` (`id_Jual`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_Karyawan`);

--
-- Indexes for table `operasional`
--
ALTER TABLE `operasional`
  ADD PRIMARY KEY (`id_ops`),
  ADD KEY `id_Karyawan` (`id_Karyawan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_Pelanggan`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_Beli`),
  ADD KEY `id_Karyawan` (`id_Karyawan`),
  ADD KEY `id_Supplier` (`id_Supplier`),
  ADD KEY `id_Barang` (`id_Barang`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_Jual`),
  ADD KEY `id_Karyawan` (`id_Karyawan`),
  ADD KEY `id_Pelanggan` (`id_Pelanggan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_Supplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_Barang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_Karyawan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operasional`
--
ALTER TABLE `operasional`
  MODIFY `id_ops` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_Pelanggan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_Beli` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_Jual` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_Supplier` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item_pembelian`
--
ALTER TABLE `item_pembelian`
  ADD CONSTRAINT `item_pembelian_ibfk_1` FOREIGN KEY (`id_beli`) REFERENCES `pembelian` (`id_Beli`),
  ADD CONSTRAINT `item_pembelian_ibfk_2` FOREIGN KEY (`id_Barang`) REFERENCES `barang` (`id_Barang`);

--
-- Constraints for table `item_penjualan`
--
ALTER TABLE `item_penjualan`
  ADD CONSTRAINT `item_penjualan_ibfk_1` FOREIGN KEY (`id_Barang`) REFERENCES `barang` (`id_Barang`),
  ADD CONSTRAINT `item_penjualan_ibfk_2` FOREIGN KEY (`id_Jual`) REFERENCES `penjualan` (`id_Jual`);

--
-- Constraints for table `operasional`
--
ALTER TABLE `operasional`
  ADD CONSTRAINT `operasional_ibfk_1` FOREIGN KEY (`id_Karyawan`) REFERENCES `karyawan` (`id_Karyawan`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`id_Karyawan`) REFERENCES `karyawan` (`id_Karyawan`),
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`id_Supplier`) REFERENCES `supplier` (`id_Supplier`),
  ADD CONSTRAINT `pembelian_ibfk_3` FOREIGN KEY (`id_Barang`) REFERENCES `barang` (`id_Barang`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_Karyawan`) REFERENCES `karyawan` (`id_Karyawan`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_Pelanggan`) REFERENCES `pelanggan` (`id_Pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
