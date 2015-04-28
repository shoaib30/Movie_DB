-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2015 at 04:47 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `movie_db`
--
CREATE DATABASE IF NOT EXISTS `movie_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `movie_db`;

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE IF NOT EXISTS `actor` (
`ANO` bigint(20) unsigned NOT NULL,
  `ANAME` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `DEBUT` year(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Contains details of the Actors';

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`ANO`, `ANAME`, `DOB`, `DEBUT`) VALUES
(1, 'Christian Bale', '1974-01-30', 1982),
(2, 'Heath Ledger', '1979-04-04', 1995);

-- --------------------------------------------------------

--
-- Table structure for table `ac_img`
--

CREATE TABLE IF NOT EXISTS `ac_img` (
  `ANO` int(11) NOT NULL,
  `IMG_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains pics of actors';

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE IF NOT EXISTS `directors` (
`DNO` bigint(20) unsigned NOT NULL,
  `DNAME` varchar(50) NOT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contains details of Directors';

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`DNO`, `DNAME`, `DOB`) VALUES
(1, 'Christopher Nolan', '1970-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
`MNO` bigint(20) unsigned NOT NULL,
  `MNAME` text NOT NULL,
  `DOR` date NOT NULL,
  `RATING` float NOT NULL,
  `BOC` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contains Movie details';

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`MNO`, `MNAME`, `DOR`, `RATING`, `BOC`) VALUES
(1, 'The Dark Knight', '2008-07-24', 9.9, 1003434911);

-- --------------------------------------------------------

--
-- Table structure for table `mv_ac`
--

CREATE TABLE IF NOT EXISTS `mv_ac` (
  `MNO` int(11) NOT NULL DEFAULT '0',
  `ANO` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='links movies and actors';

--
-- Dumping data for table `mv_ac`
--

INSERT INTO `mv_ac` (`MNO`, `ANO`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mv_dr`
--

CREATE TABLE IF NOT EXISTS `mv_dr` (
  `MNO` int(11) NOT NULL DEFAULT '0',
  `DNO` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mv_dr`
--

INSERT INTO `mv_dr` (`MNO`, `DNO`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mv_gallery`
--

CREATE TABLE IF NOT EXISTS `mv_gallery` (
  `MNO` int(11) NOT NULL,
  `IMG1` varchar(100) NOT NULL,
  `IMG2` varchar(100) NOT NULL,
  `IMG3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='contains ';

--
-- Dumping data for table `mv_gallery`
--

INSERT INTO `mv_gallery` (`MNO`, `IMG1`, `IMG2`, `IMG3`) VALUES
(1, 'dk1', 'dk2', 'dk3');

-- --------------------------------------------------------

--
-- Table structure for table `mv_post`
--

CREATE TABLE IF NOT EXISTS `mv_post` (
  `MNO` int(11) NOT NULL,
  `IMG_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains posters of the movies';

--
-- Dumping data for table `mv_post`
--

INSERT INTO `mv_post` (`MNO`, `IMG_NAME`) VALUES
(1, 'dk');

-- --------------------------------------------------------

--
-- Table structure for table `mv_tr`
--

CREATE TABLE IF NOT EXISTS `mv_tr` (
  `MNO` int(10) DEFAULT NULL,
  `tr` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains the Trailer vidoeID';

-- --------------------------------------------------------

--
-- Table structure for table `summary`
--

CREATE TABLE IF NOT EXISTS `summary` (
  `MNO` int(11) DEFAULT NULL,
  `SUM` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `summary`
--

INSERT INTO `summary` (`MNO`, `SUM`) VALUES
(1, 'Batman raises the stakes in his war on crime. With the help of Lieutenant Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the city streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as The Joker.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
 ADD PRIMARY KEY (`ANO`), ADD UNIQUE KEY `ANO` (`ANO`);

--
-- Indexes for table `ac_img`
--
ALTER TABLE `ac_img`
 ADD UNIQUE KEY `ANO` (`ANO`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
 ADD PRIMARY KEY (`DNO`), ADD UNIQUE KEY `DNO` (`DNO`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
 ADD PRIMARY KEY (`MNO`), ADD UNIQUE KEY `MNO` (`MNO`);

--
-- Indexes for table `mv_ac`
--
ALTER TABLE `mv_ac`
 ADD PRIMARY KEY (`MNO`,`ANO`);

--
-- Indexes for table `mv_dr`
--
ALTER TABLE `mv_dr`
 ADD PRIMARY KEY (`MNO`,`DNO`);

--
-- Indexes for table `mv_gallery`
--
ALTER TABLE `mv_gallery`
 ADD PRIMARY KEY (`MNO`), ADD UNIQUE KEY `MNO` (`MNO`);

--
-- Indexes for table `mv_post`
--
ALTER TABLE `mv_post`
 ADD UNIQUE KEY `MNO` (`MNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
MODIFY `ANO` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
MODIFY `DNO` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
MODIFY `MNO` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
