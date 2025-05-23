-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 03:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendtas`
--

CREATE TABLE `attendtas` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `hour_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('P','A') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendtas`
--

INSERT INTO `attendtas` (`id`, `student_id`, `hour_id`, `date`, `status`) VALUES
(1, 1, 1, '2025-05-21', 'P'),
(2, 1, 2, '2025-05-21', 'A'),
(3, 2, 1, '2025-05-21', 'P'),
(4, 2, 2, '2025-05-21', 'P'),
(5, 3, 1, '2025-05-21', 'A'),
(6, 3, 2, '2025-05-21', 'P'),
(7, 4, 1, '2025-05-21', 'P'),
(8, 4, 2, '2025-05-21', 'A'),
(9, 5, 1, '2025-05-21', 'P'),
(10, 5, 2, '2025-05-21', 'P'),
(11, 1, 3, '2025-05-21', 'P'),
(12, 2, 3, '2025-05-21', 'P'),
(13, 3, 3, '2025-05-21', 'P'),
(14, 4, 3, '2025-05-21', 'P'),
(15, 5, 3, '2025-05-21', 'A'),
(16, 1, 4, '2025-05-21', 'A'),
(17, 2, 4, '2025-05-21', 'A'),
(18, 3, 4, '2025-05-21', 'A'),
(19, 4, 4, '2025-05-21', 'P'),
(20, 5, 4, '2025-05-21', 'P'),
(21, 1, 5, '2025-05-21', 'P'),
(22, 2, 5, '2025-05-21', 'P'),
(23, 3, 5, '2025-05-21', 'P'),
(24, 4, 5, '2025-05-21', 'P'),
(25, 5, 5, '2025-05-21', 'A'),
(26, 1, 6, '2025-05-21', 'A'),
(27, 2, 6, '2025-05-21', 'A'),
(28, 3, 6, '2025-05-21', 'P'),
(29, 4, 6, '2025-05-21', 'A'),
(30, 5, 6, '2025-05-21', 'P'),
(31, 1, 1, '2025-05-22', 'P'),
(32, 2, 1, '2025-05-22', 'A'),
(33, 3, 1, '2025-05-22', 'P'),
(34, 4, 1, '2025-05-22', 'P'),
(35, 5, 1, '2025-05-22', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `id` int(11) NOT NULL,
  `hour_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`id`, `hour_number`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `roll_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `roll_number`) VALUES
(1, 'Alice Johnson', 'S101'),
(2, 'Bob Williams', 'S102'),
(3, 'Charlie Brown', 'S103'),
(4, 'Daisy Miller', 'S104'),
(5, 'Ethan Smith', 'S105');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `college_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `photo`, `role`, `college_name`) VALUES
(1, 'admin', 'admin123', 'Admin User', 'admin.jpg', 'Administrator', 'Tech University'),
(2, 'teacher1', 'teach123', 'John Doe', 'john.jpg', 'Staff', 'Tech University'),
(3, 'teacher2', 'teach456', 'Jane Smith', 'jane.jpg', 'Staff', 'Science College');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendtas`
--
ALTER TABLE `attendtas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`hour_id`,`date`),
  ADD KEY `hour_id` (`hour_id`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hour_number` (`hour_number`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendtas`
--
ALTER TABLE `attendtas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendtas`
--
ALTER TABLE `attendtas`
  ADD CONSTRAINT `attendtas_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `attendtas_ibfk_2` FOREIGN KEY (`hour_id`) REFERENCES `hours` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Sample Data
INSERT INTO `staffs` (`name`, `role`, `photo`) VALUES
('John Doe', 'Math Teacher', 'john.jpg'),
('Jane Smith', 'Science Teacher', 'jane.jpg');

