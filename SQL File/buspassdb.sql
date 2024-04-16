-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 04:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buspassdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Piyal', 'piyal', 1234567891, 'adminuser@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2024-04-01 06:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(13, 'AC Bus', '2024-04-07 13:11:01'),
(14, 'Non AC Bus', '2024-04-07 13:11:14'),
(15, 'Local Bus', '2024-04-07 13:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(4, 'Ashikur Rahman Piyal', 'a@gmail2.com', 'Thank you', '2024-04-08 11:22:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<font color=\"#747474\" face=\"Roboto, sans-serif, arial\"><span style=\"font-size: 13px;\"><b>We have made this</b></span></font><div><font color=\"#747474\" face=\"Roboto, sans-serif, arial\"><span style=\"font-size: 13px;\"><b><br></b></span></font></div>', NULL, NULL, '2024-04-07 13:12:11'),
(2, 'contactus', 'Contact Us', 'Basundhara,Dhaka,Bangladesh', 'piyal@gmail.com', 1712345678, '2024-04-07 13:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblpass`
--

CREATE TABLE `tblpass` (
  `ID` int(10) NOT NULL,
  `PassNumber` varchar(200) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `ProfileImage` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `IdentityType` varchar(200) DEFAULT NULL,
  `IdentityCardno` varchar(200) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Source` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Cost` decimal(10,0) DEFAULT NULL,
  `PasscreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpass`
--

INSERT INTO `tblpass` (`ID`, `PassNumber`, `FullName`, `ProfileImage`, `ContactNumber`, `Email`, `IdentityType`, `IdentityCardno`, `Category`, `Source`, `Destination`, `FromDate`, `ToDate`, `Cost`, `PasscreationDate`) VALUES
(7, '175076998', 'Piyal', '4a47a0db6e60853dedfcfdf08a5ca2491712498716.png', 123, 'piyal@gmail.com', 'Student Card', '23s', 'Non AC Bus', 'asdf', 'asdf', '2024-04-18', NULL, 500, '2024-04-07 14:05:16'),
(8, '493339233', 'Sukanto', 'ad93ff7b284795da1100259481c3739e1712506152.jpg', 123, 'a@gmail2.com', 'Student Card', '23s', 'Local Bus', 'dhaka', 'khulna', '2024-04-09', '2024-04-10', 500, '2024-04-07 16:09:12'),
(9, '708027650', 'Sukanto', 'ad93ff7b284795da1100259481c3739e1712570951.jpg', 123, 'a@gmail2.com', 'Student Card', '23s', 'Local Bus', 'dhaka', 'khulna', '2024-04-09', '2024-04-10', 500, '2024-04-08 10:09:11'),
(10, '181413729', 'Piyal', '819c407093b5cf06a4c8d04c95481c581712571030jpeg', 123, 'piyal@gmail.com', 'Passport', '23s', 'AC Bus', 'dhaka', 'khulna', '2024-04-10', '2024-04-11', 1000, '2024-04-08 10:10:30'),
(11, '611241637', 'joy', '9cf49766d6a1ed25ac4fd14f9f0bdd371712573118.jpg', 123, 'a@gmail', 'Student Card', '23s', 'AC Bus', 'dhaka', 'khulna', '2024-04-11', '2024-04-17', 1000, '2024-04-08 10:45:18'),
(12, '182569658', 'Piyal', '819c407093b5cf06a4c8d04c95481c581712573210jpeg', 123, 'piyal@gmail.com', 'Voter Card', '23s', 'AC Bus', 'dhaka', 'khulna', '2024-04-23', '2024-04-24', 500, '2024-04-08 10:46:50'),
(13, '329107386', 'Piyal', '819c407093b5cf06a4c8d04c95481c581712575141jpeg', 123, 'piyal@gmail.com', 'Voter Card', '23s', 'AC Bus', 'dhaka', 'khulna', '2024-04-17', '2024-04-20', 1000, '2024-04-08 11:19:01'),
(14, '488445035', 'Sukanto', 'ad93ff7b284795da1100259481c3739e1712576112.jpg', 123, 'a@gmail', 'Student Card', '23s', 'Non AC Bus', 'dhaka', 'khulna', '2024-04-19', '2024-04-18', 1000, '2024-04-08 11:35:12'),
(15, '597484934', 'Sukanto', 'ad93ff7b284795da1100259481c3739e1712576492.jpg', 123, 'a@gmail2.com', 'Student Card', '23s', 'Local Bus', 'dhaka', 'khulna', '2024-04-18', '2024-04-05', 1000, '2024-04-08 11:41:32'),
(16, '870552288', 'sukanto', 'ad93ff7b284795da1100259481c3739e1712576603.jpg', 123, 'a@gmail2.com', 'Student Card', '23s', 'AC Bus', 'dhaka', 'khulna', '2024-04-02', '2024-04-09', 1000, '2024-04-08 11:43:23'),
(17, '526810396', 'joy', '9cf49766d6a1ed25ac4fd14f9f0bdd371712576722.jpg', 123, 'a@gmail2.com', 'Student Card', '23s', 'Local Bus', 'dhaka', 'khulna', '2024-04-09', '2024-04-10', 1000, '2024-04-08 11:45:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpass`
--
ALTER TABLE `tblpass`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpass`
--
ALTER TABLE `tblpass`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
