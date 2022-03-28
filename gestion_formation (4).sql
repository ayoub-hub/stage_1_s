-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2022 at 03:09 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_formation`
--

-- --------------------------------------------------------

--
-- Table structure for table `fiche`
--

CREATE TABLE `fiche` (
  `id` int(11) NOT NULL,
  `nom_p` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `tel` bigint(20) NOT NULL,
  `name_f` varchar(30) NOT NULL,
  `debut_f` date NOT NULL,
  `fin_f` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fiche`
--

INSERT INTO `fiche` (`id`, `nom_p`, `mail`, `tel`, `name_f`, `debut_f`, `fin_f`) VALUES
(7, 'aloui soumaya', 'soumaya@gmail.com', 21002356, 'marketing', '2022-03-23', '2022-03-25'),
(8, 'nabil abidi', 'nabil@gmail.com', 25364789, 'marketing digital', '2022-03-01', '2022-03-09'),
(9, 'ALOUI', 'nabil@gmail.com', 22984442, 'marketing', '2022-03-08', '2022-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `formateur`
--

CREATE TABLE `formateur` (
  `id_f` int(15) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `specialite` varchar(30) NOT NULL,
  `responsable` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formateur`
--

INSERT INTO `formateur` (`id_f`, `LastName`, `FirstName`, `specialite`, `responsable`) VALUES
(4, 'karim', 'labidi', 'genie cevil', 'resource humaine'),
(6, 'ahmed', 'mejri', 'marketing', 'management');

-- --------------------------------------------------------

--
-- Table structure for table `formation`
--

CREATE TABLE `formation` (
  `id_c` int(30) NOT NULL,
  `theme` varchar(100) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `lieu` varchar(100) NOT NULL,
  `gouvernorat` varchar(100) NOT NULL,
  `periode` date NOT NULL,
  `fin_periode` time NOT NULL,
  `temps` time NOT NULL,
  `fin_t` time NOT NULL,
  `pause` time NOT NULL,
  `fin_p` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formation`
--

INSERT INTO `formation` (`id_c`, `theme`, `mode`, `lieu`, `gouvernorat`, `periode`, `fin_periode`, `temps`, `fin_t`, `pause`, `fin_p`) VALUES
(3, 'marketing', 'marketing', 'siliana', 'siliana', '1551-12-15', '00:14:51', '12:15:00', '12:05:00', '12:15:00', '12:51:00'),
(5, 'sociative', 'presentiel', 'beja', 'nefza', '2020-01-04', '00:20:20', '13:12:00', '14:56:00', '21:18:00', '21:18:00'),
(6, 'marketing', 'en lignne', 'beja', 'salle de fete', '2220-01-01', '00:20:02', '03:58:00', '03:58:00', '03:57:00', '03:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `id_p` int(30) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_c` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`id_p`, `FirstName`, `email`, `id_c`) VALUES
(8, 'ayoub', 'ayoub123@gmail.com', 0),
(9, 'nabil', 'labidinabil321@gmail.com', 0),
(10, 'karim', 'kqksnlk@gmail.com', 0),
(11, 'karim', 'karim@gmail.com', 0),
(12, 'fsef', 'dss', 0),
(13, 'fsef', 'dss', 2),
(14, 'ayoub', 'ayoub123@gmail.com', 2),
(15, 'ayoub', 'ayoub@gmail.com', 3),
(16, 'mohamed jouini', 'mohsen@gmail.com', 3),
(17, 'sami', 'stars5000@live.tn', 2),
(18, 'eya', 'ayoub_gham@live.fr', 3),
(19, 'eya', 'raed.sehli@gmail.com', 3),
(20, 'ghamougui', 'ayoub_gham@live.fr', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `specialite` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `surname`, `specialite`, `gender`, `role`, `password`) VALUES
(2, 'ayoub', 'gham', 'web devolppment', 'male', 'admin', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fiche`
--
ALTER TABLE `fiche`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formateur`
--
ALTER TABLE `formateur`
  ADD PRIMARY KEY (`id_f`);

--
-- Indexes for table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`id_p`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fiche`
--
ALTER TABLE `fiche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `formateur`
--
ALTER TABLE `formateur`
  MODIFY `id_f` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `formation`
--
ALTER TABLE `formation`
  MODIFY `id_c` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
  MODIFY `id_p` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
