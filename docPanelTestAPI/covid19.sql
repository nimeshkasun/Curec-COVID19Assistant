-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2020 at 01:52 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

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
-- Table structure for table `diagnose`
--

CREATE TABLE `diagnose` (
  `DigID` int(11) NOT NULL,
  `DID` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `Comment` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnose`
--

INSERT INTO `diagnose` (`DigID`, `DID`, `MID`, `Comment`, `status`, `timestamp`) VALUES
(5, 1, 1, '', 3, '2020-04-09 16:30:57'),
(6, 1, 1, '', 3, '2020-04-09 16:34:23'),
(7, 1, 1, '', 3, '2020-04-09 16:35:48'),
(8, 1, 1, 'selfqrn', 2, '2020-04-09 16:36:22'),
(9, 1, 2, 'selfqrn', 2, '2020-04-09 16:39:17'),
(10, 1, 2, 'selfqrn', 2, '2020-04-09 16:39:31'),
(11, 1, 1, '', 3, '2020-04-09 16:46:03'),
(12, 1, 1, '', 3, '2020-04-09 16:46:10'),
(13, 1, 1, '', 3, '2020-04-09 16:57:33'),
(14, 1, 2, '', 3, '2020-04-09 16:59:40'),
(15, 1, 1, 'selfqrn', 2, '2020-04-09 16:59:59'),
(16, 1, 2, '', 3, '2020-04-09 17:01:30'),
(17, 1, 1, '', 3, '2020-04-09 17:02:31'),
(18, 1, 2, '', 3, '2020-04-09 17:04:01'),
(19, 1, 1, '', 3, '2020-04-09 17:05:20'),
(20, 1, 2, '', 3, '2020-04-09 17:05:52'),
(21, 1, 1, '', 3, '2020-04-09 17:06:25'),
(22, 1, 1, '', 3, '2020-04-09 17:06:56'),
(23, 1, 1, '', 3, '2020-04-09 17:07:58'),
(24, 1, 1, '', 3, '2020-04-09 17:11:20'),
(25, 1, 2, '', 3, '2020-04-09 17:12:33'),
(26, 1, 1, 'selfqrn', 2, '2020-04-09 17:14:14'),
(27, 1, 1, 'hospitalize', 1, '2020-04-09 17:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `apiKey` varchar(255) NOT NULL,
  `sessionId` longtext NOT NULL,
  `token` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DID`, `name`, `phone`, `email`, `username`, `password`, `status`, `apiKey`, `sessionId`, `token`) VALUES
(1, 'Nimesh', 771010151, 'nimesh.ekanayaka7@gmail.com', 'doctor1', '12345', 2, '46662182', '1_MX40NjY2MjE4Mn5-MTU4NjQwNzMxODc3MX5VeHprZ0R3bGJYU0h4alR6R0xVbjFoZVN-fg', 'T1==cGFydG5lcl9pZD00NjY2MjE4MiZzaWc9ZmZkYWIzMWQzZDZjZTI4MDk0YzM2NzAwODliYzQ2ZjE2ZGE4Njg0ZDpzZXNzaW9uX2lkPTFfTVg0ME5qWTJNakU0TW41LU1UVTROalF3TnpNeE9EYzNNWDVWZUhwclowUjNiR0pZVTBoNGFsUjZSMHhWYmpGb1pWTi1mZyZjcmVhdGVfdGltZT0xNTg2NDA3MzUxJm5vbmNlPTAuMjQzMDY2MTEyMDM2ODYyMjQmcm9sZT1wdWJsaXNoZXImZXhwaXJlX3RpbWU9MTU4ODk5OTM1MCZpbml0aWFsX2xheW91dF9jbGFzc19saXN0PQ=='),
(2, 'Kasun', 756868545, 'chamod.ekanayaka7@gmail.com', 'doctor2', '12345', 1, '46662142', '1_MX40NjY2MjE0Mn5-MTU4NjQwNjUxNTk4M35lZmtycUFReHVaVVljb0lOWWVtM2d0dE9-fg', 'T1==cGFydG5lcl9pZD00NjY2MjE0MiZzaWc9ODlmZWY0YTBjNDA0M2FiOGI3NjUzYWYwNGJhOTA1MzIxMTM3ZTFjNTpzZXNzaW9uX2lkPTFfTVg0ME5qWTJNakUwTW41LU1UVTROalF3TmpVeE5UazRNMzVsWm10eWNVRlJlSFZhVlZsamIwbE9XV1Z0TTJkMGRFOS1mZyZjcmVhdGVfdGltZT0xNTg2NDA2NTU0Jm5vbmNlPTAuMzE0MjY2MTg1NjEyNzA1OCZyb2xlPXB1Ymxpc2hlciZleHBpcmVfdGltZT0xNTg4OTk4NTU0JmluaXRpYWxfbGF5b3V0X2NsYXNzX2xpc3Q9');

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
  `name` varchar(200) NOT NULL,
  `phone` int(10) NOT NULL,
  `Colony` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `name` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `Colony` varchar(100) NOT NULL
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
  `DID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `priority_queue`
--

INSERT INTO `priority_queue` (`RID`, `priority`, `status`, `arived_time`, `answer_time`, `end_time`, `DID`) VALUES
(5, 5, 1, '2020-04-05 17:17:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(6, 6, 1, '2020-04-05 17:17:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

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
(1, 1, 0, '0000-00-00', '2020-04-04 08:49:30', '127', '127', '127', '127', '127', '127', '127', '127', '127', '127', '2020-04-04', '127', '127', '127', '127', '127', '127', '127', '127', '127', '127', '', ''),
(2, 1, 0, '0000-00-00', '2020-04-04 09:50:46', '2131362193', '2131362194', '2131362195', '2131362196', '2131362197', '2131362198', '2131362199', '2131362200', '2131362201', '2131362193', '2020-04-04', '2131362194', '2131362195', '2131362196', '2131362197', '2131362198', '2131362193', '2131362194', '2131362195', '2131362196', '2131362197', '', ''),
(3, 1, 0, '0000-00-00', '2020-04-04 10:12:21', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Reduced', 'Yes', '2020-04-04', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', '', ''),
(4, 1, 0, '0000-00-00', '2020-04-04 10:26:42', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Normal', 'Yes', '2020-03-04', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', '', ''),
(5, 1, 0, '0000-00-00', '2020-04-05 17:15:21', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'Yes', '2020-04-24', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', '', ''),
(6, 2, 0, '0000-00-00', '2020-04-05 17:17:54', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'Yes', '2020-04-16', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', '', '');

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
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `username` (`username`);

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
-- AUTO_INCREMENT for table `diagnose`
--
ALTER TABLE `diagnose`
  MODIFY `DigID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `FID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phi`
--
ALTER TABLE `phi`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `symtoms`
--
ALTER TABLE `symtoms`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
