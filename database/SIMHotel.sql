-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jan 2021 pada 13.11
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE IF NOT EXISTS `tbl_galeri` (
`id_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(25) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `kategori_galeri_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id_galeri`, `nama_galeri`, `gambar`, `kategori_galeri_id`) VALUES
(3, 'Hotel Cab. Concat', '4ff6a5e7c6ca5a905adeeaef1aaa401c.jpg', 2),
(5, 'Hotel Cab. Klaten', '7aec040fb8587c8e6517079eac71d709.jpg', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kamar`
--

CREATE TABLE IF NOT EXISTS `tbl_kamar` (
`id_kamar` int(11) NOT NULL,
  `nomer_kamar` char(5) NOT NULL,
  `harga_kamar` bigint(15) NOT NULL,
  `fasilitas_kamar` text NOT NULL,
  `status_kamar` int(2) NOT NULL,
  `kelas_kamar_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kamar`
--

INSERT INTO `tbl_kamar` (`id_kamar`, `nomer_kamar`, `harga_kamar`, `fasilitas_kamar`, `status_kamar`, `kelas_kamar_id`) VALUES
(1, 'A01', 350000, 'Berikut Keteranggan Kamar dan fasilitasnya', 0, 1),
(2, 'A02', 350000, 'Berikut Adalah Fasilitas Kamar', 0, 1),
(3, 'B01', 300000, 'Isi Kamar', 0, 2),
(4, 'B02', 300000, 'Isi Kamar 2', 0, 2),
(5, 'A03', 350000, 'Isi kamar 5', 0, 1),
(6, 'A04', 350000, 'Isi Kamar A04', 0, 1),
(7, 'A05', 350000, 'Isi Kamar A05', 0, 1),
(8, 'A06', 350000, 'Isi Kamar', 0, 1),
(9, 'B03', 300000, 'Isi kamar', 0, 2),
(10, 'B04', 300000, 'Isi Kamar B04', 0, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kamar_gambar`
--

CREATE TABLE IF NOT EXISTS `tbl_kamar_gambar` (
`id_kamar_gambar` int(11) NOT NULL,
  `nama_kamar_gambar` varchar(50) NOT NULL,
  `kamar_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kamar_gambar`
--

INSERT INTO `tbl_kamar_gambar` (`id_kamar_gambar`, `nama_kamar_gambar`, `kamar_id`) VALUES
(1, 'ff494a1f31812ce31f5b640dcad0fd69.jpg', 2),
(2, '077436260370e54d21df41f08de9cf77.jpg', 1),
(3, '94744ca39f5d3d39dd02237949297c2a.jpg', 3),
(4, '1bb939c553b1f0fa8f9d12d4648b7cf9.jpg', 4),
(5, '3b68462ccff0c2ea1df278fa7fdfd91e.jpg', 5),
(6, 'de8bdefdef0ee5215ad66f122af25766.jpg', 6),
(7, '912886d30cbbe1b74e7bd9d58ccc048c.jpg', 7),
(8, '4e23c294a4f69d205524209847d2e635.jpg', 8),
(9, '88f54d8756f67030a6ac91bee5f9d186.jpg', 9),
(10, '3b01d294e9c98a0e63a49ddbf769eeac.jpg', 10),
(12, '375aa38fd39a9e15e58368e0e384918f.jpg', 1),
(13, '5db8529314d4356baf2cd41345adbfd5.jpg', 1),
(14, '5cc182bf378a78ea786ba6c7ef733403.jpg', 1),
(15, 'b3baae25d4edf29e0800b364046c06de.jpg', 1),
(16, 'a3661c89024db482ce197c7b10c8b582.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori_galeri`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori_galeri` (
`id_kategori_galeri` int(11) NOT NULL,
  `nama_kategori_galeri` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori_galeri`
--

INSERT INTO `tbl_kategori_galeri` (`id_kategori_galeri`, `nama_kategori_galeri`) VALUES
(2, 'Category First'),
(3, 'Category Second'),
(4, 'Category Three'),
(5, 'Category Four');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas_kamar`
--

CREATE TABLE IF NOT EXISTS `tbl_kelas_kamar` (
`id_kelas_kamar` int(11) NOT NULL,
  `nama_kelas_kamar` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas_kamar`
--

INSERT INTO `tbl_kelas_kamar` (`id_kelas_kamar`, `nama_kelas_kamar`) VALUES
(1, 'KELAS A'),
(2, 'KELAS B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_reservasi`
--

CREATE TABLE IF NOT EXISTS `tbl_reservasi` (
`id_reservasi` int(11) NOT NULL,
  `nama_reservasi` varchar(25) NOT NULL,
  `telp_reservasi` varchar(12) NOT NULL,
  `alamat_reservasi` text NOT NULL,
  `tgl_reservasi_masuk` date NOT NULL,
  `tgl_reservasi_keluar` date NOT NULL,
  `kamar_id` int(11) NOT NULL,
  `status_reservasi` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_reservasi`
--

INSERT INTO `tbl_reservasi` (`id_reservasi`, `nama_reservasi`, `telp_reservasi`, `alamat_reservasi`, `tgl_reservasi_masuk`, `tgl_reservasi_keluar`, `kamar_id`, `status_reservasi`) VALUES
(2, 'Fera', '088233239575', 'Concat', '2021-01-19', '2021-01-22', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_reservasi_pembayaran`
--

CREATE TABLE IF NOT EXISTS `tbl_reservasi_pembayaran` (
`id_reservasi_pembayaran` int(11) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `nominal_pembayaran` int(11) NOT NULL,
  `uang_bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `reservasi_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_reservasi_pembayaran`
--

INSERT INTO `tbl_reservasi_pembayaran` (`id_reservasi_pembayaran`, `tgl_pembayaran`, `nominal_pembayaran`, `uang_bayar`, `kembalian`, `reservasi_id`) VALUES
(2, '2021-01-19', 1050000, 2000000, 950000, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_saran`
--

CREATE TABLE IF NOT EXISTS `tbl_saran` (
`id_saran` int(11) NOT NULL,
  `nama_saran` varchar(20) NOT NULL,
  `email_saran` varchar(25) NOT NULL,
  `telp_saran` bigint(15) NOT NULL,
  `isi_saran` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_saran`
--

INSERT INTO `tbl_saran` (`id_saran`, `nama_saran`, `email_saran`, `telp_saran`, `isi_saran`) VALUES
(3, 'Fera', 'fera@gmail.com', 123123, 'handuknya kurang besar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tentang_hotel`
--

CREATE TABLE IF NOT EXISTS `tbl_tentang_hotel` (
`id_tentang_hotel` int(11) NOT NULL,
  `nama_hotel` varchar(20) NOT NULL,
  `alamat_tentang_hotel` varchar(35) NOT NULL,
  `email_tentang_hotel` varchar(25) NOT NULL,
  `telp_tentang_hotel` bigint(15) NOT NULL,
  `isi_tentang_hotel` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `fb` varchar(50) NOT NULL,
  `tw` varchar(50) NOT NULL,
  `gp` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tentang_hotel`
--

INSERT INTO `tbl_tentang_hotel` (`id_tentang_hotel`, `nama_hotel`, `alamat_tentang_hotel`, `email_tentang_hotel`, `telp_tentang_hotel`, `isi_tentang_hotel`, `logo`, `fb`, `tw`, `gp`) VALUES
(1, 'SIM HOTEL UAS PWL', 'Jl.in aja dulu', 'admin@hotel.com', 123456, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '22ba7c5da75a7a4f79f8e92ed4aa6292.png', 'http://facebook.com', 'http://twitter.com', 'http://gplus.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`id_user` int(11) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `email_user` varchar(20) NOT NULL,
  `telp_user` bigint(15) NOT NULL,
  `username_user` varchar(10) NOT NULL,
  `password_user` varchar(50) NOT NULL,
  `user_group_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email_user`, `telp_user`, `username_user`, `password_user`, `user_group_id`) VALUES
(1, 'Pemilik Hotel', 'admin@hotel.com', 98765456, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'Operator', 'operator@hotel.com', 98765467, 'operator', '4b583376b2767b923c3e1da60d10de59', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user_group`
--

CREATE TABLE IF NOT EXISTS `tbl_user_group` (
`id_user_group` int(11) NOT NULL,
  `nama_user_group` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user_group`
--

INSERT INTO `tbl_user_group` (`id_user_group`, `nama_user_group`) VALUES
(1, 'admin'),
(2, 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
 ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
 ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `tbl_kamar_gambar`
--
ALTER TABLE `tbl_kamar_gambar`
 ADD PRIMARY KEY (`id_kamar_gambar`);

--
-- Indexes for table `tbl_kategori_galeri`
--
ALTER TABLE `tbl_kategori_galeri`
 ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indexes for table `tbl_kelas_kamar`
--
ALTER TABLE `tbl_kelas_kamar`
 ADD PRIMARY KEY (`id_kelas_kamar`);

--
-- Indexes for table `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
 ADD PRIMARY KEY (`id_reservasi`);

--
-- Indexes for table `tbl_reservasi_pembayaran`
--
ALTER TABLE `tbl_reservasi_pembayaran`
 ADD PRIMARY KEY (`id_reservasi_pembayaran`);

--
-- Indexes for table `tbl_saran`
--
ALTER TABLE `tbl_saran`
 ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `tbl_tentang_hotel`
--
ALTER TABLE `tbl_tentang_hotel`
 ADD PRIMARY KEY (`id_tentang_hotel`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_user_group`
--
ALTER TABLE `tbl_user_group`
 ADD PRIMARY KEY (`id_user_group`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_kamar_gambar`
--
ALTER TABLE `tbl_kamar_gambar`
MODIFY `id_kamar_gambar` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_kategori_galeri`
--
ALTER TABLE `tbl_kategori_galeri`
MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_kelas_kamar`
--
ALTER TABLE `tbl_kelas_kamar`
MODIFY `id_kelas_kamar` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
MODIFY `id_reservasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_reservasi_pembayaran`
--
ALTER TABLE `tbl_reservasi_pembayaran`
MODIFY `id_reservasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_saran`
--
ALTER TABLE `tbl_saran`
MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_tentang_hotel`
--
ALTER TABLE `tbl_tentang_hotel`
MODIFY `id_tentang_hotel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_user_group`
--
ALTER TABLE `tbl_user_group`
MODIFY `id_user_group` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
