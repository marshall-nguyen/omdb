-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2020 at 05:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `list_movies`
--

CREATE TABLE `list_movies` (
  `native_name` varchar(180) NOT NULL,
  `english_name` varchar(180) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list_movies`
--

INSERT INTO `list_movies` (`native_name`, `english_name`, `year`) VALUES
('Ace Ventura: When Nature Calls', 'Ace Ventura: When Nature Calls', 1995),
('Across the Sea of Time', 'Across the Sea of Time', 1995),
('Assassins', 'Assassins', 1995),
('Babe', 'Babe', 1995),
('Balto', 'Balto', 1995),
('Carrington', 'Carrington', 1995),
('Casino', 'Casino', 1995),
('Clueless', 'Clueless', 1995),
('Copycat', 'Copycat', 1995),
('Cutthroat Island', 'Cutthroat Island', 1995),
('Dangerous Minds', 'Dangerous Minds', 1995),
('Dead Man Walking', 'Dead Man Walking', 1995),
('Dracula: Dead and Loving It', 'Dracula: Dead and Loving It', 1995),
('Father of the Bride Part II', 'Father of the Bride Part II', 1995),
('Four Rooms', 'Four Rooms', 1995),
('Get Shorty', 'Get Shorty', 1995),
('GoldenEye', 'GoldenEye', 1995),
('Grumpier Old Men', 'Grumpier Old Men', 1995),
('Heat', 'Heat', 1995),
('It Takes Two', 'It Takes Two', 1995),
('Jumanji', 'Jumanji', 1995),
('Leaving Las Vegas', 'Leaving Las Vegas', 1995),
('Money Train', 'Money Train', 1995),
('Nixon', 'Nixon', 1995),
('Now and Then', 'Now and Then', 1995),
('Othello', 'Othello', 1995),
('Persuasion', 'Persuasion', 1995),
('Powder', 'Powder', 1995),
('Sabrina', 'Sabrina', 1995),
('Sense and Sensibility', 'Sense and Sensibility', 1995),
('Sudden Death', 'Sudden Death', 1995),
('The American President', 'The American President', 1995),
('The Matrix', 'The Matrix', 1999),
('Tom and Huck', 'Tom and Huck', 1995),
('Toy Story', 'Toy Story', 1995),
('Twelve Monkeys', 'Twelve Monkeys', 1995),
('Waiting to Exhale', 'Waiting to Exhale', 1995);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list_movies`
--
ALTER TABLE `list_movies`
  ADD PRIMARY KEY (`native_name`,`year`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
