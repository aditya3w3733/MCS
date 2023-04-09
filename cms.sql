-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2022 at 07:57 AM
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
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaintId` int(11) NOT NULL,
  `deptId` int(11) NOT NULL,
  `complaintNarration` text NOT NULL,
  `complaintBy` int(11) NOT NULL,
  `complaintDate` datetime NOT NULL,
  `statusId` int(11) NOT NULL,
  `responseBy` int(11) NOT NULL,
  `responseDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`complaintId`, `deptId`, `complaintNarration`, `complaintBy`, `complaintDate`, `statusId`, `responseBy`, `responseDate`) VALUES
(1, 1, 'afdsgvfds', 1, '2022-10-23 12:58:22', 1, 0, '0000-00-00 00:00:00'),
(2, 1, 'segfsg', 1, '2022-10-23 13:03:02', 1, 0, '0000-00-00 00:00:00'),
(3, 1, 'segfsg', 1, '2022-10-23 13:03:55', 1, 0, '0000-00-00 00:00:00'),
(4, 1, 'segfsg', 1, '2022-10-23 13:04:23', 1, 0, '0000-00-00 00:00:00'),
(5, 1, 'adsgfdsg', 1, '2022-10-23 20:54:30', 1, 0, '0000-00-00 00:00:00'),
(6, 2, 'sdfsfdgsfg', 1, '2022-10-24 10:56:49', 1, 0, '0000-00-00 00:00:00'),
(7, 3, 'Hey', 1, '2022-10-29 19:53:23', 3, 0, '0000-00-00 00:00:00'),
(8, 3, 'new complaint', 1, '2022-10-30 09:46:18', 2, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `departmentmaster`
--

CREATE TABLE `departmentmaster` (
  `deptName` varchar(30) NOT NULL,
  `deptId` int(11) NOT NULL,
  `districtId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departmentmaster`
--

INSERT INTO `departmentmaster` (`deptName`, `deptId`, `districtId`) VALUES
('Electrical', 1, 35),
('Civil', 2, 35),
('Garbage', 3, 35),
('Water', 4, 35);

-- --------------------------------------------------------

--
-- Table structure for table `dept_user_master`
--

CREATE TABLE `dept_user_master` (
  `id` int(11) NOT NULL,
  `emailId` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobileNo` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `deptId` int(11) NOT NULL,
  `CreatedOn` datetime NOT NULL,
  `passwordChangedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept_user_master`
--

INSERT INTO `dept_user_master` (`id`, `emailId`, `password`, `mobileNo`, `Name`, `deptId`, `CreatedOn`, `passwordChangedOn`) VALUES
(1, '1@gmail.com', '$2y$10$jwPbyo16tLhFsu.ZOPPUNeKDkxTQq3EPA400MYSoiU7p3B/wwZYgC', 2147483647, 'A1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '2@gmail.com', '$2y$10$9tfMTPoB3tOAexdex9yNAOGwNyZNJSaxkTR21bKliNf0M.PCcWr2C', 2147483647, 'A2', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '3@gmail.com', '$2y$10$vGn36LeScc1onQRjulAkhuW.J1lnMtrz8sje9UN8NqlZ/rLVQmy2S', 2147483647, 'A3', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '4@gmail.cm', '$2y$10$PrD7o0IOfv/SevqUavHPKuOwGGKXWS03v508eWVmWEJaPNvYKB31.', 886495344, 'A4', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'dept1@gmail.com', '$2y$10$DqGGwGrCNte9VD9UebWLNOIZqNzrxZbkddMpZA452YtSLQyh0whbu', 2147483647, 'DepartmentUser1', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `districtmaster`
--

CREATE TABLE `districtmaster` (
  `districtId` int(11) NOT NULL,
  `districtName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `districtmaster`
--

INSERT INTO `districtmaster` (`districtId`, `districtName`) VALUES
(1, 'Ariyalur'),
(2, 'Chengalpattu'),
(3, 'Chennai'),
(4, 'Coimbatore'),
(5, 'Cuddalore'),
(6, 'Dharmapuri'),
(7, 'Dindigul'),
(8, 'Erode'),
(9, 'Kallakurichi'),
(10, 'Kancheepuram'),
(11, 'Karur'),
(12, 'Krishnagiri'),
(13, 'Madurai'),
(14, 'Mayiladuthurai'),
(15, 'Nagapatinnam'),
(16, 'Nagercoil'),
(17, 'Namakkal'),
(18, 'Perambulur'),
(19, 'Pudukottai'),
(20, 'Ramanathapuram'),
(21, 'Ranipet'),
(22, 'Salem'),
(23, 'Sivagangai'),
(24, 'Tenkasi'),
(25, 'Thanjavur'),
(26, 'Theni'),
(27, 'Thiruvallur'),
(28, 'Thiruvarur'),
(29, 'Thoothukudi'),
(30, 'Trichy'),
(31, 'Tirupattur'),
(32, 'Tiruppur'),
(33, 'Thiruvannamalai'),
(34, 'Ooty'),
(35, 'Vellore'),
(36, 'Viluppuram'),
(37, 'Virudhunagar');

-- --------------------------------------------------------

--
-- Table structure for table `public_user_master`
--

CREATE TABLE `public_user_master` (
  `id` int(11) NOT NULL,
  `emailId` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `communicationAddress` text NOT NULL,
  `createdOn` datetime NOT NULL,
  `passwordChangedOn` datetime NOT NULL,
  `mobileNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `public_user_master`
--

INSERT INTO `public_user_master` (`id`, `emailId`, `password`, `Name`, `communicationAddress`, `createdOn`, `passwordChangedOn`, `mobileNo`) VALUES
(1, 'aditya@gmail.com', '$2y$10$13h/quFyP8NR.V.W9jZJauMXcTe8pUvAZpzVx7mCcaqV7wl02GC62', 'S Aditya', 'D+1-10/6 KAIGA TOWNSHIP MALLAPUR', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `responseId` int(11) NOT NULL,
  `complaintId` int(11) NOT NULL,
  `response` text NOT NULL,
  `status` int(11) NOT NULL,
  `responseBy` int(11) NOT NULL,
  `responseDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`responseId`, `complaintId`, `response`, `status`, `responseBy`, `responseDate`) VALUES
(0, 7, 'this is response 1', 2, 5, '2022-10-30 12:01:38'),
(0, 7, 'Final Response ', 2, 5, '2022-10-30 12:07:48'),
(0, 7, 'Final Response ', 2, 5, '2022-10-30 12:08:15'),
(0, 7, 'Final Response ', 2, 5, '2022-10-30 12:08:39'),
(0, 7, 'Final Response ', 2, 5, '2022-10-30 12:08:40'),
(0, 7, 'Final Response ', 2, 5, '2022-10-30 12:08:50'),
(0, 8, 'This is response 2', 2, 5, '2022-10-30 12:10:53'),
(0, 7, 'This is final response', 2, 5, '2022-10-30 12:11:41'),
(0, 7, 'Under progress', 3, 5, '2022-10-30 12:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `statusmaster`
--

CREATE TABLE `statusmaster` (
  `statusId` int(11) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statusmaster`
--

INSERT INTO `statusmaster` (`statusId`, `status`) VALUES
(1, 'Pending'),
(2, 'Closed'),
(3, 'Under Progress'),
(4, 'On Hold');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwcomplaint`
-- (See below for the actual view)
--
CREATE TABLE `vwcomplaint` (
`complaintId` int(11)
,`deptId` int(11)
,`complaintNarration` text
,`complaintBy` int(11)
,`complaintDate` datetime
,`statusId` int(11)
,`responseBy` int(11)
,`responseDate` datetime
,`status` varchar(25)
,`deptName` varchar(30)
,`districtName` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `vwcomplaint`
--
DROP TABLE IF EXISTS `vwcomplaint`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwcomplaint`  AS SELECT `a`.`complaintId` AS `complaintId`, `a`.`deptId` AS `deptId`, `a`.`complaintNarration` AS `complaintNarration`, `a`.`complaintBy` AS `complaintBy`, `a`.`complaintDate` AS `complaintDate`, `a`.`statusId` AS `statusId`, `a`.`responseBy` AS `responseBy`, `a`.`responseDate` AS `responseDate`, `b`.`status` AS `status`, `c`.`deptName` AS `deptName`, `d`.`districtName` AS `districtName` FROM (((`complaint` `a` join `statusmaster` `b` on(`a`.`statusId` = `b`.`statusId`)) join `departmentmaster` `c` on(`a`.`deptId` = `c`.`deptId`)) join `districtmaster` `d` on(`c`.`districtId` = `d`.`districtId`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaintId`);

--
-- Indexes for table `departmentmaster`
--
ALTER TABLE `departmentmaster`
  ADD PRIMARY KEY (`deptId`);

--
-- Indexes for table `dept_user_master`
--
ALTER TABLE `dept_user_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_user_master`
--
ALTER TABLE `public_user_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statusmaster`
--
ALTER TABLE `statusmaster`
  ADD PRIMARY KEY (`statusId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaintId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `departmentmaster`
--
ALTER TABLE `departmentmaster`
  MODIFY `deptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dept_user_master`
--
ALTER TABLE `dept_user_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `public_user_master`
--
ALTER TABLE `public_user_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statusmaster`
--
ALTER TABLE `statusmaster`
  MODIFY `statusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
