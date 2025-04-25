-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 25, 2025 at 11:19 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `arthi`
--

DROP TABLE IF EXISTS `arthi`;
CREATE TABLE IF NOT EXISTS `arthi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `arthi`
--

INSERT INTO `arthi` (`id`, `username`, `password`) VALUES
(7, 'Mathu', '$2y$10$7/BwE.QAgU.J1i/A0CVCNOB4lBBIwrG5Wmd.2EcwY.W9X2g6T6lMO'),
(2, 'Arthika', '$2y$10$ba.YbNJLrA5oSAJUoNTs8OeiYEo07RPIv5xiDRqoqZfVeIqYcVQCe'),
(3, 'asp2022126', '$2y$10$DwURoqJb29aqzJh1JCEG7O4uG6VAuuPpTxlrcUhOdxTKlLcmD7d0e'),
(4, 'asp2022161', '$2y$10$meQW74kJDJW37vo7m5KH4uznTwERjaF5GQRwSH5ZgtmcnuFyviwPK'),
(5, 'Arthika23', '$2y$10$sVeYxgjW6eom9qSNsbQ4Z.HYnCEs9uDi1FSzK58rjpMoF9olP2yOm'),
(6, 'Arthika45', '$2y$10$RzCniCVSPdEeFdPkTUtP2OGZ6g9WIudklRRqnGwZq3vxYUMcVDc9G');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

DROP TABLE IF EXISTS `contact_form`;
CREATE TABLE IF NOT EXISTS `contact_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `message`) VALUES
(1, 'Arthika', 'arthika20011810@gmail.com', 'hiii'),
(2, 'Kinthusan', 'kinthu@gmail.com', 'very nice'),
(3, 'Gowry ', 'Gowry@24gmail.com', 'app have issues '),
(4, 'Mathu', 'mathumitha@gmail.com', 'please update the app '),
(5, 'Tharshi', 'koneswaran@gmail.com', 'more effective app');

-- --------------------------------------------------------

--
-- Table structure for table `habits`
--

DROP TABLE IF EXISTS `habits`;
CREATE TABLE IF NOT EXISTS `habits` (
  `Habit_name` varchar(25) NOT NULL,
  `Frequency` varchar(25) NOT NULL COMMENT 'none_2',
  `Time` time NOT NULL COMMENT 'none_2',
  `Date` date NOT NULL COMMENT 'none_2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `habits`
--

INSERT INTO `habits` (`Habit_name`, `Frequency`, `Time`, `Date`) VALUES
('Study', 'Daily', '14:49:00', '2025-04-02'),
('Reading', 'Weekly', '13:00:00', '2025-05-30'),
('Drawing', 'Monthly', '15:00:00', '2025-07-18'),
('Go to gym', 'Daily', '07:00:00', '2025-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `rating` int NOT NULL,
  `feedback` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `rating`, `feedback`) VALUES
(0, 'Reading', 4, 'good '),
(0, 'Arthika', 4, 'its very helpful '),
(0, 'Kinthusan', 5, 'This app very useful'),
(0, 'Gowry ', 3, 'have some issues'),
(0, 'Mathumitha', 4, 'very helpful '),
(0, 'Tharshi', 2, 'Not bad, but this is very slow');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
