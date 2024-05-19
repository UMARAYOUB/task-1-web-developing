-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 04:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `id_details`
--

CREATE TABLE `id_details` (
  `idtype` varchar(11) NOT NULL,
  `iddated` varchar(30) NOT NULL,
  `idnumber` varchar(13) NOT NULL,
  `issueauthority` varchar(11) NOT NULL,
  `issuestate` varchar(17) NOT NULL,
  `idexpiry` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `id_details`
--

INSERT INTO `id_details` (`idtype`, `iddated`, `idnumber`, `issueauthority`, `issuestate`, `idexpiry`) VALUES
('Nationa', '11/12/2012', '1350204234', 'Nadra', 'Pakistan', '11/12/2032'),
('National', '11/12/2012', '1350204234', 'Nadra', 'Pakistan', '11/12/2032');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `fname` varchar(30) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mnumber` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `occupation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fname`, `dob`, `email`, `mnumber`, `gender`, `occupation`) VALUES
('Umar Ayoub ', '10/12/2003', 'uayoub181003@gmail.com', '03434810063', 'male', 'teacher'),
('fahad Khan', '10/12/2003', 'fahad @gmail.com', '2222', 'male', 'teacher');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
