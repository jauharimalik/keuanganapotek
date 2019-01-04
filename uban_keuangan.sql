-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2018 at 06:08 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uban_keuangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `satuan` varchar(6) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `nobacth` int(12) NOT NULL,
  `ed` date NOT NULL,
  `hrg_beli` int(10) NOT NULL,
  `hrg_jual` int(10) NOT NULL,
  `stok` int(5) NOT NULL,
  `stok_minim` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `nama`, `satuan`, `jenis`, `nobacth`, `ed`, `hrg_beli`, `hrg_jual`, `stok`, `stok_minim`) VALUES
('5215', 'Ondancentron 4 mg', 'Ampul', 'Generik', 313213, '2019-09-11', 1200, 2590, 420, 50),
('8541', 'Furosemide 40 mg', 'Tablet', 'Generik', 7676767, '2018-06-01', 100, 327, 550, 50),
('352', 'Vit A 6000', 'Tablet', 'Generik', 65678, '2018-07-24', 2100, 3709, 60, 100),
('5321', 'Vit C ', 'Tablet', 'Generik', 69946332, '2015-03-16', 100, 210, 180, 100),
('372', 'Zinc Kids', 'Tablet', 'Generik', 654844, '2019-05-03', 1500, 2187, 30, 50),
('52312', 'Lantus 60ml syr', 'Fls', 'Generik', 23231, '2018-05-03', 5200, 10333, 14, 25),
('8542', 'Betahistin', 'Tablet', 'Generik', 97854456, '2017-09-15', 2300, 2816, 1980, 50),
('5323', 'Bisoprolol', 'Tablet', 'Generik', 134323, '2013-11-23', 163, 332, 140, 50),
('531', 'Alprazolam 0,5 mg', 'Tablet', 'Narkotik', 131312, '2013-11-23', 1253, 2601, 85, 50),
('362', 'Alprazolam 1 mg', 'Tablet', 'Narkotik', 131231, '2013-11-23', 1653, 3337, 110, 50),
('1237', 'Cefixime 100 mg ', 'Capsul', 'Generik', 2453435, '2015-08-30', 198, 416, 1000, 50),
('6231', 'Nutriflam', 'Tablet', 'Generik', 48484841, '2018-08-11', 1250, 853, 400, 50),
('5313', 'Antalgin 500 mg', 'Tablet', 'Generik', 2112121, '2015-09-12', 152, 319, 990, 50),
('89237', 'Clyndamicin', 'Tablet', 'Generik', 3312223, '2016-03-16', 113, 237, 100, 50),
('8237', 'Masker Kertas Tali', 'Pcs', 'Alkes', 33211, '2016-07-17', 1513, 3177, 0, 50),
('920', 'Kassa 5 cm', 'Pcs', 'Alkes', 322163, '2016-06-11', 123, 258, 5, 20),
('5621', 'Gotropil inj', 'Ampul', 'Generik', 312312, '2013-11-23', 8521, 17808, 90, 50),
('12', 'Betadine', 'Botol', 'Paten', 876, '2019-09-08', 3500, 7350, 96, 20),
('81238', 'Paracetamol 500 mg', 'Tablet', 'Generik', 2512112, '2015-04-05', 120, 252, 0, 100),
('1238', 'Paracetamol 60 ml', 'Fls', 'Generik', 1233122, '2015-05-14', 142, 365, 1024, 25),
('344566', 'Piroxicam', 'Tablet', 'Generik', 876879, '2019-12-09', 170, 336, 200, 10);

-- --------------------------------------------------------

--
-- Table structure for table `biaya`
--

CREATE TABLE IF NOT EXISTS `biaya` (
  `id_biaya` int(5) NOT NULL,
  `kd_biaya` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jenis` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biaya`
--

INSERT INTO `biaya` (`id_biaya`, `kd_biaya`, `tanggal`, `jumlah`, `jenis`) VALUES
(1, 622, '2015-06-21', 1500000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bigbook_perusahaan`
--

CREATE TABLE IF NOT EXISTS `bigbook_perusahaan` (
  `nm_perusahaan` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `telp` int(15) NOT NULL,
  `logo` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `bigbook_perusahaan`
--

INSERT INTO `bigbook_perusahaan` (`nm_perusahaan`, `email`, `alamat`, `telp`, `logo`) VALUES
('APOTEK ALFA', 'jayabaya@gamil.com', 'Jl. A Yani No. 5B Comal', 2147483647, '85Koala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE IF NOT EXISTS `dokter` (
  `id_dokter` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `nm_dokter` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `kota` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `no_hp` varchar(15) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nm_dokter`, `kota`, `alamat`, `no_hp`) VALUES
('3325', 'dr. Kukuh', 'Pemalang', 'Pemalang', '02856352312'),
('23', 'dr. Kun', 'Comal', 'Gintung', '089977856389');

-- --------------------------------------------------------

--
-- Table structure for table `jns_rek`
--

CREATE TABLE IF NOT EXISTS `jns_rek` (
  `kd_jns` int(5) NOT NULL,
  `nm_jenis` varchar(15) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `jns_rek`
--

INSERT INTO `jns_rek` (`kd_jns`, `nm_jenis`) VALUES
(1, 'Debit'),
(2, 'Kredit');

-- --------------------------------------------------------

--
-- Table structure for table `kd_pemb`
--

CREATE TABLE IF NOT EXISTS `kd_pemb` (
  `tanggal` date NOT NULL,
  `tgl_tempo` date NOT NULL,
  `kd_pmb` varchar(15) NOT NULL,
  `status` varchar(5) NOT NULL,
  `disc` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `id_supplier` int(5) NOT NULL,
  `nofaktur` varchar(12) NOT NULL,
  `tgl_faktur` date NOT NULL,
  `tgl_lunas` date NOT NULL,
  `user` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kd_pemb`
--

INSERT INTO `kd_pemb` (`tanggal`, `tgl_tempo`, `kd_pmb`, `status`, `disc`, `total`, `id_supplier`, `nofaktur`, `tgl_faktur`, `tgl_lunas`, `user`) VALUES
('2015-05-14', '0000-00-00', 'PMB6820150514', 'Tunai', 0, 300000, 9331, 'BRN23232', '2015-05-14', '0000-00-00', 'Rizki Wijayanti'),
('2015-05-14', '0000-00-00', 'PMB6920150514', 'Tunai', 0, 52000, 45315, 'SHO3232', '2015-05-14', '0000-00-00', 'Rizki Wijayanti'),
('2015-06-02', '0000-00-00', 'PMB7020150602', 'Tunai', 0, 2530000, 5325, '786453676897', '2015-05-31', '0000-00-00', 'Rizki Wijayanti'),
('2015-06-02', '0000-00-00', 'PMB7120150602', 'Tunai', 0, 105000, 12345, '34254457876', '2015-05-31', '0000-00-00', 'Rizki Wijayanti'),
('2015-06-03', '0000-00-00', 'PMB7220150603', '', 0, 30000, 0, '', '0000-00-00', '0000-00-00', 'Rizki Wijayanti'),
('2015-06-04', '0000-00-00', 'PMB7420150604', 'Tunai', 0, 10000, 5325, 'BR213132', '2015-05-31', '0000-00-00', 'Rizki Wijayanti'),
('2015-06-04', '0000-00-00', 'PMB7820150604', 'Tunai', 0, 123400, 45315, 'SH99344', '2015-05-31', '0000-00-00', 'Rizki Wijayanti'),
('2015-06-04', '0000-00-00', 'PMB7920150604', 'Tunai', 0, 125000, 9331, 'BR48585', '2015-06-04', '2015-06-06', 'Rizki Wijayanti'),
('2015-06-04', '0000-00-00', 'PMB8520150604', 'Tunai', 0, 12000, 9331, 'BRN433533', '2015-06-04', '2015-06-11', 'Rizki Wijayanti'),
('2015-06-04', '0000-00-00', 'PMB8720150604', 'Tunai', 0, 15000, 9331, 'BR55545445', '2015-06-04', '0000-00-00', 'Rizki Wijayanti'),
('2015-06-06', '0000-00-00', 'PMB8820150606', 'Tunai', 0, 17000, 9331, '546757887', '2015-06-01', '0000-00-00', 'Rizki Wijayanti'),
('2015-06-11', '0000-00-00', 'PMB8920150611', 'Tempo', 0, 350000, 12345, '9876', '2015-06-09', '0000-00-00', 'Rizki Wijayanti');

-- --------------------------------------------------------

--
-- Table structure for table `kd_penj`
--

CREATE TABLE IF NOT EXISTS `kd_penj` (
  `tanggal` date NOT NULL,
  `dokter` int(15) NOT NULL,
  `kd_pjl` varchar(15) NOT NULL,
  `total` int(11) NOT NULL,
  `user` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kd_penj`
--

INSERT INTO `kd_penj` (`tanggal`, `dokter`, `kd_pjl`, `total`, `user`) VALUES
('2015-05-23', 3325, 'PJL120150523', 2980, 'Rizki Wijayanti'),
('2015-05-31', 0, 'PJL220150531', 3190, 'Rizki Wijayanti'),
('2015-06-02', 0, 'PJL320150602', 2100, 'Rizki Wijayanti'),
('2015-06-04', 0, 'PJL420150604', 46720, 'Rizki Wijayanti'),
('2015-06-09', 0, 'PJL520150609', 25900, 'Rizki Wijayanti'),
('2015-06-09', 3325, 'PJL620150609', 25900, 'Rizki Wijayanti'),
('2015-06-19', 3325, 'PJL720150619', 178080, 'Rizki Wijayanti'),
('2017-06-04', 3325, 'PJL820170604', 29400, 'demo');

-- --------------------------------------------------------

--
-- Table structure for table `kd_retur`
--

CREATE TABLE IF NOT EXISTS `kd_retur` (
  `tanggal` date NOT NULL,
  `id_pemb` varchar(15) NOT NULL,
  `kd_ret` varchar(15) NOT NULL,
  `total` int(11) NOT NULL,
  `user` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kd_retur`
--

INSERT INTO `kd_retur` (`tanggal`, `id_pemb`, `kd_ret`, `total`, `user`) VALUES
('2015-06-09', 'PMB6820150514', 'RTR120150609', 25000, 'Rizki Wijayanti'),
('2015-06-15', 'PMB6820150514', 'RTR620150615', 25000, 'Rizki Wijayanti');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE IF NOT EXISTS `keranjang` (
  `id_keranjang` int(5) NOT NULL,
  `id_product` int(5) NOT NULL,
  `id_session` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tgl_keranjang` date NOT NULL,
  `qty` int(4) NOT NULL,
  `harga` int(12) NOT NULL,
  `transaksi` varchar(10) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_laporan`
--

CREATE TABLE IF NOT EXISTS `master_laporan` (
  `tahun` int(4) NOT NULL,
  `bulan` int(2) NOT NULL,
  `penjualan` int(11) NOT NULL,
  `pembelian` int(11) NOT NULL,
  `hpp` int(11) NOT NULL,
  `biaya` int(11) NOT NULL,
  `laba` int(11) NOT NULL,
  `hutang` int(10) NOT NULL,
  `persediaan_akhir` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_laporan`
--

INSERT INTO `master_laporan` (`tahun`, `bulan`, `penjualan`, `pembelian`, `hpp`, `biaya`, `laba`, `hutang`, `persediaan_akhir`) VALUES
(2015, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_transaksi`
--

CREATE TABLE IF NOT EXISTS `master_transaksi` (
  `id_transaksi` int(15) NOT NULL,
  `kode_transaksi` varchar(15) NOT NULL,
  `kode_rekening` varchar(10) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `keterangan_transaksi` text NOT NULL,
  `debet` int(15) NOT NULL,
  `kredit` int(15) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_transaksi`
--

INSERT INTO `master_transaksi` (`id_transaksi`, `kode_transaksi`, `kode_rekening`, `tanggal_transaksi`, `keterangan_transaksi`, `debet`, `kredit`) VALUES
(1, 'PMB6820150514', '211', '2015-05-14', 'Hutang Dagang', 0, 300000),
(2, 'PMB6820150514', '111', '2015-05-14', 'Pembelian Barang', 300000, 0),
(3, 'PMB6920150514', '111', '2015-05-14', 'Kas', 0, 52000),
(4, 'PMB6920150514', '411', '2015-05-14', 'Pembelian Barang', 52000, 0),
(5, 'PJL120150523', '111', '2015-05-23', 'Kas', 2980, 0),
(6, 'PJL120150523', '411', '2015-05-23', 'Penjualan Barang', 0, 2980),
(7, 'PJL220150531', '111', '2015-05-31', 'Kas', 3190, 0),
(8, 'PJL220150531', '411', '2015-05-31', 'Penjualan Barang', 0, 3190),
(9, 'PMB7020150602', '111', '2015-06-02', 'Kas', 0, 2530000),
(10, 'PMB7020150602', '411', '2015-06-02', 'Pembelian Barang', 2530000, 0),
(11, 'PJL320150602', '111', '2015-06-02', 'Kas', 2100, 0),
(12, 'PJL320150602', '411', '2015-06-02', 'Penjualan Barang', 0, 2100),
(13, 'PMB7120150602', '111', '2015-06-02', 'Kas', 0, 105000),
(14, 'PMB7120150602', '411', '2015-06-02', 'Pembelian Barang', 105000, 0),
(15, 'PMB7220150603', '211', '2015-06-03', 'Hutang Dagang', 0, 30000),
(16, 'PMB7220150603', '111', '2015-06-03', 'Pembelian Barang', 30000, 0),
(17, 'PMB7420150604', '111', '2015-06-04', 'Kas', 0, 10000),
(18, 'PMB7420150604', '411', '2015-06-04', 'Pembelian Barang', 10000, 0),
(19, 'PMB7820150604', '111', '2015-06-04', 'Kas', 0, 123400),
(20, 'PMB7820150604', '411', '2015-06-04', 'Pembelian Barang', 123400, 0),
(21, 'PMB7920150604', '211', '2015-06-04', 'Hutang Dagang', 0, 125000),
(22, 'PMB7920150604', '111', '2015-06-04', 'Pembelian Barang', 125000, 0),
(23, 'PJL420150604', '111', '2015-06-04', 'Kas', 46720, 0),
(24, 'PJL420150604', '411', '2015-06-04', 'Penjualan Barang', 0, 46720),
(25, 'PMB8520150604', '211', '2015-06-04', 'Hutang Dagang', 0, 12000),
(26, 'PMB8520150604', '111', '2015-06-04', 'Pembelain', 12000, 0),
(27, 'PMB8720150604', '111', '2015-06-04', 'Kas', 0, 15000),
(28, 'PMB8720150604', '411', '2015-06-04', 'Pembelian Barang', 15000, 0),
(29, 'PMB8820150606', '211', '2015-06-06', 'Hutang Dagang', 0, 17000),
(30, 'PMB8820150606', '111', '2015-06-06', 'Pembelian Barang', 17000, 0),
(31, 'PMB7920150604', '411', '2015-06-06', 'Pembelian Barang', 125000, 0),
(32, 'PMB7920150604', '111', '2015-06-06', 'Hutang Dagang', 0, 125000),
(33, 'PJL520150609', '111', '2015-06-09', 'Kas', 25900, 0),
(34, 'PJL520150609', '411', '2015-06-09', 'Penjualan Barang', 0, 25900),
(35, 'PJL620150609', '111', '2015-06-09', 'Kas', 25900, 0),
(36, 'PJL620150609', '411', '2015-06-09', 'Penjualan Barang', 0, 25900),
(37, 'RTR120150609', '511', '2015-06-09', 'Retur Pembelian', 25000, 0),
(38, 'RTR120150609', '111', '2015-06-09', 'Kas', 0, 25000),
(39, 'PMB8920150611', '211', '2015-06-11', 'Hutang Dagang', 0, 350000),
(40, 'PMB8920150611', '111', '2015-06-11', 'Pembelian Barang', 350000, 0),
(41, 'PMB8520150604', '411', '2015-06-11', 'Pembelian Barang', 12000, 0),
(42, 'PMB8520150604', '111', '2015-06-11', 'Hutang Dagang', 0, 12000),
(43, 'RTR620150615', '511', '2015-06-15', 'Retur Pembelian', 25000, 0),
(44, 'RTR620150615', '111', '2015-06-15', 'Kas', 0, 25000),
(45, 'PJL720150619', '111', '2015-06-19', 'Kas', 178080, 0),
(46, 'PJL720150619', '411', '2015-06-19', 'Penjualan Barang', 0, 178080),
(49, 'BYA120150621', '111', '2015-06-21', 'Kas', 1500000, 0),
(50, 'BYA120150621', '622', '2015-06-21', 'Biaya Gaji', 0, 1500000),
(51, 'PJL820170604', '111', '2017-06-04', 'Kas', 29400, 0),
(52, 'PJL820170604', '411', '2017-06-04', 'Penjualan Barang', 0, 29400);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `tgl` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `publish`, `status`, `aktif`, `urutan`, `tgl`) VALUES
(1, 'Transaksi', 'transaksi', 'Y', 'user', 'Y', 1, '29-10-2013 18:47:15'),
(2, 'Jurnal', 'jurnal', 'Y', 'user', 'Y', 2, '29-10-2013 18:47:15'),
(4, 'Grafik', 'grafik', 'Y', 'user', 'Y', 3, '02-12-2013 13:49:06'),
(91, 'bantuan', 'bantuan', 'N', 'admin', 'N', 11, '29-10-2013 18:47:15'),
(5, 'Laporan ', 'laporan', 'N', 'admin', 'Y', 13, '02-12-2013 12:42:07'),
(6, 'Users', 'user', 'N', 'admin', 'N', 8, '29-10-2013 18:47:15'),
(7, 'Modul', 'modul', 'N', 'admin', 'N', 9, '29-10-2013 18:47:15'),
(3, 'Barang', 'barang', 'Y', 'user', 'Y', 4, '25-11-2013 09:26:05'),
(11, 'Supplier', 'supplier', 'Y', 'user', 'Y', 6, '25-11-2013 09:26:33'),
(12, 'Perkiraan', 'setup', 'N', 'admin', 'N', 5, '29-10-2013 18:47:15'),
(95, 'Pemulihan', 'pemulihan', 'N', 'admin', 'N', 10, '29-10-2013 18:47:15'),
(96, 'Tentang', 'about', 'N', 'admin', 'N', 12, '25-11-2013 09:29:26'),
(98, 'Neraca', 'neraca', 'N', 'admin', 'N', 14, '25-11-2013 09:28:16'),
(121, 'Coba', 'coba', 'Y', 'user', 'Y', 15, '07-06-2015 12:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_transaksi` varchar(100) NOT NULL,
  `nobacth` varchar(11) NOT NULL,
  `ed` date NOT NULL,
  `jumlah` int(12) NOT NULL,
  `harga` int(12) NOT NULL,
  `subtotal` int(12) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `id_product`, `id_transaksi`, `nobacth`, `ed`, `jumlah`, `harga`, `subtotal`, `tanggal`) VALUES
(69, 52312, 'PMB6920150514', '23231', '2018-05-03', 10, 5200, 52000, '2015-05-14'),
(68, 5215, 'PMB6820150514', '33215', '2018-05-18', 120, 2500, 300000, '2015-05-14'),
(70, 8542, 'PMB7020150602', '97854456', '2017-09-15', 1100, 2300, 2530000, '2015-06-02'),
(71, 352, 'PMB7120150602', '65678', '2018-07-24', 50, 2100, 105000, '2015-06-02'),
(72, 372, 'PMB7220150603', '654844', '2019-05-03', 20, 1500, 30000, '2015-06-03'),
(73, 5215, 'PMB7320150604', '6371263712`', '2018-09-12', 100, 1250, 125000, '2015-06-04'),
(74, 5215, 'PMB7320150604', '6371263712`', '2018-09-12', 100, 1250, 125000, '2015-06-04'),
(75, 5215, 'PMB7320150604', '6371263712`', '2018-09-12', 100, 1250, 125000, '2015-06-04'),
(76, 5215, 'PMB7320150604', '6371263712`', '2018-09-12', 100, 1250, 125000, '2015-06-04'),
(77, 8541, 'PMB7420150604', '7676767', '2018-06-01', 100, 100, 10000, '2015-06-04'),
(78, 5215, 'PMB7820150604', '64646464', '2018-09-12', 100, 1234, 123400, '2015-06-04'),
(79, 6231, 'PMB7920150604', '48484841', '2018-08-11', 100, 1250, 125000, '2015-06-04'),
(84, 0, 'PMB8020150604', '', '0000-00-00', 0, 0, 0, '2015-06-04'),
(85, 5215, 'PMB8520150604', '313213', '2019-09-11', 10, 1200, 12000, '2015-06-04'),
(86, 0, 'PMB8620150604', '', '0000-00-00', 0, 0, 0, '2015-06-04'),
(87, 344566, 'PMB8720150604', '5464666', '2019-07-11', 100, 150, 15000, '2015-06-04'),
(88, 344566, 'PMB8820150606', '876879', '2019-12-09', 100, 170, 17000, '2015-06-06'),
(89, 12, 'PMB8920150611', '876', '2019-09-08', 100, 3500, 350000, '2015-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_transaksi` varchar(100) NOT NULL,
  `jumlah` int(12) NOT NULL,
  `harga` int(12) NOT NULL,
  `subtotal` int(12) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `id_product`, `id_transaksi`, `jumlah`, `harga`, `subtotal`, `tanggal`) VALUES
(1, 8542, 'PJL120150523', 10, 298, 2980, '2015-05-23'),
(2, 5313, 'PJL220150531', 10, 319, 3190, '2015-05-31'),
(3, 5321, 'PJL320150602', 10, 210, 2100, '2015-06-02'),
(4, 5215, 'PJL420150604', 10, 4672, 46720, '2015-06-04'),
(5, 5215, 'PJL520150609', 10, 2590, 25900, '2015-06-09'),
(6, 5215, 'PJL620150609', 10, 2590, 25900, '2015-06-09'),
(7, 5621, 'PJL720150619', 10, 17808, 178080, '2015-06-19'),
(8, 12, 'PJL820170604', 4, 7350, 29400, '2017-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `penutup`
--

CREATE TABLE IF NOT EXISTS `penutup` (
  `tanggal` varchar(2) NOT NULL,
  `tahun` int(4) NOT NULL,
  `bulan` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penutup`
--

INSERT INTO `penutup` (`tanggal`, `tahun`, `bulan`) VALUES
('1', 2015, '6');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE IF NOT EXISTS `rekening` (
  `kd_rek` int(5) NOT NULL,
  `nama_rekening` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jenis` int(11) NOT NULL,
  `jumlah` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`kd_rek`, `nama_rekening`, `jenis`, `jumlah`) VALUES
(111, 'Kas Apotek', 1, 26985445),
(211, 'Hutang Dagang', 2, 10585850),
(611, 'Biaya Listrik', 2, 100000),
(622, 'Biaya Gaji', 2, 1500000),
(911, 'Beban Sewa', 2, 0),
(612, 'Biaya air', 2, 50000),
(311, 'Modal Ibu Boergah', 2, 100000000),
(411, 'Pendapatan ', 2, 21374495),
(112, 'Pembelian', 1, 4289050),
(113, 'Persediaan Barang Dagang', 1, 2156512),
(312, 'Prive Ibu Boergah', 1, 0),
(511, 'Retur Pembelian', 1, 50000),
(114, 'Peralatan Toko', 1, 0),
(512, 'Retur Penjualan', 1, 0),
(422, 'Potongan Penjualan', 2, 0),
(115, 'Penyusutan Peralatan Kantor', 1, 0),
(116, 'Penyusutan Gedung', 1, 0),
(117, 'Pajak Penghasilan', 1, 0),
(423, 'Potongan Pembelian', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `retur`
--

CREATE TABLE IF NOT EXISTS `retur` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_transaksi` varchar(100) NOT NULL,
  `nobacth` varchar(11) NOT NULL,
  `ed` date NOT NULL,
  `jumlah` int(12) NOT NULL,
  `harga` int(12) NOT NULL,
  `subtotal` int(12) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retur`
--

INSERT INTO `retur` (`id`, `id_product`, `id_transaksi`, `nobacth`, `ed`, `jumlah`, `harga`, `subtotal`, `tanggal`) VALUES
(5, 5215, 'RTR120150609', '33215', '2018-05-18', 10, 2500, 25000, '2015-06-09'),
(6, 5215, 'RTR620150615', '33215', '2018-05-18', 10, 2500, 25000, '2015-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id_supplier` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `nm_supplier` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `kota` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `no_hp` varchar(15) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nm_supplier`, `kota`, `alamat`, `no_hp`) VALUES
('5325', 'BINSARAYA', 'PEKALONGAN', 'PEKALONGAN', '02858556422'),
('6984', 'Almedika', 'Pekalongan', 'Pekalongan', '028596314755'),
('45315', 'SOHO', 'SEMARANG', 'SEMARANG', '028494335763'),
('93182', 'MST', 'SEMARANG', 'SEMARANG', '02849343343'),
('9331', 'BERNO', 'SEMARANG', 'SEMARANG', '02849336411'),
('12345', 'recom', 'bandung', 'bandung', '09789876868'),
('84h84', 'dian', 'Tegal', 'Tegal', '5767 0987080'),
('08989', 'Kupluk', 'Jakarta', 'Tanah Abang', '087867891098');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `photo` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `tanggal` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jamin` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jamout` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `photo`, `email`, `no_telp`, `level`, `blokir`, `tanggal`, `jamin`, `jamout`, `status`, `id_session`) VALUES
('root', '63a9f0ea7bb98050796b649e85481845', 'Rizki Wijayanti', '', 'rizkiwijayanti7@gmail.com', '083862098862', 'admin', 'N', '22-06-2015', '16:34:15', 'loggin', 'online', '9udi7i6lil445nt420027ec215'),
('demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo', '', 'demo@demo.com', '0888888888', 'admin', 'Y', '14-12-2018', '06:08:09', 'loggin', 'online', '3kgm7mtl3jrg1gult36t0030i0'),
('alis', '20d5a950ad8d9a10ddb346d5312ff6e7', 'Sialis Poncowati', '', 'alice.pesek@gmail.com', '0856123456', 'user', 'N', '', '', '', '', '20d5a950ad8d9a10ddb346d5312ff6e7'),
('ggg', '99a30df0f2488360cdd46b4b88e5f5f0', 'hgjii', '', 'hgfhfj', 'gfshgfjhf', 'user', 'N', '11-06-2015', '06:10:20', '06:11:47', 'offline', 'co5qd30g1cu4ou9vsu76bs3ab6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `master_transaksi`
--
ALTER TABLE `master_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`kd_rek`);

--
-- Indexes for table `retur`
--
ALTER TABLE `retur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biaya`
--
ALTER TABLE `biaya`
  MODIFY `id_biaya` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_transaksi`
--
ALTER TABLE `master_transaksi`
  MODIFY `id_transaksi` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `retur`
--
ALTER TABLE `retur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
