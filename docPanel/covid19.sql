-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2020 at 06:39 PM
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
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnose`
--

INSERT INTO `diagnose` (`DigID`, `DID`, `MID`, `Comment`, `status`, `timestamp`) VALUES
(31, 1, 1, 'hospitalize', 1, '2020-04-05 16:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DID`, `name`, `phone`, `status`) VALUES
(1, 'Nimesh', 718810575, 1);

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
(4, 1, 0, '0000-00-00', '2020-04-04 10:26:42', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Normal', 'Yes', '2020-03-04', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', '', '');

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
  MODIFY `DigID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `member` (`MID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`SID`) REFERENCES `symtoms` (`SID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
