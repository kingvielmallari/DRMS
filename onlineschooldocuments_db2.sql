-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2024 at 07:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineschooldocuments_db2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_decription` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`course_id`, `course_name`, `course_decription`, `date_created`) VALUES
(1, 'BSIT', 'Bachelor of Science in Information Technology', '2024-10-18 01:59:38'),
(2, 'BSOA', 'Bachelor of Science in Office Administration', '2024-10-18 01:59:38'),
(3, 'CCS', 'Computer System Servicing', '2024-10-18 16:14:55'),
(4, 'COA\n', 'Certificate in Office Administration', '2024-10-18 02:30:51'),
(5, 'CHRM', 'Certificate in Hospitality and Restaurant Management', '2024-10-18 02:35:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_documentrequest`
--

CREATE TABLE `tbl_documentrequest` (
  `request_id` int(11) NOT NULL,
  `control_no` varchar(255) NOT NULL,
  `studentID_no` varchar(255) NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `no_ofcopies` varchar(255) NOT NULL,
  `date_request` varchar(255) NOT NULL,
  `date_releasing` varchar(255) DEFAULT NULL,
  `processing_officer` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `notif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_documentrequest`
--

INSERT INTO `tbl_documentrequest` (`request_id`, `control_no`, `studentID_no`, `document_name`, `no_ofcopies`, `date_request`, `date_releasing`, `processing_officer`, `status`, `remarks`, `student_id`, `notif`) VALUES
(128, 'CTRL-92910', '2021-3532', 'Certified True Copy of Certificate of Registration', '4', '2024-11-16', '2024-11-16', 'Registrar Heads', 'Waiting for Payment', '', 10, 1),
(131, 'CTRL-3309', '2024-1234', 'Certified True Copy of Certificate of Registration', '2', '2024-11-16', '2024-11-16', 'King Mallari', 'Releasing', NULL, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `studentID_no` text NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `date_ofbirth` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `complete_address` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_status` text NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `studentID_no`, `first_name`, `middle_name`, `last_name`, `course`, `year_level`, `date_ofbirth`, `gender`, `complete_address`, `email_address`, `mobile_number`, `username`, `password`, `account_status`, `date_created`) VALUES
(9, '2024-1234', 'Bernadette', 'Mendoza', 'Parman', 'CCS', '3rd Year', '2002-05-28', 'Female', 'Navotas City', 'bey@gmail.com', '09123456789', 'bey', 'beybey', 'Active', '2024-10-29'),
(10, '2021-3532', 'Bae', 'Kim', 'Suzy', 'BSIT', '2nd Year', '2000-02-02', 'Female', 'South Korea', 'suzy@gmail.com', '09511456142', 'suzy', 'suzy12', 'Active', '2024-10-30'),
(12, '2021-2130', 'King', 'Labro', 'Mallari', 'BSIT', '3rd Year', '2003-03-23', 'Male', 'Taguig City', 'king@gmail.com', '09123456789', 'king', 'king123', 'Active', '2024-11-15'),
(13, '2021-2432', 'Chuchi', 'Labro', 'Mallari', 'CCS', '2nd Year', '2003-02-23', 'Male', 'Taguig City', 'chuchi@gmail.com', '09098765678', 'chuchi', 'chuhci123', 'Active', '2024-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usermanagement`
--

CREATE TABLE `tbl_usermanagement` (
  `user_id` int(11) NOT NULL,
  `complete_name` varchar(255) NOT NULL,
  `desgination` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` text NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_usermanagement`
--

INSERT INTO `tbl_usermanagement` (`user_id`, `complete_name`, `desgination`, `email_address`, `phone_number`, `username`, `password`, `status`, `role`) VALUES
(1, 'Registrar Head', 'programmer', 'admin@gmail.com', '09978978999', 'admin', 'admin', 'Active', 'Administrator'),
(7, 'King Mallari', 'Administrator', 'king@gmail.com', '09123456783', 'king', 'king123', 'Active', ''),
(9, 'Berna', 'Administrator', 'mallariking0@gmail.com', '213321', 'bey', 'bey123', 'Active', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tbl_documentrequest`
--
ALTER TABLE `tbl_documentrequest`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_usermanagement`
--
ALTER TABLE `tbl_usermanagement`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_documentrequest`
--
ALTER TABLE `tbl_documentrequest`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_usermanagement`
--
ALTER TABLE `tbl_usermanagement`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
