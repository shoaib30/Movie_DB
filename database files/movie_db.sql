-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2015 at 04:01 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COMMENT='Contains details of the Actors';

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`ANO`, `ANAME`, `DOB`, `DEBUT`) VALUES
(1, 'Christian Bale', '1974-03-01', 1986),
(2, 'Heath Ledger', '1979-04-04', 1993),
(3, 'Aaron Eckhart', '1968-12-03', 1992),
(4, 'Tom Hardy', '1977-12-09', 2001),
(5, 'Anne Hathaway', '1982-12-11', 1998),
(6, 'Michael Caine', '1933-03-16', 1953),
(7, 'Ken Watanabe', '1959-10-21', 1979),
(8, 'Leonardo DiCaprio', '1974-11-11', 1989),
(9, 'Joseph Gordon-Levitt', '1981-02-17', 1988),
(10, 'Ellen Page', '1987-02-21', 1997),
(11, 'Matthew McConaughey', '1969-04-11', 1991),
(12, 'Jessica Chastain', '1977-03-24', 2004),
(13, 'Hugh Jackman', '1968-10-12', 1994),
(14, 'Scarlett Johansson', '1984-11-22', 1994),
(15, 'Liev Schreiber', '1967-10-04', 1994),
(16, 'Ryan Reynolds', '1976-10-23', 1991),
(17, 'Robert Downey Jr.', '1965-04-04', 1970),
(18, 'Chris Evans', '1981-06-13', 1999),
(19, 'Samuel L. Jackson', '1948-12-21', 1972),
(20, 'Mark Ruffalo', '1967-11-22', 1988);

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
(2, 'HL.jpg'),
(3, 'AE.jpg'),
(4, 'TH.jpg'),
(5, 'AH.jpg'),
(6, 'MC.jpg'),
(7, 'KW.jpg'),
(8, 'LD.jpg'),
(9, 'JG.jpg'),
(10, 'EP.jpg'),
(11, 'MM.jpg'),
(12, 'JC.jpg'),
(13, 'HJ.jpg'),
(14, 'SJ.jpg'),
(15, 'LS.jpg'),
(16, 'RR.jpg'),
(17, 'RD.jpg'),
(18, 'CE.jpg'),
(19, 'SAJ.jpg'),
(20, 'MR.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
CREATE TABLE IF NOT EXISTS `directors` (
`DNO` bigint(20) unsigned NOT NULL,
  `DNAME` varchar(50) NOT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains details of Directors';

-- --------------------------------------------------------

--
-- Table structure for table `dr_img`
--

DROP TABLE IF EXISTS `dr_img`;
CREATE TABLE IF NOT EXISTS `dr_img` (
  `DNO` int(11) NOT NULL,
  `IMG` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains Movie details';

-- --------------------------------------------------------

--
-- Table structure for table `mv_ac`
--

DROP TABLE IF EXISTS `mv_ac`;
CREATE TABLE IF NOT EXISTS `mv_ac` (
  `MNO` int(11) NOT NULL DEFAULT '0',
  `ANO` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='links movies and actors';

-- --------------------------------------------------------

--
-- Table structure for table `mv_dr`
--

DROP TABLE IF EXISTS `mv_dr`;
CREATE TABLE IF NOT EXISTS `mv_dr` (
  `MNO` int(11) NOT NULL DEFAULT '0',
  `DNO` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `mv_post`
--

DROP TABLE IF EXISTS `mv_post`;
CREATE TABLE IF NOT EXISTS `mv_post` (
  `MNO` int(11) NOT NULL,
  `IMG_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains posters of the movies';

-- --------------------------------------------------------

--
-- Table structure for table `mv_tr`
--

DROP TABLE IF EXISTS `mv_tr`;
CREATE TABLE IF NOT EXISTS `mv_tr` (
  `MNO` int(10) DEFAULT NULL,
  `tr` varchar(50) DEFAULT NULL
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
-- Indexes for table `mv_tr`
--
ALTER TABLE `mv_tr`
 ADD UNIQUE KEY `MNO` (`MNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
MODIFY `ANO` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
MODIFY `DNO` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
MODIFY `MNO` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
