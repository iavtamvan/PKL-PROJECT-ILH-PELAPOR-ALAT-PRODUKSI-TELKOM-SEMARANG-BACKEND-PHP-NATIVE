-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2020 at 09:55 AM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 5.6.40-5+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelaporan_alpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `nama_lengkap` text,
  `username` text,
  `password` text,
  `reg_id` text,
  `rule` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_user`, `nama_lengkap`, `username`, `password`, `reg_id`, `rule`) VALUES
(1, 'ISMI LATIFAH HANUM', 'ilh', '123', 'dW1h_4LZhVU:APA91bFWiSggWO3YUJd1ZNL7wPb4TbdHkuHbraCfiZ4eqSpDj8x5Fj0YeuRUEpjWQjn1_VfQSTzR9uCNb9QxLv2DlKT9BvLSJe9VPkSAM2wza0BmDryfZco3aR0IS9Oe9myoRGdCZx0o', 'user'),
(2, 'VALIDATOR 1', 'validator', '1234', 'dW1h_4LZhVU:APA91bFWiSggWO3YUJd1ZNL7wPb4TbdHkuHbraCfiZ4eqSpDj8x5Fj0YeuRUEpjWQjn1_VfQSTzR9uCNb9QxLv2DlKT9BvLSJe9VPkSAM2wza0BmDryfZco3aR0IS9Oe9myoRGdCZx0o', 'validator'),
(3, 'TEKNISI', 'teknisi', '12345', 'dW1h_4LZhVU:APA91bFWiSggWO3YUJd1ZNL7wPb4TbdHkuHbraCfiZ4eqSpDj8x5Fj0YeuRUEpjWQjn1_VfQSTzR9uCNb9QxLv2DlKT9BvLSJe9VPkSAM2wza0BmDryfZco3aR0IS9Oe9myoRGdCZx0o', 'teknisi'),
(4, 'TEKNISI 2', 'teknisi2', '123456', 'e7Sy6YpT4oo:APA91bF8_4kvTG8FK4pGkyolUy1ZoJP-MqU6oGUNM1cyU-RzIKgdMsTpckz4e1IGwV9J3JVvZ26ly3cFrV2cToq7tiKwOwvNNwQTtEBtZ_-6UTCZswELcwbusuD7WP8gBSKjkbO4Sny6', 'teknisi'),
(5, 'VALIDATOR 2', 'validator2', '1234567', 'fIMgSLIEOKQ:APA91bFT0IfD4hQMU_7DbEW9QUPRB4EeOyEE75ublTXFY2vT0mHFZ5KrxxEX8TIkKviGkXwt17xaH-0vTVkgMttuQs2b8S3XkDcCnXhdyiKX3I6aY6hHNwmjNUR0p0mYMWlmmgCLFls5', 'validator'),
(59, 'hanum', 'ya', 'ya', 'dxuvUgM60PE:APA91bFHwhgT5c8GifCABtH4tBiBL5ykPUjeazIW9TMHvgXgHmRfq2meCMe82B0wV6u_mz2b84y6eSSMi4wE4tMBLCb2rCMDEaCFhwL0XjZxxIilx50ZPVfuMgafgk5dz3VqrvOgJH1l', 'user'),
(72, 'Nugroho DS', 'nugroho', 'upgri2017', 'csHELDq1nBA:APA91bHm9VGOFiOGJQpMqhqcDPQl7sy5GEXSRAgoOxHfH6aAMF_DyMMCsCx98CTaXTXpoy5oB3yGFxWqKFOkjFG2ClAEiTAyYlDdEACHCbK_Y4F7B08oeZld-xzf_hdBLwjCERKMmxxn', 'user'),
(73, 'andi', 'teknisi11', 'teknisi11', 'e7Sy6YpT4oo:APA91bF8_4kvTG8FK4pGkyolUy1ZoJP-MqU6oGUNM1cyU-RzIKgdMsTpckz4e1IGwV9J3JVvZ26ly3cFrV2cToq7tiKwOwvNNwQTtEBtZ_-6UTCZswELcwbusuD7WP8gBSKjkbO4Sny6', 'teknisi'),
(74, 'ani', 'ani', 'ani', 'fezF62GGUCs:APA91bHBpL3VvHOBKlaMBkjfFGJs_ZTim1rR4Z2Ifi7-WIL_X0_9kJF2IzT11nrJJLMXSl_lMLM3etr5c-XAaOKr0R4s3xLYDIgwNuBTQUDT4xI_puT_ruM8m4dw7sUTk1E3O8kjVd4q', 'user'),
(75, 'ani', 'ani', 'ani', 'fezF62GGUCs:APA91bHBpL3VvHOBKlaMBkjfFGJs_ZTim1rR4Z2Ifi7-WIL_X0_9kJF2IzT11nrJJLMXSl_lMLM3etr5c-XAaOKr0R4s3xLYDIgwNuBTQUDT4xI_puT_ruM8m4dw7sUTk1E3O8kjVd4q', 'user'),
(76, 'ana', 'ana', 'ana', 'dW1h_4LZhVU:APA91bFWiSggWO3YUJd1ZNL7wPb4TbdHkuHbraCfiZ4eqSpDj8x5Fj0YeuRUEpjWQjn1_VfQSTzR9uCNb9QxLv2DlKT9BvLSJe9VPkSAM2wza0BmDryfZco3aR0IS9Oe9myoRGdCZx0o', 'user'),
(77, 'ana', 'ana', 'ana', 'dW1h_4LZhVU:APA91bFWiSggWO3YUJd1ZNL7wPb4TbdHkuHbraCfiZ4eqSpDj8x5Fj0YeuRUEpjWQjn1_VfQSTzR9uCNb9QxLv2DlKT9BvLSJe9VPkSAM2wza0BmDryfZco3aR0IS9Oe9myoRGdCZx0o', 'user'),
(78, 'aku', 'aku', 'aku', 'dW1h_4LZhVU:APA91bFWiSggWO3YUJd1ZNL7wPb4TbdHkuHbraCfiZ4eqSpDj8x5Fj0YeuRUEpjWQjn1_VfQSTzR9uCNb9QxLv2DlKT9BvLSJe9VPkSAM2wza0BmDryfZco3aR0IS9Oe9myoRGdCZx0o', 'teknisi');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(4) NOT NULL,
  `id_user` int(4) DEFAULT NULL,
  `id_teknisi` int(4) DEFAULT NULL,
  `point_feedback` varchar(255) DEFAULT NULL,
  `kesesuaian_pekerjaan` varchar(255) DEFAULT NULL,
  `lama_pengerjaan` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `status_feedback` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `id_user`, `id_teknisi`, `point_feedback`, `kesesuaian_pekerjaan`, `lama_pengerjaan`, `result`, `status_feedback`) VALUES
(1, 1, 65, '2.14', '0.07', '0.15', '', 'Sukses'),
(2, 1, 65, '2.14', '0.07', '0.15', '', 'Sukses'),
(3, 1, 65, '2.14', '0.07', '0.15', '', 'Sukses'),
(4, 1, 65, '2.14', '0.07', '0.15', '', 'Sukses'),
(5, 1, 65, '2.14', '0.07', '0.15', '', 'Sukses'),
(6, 1, 3, '1.75', '0.08', '0.14', '', 'Sukses'),
(7, 1, 73, '2.14', '0.07', '0.15', '', 'Sukses'),
(8, 1, 3, '0.83', '0.12', '0.1', '', 'Sukses'),
(9, 1, 3, '1.75', '0.08', '0.14', '', 'Sukses'),
(10, 76, 78, '2.14', '0.07', '0.15', '', 'Sukses'),
(11, 76, 78, '2.14', '0.07', '0.15', '', 'Sukses');

-- --------------------------------------------------------

--
-- Table structure for table `pelapor`
--

CREATE TABLE `pelapor` (
  `id_pelapor` int(11) UNSIGNED NOT NULL,
  `id_user_validator` int(11) DEFAULT NULL,
  `id_user_teknisi` int(11) DEFAULT NULL,
  `id_user_akun` int(11) DEFAULT NULL,
  `url_image` text,
  `judul` text,
  `deskripsi` text,
  `alamat` text,
  `status` text,
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status_feedback` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pelapor`
--

INSERT INTO `pelapor` (`id_pelapor`, `id_user_validator`, `id_user_teknisi`, `id_user_akun`, `url_image`, `judul`, `deskripsi`, `alamat`, `status`, `tanggal`, `status_feedback`) VALUES
(93, 2, 3, 1, 'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/2019/09/24/2894604001.jpg', NULL, 'Percobaan1', 'Di Nitibuana', 'Sudah Diselesaikan', '2020-04-03 04:36:08', 'Sukses'),
(94, 2, NULL, 72, 'http://sandec.org/iav/image/alpro_20200408_065505.jpg', NULL, 'tombol off rusak', 'Jepara', 'Disetujui Validator', '2020-04-07 23:55:37', 'Pending'),
(95, 2, 3, 1, 'http://sandec.org/iav/image/alpro_20200411_140229.jpg', NULL, 'ga bs akses noss', 'gd pahlawan lt 8', 'Sudah Diselesaikan', '2020-04-11 07:03:12', 'Sukses'),
(96, 2, NULL, 55, 'http://sandec.org/iav/image/alpro_20200411_140609.jpg', NULL, 'langit', 'awan', 'Disetujui Validator', '2020-04-11 07:06:16', 'Pending'),
(97, 2, 3, 1, 'http://sandec.org/iav/image/alpro_20200411_171339.jpg', NULL, 'mati', 'gd b', 'Sudah Diselesaikan', '2020-04-11 10:13:48', 'Sukses'),
(98, 2, 3, 1, 'http://sandec.org/iav/image/alpro_20200411_172816.jpg', NULL, 'yeye', 'lele', 'Sudah Diselesaikan', '2020-04-11 10:28:21', 'Sukses'),
(99, NULL, NULL, 74, 'http://sandec.org/iav/image/alpro_20200504_105922.jpg', NULL, 'rusak karena tidak tau kenapa', 'jalan pattimura', 'Belum Disetujui', '2020-05-04 03:59:32', 'Pending'),
(100, 2, 78, 76, 'http://sandec.org/iav/image/alpro_20200504_115859.jpg', NULL, 'kurang dikerahui kenapa rusak', 'jalan gajahmada', 'Sudah Diselesaikan', '2020-05-04 04:59:23', 'Sukses');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Indexes for table `pelapor`
--
ALTER TABLE `pelapor`
  ADD PRIMARY KEY (`id_pelapor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pelapor`
--
ALTER TABLE `pelapor`
  MODIFY `id_pelapor` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
