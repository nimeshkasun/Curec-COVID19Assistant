-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2020 at 04:48 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid19`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` int(100) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `telephone` int(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nic` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `firstname`, `lastname`, `email`, `designation`, `telephone`, `password`, `nic`) VALUES
(2, 'Raman', 'Balla', 'raman@gmail.com', 'Ballek', 774545448, '147', '978887788v'),
(4, 'Sanara', 'Premarathne', 'sanara@gmail.com', 'TEST', 777447788, 'qwerty', '994455660v'),
(5, 'Savindu Shaggy', 'Bandara', 'bsavindu1998@gmail.com', 'Undergraduate', 766616649, '1234', '981121864v');

-- --------------------------------------------------------

--
-- Table structure for table `diagnose`
--

CREATE TABLE `diagnose` (
  `DigID` int(11) NOT NULL,
  `DID` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `Comment` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnose`
--

INSERT INTO `diagnose` (`DigID`, `DID`, `MID`, `Comment`, `status`, `timestamp`) VALUES
(19, 1, 1, 'selfqrn', 2, '2020-04-06 11:15:33'),
(20, 1, 1, 'shouldcont', 3, '2020-04-06 11:16:06'),
(21, 1, 1, 'selfqrn', 2, '2020-04-06 11:19:18'),
(22, 1, 1, 'shouldcont', 3, '2020-04-06 11:20:23'),
(23, 1, 1, 'hospitalize', 1, '2020-04-06 11:26:35'),
(24, 1, 2, 'shouldcont', 3, '2020-04-06 11:27:01'),
(25, 1, 1, 'shouldcont', 3, '2020-04-10 13:57:17'),
(26, 1, 1, 'shouldcont', 3, '2020-04-10 13:58:14'),
(27, 1, 2, 'selfqrn', 2, '2020-04-10 13:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `phone` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `medicalRegID` varchar(200) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `workArea` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DID`, `name`, `lastname`, `phone`, `status`, `medicalRegID`, `nic`, `workArea`, `email`, `password`) VALUES
(1, 'Nimesh', 'Ekanayake', 718810575, 2, '', '', '', 'user1@user.com', '12345'),
(7, 'Upsala', 'Dissanayake', 784545454, 1, 'asa', '984447565v', 'Colombo', 'user2@user.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `FID` int(11) NOT NULL,
  `phone` int(10) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`FID`, `phone`, `Address`, `zipcode`, `type`) VALUES
(0, 0, '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `LID` int(11) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`LID`, `Username`, `Password`) VALUES
(1, 'Chanakya', 'Chanakya'),
(2, '199254900431', 'Medhani'),
(4, '121212', '123123'),
(5, '111111', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MID` int(11) NOT NULL,
  `FID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` int(11) NOT NULL,
  `Bloodtype` varchar(100) NOT NULL,
  `Location_lat` double NOT NULL,
  `Location_lan` double NOT NULL,
  `City` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `LID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MID`, `FID`, `Name`, `NIC`, `Gender`, `Age`, `Bloodtype`, `Location_lat`, `Location_lan`, `City`, `phone`, `LID`) VALUES
(1, 0, 'Chanakya', '982852714v', 'M', 22, 'A+', 0, 0, '', 0, 1),
(2, 0, 'Medhani', '199254900431', 'F', 28, 'B+', 0, 1111, '1111', 767516341, 2),
(3, 0, 'Kasun', '121212', 'M', 12, 'A+', 1212, 1212, 'sbasvbc', 12222222, 4),
(4, 0, 'NImesh', '111111', 'Male', 11, 'B-', 111, 111, 'asohas', 11111, 5);

-- --------------------------------------------------------

--
-- Table structure for table `moh`
--

CREATE TABLE `moh` (
  `MID` int(11) NOT NULL,
  `officernumber` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `Colony` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moh`
--

INSERT INTO `moh` (`MID`, `officernumber`, `name`, `lastname`, `nic`, `phone`, `email`, `Colony`, `password`) VALUES
(3, '', 'Palitha', 'Yapa', '681459875v', 710127344, 'palitha@gmail.com', 'Colombo', '123456789'),
(4, 'MOH2258', 'Nimesh', 'Kasun', '914567825v', 75778899, 'nimeshkasun@gmail.com', 'Negambo', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `DigID` int(11) NOT NULL,
  `PHI` int(11) NOT NULL,
  `MOH` int(11) NOT NULL,
  `location_lat` double NOT NULL,
  `location_lan` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phi`
--

CREATE TABLE `phi` (
  `PID` int(11) NOT NULL,
  `phiNumber` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `Colony` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `priority_queue`
--

CREATE TABLE `priority_queue` (
  `RID` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `arived_time` datetime NOT NULL DEFAULT current_timestamp(),
  `answer_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `sessionId` text NOT NULL,
  `docToken` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `priority_queue`
--

INSERT INTO `priority_queue` (`RID`, `priority`, `status`, `arived_time`, `answer_time`, `end_time`, `sessionId`, `docToken`) VALUES
(5, 2, 2, '2020-04-05 17:17:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2_MX40NjY2NTg3Mn5-MTU4NjQ5MzgyODc5Nn5ORUhmKzJIQkJQTkgyR3FsQWNrVkREWGx-UH4', 'T1==cGFydG5lcl9pZD00NjY2NTg3MiZzaWc9OTMzNDAzNzM3ZGUwZTkwNDAxZTMzZTFkMTY4MTVmZDBhZjk5MWQwOTpzZXNzaW9uX2lkPTJfTVg0ME5qWTJOVGczTW41LU1UVTROalE1TXpneU9EYzVObjVPUlVobUt6SklRa0pRVGtneVIzRnNRV05yVmtSRVdHeC1VSDQmY3JlYXRlX3RpbWU9MTU4NjQ5MzgyOCZyb2xlPXB1Ymxpc2hlciZub25jZT0xNTg2NDkzODI4Ljk2NTc5OTU1NDAzNSZpbml0aWFsX2xheW91dF9jbGFzc19saXN0PQ=='),
(13, 4, 2, '2020-04-10 20:11:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1_MX40NjY2NTg3Mn5-MTU4NjUyOTY5OTA0MX5LejM0bG83dDNxRFQ5TURzT3lKK3FGRU9-UH4', 'T1==cGFydG5lcl9pZD00NjY2NTg3MiZzaWc9OTkwMTVhMWE5MmYyZDJiODYxNmUxODY2Y2EzMDdiMGZlZDcxZGEzMTpzZXNzaW9uX2lkPTFfTVg0ME5qWTJOVGczTW41LU1UVTROalV5T1RZNU9UQTBNWDVMZWpNMGJHODNkRE54UkZRNVRVUnpUM2xLSzNGR1JVOS1VSDQmY3JlYXRlX3RpbWU9MTU4NjUyOTY5OCZyb2xlPXB1Ymxpc2hlciZub25jZT0xNTg2NTI5Njk4Ljk1NTUyMzY0MzIyNzYmaW5pdGlhbF9sYXlvdXRfY2xhc3NfbGlzdD0=');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `RID` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `Date_time` date NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `fever` varchar(10) NOT NULL,
  `cough` varchar(10) NOT NULL,
  `soreThroat` varchar(10) NOT NULL,
  `difficultBreathe` varchar(10) NOT NULL,
  `bodyArchPain` varchar(10) NOT NULL,
  `cold` varchar(10) NOT NULL,
  `lossOfSmell` varchar(10) NOT NULL,
  `diarrhoea` varchar(10) NOT NULL,
  `urineOutput` varchar(10) NOT NULL,
  `ArriveFromAbroad` varchar(10) NOT NULL,
  `dateifYes` date NOT NULL,
  `contactSuspect` varchar(10) NOT NULL,
  `personAbroad` varchar(10) NOT NULL,
  `personHighrisk` varchar(10) NOT NULL,
  `personQuarantine` varchar(10) NOT NULL,
  `personWorkQuarantine` varchar(10) NOT NULL,
  `heartDiseace` varchar(10) NOT NULL,
  `bloodPressure` varchar(10) NOT NULL,
  `Diabetes` varchar(10) NOT NULL,
  `LungDisease` varchar(10) NOT NULL,
  `OtherDisease` varchar(10) NOT NULL,
  `Value1` varchar(100) NOT NULL,
  `Value2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`RID`, `MID`, `SID`, `Date_time`, `timestamp`, `fever`, `cough`, `soreThroat`, `difficultBreathe`, `bodyArchPain`, `cold`, `lossOfSmell`, `diarrhoea`, `urineOutput`, `ArriveFromAbroad`, `dateifYes`, `contactSuspect`, `personAbroad`, `personHighrisk`, `personQuarantine`, `personWorkQuarantine`, `heartDiseace`, `bloodPressure`, `Diabetes`, `LungDisease`, `OtherDisease`, `Value1`, `Value2`) VALUES
(5, 1, 0, '0000-00-00', '2020-04-05 17:15:21', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'Yes', '2020-04-24', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', '', ''),
(6, 2, 0, '0000-00-00', '2020-04-05 17:17:54', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'Yes', '2020-04-16', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', '', ''),
(7, 1, 0, '0000-00-00', '2020-04-05 17:17:54', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'Yes', '2020-04-16', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', '', ''),
(8, 1, 0, '0000-00-00', '2020-04-10 19:44:18', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'Reduced', 'Yes', '2020-04-10', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'No', '', ''),
(9, 1, 0, '0000-00-00', '2020-04-10 19:45:09', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Reduced', 'Yes', '2020-04-10', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', '', ''),
(10, 1, 0, '0000-00-00', '2020-04-10 19:45:43', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Reduced', 'Yes', '2020-04-10', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', ''),
(11, 1, 0, '0000-00-00', '2020-04-10 19:47:59', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Reduced', 'Yes', '2020-04-10', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', ''),
(12, 1, 0, '0000-00-00', '2020-04-10 20:02:02', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Reduced', 'Yes', '2020-04-10', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'No', '', ''),
(13, 1, 0, '0000-00-00', '2020-04-10 20:11:35', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Reduced', 'Yes', '2020-04-10', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'No', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `symtoms`
--

CREATE TABLE `symtoms` (
  `SID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Definition` varchar(255) NOT NULL,
  `Unit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `symtoms`
--

INSERT INTO `symtoms` (`SID`, `Name`, `Definition`, `Unit`) VALUES
(0, 'no', 'no', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `diagnose`
--
ALTER TABLE `diagnose`
  ADD PRIMARY KEY (`DigID`),
  ADD KEY `diagnose_ibfk_1` (`DID`),
  ADD KEY `diagnose_ibfk_2` (`MID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DID`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`FID`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MID`),
  ADD UNIQUE KEY `NIC` (`NIC`),
  ADD KEY `FID` (`FID`),
  ADD KEY `LID` (`LID`);

--
-- Indexes for table `moh`
--
ALTER TABLE `moh`
  ADD PRIMARY KEY (`MID`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD UNIQUE KEY `DigID` (`DigID`),
  ADD KEY `notification_ibfk_2` (`MOH`),
  ADD KEY `notification_ibfk_3` (`PHI`);

--
-- Indexes for table `phi`
--
ALTER TABLE `phi`
  ADD PRIMARY KEY (`PID`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `priority_queue`
--
ALTER TABLE `priority_queue`
  ADD UNIQUE KEY `RID` (`RID`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`RID`),
  ADD KEY `MID` (`MID`),
  ADD KEY `record_ibfk_2` (`SID`);

--
-- Indexes for table `symtoms`
--
ALTER TABLE `symtoms`
  ADD PRIMARY KEY (`SID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `diagnose`
--
ALTER TABLE `diagnose`
  MODIFY `DigID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `FID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `LID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `moh`
--
ALTER TABLE `moh`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `phi`
--
ALTER TABLE `phi`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `symtoms`
--
ALTER TABLE `symtoms`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnose`
--
ALTER TABLE `diagnose`
  ADD CONSTRAINT `diagnose_ibfk_1` FOREIGN KEY (`DID`) REFERENCES `doctor` (`DID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diagnose_ibfk_2` FOREIGN KEY (`MID`) REFERENCES `member` (`MID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`FID`) REFERENCES `family` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_ibfk_2` FOREIGN KEY (`LID`) REFERENCES `login` (`LID`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`DigID`) REFERENCES `diagnose` (`DigID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`MOH`) REFERENCES `moh` (`MID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_ibfk_3` FOREIGN KEY (`PHI`) REFERENCES `phi` (`PID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `priority_queue`
--
ALTER TABLE `priority_queue`
  ADD CONSTRAINT `priority_queue_ibfk_1` FOREIGN KEY (`RID`) REFERENCES `record` (`RID`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `member` (`MID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`SID`) REFERENCES `symtoms` (`SID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
