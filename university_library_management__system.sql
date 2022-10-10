-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2022 at 06:52 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university library management  system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Ad_ID` varchar(25) NOT NULL,
  `Ad_Name` varchar(100) DEFAULT NULL,
  `Ad_Email` varchar(150) DEFAULT NULL,
  `Ad_Phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Ad_ID`, `Ad_Name`, `Ad_Email`, `Ad_Phone`) VALUES
('01', 'Liton', 'liton@gmail.com', '01358956858'),
('02', 'Samina', 'samina@gmail.com', '01658495225'),
('03', 'MAizur', 'maizur@gmail.com', '01856425871'),
('04', 'Sumaita', 'sumait2gmail.com', '01911359467');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_ID` varchar(25) NOT NULL,
  `Book_Name` varchar(200) DEFAULT NULL,
  `Edition` varchar(25) DEFAULT NULL,
  `Author` varchar(50) DEFAULT NULL,
  `Student_Id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_ID`, `Book_Name`, `Edition`, `Author`, `Student_Id`) VALUES
('01', 'C Programming Absolute Beginner’s Guide\r\n', '3rd', 'Greg Perry', '23'),
('02', 'C Programming Language\r\n', '2nd', 'Brain W. Kernighan', '69'),
('03', 'C: The Complete Reference\r\n', '4th', 'Herbert Schildt', '01'),
('04', 'Python Crash Course\r\n', '1st', ' Eric Matthews', '04'),
('05', 'Learning Python\r\n', '5th', 'Mark Lutz', '12'),
('15', 'Database Systems: The Complete Book\r\n', '2nd', 'Hector Garcia-Molina ', '18'),
('16', 'Database System Concepts\r\n', '7th', 'Avi Silberschatz', '21');

-- --------------------------------------------------------

--
-- Table structure for table `newspaper`
--

CREATE TABLE `newspaper` (
  `new_ID` varchar(30) NOT NULL,
  `new_name` varchar(200) DEFAULT NULL,
  `new_date` date DEFAULT NULL,
  `Student_Id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newspaper`
--

INSERT INTO `newspaper` (`new_ID`, `new_name`, `new_date`, `Student_Id`) VALUES
('N-1', 'prothom  alo', '2016-02-03', '05'),
('N-2', 'The daily star', '2019-10-11', '23'),
('N-3', 'Ittefak', '2019-02-04', '14');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `User_ID` varchar(25) DEFAULT NULL,
  `Item_ID` varchar(25) NOT NULL,
  `Borrow_Date` date DEFAULT NULL,
  `Return_Date` date DEFAULT NULL,
  `Fine` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`User_ID`, `Item_ID`, `Borrow_Date`, `Return_Date`, `Fine`) VALUES
('04', '05', '2022-03-25', '2022-04-04', '50'),
('13', 'T-1', '2022-03-25', '2022-04-04', '50');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `Report_ID` varchar(25) NOT NULL,
  `Report_Name` varchar(100) NOT NULL,
  `Report_Year` int(10) NOT NULL,
  `Report_Writer` varchar(50) NOT NULL,
  `Student_ID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`Report_ID`, `Report_Name`, `Report_Year`, `Report_Writer`, `Student_ID`) VALUES
('01', 'Dual Axis Solar Power Tracker System.\r\n', 2011, 'Design of Road Side Drainage', '05'),
('02', 'Optical Character Recognition (OCR) System. \r\n', 2015, 'Paul D. Kimmel', '02'),
('03', 'Design of Road Side Drainage\r\n', 2019, 'Rodwell Victor', '23');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_Id` varchar(25) NOT NULL,
  `Student_Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Age` varchar(3) DEFAULT NULL,
  `Contact_Add` varchar(250) DEFAULT NULL,
  `Student_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_Id`, `Student_Name`, `Gender`, `Age`, `Contact_Add`, `Student_email`) VALUES
('01', 'Maisha', 'Female', '21', 'Dhanmondi,Dhaka', 'Maisha@gmail.com'),
('02', 'Raya', 'Female', '21', 'Hazaribag,dhaka', 'Raya@gmail.com'),
('04', 'Dipto', 'Male', '22', 'Mirpur', 'dip@gamil.com'),
('05', 'Riffah', 'Female', '21', 'Dhanmondi', 'riffah@gmail.com'),
('06', 'Arnob', 'Male', '21', 'Panthopot', 'arnob@gmail.com'),
('12', 'Faiza', 'Female', '21', 'Newpolton', 'Faiza@gmail.com'),
('13', 'Saima', 'Female', '21', 'Hazaribag', 'saima@gmail.com'),
('14', 'Mouree', 'Female', '21', 'Mirpur', 'mouree@gmail.com'),
('15', 'Rahat', 'Male', '23', 'Mirpur', 'rahat@gmail.com'),
('18', 'Shazid', 'Male', '23', 'Mirpur', 'Shazid@gmail.com'),
('21', 'Mahi', 'Male', '22', 'Savar', 'Mahi@gmail.com'),
('23', 'Tasnia', 'Female', '21', 'Mohammadpur', 'Tasnia@gmail.com'),
('69', 'Swrnale', 'Female', '22', 'Chainaroad', 'swrnale@gmail.com'),
('88', 'Moni', 'Female', '21', 'Narayanganj', 'moni@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `thesis_paper`
--

CREATE TABLE `thesis_paper` (
  `thesis_pepar_ID` varchar(20) NOT NULL,
  `thesis_paper_name` varchar(200) DEFAULT NULL,
  `thesis_writer` varchar(30) DEFAULT NULL,
  `thesis_year` varchar(30) DEFAULT NULL,
  `Student_Id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thesis_paper`
--

INSERT INTO `thesis_paper` (`thesis_pepar_ID`, `thesis_paper_name`, `thesis_writer`, `thesis_year`, `Student_Id`) VALUES
('T-1', 'Data mining', 'Liton', '2008', '88'),
('T-10', 'Power electronics', 'Nahiyan', '2017', '01'),
('T-2', 'Machine learning', 'Rubaiyat', '2009', '06'),
('T-3', 'Digital image Processing', 'Maijur Islam', '2010', '13'),
('T-4', 'Internet of Things (IOT)', 'Abrar', '2011', '14'),
('T-5', 'Artificial Intelligence', 'Nurul Islam', '2012', '15'),
('T-6', 'Cloud Computing', 'Rifat', '2013', '21'),
('T-8', 'Reluctance Motors.', 'Dipa', '2006', '23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Ad_ID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_ID`),
  ADD KEY `Student_Id` (`Student_Id`);

--
-- Indexes for table `newspaper`
--
ALTER TABLE `newspaper`
  ADD PRIMARY KEY (`new_ID`),
  ADD KEY `Student_Id` (`Student_Id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`Report_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_Id`);

--
-- Indexes for table `thesis_paper`
--
ALTER TABLE `thesis_paper`
  ADD PRIMARY KEY (`thesis_pepar_ID`),
  ADD KEY `Student_Id` (`Student_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`Student_Id`) REFERENCES `student` (`Student_Id`);

--
-- Constraints for table `newspaper`
--
ALTER TABLE `newspaper`
  ADD CONSTRAINT `newspaper_ibfk_1` FOREIGN KEY (`Student_Id`) REFERENCES `student` (`Student_Id`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `student` (`Student_Id`);

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_Id`);

--
-- Constraints for table `thesis_paper`
--
ALTER TABLE `thesis_paper`
  ADD CONSTRAINT `thesis_paper_ibfk_1` FOREIGN KEY (`Student_Id`) REFERENCES `student` (`Student_Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
