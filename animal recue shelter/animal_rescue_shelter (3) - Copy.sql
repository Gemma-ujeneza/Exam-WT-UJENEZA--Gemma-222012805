-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 10:51 AM
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
-- Database: `animal_rescue_shelter`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoptions`
--

CREATE TABLE `adoptions` (
  `AdoptionID` int(11) NOT NULL,
  `AnimalID` int(11) DEFAULT NULL,
  `AdopterName` varchar(100) DEFAULT NULL,
  `AdoptionDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoptions`
--

INSERT INTO `adoptions` (`AdoptionID`, `AnimalID`, `AdopterName`, `AdoptionDate`) VALUES
(2, 102, 'Emily Johnson', '2024-05-02'),
(3, 103, 'Michael Davis', '2024-05-03'),
(4, 104, 'Emma Wilson', '2024-05-04'),
(5, 105, 'Daniel Brown', '2024-05-05'),
(6, 106, 'Olivia Martinez', '2024-05-06');

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `AnimalID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Species` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `ShelterDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`AnimalID`, `Name`, `Species`, `Age`, `ShelterDate`) VALUES
(101, 'Buddy', 'Dog', 8, '2024-04-20'),
(102, 'Whiskers', 'Cat', 2, '2024-04-21'),
(103, 'Rocky', 'Dog', 4, '2024-04-22'),
(104, 'Mittens', 'Cat', 1, '2024-04-23'),
(105, 'Max', 'Dog', 2, '2024-04-24'),
(106, 'Luna', 'Cat', 3, '2024-04-25'),
(107, 'Charlie', 'Dog', 1, '2024-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `activation_code` varchar(50) DEFAULT NULL,
  `is_activated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `firstname`, `lastname`, `username`, `email`, `telephone`, `password`, `creationdate`, `activation_code`, `is_activated`) VALUES
(0, 'gemma', 'd', '0787997455', 'ujenezagema97@gmail.com', '3456789', '$2y$10$lGRkjnmvN/npQaL80YpiZOOBSrkqNrnGXpk3FLKwBuHi5u1yyJu7m', '2024-05-14 19:50:28', '6', 0),
(0, 'bbbbbb', 'gggg', 'fffff', 'b@gmail.com', '098765', '$2y$10$aTCy.lbEnxGkDsYnwHrnKeqS6aUf0fJKwHY3lLL2uyqpkrq4NM9vi', '2024-05-19 13:22:01', '6', 0),
(0, 'nnn', 'nnn', 'qwe', 'n@gmail.com', '0987654', '$2y$10$f9CGSAMMVDGjyyKh1r27/ey5wSviZ/zI83U5qbLNwdm3XRy8Pzk8G', '2024-05-19 13:42:48', '21', 0),
(1, 'Alice', 'Johnson', 'alicej', 'alice@example.com', '123-456-7890', 'hashed_password', '2024-05-01 10:00:00', 'activation_code_1', 1),
(2, 'Bob', 'Smith', 'bobsmith', 'bob@example.com', '987-654-3210', 'hashed_password', '2024-05-02 10:00:00', 'activation_code_2', 1),
(3, 'Eva', 'Brown', 'evab', 'eva@example.com', '456-789-0123', 'hashed_password', '2024-05-03 10:00:00', 'activation_code_3', 0),
(4, 'David', 'Jones', 'davidj', 'david@example.com', '789-012-3456', 'hashed_password', '2024-05-04 10:00:00', 'activation_code_4', 0),
(5, 'Grace', 'Miller', 'gracem', 'grace@example.com', '234-567-8901', 'hashed_password', '2024-05-05 10:00:00', 'activation_code_5', 1),
(6, 'Henry', 'Wilson', 'henryw', 'henry@example.com', '567-890-1234', 'hashed_password', '2024-05-06 10:00:00', 'activation_code_6', 1),
(7, 'Sophia', 'Davis', 'sophiad', 'sophia@example.com', '345-678-9012', 'hashed_password', '2024-05-07 10:00:00', 'activation_code_7', 0),
(0, 'bright', 'john', 'john', 'gdj@gmail.com', '345678', '$2y$10$ewkGfso8kk7/.2XRKEVNkOHfojrZqNiXTMpX/kREg7fs33TJwohbO', '2024-05-19 18:19:21', '9', 0),
(0, 'anne', 'iranesha', 'gemma', 'ert@gmail.com', '2345678', '$2y$10$5ds1hTV0dQJMDHCbKP6XIOQlCq9ZLUOeezctUqSTevj36wsyRW11y', '2024-05-20 09:53:57', '4', 0),
(0, 'fabiola', 'iradukunda', 'fabiola', 'iradukunda@gmail.com', '4567890', '$2y$10$9CJIpmfq0ciPqPnqPk0fQOkoCmSaUiny7jsOOOKBmbPB/zYS.Jb1a', '2024-05-21 15:33:17', '8', 0),
(0, 'moddeste', 'niyonkuru', 'modeste', 'niyonkuru@gmail.com', '234567', '$2y$10$IrFjRckOH7SnnntblOGUW.B9ecYgmUKIkya81c1.MeUjY3nn.4Af6', '2024-05-22 13:23:44', '6', 0),
(0, 'wertyu', 'sdfghj', 'rew', 'e@gmail.com', '9887766', '$2y$10$qMRi0C4SkNFA862Z2fEx1.Z1kgCVnp41xz3qMNZABjXYyHktxlqOO', '2024-05-22 18:25:40', '3', 0),
(0, 't', 'd', '12345', 'd@gmail.com', '0987654', '$2y$10$33y/GJVkzNiWXix6QW5PxuIqrYbCLYcNmEyAkXY2Fsa20fTbzaKNS', '2024-05-22 18:32:40', '7', 0),
(0, 'b', 'm', 'f', 'j@gmail.com', '987654', '$2y$10$605zXrNeUo5GFYBqkkEAi.FE8QpYUXaK65DbLdHiAUR3UBidBPtx.', '2024-05-22 19:14:37', '9', 0),
(0, 'sum', 'byiringiro', 'ishimwe', 'byiringiro@gmail.com', '0789645733', '$2y$10$ZszJ3fPeQjLnnvSuFIBNT.8ZP4anROWbY7UXPZFhar0pC4k9tYiqG', '2024-05-23 07:48:32', '4', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoptions`
--
ALTER TABLE `adoptions`
  ADD PRIMARY KEY (`AdoptionID`),
  ADD KEY `AnimalID` (`AnimalID`);

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`AnimalID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adoptions`
--
ALTER TABLE `adoptions`
  MODIFY `AdoptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `AnimalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adoptions`
--
ALTER TABLE `adoptions`
  ADD CONSTRAINT `adoptions_ibfk_1` FOREIGN KEY (`AnimalID`) REFERENCES `animals` (`AnimalID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
