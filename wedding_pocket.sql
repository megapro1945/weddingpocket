-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2017 at 03:59 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedding pocket`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountid` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` int(11) NOT NULL,
  `tgllahir` date NOT NULL,
  `facebookid` varchar(40) NOT NULL,
  `pathid` varchar(40) NOT NULL,
  `instagramid` varchar(40) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategoriid` varchar(10) NOT NULL,
  `kategoriname` varchar(150) NOT NULL,
  `createdat` datetime NOT NULL,
  `updateat` datetime NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mediasosial`
--

CREATE TABLE `mediasosial` (
  `sosmedid` varchar(10) NOT NULL,
  `sosmedname` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `tokenid` varchar(50) NOT NULL,
  `accesstoken` varchar(50) NOT NULL,
  `token status` varchar(20) NOT NULL,
  `vendorid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patnervendor`
--

CREATE TABLE `patnervendor` (
  `patnerid` varchar(10) NOT NULL,
  `patnername` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `urlgambar` varchar(100) NOT NULL,
  `createdat` datetime NOT NULL,
  `updateat` datetime NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `vendorid` varchar(10) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pricelist`
--

CREATE TABLE `pricelist` (
  `pricelistid` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price start` int(11) NOT NULL,
  `price end` int(11) NOT NULL,
  `kategoriid` varchar(10) NOT NULL,
  `vendorid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `Vendorid` varchar(10) NOT NULL,
  `accountid` varchar(10) NOT NULL,
  `namavendor` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  `createdat` datetime NOT NULL,
  `updateat` datetime NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `Kontak` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `kategoriid` varchar(10) NOT NULL,
  `kategoriname` varchar(100) NOT NULL,
  `urlgambar1` varchar(100) NOT NULL,
  `urlgambar2` varchar(100) NOT NULL,
  `urlgambar3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategoriid`);

--
-- Indexes for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`pricelistid`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`Vendorid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
