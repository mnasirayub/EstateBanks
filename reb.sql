-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2020 at 06:42 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(100) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Fname` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Mobile` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Cnic` varchar(100) NOT NULL,
  `Address` text NOT NULL,
  `Status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `Id` int(100) NOT NULL,
  `Purpose` varchar(200) NOT NULL,
  `Type` varchar(200) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Society` varchar(100) NOT NULL,
  `Title` text NOT NULL,
  `Description` text NOT NULL,
  `Price` varchar(100) NOT NULL,
  `Area` int(100) NOT NULL,
  `AreaUnit` varchar(100) NOT NULL,
  `Beds` int(100) NOT NULL,
  `Baths` int(100) NOT NULL,
  `Imgs` blob NOT NULL,
  `Name` varchar(300) NOT NULL,
  `Mobile` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `status` int(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `phase` varchar(200) NOT NULL,
  `feature` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `cityId` int(11) NOT NULL,
  `cityName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`cityId`, `cityName`) VALUES
(1, 'Lahore'),
(2, 'Karachi'),
(3, 'Islamabad'),
(4, 'Bahawalpur'),
(5, 'Quetta'),
(6, 'Multan'),
(7, 'Gujranwala');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `Id` int(200) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phases`
--

CREATE TABLE `phases` (
  `phaseId` int(11) NOT NULL,
  `phaseName` varchar(255) DEFAULT NULL,
  `societyId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phases`
--

INSERT INTO `phases` (`phaseId`, `phaseName`, `societyId`) VALUES
(1, 'DHA Phase 1', 2),
(2, 'DHA Phase 1 Block A', 2),
(3, 'DHA Phase 1 Block B', 2),
(4, 'DHA Phase 1 Block C', 2),
(5, 'DHA Phase 1 Block D', 2),
(6, 'DHA Phase 1 Block F', 2),
(8, 'Phase !', 5),
(9, 'Phase 2', 5),
(10, 'Phase 3', 5),
(11, 'Phase 1', 7),
(12, 'Phase 2', 7),
(13, 'DHA Phase 1 Block G', 2),
(14, 'DHA Phase 1 Block H', 2),
(15, 'DHA Phase 1 Block J', 2),
(16, 'DHA Phase 1 Block K', 2),
(17, 'DHA Phase 1 Block L', 2),
(18, 'DHA Phase 1 Block M', 2),
(19, 'DHA Phase 1 Block N', 2),
(20, 'DHA Phase 1 Block P', 2),
(21, 'DHA Phase 2', 2),
(22, 'DHA Phase 2 Block Q', 2),
(23, 'DHA Phase 2 Block R', 2),
(24, 'DHA Phase 2 Block S', 2),
(25, 'DHA Phase 2 Block T', 2),
(26, 'DHA Phase 2 Block U', 2),
(27, 'DHA Phase 2 Block V', 2);

-- --------------------------------------------------------

--
-- Table structure for table `societies`
--

CREATE TABLE `societies` (
  `societyId` int(11) NOT NULL,
  `societyName` varchar(255) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `societies`
--

INSERT INTO `societies` (`societyId`, `societyName`, `cityId`) VALUES
(1, 'Select Society', 1),
(2, 'DHA Defence', 1),
(3, 'Johar Town', 1),
(4, 'Gulberg', 1),
(5, 'Bahria Town', 1),
(6, 'Sui Gas ', 1),
(7, 'Pak Arab', 1),
(8, 'Estate Life', 1),
(9, 'Paragon', 1),
(10, 'Faisal Town', 1),
(11, 'Punjab Small Industry', 1),
(12, 'Green Town', 1),
(13, 'Eden City', 1),
(14, 'EME Society', 1),
(15, 'Canal Park', 1),
(16, 'Canal View', 1),
(17, 'Al-Falah Town', 1),
(18, 'Garden View', 1),
(19, 'Green City', 1),
(20, 'Model Town', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`cityId`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `phases`
--
ALTER TABLE `phases`
  ADD PRIMARY KEY (`phaseId`),
  ADD KEY `societyId` (`societyId`);

--
-- Indexes for table `societies`
--
ALTER TABLE `societies`
  ADD PRIMARY KEY (`societyId`),
  ADD KEY `cityId` (`cityId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `cityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `Id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phases`
--
ALTER TABLE `phases`
  MODIFY `phaseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `societies`
--
ALTER TABLE `societies`
  MODIFY `societyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phases`
--
ALTER TABLE `phases`
  ADD CONSTRAINT `phases_ibfk_1` FOREIGN KEY (`societyId`) REFERENCES `societies` (`societyId`);

--
-- Constraints for table `societies`
--
ALTER TABLE `societies`
  ADD CONSTRAINT `societies_ibfk_1` FOREIGN KEY (`cityId`) REFERENCES `cities` (`cityId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
