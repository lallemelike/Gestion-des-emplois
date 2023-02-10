-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2023 at 12:09 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empoi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--

CREATE TABLE `cours` (
  `type` varchar(45) DEFAULT NULL,
  `code_matiere` varchar(45) DEFAULT NULL,
  `catagorie` varchar(45) DEFAULT NULL,
  `jour` varchar(45) DEFAULT NULL,
  `h_debut` time DEFAULT NULL,
  `h_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cours`
--

INSERT INTO `cours` (`type`, `code_matiere`, `catagorie`, `jour`, `h_debut`, `h_fin`) VALUES
('TD', 'CNM310', 'S', 'LUNDI', '00:00:08', '00:00:09'),
('CM', 'DAS310', 'T', 'LUNDI', '00:00:09', '00:00:11'),
('TD', 'PAV410', 'T', 'JEUDI', '00:00:03', '00:00:04'),
('CM', 'RSS310', 'S', 'LUNDI', '00:00:08', '00:00:09'),
('TD', 'DSI412', 'S', 'LUNDI', '00:00:09', '00:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

CREATE TABLE `enseignant` (
  `id` int(25) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mot_de_passe` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enseignant`
--

INSERT INTO `enseignant` (`id`, `nom`, `email`, `mot_de_passe`) VALUES
(1, 'sidi biha', 'sidi.biha@esp.mr', ''),
(2, 'boubecrine.lghaf', 'boubecrine.lghaf@supnum.mr', ''),
(3, 'Moussa Ba', 'Moussa.Ba@supnum.mr', ''),
(4, 'hafed babou', 'hafed babou@supnum.mr', ''),
(5, 'SIDATI', 'SIDATI@SUPNUM.MR', ''),
(6, 'MOCTAR AHMED VALL', 'MOCTAR AHMED VALL@SUPNUM.MR', ''),
(7, 'ABDI/SHAIR', '', ''),
(8, 'ZOULFAGHAR', 'ZOULFAGHAR@SUPNUM.MR', ''),
(9, 'BOUHA/HAMMA', '', ''),
(10, 'CHEIKH', 'CHEIKH@SUPNUM.MR', '');

-- --------------------------------------------------------

--
-- Table structure for table `enseigne`
--

CREATE TABLE `enseigne` (
  `id` int(11) DEFAULT NULL,
  `code_matiere` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enseigne`
--

INSERT INTO `enseigne` (`id`, `code_matiere`) VALUES
(2, 'DSI311'),
(4, 'PAV410'),
(1, 'DSI410'),
(3, 'DSI411'),
(5, 'PAV412'),
(7, 'DPR410'),
(6, 'DPR412');

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

CREATE TABLE `matiere` (
  `code_matiere` varchar(45) NOT NULL,
  `nom_matiere` varchar(45) NOT NULL,
  `semestre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matiere`
--

INSERT INTO `matiere` (`code_matiere`, `nom_matiere`, `semestre`) VALUES
('CNM310', 'NUM_CO_OM', 'S3'),
('CNM311', 'CMS&PAO', 'S3'),
('CNM320', 'Technologies_M_AV', 'S3'),
('CNM321', 'BD', 'S3'),
('DAS310', 'ML', 'S3'),
('DAS311', 'RO', 'S3'),
('DPR310', 'Communication', 's3'),
('DPR311', 'ANGLAIS', 'S3'),
('DPR410', 'Communication', 's4'),
('DPR411', 'ANGLAIS', 'S4'),
('DPR412', 'DROIT_INF', 'S4'),
('DSI310', 'GENIE', 'S3'),
('DSI311', 'BD_AVANCE', 'S3'),
('DSI320', 'DEV.WEB  AVEC PYTHON', 'S3'),
('DSI330', 'PI', 'S3'),
('DSI410', 'Resaux', 's4'),
('DSI411', 'bd_nosql', 'S4'),
('DSI412', 'PI', 'S4'),
('PAV311', 'SD&COMPO.ALGO', 'S3'),
('PAV410', 'IA', 'S4'),
('PAV411', 'J2E', 'S4'),
('PAV412', 'DEV_MOBILE', 'S4'),
('RSS310', 'IN_R_M', 'S3'),
('RSS311', 'AD_SYS_RES', 'S3'),
('RSS320', 'IN_S_INF', 'S3'),
('RSS411', 'VOIX', 'S4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cours`
--
ALTER TABLE `cours`
  ADD KEY `code_matiere` (`code_matiere`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enseigne`
--
ALTER TABLE `enseigne`
  ADD KEY `id` (`id`),
  ADD KEY `code_matiere` (`code_matiere`);

--
-- Indexes for table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`code_matiere`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`code_matiere`) REFERENCES `matiere` (`code_matiere`);

--
-- Constraints for table `enseigne`
--
ALTER TABLE `enseigne`
  ADD CONSTRAINT `enseigne_ibfk_1` FOREIGN KEY (`id`) REFERENCES `enseignant` (`id`),
  ADD CONSTRAINT `enseigne_ibfk_2` FOREIGN KEY (`code_matiere`) REFERENCES `matiere` (`code_matiere`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
