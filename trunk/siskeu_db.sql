-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 05, 2012 at 09:22 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `siskeu_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_keluar`
--

CREATE TABLE IF NOT EXISTS `jurnal_keluar` (
  `nomor_jurnal` int(15) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_selesai` varchar(20) NOT NULL,
  PRIMARY KEY (`nomor_jurnal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal_keluar`
--

INSERT INTO `jurnal_keluar` (`nomor_jurnal`, `kode_transaksi`, `tanggal_selesai`) VALUES
(1, 'KK/1', '28/11/2012');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_masuk`
--

CREATE TABLE IF NOT EXISTS `jurnal_masuk` (
  `nomor_jurnal` int(15) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_selesai` varchar(20) NOT NULL,
  PRIMARY KEY (`nomor_jurnal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_umum`
--

CREATE TABLE IF NOT EXISTS `jurnal_umum` (
  `nomor_jurnal` int(15) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_selesai` varchar(20) NOT NULL,
  PRIMARY KEY (`nomor_jurnal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal_umum`
--

INSERT INTO `jurnal_umum` (`nomor_jurnal`, `kode_transaksi`, `tanggal_selesai`) VALUES
(1, 'BU/1', '28/11/2012'),
(2, 'BU/2', '05/12/2012'),
(3, 'BU/3', '05/12/2012');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_admin`
--

CREATE TABLE IF NOT EXISTS `tabel_admin` (
  `id_admin` int(4) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tabel_admin`
--

INSERT INTO `tabel_admin` (`id_admin`, `nama`, `username`, `password`, `tanggal`) VALUES
(1, 'Muhammad Zainurromad', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2012-12-05 21:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_profil`
--

CREATE TABLE IF NOT EXISTS `tabel_profil` (
  `nama_sekolah` varchar(30) NOT NULL,
  `gedung` varchar(30) NOT NULL,
  `jalan` varchar(30) NOT NULL,
  `kelurahan` varchar(30) NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `propinsi` varchar(15) NOT NULL,
  `negara` varchar(15) NOT NULL,
  `telpon` varchar(12) NOT NULL,
  `fax` varchar(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `website` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_profil`
--

INSERT INTO `tabel_profil` (`nama_sekolah`, `gedung`, `jalan`, `kelurahan`, `kecamatan`, `propinsi`, `negara`, `telpon`, `fax`, `email`, `website`) VALUES
('SMA Negeri 2 Ngawi', 'SMA Negeri 2 Ngawi', 'Ngawi', 'Klitik', 'Geneng', 'Jawa Timur', 'Indonesia', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_transaksi`
--

CREATE TABLE IF NOT EXISTS `tabel_transaksi` (
  `id_transaksi` int(15) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(15) NOT NULL,
  `kode_rekening` varchar(10) NOT NULL,
  `tanggal_transaksi` varchar(12) NOT NULL,
  `jenis_transaksi` varchar(15) NOT NULL,
  `keterangan_transaksi` text NOT NULL,
  `debet` int(15) NOT NULL,
  `kredit` int(15) NOT NULL,
  `tanggal_posting` varchar(12) NOT NULL,
  `keterangan_posting` varchar(10) NOT NULL,
  `id_admin` int(4) NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`id_transaksi`, `kode_transaksi`, `kode_rekening`, `tanggal_transaksi`, `jenis_transaksi`, `keterangan_transaksi`, `debet`, `kredit`, `tanggal_posting`, `keterangan_posting`, `id_admin`) VALUES
(60, 'KK/1', '123456', '28/11/2012', 'Kas Keluar', 'Pembayaran SPP', 100000, 0, '28/11/2012', 'Post', 1),
(61, 'KK/1', '111.01', '28/11/2012', 'Kas Keluar', 'Pembayaran SPP', 0, 100000, '28/11/2012', 'Post', 1),
(62, 'BU/2', '11456', '05/12/2012', 'Bukti Umum', 'Pembayayan SPP', 130000, 0, '05/12/2012', 'Post', 1),
(63, 'BU/3', '09718', '05/12/2012', 'Bukti Umum', 'Sponsorship', 5000000, 0, '05/12/2012', 'Post', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
