-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2021 at 08:13 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `energymeterdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `acvalues`
--

CREATE TABLE `acvalues` (
  `header` varchar(3) DEFAULT NULL,
  `finalrmsVoltage` varchar(10) DEFAULT NULL,
  `finalrmsCurrent` varchar(10) DEFAULT NULL,
  `realPower` varchar(10) DEFAULT NULL,
  `apparentPower` varchar(10) DEFAULT NULL,
  `powerFactor` varchar(10) DEFAULT NULL,
  `netEnergy` varchar(10) DEFAULT NULL,
  `importEnergy` varchar(10) DEFAULT NULL,
  `exportEnergy` varchar(10) DEFAULT NULL,
  `frequency` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acvalues`
--

INSERT INTO `acvalues` (`header`, `finalrmsVoltage`, `finalrmsCurrent`, `realPower`, `apparentPower`, `powerFactor`, `netEnergy`, `importEnergy`, `exportEnergy`, `frequency`) VALUES
('5', '0.00', '0.00', '0.19', '0.00', '0.00', '63.23', '63.23', '0.00', '72.35');

-- --------------------------------------------------------

--
-- Table structure for table `dcvalues`
--

CREATE TABLE `dcvalues` (
  `header` varchar(3) DEFAULT NULL,
  `finalVoltage` varchar(10) DEFAULT NULL,
  `finalCurrent` varchar(10) DEFAULT NULL,
  `finalPower` varchar(10) DEFAULT NULL,
  `netEnergy` varchar(10) DEFAULT NULL,
  `importEnergy` varchar(10) DEFAULT NULL,
  `exportEnergy` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dcvalues`
--

INSERT INTO `dcvalues` (`header`, `finalVoltage`, `finalCurrent`, `finalPower`, `netEnergy`, `importEnergy`, `exportEnergy`) VALUES
('5', '3.69', '0.00', '0.00', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `index` int(3) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `finalVoltageDC` varchar(10) NOT NULL,
  `finalCurrentDC` varchar(10) NOT NULL,
  `finalPowerDC` varchar(10) NOT NULL,
  `netEnergyDC` varchar(10) NOT NULL,
  `importEnergyDC` varchar(10) NOT NULL,
  `exportEnergyDC` varchar(10) NOT NULL,
  `finalRMSVoltageAC` varchar(10) NOT NULL,
  `finalRMSCurrentAC` varchar(10) NOT NULL,
  `realPowerAC` varchar(10) NOT NULL,
  `apparentPowerAC` varchar(10) NOT NULL,
  `powerFactorAC` varchar(10) NOT NULL,
  `netEnergyAC` varchar(10) NOT NULL,
  `importEnergyAC` varchar(10) NOT NULL,
  `exportEnergyAC` varchar(10) NOT NULL,
  `frequencyAC` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`index`, `date`, `time`, `timestamp`, `finalVoltageDC`, `finalCurrentDC`, `finalPowerDC`, `netEnergyDC`, `importEnergyDC`, `exportEnergyDC`, `finalRMSVoltageAC`, `finalRMSCurrentAC`, `realPowerAC`, `apparentPowerAC`, `powerFactorAC`, `netEnergyAC`, `importEnergyAC`, `exportEnergyAC`, `frequencyAC`) VALUES
(1, '2021-07-19', '02:10:36', '2021-07-18 18:10:36', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(2, '2021-07-19', '02:10:41', '2021-07-18 18:10:41', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(3, '2021-07-19', '02:10:46', '2021-07-18 18:10:46', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(4, '2021-07-19', '02:10:51', '2021-07-18 18:10:51', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(5, '2021-07-19', '02:10:56', '2021-07-18 18:10:56', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(6, '2021-07-19', '02:11:01', '2021-07-18 18:11:01', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(7, '2021-07-19', '02:11:06', '2021-07-18 18:11:06', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(8, '2021-07-19', '02:11:12', '2021-07-18 18:11:12', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(9, '2021-07-19', '02:11:17', '2021-07-18 18:11:17', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(10, '2021-07-19', '02:11:22', '2021-07-18 18:11:22', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(11, '2021-07-19', '02:11:27', '2021-07-18 18:11:27', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(12, '2021-07-19', '02:11:32', '2021-07-18 18:11:32', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(13, '2021-07-19', '02:11:37', '2021-07-18 18:11:37', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(14, '2021-07-19', '02:11:42', '2021-07-18 18:11:42', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
(15, '2021-07-19', '02:11:47', '2021-07-18 18:11:47', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`index`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `index` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
