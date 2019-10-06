-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 06, 2019 at 02:48 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autopost`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_antri`
--

CREATE TABLE `tbl_antri` (
  `antrian_id` int(11) NOT NULL,
  `post_title` varchar(200) NOT NULL,
  `post_description` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `post_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_antri`
--

INSERT INTO `tbl_antri` (`antrian_id`, `post_title`, `post_description`, `email`, `post_status`) VALUES
(1, 'Eko1', 'Enak mungkin', 'astadipati@outlook.com', '1'),
(2, 'Eko2', 'Enak mungkin', 'astadipati@outlook.com', '1'),
(35, 'Eko6', 'Enak mungkin', 'alexandria13ster@gmail.com', '1'),
(36, 'Eko10', 'Enak mungkin', 'alexandria13ster@gmail.com', '1'),
(37, 'Eko9', 'Enak mungkin', 'alexandria13ster@gmail.com', '1'),
(38, 'Eko3', 'Enak mungkin', 'alexandria13ster@gmail.com', '1'),
(39, 'Eko4', 'Enak mungkin', 'alexandria13ster@gmail.com', '1'),
(40, 'Eko5', 'Enak mungkin', 'alexandria13ster@gmail.com', '1'),
(41, 'Eko7', 'Enak mungkin', 'alexandria13ster@gmail.com', '1'),
(42, 'Eko8', 'Enak mungkin', 'alexandria13ster@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `post_description` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `post_status` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `email`, `post_status`) VALUES
(103, 'Eko10', 'Enak mungkin', 'alexandria13ster@gmail.com', '0'),
(102, 'Eko9', 'Enak mungkin', 'alexandria13ster@gmail.com', '0'),
(101, 'Eko3', 'Enak mungkin', 'alexandria13ster@gmail.com', '0'),
(100, 'Eko2', 'Enak mungkin', 'alexandria13ster@gmail.com', '0'),
(99, 'Eko4', 'Enak mungkin', 'alexandria13ster@gmail.com', '0'),
(98, 'Eko5', 'Enak mungkin', 'alexandria13ster@gmail.com', '0'),
(97, 'Eko6', 'Enak mungkin', 'alexandria13ster@gmail.com', '0'),
(96, 'Eko7', 'Enak mungkin', 'alexandria13ster@gmail.com', '0'),
(95, 'Eko8', 'Enak mungkin', 'alexandria13ster@gmail.com', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_antri`
--
ALTER TABLE `tbl_antri`
  ADD PRIMARY KEY (`antrian_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_antri`
--
ALTER TABLE `tbl_antri`
  MODIFY `antrian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
