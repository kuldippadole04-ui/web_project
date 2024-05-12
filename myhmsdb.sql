-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--



INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(2, 1, 'Jethalal', 'Gada', 'Male', 'jethalal@gmail.com', '8976897689', 'Hansraj', 550, '2024-02-14', '10:00:00', 1, 0),
(2, 2, 'Jethalal', 'Gada', 'Male', 'jethalal@gmail.com', '8976897689', 'Arun', 550, '2024-02-14', '10:00:00', 1, 0),
(11, 3, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'Dinesh', 500, '2024-02-29', '20:00:00', 1, 1),
(1, 4, 'Champaklal', 'Gada', 'Male', 'champak@gmail.com', '9876543210', 'Hansraj', 550, '2024-03-21', '10:00:00', 1, 1),
(7, 5, 'Harsh', 'Yadav', 'Male', 'harsh@gmail.com', '9070897653', 'Anmol', 550, '2024-03-19', '20:00:00', 1, 0),
(4, 6, 'Amey', 'Walwaikar', 'Male', 'amey@gmail.com', '8683619153', 'Amit', 800, '2024-03-26', '12:00:00', 1, 1),
(6, 7, 'Peter', 'Parker', 'Male', 'peter@gmail.com', '8683619153', 'Ankit', 450, '2024-03-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--


INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Amey Walwaikar', 'amey@gmail.com', '7896677554', 'Very Clean.'),
('Harsh Bindal', 'harsh@gmail.com', '9899778865', 'The doctor was friendly.'),
('Akash Yadav', 'akash@gmail.com', '9997888879', 'Can I get the number of the receptionist ?'),
('Aditya Sharma', 'aditya@gmail.com', '8788979967', 'The hospital is very big.');


-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('hansraj', 'hathi123', 'hathi@gmail.com', 'General', 500),
('arun', 'arun123', 'arun@gmail.com', 'Cardiologist', 600),
('dinesh', 'dinesh123', 'dinesh@gmail.com', 'General', 700),
('anmol', 'anmol123', 'anmol@gmail.com', 'Pediatrician', 800),
('amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('ankit', 'ankit123', 'ankit@gmail.com', 'Neurologist', 1500);




-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--


INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Champaklal', 'Gada', 'Male', 'champak@gmail.com', '9876543210', 'champak123', 'champak123'),
(2, 'Jethalal', 'Gada', 'Male', 'jethalal@gmail.com', '8976897689', 'jethalal123', 'jethalal123'),
(3, 'Shahrukh', 'Khan', 'Male', 'shahrukh@gmail.com', '8976898463', 'shahrukh123', 'shahrukh123'),
(4, 'Amey', 'Walwaikar', 'Male', 'amey@gmail.com', '8838489464', 'amey123', 'amey123'),
(5, 'Daya ', 'Gada', 'Female', 'daya@gmail.com', '9070897653', 'daya123', 'daya123'),
(6, 'Peter', 'Parker', 'Male', 'peter@gmail.com', '9059986865', 'peter123', 'peter123'),
(7, 'Harsh', 'Yadav', 'Male', 'harsh@gmail.com', '9128972454', 'harsh123', 'harsh23'),
(8, 'Kenny', 'Sebastian', 'Male', 'kenny@gmail.com', '9809879868', 'kenny123', 'kenny123'),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'william123', 'william123'),
(10, 'Jake', 'Norvig', 'Male', 'jake@gmail.com', '9609362815', 'jake123', 'jake123');



-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Hansraj', 1, 4, 'Champaklal', 'Gada', '2024-03-27', '15:00:00', 'Mental Trauma', 'Jethalal', 'Just take 8 hours of sleep.'),
('Arun', 2, 2, 'Jethalal', 'Gada', '2024-03-21', '10:00:00', 'Tension', 'Khichdi', 'Call your Fire Brigade.'),
('Anmol', 7, 5, 'Harsh', 'Yadav', '2024-03-26', '12:00:00', 'Headache', 'None', '1 cup of strong tea every morning and evening.'),
('Amit', 4, 6, 'Amey', 'Walwaikar', '2024-03-26', '14:00:00', 'Obesity', 'Healthy Food', 'Go to gym.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
