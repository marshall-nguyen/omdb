-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 05:52 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `mulit_media`
--

CREATE TABLE `mulit_media` (
  `Movie_Id` int(11) NOT NULL,
  `Movie_Poster` varchar(50) DEFAULT NULL,
  `Photo_Stills` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mulit_media`
--

INSERT INTO `mulit_media` (`Movie_Id`, `Year`, `Movie_Poster`, `Photo_Stills`) VALUES
(61, '/zkXnKIwX5pYorKJp2fjFSfNyKT0.jpg', NULL),
(62, '/1SwAVYpuLj8KsHxllTF8Dt9dSSX.jpg', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mulit_media`
--
ALTER TABLE `mulit_media`
  ADD UNIQUE KEY `Movie_Id` (`Movie_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mulit_media`
--
ALTER TABLE `mulit_media`
  ADD CONSTRAINT `moiveID` FOREIGN KEY (`Movie_Id`) REFERENCES `list_movies` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
