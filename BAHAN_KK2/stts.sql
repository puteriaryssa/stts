-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 25, 2019 at 02:43 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stts`
--

-- --------------------------------------------------------

--
-- Table structure for table `aduan`
--

DROP TABLE IF EXISTS `aduan`;
CREATE TABLE IF NOT EXISTS `aduan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perkara` varchar(150) DEFAULT NULL,
  `aduan` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nama` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`) VALUES
(1, '4 TTS'),
(2, '3 TTS'),
(3, '2 TTS'),
(4, '1 TTS');

-- --------------------------------------------------------

--
-- Table structure for table `pertandingan`
--

DROP TABLE IF EXISTS `pertandingan`;
CREATE TABLE IF NOT EXISTS `pertandingan` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nama_pertandingan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertandingan`
--

INSERT INTO `pertandingan` (`id`, `nama_pertandingan`) VALUES
(1, 'MEMASAK MAKANAN BRUNCH'),
(2, 'ROBOTIK GEN-6'),
(3, 'NYANYIAN MERDU ALAF-21');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

DROP TABLE IF EXISTS `peserta`;
CREATE TABLE IF NOT EXISTS `peserta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noic` varchar(12) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kelas` varchar(6) DEFAULT NULL,
  `pertandingan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'pelajar', 'pelajar123'),
(2, 'pensyarah', 'pensyarah123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
