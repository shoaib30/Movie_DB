-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2015 at 09:30 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COMMENT='Contains details of the Actors';

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
(20, 'Mark Ruffalo', '1967-11-22', 1988),
(21, 'Gwyneth Paltrow', '1972-09-27', 1989),
(22, 'Terrence Howard', '1969-03-11', 1992),
(23, 'Mickey Rourke', '1952-09-16', 1979),
(24, 'Guy Pearce', '1967-10-05', 1986);

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
(20, 'MR.jpg'),
(21, 'GP.jpg'),
(22, 'TeH.jpg'),
(23, 'MiR.jpg'),
(24, 'GUP.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
CREATE TABLE IF NOT EXISTS `directors` (
`DNO` bigint(20) unsigned NOT NULL,
  `DNAME` varchar(50) NOT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='Contains details of Directors';

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`DNO`, `DNAME`, `DOB`) VALUES
(1, 'Christopher Nolan', '1970-07-30'),
(2, 'Gavin Hood', '1963-05-12'),
(3, 'Shane Black', '1961-12-16'),
(4, 'Joss Whedon', '1964-06-23'),
(5, 'Jon Favreau', '1966-10-16'),
(6, 'Anthony Russo', '1965-08-19');

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
(2, 'GH.jpg'),
(3, 'SB.jpg'),
(4, 'JW.jpeg'),
(5, 'JF.jpg'),
(6, 'AR.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='Contains Movie details';

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`MNO`, `MNAME`, `DOR`, `RATING`, `BOC`) VALUES
(1, 'The Dark Knight', '2008-07-24', 9.9, 533316061),
(2, 'The Dark Knight Rises', '2012-07-20', 8.5, 448130642),
(3, 'Batman Begins', '2005-05-16', 8.3, 205343774),
(4, 'Inception', '0000-00-00', 8.8, 292568851),
(5, 'Interstellar', '2014-11-07', 8.7, 187991439),
(6, 'The Prestige', '2006-11-10', 8.5, 53082743),
(7, 'X-Men Origins: Wolverine', '2009-04-29', 6.9, 179883016),
(8, 'Avengers: Age of Ultron', '2015-04-23', 8.1, 217632476),
(9, 'Captain America: The Winter Soldier', '2014-03-26', 7.8, 259746958),
(10, 'Iron Man', '2008-05-02', 7.9, 318298180),
(11, 'Iron Man 2', '2010-04-30', 7.1, 312057433),
(12, 'Iron Man 3', '2013-04-25', 7.3, 408992272);

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
(1, 3),
(1, 6),
(2, 1),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 6),
(3, 7),
(4, 6),
(4, 8),
(4, 9),
(4, 10),
(5, 5),
(5, 6),
(5, 11),
(5, 12),
(6, 1),
(6, 6),
(6, 13),
(6, 14),
(7, 0),
(7, 13),
(7, 15),
(7, 16),
(8, 14),
(8, 17),
(8, 18),
(8, 20),
(9, 14),
(9, 18),
(9, 19),
(10, 17),
(10, 21),
(10, 22),
(11, 17),
(11, 21),
(11, 23),
(12, 17),
(12, 21),
(12, 24);

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
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 2),
(8, 4),
(9, 6),
(10, 5),
(11, 5),
(12, 3);

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
(1, 'dk1.jpg', 'dk3.jpg', 'dk4.jpg'),
(2, 'tdkr1.jpg', 'tdkr2.jpg', 'tdkr3.jpg'),
(3, 'bmb1.jpg', 'bmb2.jpg', 'bmb3.jpg'),
(4, 'inc1.jpg', 'inc2.jpg', 'inc3.jpg'),
(5, 'int1.jpg', 'int2.jpg', 'int3.jpg'),
(6, 'pre1.jpg', 'pre2.jpg', 'pre3.jpg'),
(7, 'wolv1.jpg', 'wolv2.jpg', 'wolv3.jpg'),
(8, 'ave1.jpg', 'ave2.jpg', 'ave3.jpg'),
(9, 'cap1.jpg', 'cap2.jpg', 'cap3.jpg'),
(10, 'im11.jpg', 'im12.jpg', 'im13.jpg'),
(11, 'im21.jpg', 'im22.jpg', 'im23.jpg'),
(12, 'im31.jpg', 'im32.jpg', 'im33.jpg');

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
(1, 'dark_poster.jpg'),
(2, 'tdkrp.jpg'),
(3, 'bmbp.jpg'),
(4, 'incp.jpg'),
(5, 'intp.jpg'),
(6, 'prep.jpg'),
(7, 'wolvp.jpg'),
(8, 'avep.jpg'),
(9, 'capp.jpg'),
(10, 'im1p.jpg'),
(11, 'im2p.jpg'),
(12, 'im3p.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mv_tr`
--

DROP TABLE IF EXISTS `mv_tr`;
CREATE TABLE IF NOT EXISTS `mv_tr` (
  `MNO` int(10) DEFAULT NULL,
  `tr` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contains the Trailer vidoeID';

--
-- Dumping data for table `mv_tr`
--

INSERT INTO `mv_tr` (`MNO`, `tr`) VALUES
(1, 'EXeTwQWrcwY'),
(3, 'vak9ZLfhGnQ'),
(4, '66TuSJo4dZM'),
(2, 'g8evyE9TuYk'),
(5, '0vxOhd4qlnA'),
(6, 'o4gHCmTQDVI'),
(7, 'LPmbGzQaOCs'),
(8, 'JAUoeqvedMo'),
(9, '7SlILk2WMTI'),
(10, '8hYlB38asDY'),
(11, 'FNQowwwwYa0'),
(12, 'Ke1Y3P9D0Bc');

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
(1, 'Batman raises the stakes in his war on crime. With the help of Lieutenant Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the city streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as The Joker.'),
(3, 'After training with his mentor, Batman begins his war on crime to free the crime-ridden Gotham City from corruption that the Scarecrow and the League of Shadows have cast upon it.'),
(4, 'A thief who steals corporate secrets through use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.'),
(2, 'Despite his tarnished reputation after the events of The Dark Knight, in which he took the rap for Dent''s crimes, Batman feels compelled to intervene to assist the city and its police force which is struggling to cope with Bane''s plans to destroy the city.'),
(5, 'In the near future, Earth has been devastated by drought and famine, causing a scarcity in food and extreme changes in climate. When humanity is facing extinction, a mysterious rip in the space-time continuum is discovered, giving mankind the opportunity to widen its lifespan. A group of explorers must travel beyond our solar system in search of a planet that can sustain life. The crew of the Endurance are required to think bigger and go further than any human in history as they embark on an interstellar voyage into the unknown. Coop, the pilot of the Endurance, must decide between seeing his children again and the future of the human race.'),
(6, 'In the end of the Nineteenth Century, in London, Robert Angier, his beloved wife Julia McCullough and Alfred Borden are friends and assistants of a magician. When Julia accidentally dies during a performance, Robert blames Alfred for her death and they become enemies. Both become famous and rival magicians, sabotaging the performance of the other on the stage. When Alfred performs a successful trick, Robert becomes obsessed trying to disclose the secret of his competitor with tragic consequences.'),
(7, 'Two mutant brothers, Logan and Victor, born 200 years ago, suffer childhood trauma and have only each other to depend on. Basically, they''re fighters and killers, living from war to war through U.S. history. In modern times, a U.S. colonel, Stryker, recruits them and other mutants as commandos. Logan quits and becomes a logger, falling in love with a local teacher. When Logan refuses to rejoin Stryker''s crew, the colonel sends the murderous Victor. Logan now wants revenge.'),
(8, 'When Tony Stark tries to jumpstart a dormant peacekeeping program, things go awry and Earth''s Mightiest Heroes, including Iron Man, Captain America, Thor, the Incredible Hulk, Black Widow and Hawkeye, are put to the ultimate test as the fate of the planet hangs in the balance. As the villainous Ultron emerges, it is up to the Avengers to stop him from enacting his terrible plans, and soon uneasy alliances and unexpected action pave the way for a global adventure.'),
(9, 'As Steve Rogers struggles to embrace his role in the modern world, he teams up with another super soldier, the black widow, to battle a new threat from old history: an assassin known as the Winter Soldier.'),
(10, 'After being held captive in an Afghan cave, an industrialist creates a unique weaponized suit of armor to fight against evil. This leads him to conflict within his own company.'),
(11, 'With the world now aware of his dual life as the armored superhero Iron Man, billionaire inventor Tony Stark faces pressure from the government, the press, and the public to share his technology with the military. Unwilling to let go of his invention, Stark, along with Pepper Potts, and James "Rhodey" Rhodes at his side, must forge new alliances - and confront powerful enemies.'),
(12, 'Marvel''s "Iron Man 3" pits brash-but-brilliant industrialist Tony Stark/Iron Man against an enemy whose reach knows no bounds. When Stark finds his personal world destroyed at his enemy''s hands, he embarks on a harrowing quest to find those responsible. This journey, at every turn, will test his mettle. With his back against the wall, Stark is left to survive by his own devices, relying on his ingenuity and instincts to protect those closest to him. As he fights his way back, Stark discovers the answer to the question that has secretly haunted him: does the man make the suit or does the suit make the man?');

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
MODIFY `ANO` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
MODIFY `DNO` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
MODIFY `MNO` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
