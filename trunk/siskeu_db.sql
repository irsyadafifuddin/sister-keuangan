-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2013 at 07:26 AM
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
(2, 'KK/2', '05/09/2012'),
(1, 'KK/1', '09/01/2013'),
(3, 'KK/3', '14/09/2012');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_umum`
--

CREATE TABLE IF NOT EXISTS `jurnal_umum` (
  `nomor_jurnal` int(15) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_selesai` date NOT NULL,
  PRIMARY KEY (`nomor_jurnal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal_umum`
--

INSERT INTO `jurnal_umum` (`nomor_jurnal`, `kode_transaksi`, `tanggal_selesai`) VALUES
(2, 'BU/2', '0000-00-00'),
(1, 'BU/3', '0000-00-00'),
(3, 'BU/3', '0000-00-00'),
(4, 'BU/4', '0000-00-00'),
(5, 'BU/5', '0000-00-00'),
(6, 'BU/6', '0000-00-00'),
(7, 'BU/7', '0000-00-00');

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
(1, 'Muhammad Zainurromad', 'Bendahara', '21232f297a57a5a743894a0e4a801fc3', '2013-01-11 07:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_akun`
--

CREATE TABLE IF NOT EXISTS `tabel_akun` (
  `kode_rekening` varchar(10) NOT NULL DEFAULT '',
  `nama_rekening` varchar(100) NOT NULL,
  `tanggal_awal` int(12) NOT NULL,
  `awal_debet` int(15) NOT NULL,
  `awal_kredit` int(15) NOT NULL,
  PRIMARY KEY (`kode_rekening`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_akun`
--

INSERT INTO `tabel_akun` (`kode_rekening`, `nama_rekening`, `tanggal_awal`, `awal_debet`, `awal_kredit`) VALUES
('1-001  ', 'Kas Unit Umum', 0, 200000000, 200000000),
('2-001  ', 'SPP  ', 0, 0, 0),
('2-002  ', 'Uang Gedung  ', 0, 0, 0),
('2-003  ', 'Uang Seragam  ', 0, 0, 0),
('2-004  ', 'Uang Buku  ', 0, 0, 0),
('2-005  ', 'Uang Test', 0, 0, 0),
('2-006  ', 'Uang Infaq Pembangunan', 0, 0, 0),
('2-007  ', 'Uang PSB', 0, 0, 0),
('2-008  ', 'Dana BOS', 0, 0, 0),
('2-009  ', 'Dana Yayasan', 0, 0, 0),
('2-010  ', 'Donatur', 0, 0, 0),
('2-099  ', 'Lain-lain', 0, 0, 0),
('3-110 ', 'Konsumsi  ', 0, 0, 0),
('3-111 ', 'Konsumsi Siswa  ', 0, 0, 0),
('3-112 ', ' Konsumsi Guru  ', 0, 0, 0),
('3-113 ', 'Snack Siswa', 0, 0, 0),
('3-114 ', 'Air Minum Siswa  ', 0, 0, 0),
('3-115 ', 'Konsumsi Yayasan  ', 0, 0, 0),
('3-116 ', 'Konsumsi Tamu  ', 0, 0, 0),
('3-117 ', 'Biaya PDAM ', 0, 0, 0),
('3-118 ', 'Gaji Guru dan Karyawan  ', 0, 0, 0),
('3-119 ', 'Dana Transport & Lembur  ', 0, 0, 0),
('3-120 ', 'Biaya Listrik', 0, 0, 0),
('3-121 ', 'Biaya Telepon', 0, 0, 0),
('3-122 ', 'Administrasi Kantor  ', 0, 0, 0),
('3-123 ', 'Alat Tulis Kantor  ', 0, 0, 0),
('3-124 ', 'Perlengkapan Kantor  ', 0, 0, 0),
('3-125 ', 'Perlengkapan Olahraga  ', 0, 0, 0),
('3-126 ', 'Perlengkapan Kelas  ', 0, 0, 0),
('3-127 ', 'Perlengkapan Laboratorium  ', 0, 0, 0),
('3-128 ', 'Perlengkapan Perpustakaan  ', 0, 0, 0),
('3-129 ', 'Perlengkapan UKS  ', 0, 0, 0),
('3-130 ', 'FotoCopy  ', 0, 0, 0),
('3-131 ', 'Perlengkapan Elektronika  ', 0, 0, 0),
('3-132 ', 'Biaya Testing  ', 0, 0, 0),
('3-133 ', 'Penggandaan Soal  ', 0, 0, 0),
('3-134 ', 'Biaya Soal Diknas  ', 0, 0, 0),
('3-135 ', 'Kegiatan Siswa  ', 0, 0, 0),
('3-136 ', 'Kegiatan Yayasan  ', 0, 0, 0),
('3-137 ', 'Buku ke Penerbit  ', 0, 0, 0),
('3-138 ', 'Seragam ke Pemasok  ', 0, 0, 0),
('3-139 ', 'Transport dan Dinas Luar  ', 0, 0, 0),
('3-140 ', 'Kesehatan  ', 0, 0, 0),
('3-141 ', 'Dana Sosial  ', 0, 0, 0),
('3-200 ', 'Pemeliharaan  ', 0, 0, 0),
('3-201 ', 'Pemeliharan Gedung  ', 0, 0, 0),
('3-202 ', 'Pemeliharaan Peralatan  ', 0, 0, 0),
('3-220 ', 'Operasional PSB  ', 0, 0, 0),
('3-230 ', 'Piutang Sementara (Kas Bon)  ', 0, 0, 0),
('4-001 ', 'Saldo Akhir Kas  ', 0, 0, 0),
('4-002 ', 'Saldo Akhir Bank  ', 0, 0, 0),
('1-002 ', 'Kas di Bank', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_neraca`
--

CREATE TABLE IF NOT EXISTS `tabel_neraca` (
  `kode_rekening` varchar(10) NOT NULL DEFAULT '',
  `nama_rekening` varchar(100) NOT NULL,
  `tanggal_awal` varchar(12) NOT NULL,
  `awal_debet` int(15) NOT NULL,
  `awal_kredit` int(15) NOT NULL,
  `mut_debet` int(15) NOT NULL,
  `mut_kredit` int(15) NOT NULL,
  `sisa_debet` int(15) NOT NULL,
  `sisa_kredit` int(15) NOT NULL,
  `rl_debet` int(15) NOT NULL,
  `rl_kredit` int(15) NOT NULL,
  `nrc_debet` int(15) NOT NULL,
  `nrc_kredit` int(15) NOT NULL,
  `posisi` varchar(15) NOT NULL,
  `normal` varchar(10) NOT NULL,
  PRIMARY KEY (`kode_rekening`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`id_transaksi`, `kode_transaksi`, `kode_rekening`, `tanggal_transaksi`, `jenis_transaksi`, `keterangan_transaksi`, `debet`, `kredit`, `tanggal_posting`, `keterangan_posting`, `id_admin`) VALUES
(69, 'BU/3', '2-010  ', '09/01/2013', 'Bukti Umum', 'Sponsorship Dari PT Djarum', 2300000, 0, '09/01/2013', 'Post', 1),
(70, 'BU/2', '2-001  ', '01/12/2012', 'Bukti Umum', 'Rekap Pembayaran SPP Bulan Desember', 30000000, 0, '09/01/2013', 'Post', 1),
(71, 'KK/1', '3-114 ', '09/01/2013', 'Kas Keluar', 'Kegiatan Futsal Mingguan', 12000, 0, '09/01/2013', 'Post', 1),
(72, 'KK/1', '1-001 ', '09/01/2013', 'Kas Keluar', 'Kas Unit Umum', 0, 12000, '09/01/2013', 'Post', 1),
(73, 'KK/2', '3-117 ', '05/09/2012', 'Kas Keluar', 'Pembayaran Air PDAM', 200000, 0, '09/01/2013', 'Post', 1),
(74, 'KK/2', '1-001 ', '05/09/2012', 'Kas Keluar', 'Kas Unit Umum', 0, 200000, '09/01/2013', 'Post', 1),
(75, 'BU/4', '2-002  ', '09/01/2013', 'Bukti Umum', 'Pembayaran Uang Gedung', 0, 300000, '09/01/2013', 'Post', 1),
(76, 'BU/5', '2-002  ', '10/01/2013', 'Bukti Umum', 'Pembayaran Uang Gedung', 300000, 0, '10/01/2013', 'Post', 1),
(77, 'KK/3', '3-114 ', '14/09/2012', 'Kas Keluar', 'Air Minum Untuk Kegiatan KTS', 20000, 0, '10/01/2013', 'Post', 1),
(78, 'KK/3', '1-001 ', '14/09/2012', 'Kas Keluar', 'Kas Unit Umum', 0, 20000, '10/01/2013', 'Post', 1),
(79, 'BU/6', '2-001  ', '2013-01-10', 'Bukti Umum', 'Pembayaran SPP', 100000, 0, '10/01/2013', 'Post', 1),
(80, 'BU/7', '1-001  ', '2013-01-10', 'Bukti Umum', 'Test Aja', 10000000, 0, '10/01/2013', 'Post', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
