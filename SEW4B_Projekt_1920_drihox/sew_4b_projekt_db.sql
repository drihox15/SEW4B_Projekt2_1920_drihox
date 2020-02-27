-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2020 at 05:57 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sew_4b_projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `deptID` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptID`, `name`, `size`) VALUES
(1, 'Cardiology', '30'),
(2, 'Neurology', '40'),
(3, 'Psychiatry', '50'),
(4, 'Maternity', '70'),
(5, 'Emergency', '100'),
(6, 'Intensive Care', '150');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `ID` int(11) NOT NULL,
  `vorname` varchar(15) DEFAULT NULL,
  `nachname` varchar(15) DEFAULT NULL,
  `deptID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`ID`, `vorname`, `nachname`, `deptID`) VALUES
(1, 'Piotr', 'Philip', 1),
(2, 'Krishan', 'Logan', 1),
(3, 'Sabrina', 'Farley', 1),
(4, 'Sandra', 'Langley', 2),
(5, 'Kadir', 'Ritter', 2),
(6, 'Presley', 'Palacios', 2),
(7, 'Ava', 'Marshall', 3),
(8, 'Abdi', 'Croft', 3),
(9, 'Juan', 'Mack', 3),
(10, 'Vicky', 'Haynes', 4),
(11, 'Finley', 'Macleod', 4),
(12, 'Kelsea', 'Glenn', 4),
(13, 'Adam', 'Kirkpatrick', 5),
(14, 'Hamaad', 'Beard', 5),
(15, 'Kamron', 'Richmond', 5),
(16, 'Mercy', 'Howe', 6),
(17, 'Cristian', 'Leon', 6),
(18, 'Tolga', 'Foster', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `deptID` (`deptID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `deptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`deptID`) REFERENCES `department` (`deptID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
