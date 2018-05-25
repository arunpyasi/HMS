-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2018 at 01:53 AM
-- Server version: 10.0.34-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_room`
--

CREATE TABLE `admitpatient_room` (
  `AdmitID` int(11) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `Disease` text NOT NULL,
  `RoomNo` varchar(50) NOT NULL,
  `AdmitDate` text NOT NULL,
  `DoctorID` varchar(50) NOT NULL,
  `AP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_ward`
--

CREATE TABLE `admitpatient_ward` (
  `AdmitID` int(11) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `Disease` text NOT NULL,
  `Wardname` varchar(100) NOT NULL,
  `AdmitDate` text NOT NULL,
  `DoctorID` varchar(50) NOT NULL,
  `AP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bill_room`
--

CREATE TABLE `bill_room` (
  `BillNo` int(11) NOT NULL,
  `DischargeID` int(11) NOT NULL,
  `BillingDate` text NOT NULL,
  `NoOfDays` int(11) NOT NULL,
  `RoomCharges` double NOT NULL,
  `TotalRoomCharges` double NOT NULL,
  `ServiceCharges` double NOT NULL,
  `TotalCharges` double NOT NULL,
  `PaymentMode` text NOT NULL,
  `PaymentModeDetails` text NOT NULL,
  `ChargesPaid` double NOT NULL,
  `DueCharges` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bill_ward`
--

CREATE TABLE `bill_ward` (
  `BillNo` int(11) NOT NULL,
  `DischargeID` int(11) NOT NULL,
  `BillingDate` text NOT NULL,
  `BedCharges` double NOT NULL,
  `NoOfDays` int(11) NOT NULL,
  `TotalBedCharges` double NOT NULL,
  `ServiceCharges` double NOT NULL,
  `TotalCharges` double NOT NULL,
  `PaymentMode` text NOT NULL,
  `PaymentModeDetails` text NOT NULL,
  `ChargesPaid` double NOT NULL,
  `DueCharges` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_room`
--

CREATE TABLE `dischargepatient_room` (
  `ID` int(11) NOT NULL,
  `AdmitID` int(11) NOT NULL,
  `DischargeDate` text NOT NULL,
  `DP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_ward`
--

CREATE TABLE `dischargepatient_ward` (
  `ID` int(11) NOT NULL,
  `AdmitID` int(11) NOT NULL,
  `DischargeDate` text NOT NULL,
  `DP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` varchar(50) NOT NULL,
  `DoctorName` text NOT NULL,
  `FatherName` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `Qualifications` text NOT NULL,
  `Specialization` text NOT NULL,
  `Gender` text NOT NULL,
  `Bloodgroup` text NOT NULL,
  `DateOfJoining` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patientregistration`
--

CREATE TABLE `patientregistration` (
  `PatientID` varchar(50) NOT NULL,
  `Patientname` text NOT NULL,
  `Fathername` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `Age` int(11) NOT NULL,
  `Gen` text NOT NULL,
  `BG` text NOT NULL,
  `Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNo` varchar(50) NOT NULL,
  `RoomType` varchar(100) NOT NULL,
  `RoomCharges` int(11) NOT NULL,
  `RoomStatus` varchar(100) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ServiceID` int(11) NOT NULL,
  `ServiceName` varchar(250) NOT NULL,
  `ServiceDate` varchar(50) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `ServiceCharges` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `NameOfUser` varchar(200) NOT NULL,
  `ContactNo` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `salt` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `NameOfUser`, `ContactNo`, `Email`, `salt`) VALUES
('admin', 'bJ9iRkyG3do0JjKKrrDH+BkVhDpKwo/DF3oVAs1exms=', 'Admin', '98999999', 'admin@indrenihospital.com', 'mQuIUmj3W1cvcGEDBbwvCSMz3txqdC');

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `wardname` varchar(100) NOT NULL,
  `wardtype` varchar(50) NOT NULL,
  `NoOfBeds` int(11) NOT NULL,
  `Charges` int(11) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wardboy_nurse_tbl`
--

CREATE TABLE `wardboy_nurse_tbl` (
  `ID` varchar(50) NOT NULL,
  `W_N_Name` varchar(250) NOT NULL,
  `Category` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Qualifications` varchar(250) NOT NULL,
  `BloodGroup` varchar(50) NOT NULL,
  `DateOfJoining` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD PRIMARY KEY (`AdmitID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `DoctorID_2` (`DoctorID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `RoomNo` (`RoomNo`);

--
-- Indexes for table `admitpatient_ward`
--
ALTER TABLE `admitpatient_ward`
  ADD PRIMARY KEY (`AdmitID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `Wardname` (`Wardname`);

--
-- Indexes for table `bill_room`
--
ALTER TABLE `bill_room`
  ADD PRIMARY KEY (`BillNo`),
  ADD KEY `DischargeID` (`DischargeID`),
  ADD KEY `DischargeID_2` (`DischargeID`);

--
-- Indexes for table `bill_ward`
--
ALTER TABLE `bill_ward`
  ADD PRIMARY KEY (`BillNo`),
  ADD KEY `DischargeID` (`DischargeID`);

--
-- Indexes for table `dischargepatient_room`
--
ALTER TABLE `dischargepatient_room`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AdmitID` (`AdmitID`);

--
-- Indexes for table `dischargepatient_ward`
--
ALTER TABLE `dischargepatient_ward`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AdmitID` (`AdmitID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `patientregistration`
--
ALTER TABLE `patientregistration`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ServiceID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`wardname`);

--
-- Indexes for table `wardboy_nurse_tbl`
--
ALTER TABLE `wardboy_nurse_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  MODIFY `AdmitID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admitpatient_ward`
--
ALTER TABLE `admitpatient_ward`
  MODIFY `AdmitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bill_room`
--
ALTER TABLE `bill_room`
  MODIFY `BillNo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bill_ward`
--
ALTER TABLE `bill_ward`
  MODIFY `BillNo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dischargepatient_room`
--
ALTER TABLE `dischargepatient_room`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dischargepatient_ward`
--
ALTER TABLE `dischargepatient_ward`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ServiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD CONSTRAINT `admitpatient_room_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patientregistration` (`PatientID`),
  ADD CONSTRAINT `admitpatient_room_ibfk_2` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`),
  ADD CONSTRAINT `admitpatient_room_ibfk_3` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `admitpatient_ward`
--
ALTER TABLE `admitpatient_ward`
  ADD CONSTRAINT `admitpatient_ward_ibfk_1` FOREIGN KEY (`Wardname`) REFERENCES `ward` (`wardname`),
  ADD CONSTRAINT `admitpatient_ward_ibfk_2` FOREIGN KEY (`PatientID`) REFERENCES `patientregistration` (`PatientID`),
  ADD CONSTRAINT `admitpatient_ward_ibfk_3` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `bill_room`
--
ALTER TABLE `bill_room`
  ADD CONSTRAINT `bill_room_ibfk_1` FOREIGN KEY (`DischargeID`) REFERENCES `dischargepatient_room` (`ID`);

--
-- Constraints for table `bill_ward`
--
ALTER TABLE `bill_ward`
  ADD CONSTRAINT `bill_ward_ibfk_1` FOREIGN KEY (`DischargeID`) REFERENCES `dischargepatient_ward` (`ID`);

--
-- Constraints for table `dischargepatient_room`
--
ALTER TABLE `dischargepatient_room`
  ADD CONSTRAINT `dischargepatient_room_ibfk_1` FOREIGN KEY (`AdmitID`) REFERENCES `admitpatient_room` (`AdmitID`);

--
-- Constraints for table `dischargepatient_ward`
--
ALTER TABLE `dischargepatient_ward`
  ADD CONSTRAINT `dischargepatient_ward_ibfk_1` FOREIGN KEY (`AdmitID`) REFERENCES `admitpatient_ward` (`AdmitID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
