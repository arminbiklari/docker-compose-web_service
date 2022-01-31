-- phpMyAdmin SQL Dump
-- version 5.1.1deb3+bionic1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 01, 2022 at 07:48 PM
-- Server version: 5.7.36-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Test`
--

-- --------------------------------------------------------

--
-- Table structure for table `PassedVehicleRecords`
--

CREATE TABLE `PassedVehicleRecords` (
  `ID` bigint(20) NOT NULL,
  `CameraID` int(11) NOT NULL,
  `UUID` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `Direction` tinyint(4) NOT NULL,
  `PlateValue` varchar(9) COLLATE latin1_general_ci NOT NULL,
  `PlateType` tinyint(4) NOT NULL DEFAULT '0',
  `Suspicious` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `Speed` int(11) NOT NULL,
  `VehicleType` int(11) NOT NULL,
  `Lane` tinyint(4) NOT NULL,
  `PassedTime` datetime(3) NOT NULL,
  `Accuracy` tinyint(4) NOT NULL,
  `ColorFrameNumber` int(11) NOT NULL,
  `ProcessedFrames` int(11) NOT NULL,
  `Wanted` smallint(6) NOT NULL,
  `ImageAddress` text COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE `Person` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Age` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`ID`, `FirstName`, `LastName`, `Age`) VALUES
(1, 'Navid', 'Jalali', 30),
(2, 'Ali', 'Fakhamati', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PassedVehicleRecords`
--
ALTER TABLE `PassedVehicleRecords`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PlateValue` (`PlateValue`);

--
-- Indexes for table `Person`
--
ALTER TABLE `Person`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `PassedVehicleRecords`
--
ALTER TABLE `PassedVehicleRecords`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Person`
--
ALTER TABLE `Person`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
