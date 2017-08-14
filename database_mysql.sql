-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Inang: localhost:3306
-- Waktu pembuatan: 13 Agu 2017 pada 22.51
-- Versi Server: 10.1.24-MariaDB-cll-lve
-- Versi PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `ihomncns_skripsi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masukan`
--

CREATE TABLE IF NOT EXISTS `masukan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indo` varchar(255) NOT NULL,
  `jawa` varchar(255) NOT NULL,
  `dibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `diupdate` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `terjemahan`
--

CREATE TABLE IF NOT EXISTS `terjemahan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indo` varchar(255) NOT NULL,
  `jawa` varchar(255) NOT NULL,
  `dibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `diupdate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `terjemahan`
--

INSERT INTO `terjemahan` (`id`, `indo`, `jawa`, `dibuat`, `diupdate`) VALUES
(5, 'ayah', 'bapak', '2017-03-18 10:10:57', NULL),
(6, 'ayam', 'pithik', '2017-03-18 10:10:57', NULL),
(7, 'hari', 'dina', '2017-05-18 07:56:02', NULL),
(8, 'duduk', 'lungguh', '2017-05-18 07:56:02', NULL),
(9, 'anda', 'jenengan', '2017-05-18 07:56:19', NULL),
(10, 'lari', 'mlayu', '2017-05-18 07:56:19', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
