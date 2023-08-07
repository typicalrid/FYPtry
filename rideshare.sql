-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2023 at 09:17 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rideshare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookingstatus`
--

CREATE TABLE `bookingstatus` (
  `email` varchar(40) NOT NULL,
  `category` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `person` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingstatus`
--

INSERT INTO `bookingstatus` (`email`, `category`, `type`, `person`, `status`, `date`) VALUES
('user1@gmail.com', 'Apartment', 'Fully Furnished', 2, 0, '2023-03-08'),
('user1@gmail.com', 'Apartment', 'Unfurnished', 2, 1, '2023-01-26'),
('user1@gmail.com', 'Flat', 'Unfurnished', 8, 0, '2023-02-08'),
('user1@gmail.com', 'Terrace', 'Fully Furnished', 1, 0, '2023-07-05'),
('user1@gmail.com', 'Terrace', 'Fully Furnished', 2, 0, '2023-02-14'),
('user1@gmail.com', 'Terrace', 'Fully Furnished', 6, 1, '2023-01-26'),
('user2@gmail.com', 'Terrace', 'Fully Furnished', 3, 1, '2023-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `email` varchar(40) NOT NULL,
  `category` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `person` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`email`, `category`, `type`, `person`, `status`, `date`) VALUES
('user1@gmail.com', 'Apartment', 'Fully Furnished', 2, 0, '2023-03-08'),
('user1@gmail.com', 'Apartment', 'Unfurnished', 2, 1, '2023-01-26'),
('user1@gmail.com', 'Flat', 'Unfurnished', 8, 0, '2023-02-08'),
('user1@gmail.com', 'Terrace', 'Fully Furnished', 1, 0, '2023-07-05'),
('user1@gmail.com', 'Terrace', 'Fully Furnished', 2, 0, '2023-02-14'),
('user1@gmail.com', 'Terrace', 'Fully Furnished', 6, 1, '2023-01-26'),
('user2@gmail.com', 'Terrace', 'Fully Furnished', 3, 1, '2023-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(40) NOT NULL,
  `category` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `person` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `category`, `type`, `person`, `status`, `date`) VALUES
('user1@gmail.com', 'Apartment', 'Fully Furnished', 2, 0, '2023-03-08'),
('user1@gmail.com', 'Apartment', 'Unfurnished', 2, 1, '2023-01-26'),
('user1@gmail.com', 'Flat', 'Unfurnished', 8, 0, '2023-02-08'),
('user1@gmail.com', 'Terrace', 'Fully Furnished', 1, 0, '2023-07-05'),
('user1@gmail.com', 'Terrace', 'Fully Furnished', 2, 0, '2023-02-14'),
('user1@gmail.com', 'Terrace', 'Fully Furnished', 6, 1, '2023-01-26'),
('user2@gmail.com', 'Terrace', 'Fully Furnished', 3, 1, '2023-01-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingstatus`
--
ALTER TABLE `bookingstatus`
  ADD PRIMARY KEY (`email`,`category`,`type`,`person`,`date`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`email`,`category`,`type`,`person`,`date`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`,`category`,`type`,`person`,`date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
