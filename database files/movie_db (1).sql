-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2015 at 09:02 PM
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

DROP TABLE IF EXISTS `actor`;
CREATE TABLE IF NOT EXISTS `actor` (
`ANO` bigint(20) unsigned NOT NULL,
  `ANAME` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `DEBUT` year(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Contains details of the Actors';

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`ANO`, `ANAME`, `DOB`, `DEBUT`) VALUES
(1, 'Christian Bale', '1974-01-30', 1982),
(2, 'Heath Ledger', '1979-04-04', 1995),
(3, 'anny', '1943-02-03', 2010);

-- --------------------------------------------------------

--
-- Table structure for table `ac_img`
--

DROP TABLE IF EXISTS `ac_img`;
CREATE TABLE IF NOT EXISTS `ac_img` (
  `ANO` int(11) NOT NULL,
  `IMG_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains pics of actors';

--
-- Dumping data for table `ac_img`
--

INSERT INTO `ac_img` (`ANO`, `IMG_NAME`) VALUES
(1, 'CB.jpg'),
(3, 'HPTitanium2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
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
-- Table structure for table `dr_img`
--

DROP TABLE IF EXISTS `dr_img`;
CREATE TABLE IF NOT EXISTS `dr_img` (
  `DNO` int(11) NOT NULL,
  `IMG` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dr_img`
--

INSERT INTO `dr_img` (`DNO`, `IMG`) VALUES
(1, 'CN.jpg'),
(3, 'red.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE IF NOT EXISTS `movie` (
`MNO` bigint(20) unsigned NOT NULL,
  `MNAME` text NOT NULL,
  `DOR` date NOT NULL,
  `RATING` float NOT NULL,
  `BOC` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Contains Movie details';

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`MNO`, `MNAME`, `DOR`, `RATING`, `BOC`) VALUES
(1, 'The Dark Knight', '2008-07-24', 9.9, 1003434911),
(2, 'Test2', '2015-05-06', 5, 5000),
(3, 'test3', '2009-08-31', 4, 4234);

-- --------------------------------------------------------

--
-- Table structure for table `mv_ac`
--

DROP TABLE IF EXISTS `mv_ac`;
CREATE TABLE IF NOT EXISTS `mv_ac` (
  `MNO` int(11) NOT NULL DEFAULT '0',
  `ANO` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='links movies and actors';

--
-- Dumping data for table `mv_ac`
--

INSERT INTO `mv_ac` (`MNO`, `ANO`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mv_dr`
--

DROP TABLE IF EXISTS `mv_dr`;
CREATE TABLE IF NOT EXISTS `mv_dr` (
  `MNO` int(11) NOT NULL DEFAULT '0',
  `DNO` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mv_dr`
--

INSERT INTO `mv_dr` (`MNO`, `DNO`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mv_gallery`
--

DROP TABLE IF EXISTS `mv_gallery`;
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
(0, '', '', ''),
(1, 'dk1', 'dk2', 'dk3'),
(2, 'download (1).jpg', 'download (2).jpg', 'download (3).jpg'),
(3, 'ZA-wp5.jpg', 'ZA-wp4.jpg', 'ZA-wp3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mv_post`
--

DROP TABLE IF EXISTS `mv_post`;
CREATE TABLE IF NOT EXISTS `mv_post` (
  `MNO` int(11) NOT NULL,
  `IMG_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains posters of the movies';

--
-- Dumping data for table `mv_post`
--

INSERT INTO `mv_post` (`MNO`, `IMG_NAME`) VALUES
(1, 'dk.jpg'),
(2, '2681-nemisis-1920-1200.png'),
(3, 'ZA-wp6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mv_tr`
--

DROP TABLE IF EXISTS `mv_tr`;
CREATE TABLE IF NOT EXISTS `mv_tr` (
  `MNO` int(10) DEFAULT NULL,
  `tr` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains the Trailer vidoeID';

-- --------------------------------------------------------

--
-- Table structure for table `summary`
--

DROP TABLE IF EXISTS `summary`;
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
-- Indexes for table `dr_img`
--
ALTER TABLE `dr_img`
 ADD UNIQUE KEY `DNO` (`DNO`);

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
MODIFY `ANO` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
MODIFY `DNO` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
MODIFY `MNO` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
