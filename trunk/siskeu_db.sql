-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2013 at 07:02 AM
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
(1, 'KK/1', '07/01/2013'),
(2, 'KK/2', '07/01/2013');

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
(1, 'BU/1', '07/01/2013');

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
(1, 'Muhammad Zainurromad', 'Bendahara', '21232f297a57a5a743894a0e4a801fc3', '2013-01-07 07:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_akun`
--

CREATE TABLE IF NOT EXISTS `tabel_akun` (
  `kode_rekening` varchar(10) NOT NULL DEFAULT '',
  `nama_rekening` varchar(100) NOT NULL,
  PRIMARY KEY (`kode_rekening`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_akun`
--

INSERT INTO `tabel_akun` (`kode_rekening`, `nama_rekening`) VALUES
('1-001  ', 'Kas Unit Umum'),
('2-001  ', 'SPP  '),
('2-002  ', 'Uang Gedung  '),
('2-003  ', 'Uang Seragam  '),
('2-004  ', 'Uang Buku  '),
('2-005  ', 'Uang Test'),
('2-006  ', 'Uang Infaq Pembangunan'),
('2-007  ', 'Uang PSB'),
('2-008  ', 'Dana BOS'),
('2-009  ', 'Dana Yayasan'),
('2-010  ', 'Donatur'),
('2-099  ', 'Lain-lain'),
('3-110 ', 'Konsumsi  '),
('3-111 ', 'Konsumsi Siswa  '),
('3-112 ', ' Konsumsi Guru  '),
('3-113 ', 'Snack Siswa'),
('3-114 ', 'Air Minum Siswa  '),
('3-115 ', 'Konsumsi Yayasan  '),
('3-116 ', 'Konsumsi Tamu  '),
('3-117 ', 'Biaya PDAM '),
('3-118 ', 'Gaji Guru dan Karyawan  '),
('3-119 ', 'Dana Transport & Lembur  '),
('3-120 ', 'Biaya Listrik'),
('3-121 ', 'Biaya Telepon'),
('3-122 ', 'Administrasi Kantor  '),
('3-123 ', 'Alat Tulis Kantor  '),
('3-124 ', 'Perlengkapan Kantor  '),
('3-125 ', 'Perlengkapan Olahraga  '),
('3-126 ', 'Perlengkapan Kelas  '),
('3-127 ', 'Perlengkapan Laboratorium  '),
('3-128 ', 'Perlengkapan Perpustakaan  '),
('3-129 ', 'Perlengkapan UKS  '),
('3-130 ', 'FotoCopy  '),
('3-131 ', 'Perlengkapan Elektronika  '),
('3-132 ', 'Biaya Testing  '),
('3-133 ', 'Penggandaan Soal  '),
('3-134 ', 'Biaya Soal Diknas  '),
('3-135 ', 'Kegiatan Siswa  '),
('3-136 ', 'Kegiatan Yayasan  '),
('3-137 ', 'Buku ke Penerbit  '),
('3-138 ', 'Seragam ke Pemasok  '),
('3-139 ', 'Transport dan Dinas Luar  '),
('3-140 ', 'Kesehatan  '),
('3-141 ', 'Dana Sosial  '),
('3-200 ', 'Pemeliharaan  '),
('3-201 ', 'Pemeliharan Gedung  '),
('3-202 ', 'Pemeliharaan Peralatan  '),
('3-220 ', 'Operasional PSB  '),
('3-230 ', 'Piutang Sementara (Kas Bon)  '),
('4-001 ', 'Saldo Akhir Kas  '),
('4-002 ', 'Saldo Akhir Bank  '),
('1-002 ', 'Kas di Bank');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
