-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 16, 2020 at 11:50 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devinboxw3school`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomComplet` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `date` varchar(10) NOT NULL,
  `tel` int(11) NOT NULL,
  `module` varchar(50) NOT NULL,
  `typeCours` varchar(50) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `notes` varchar(50) NOT NULL,
  `attestation` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `nomComplet`, `mail`, `date`, `tel`, `module`, `typeCours`, `responsable`, `status`, `notes`, `attestation`) VALUES
(11, 'manankasina', 'manankasina@gmail.com', '10/18/2020', 1324, 'algorithmique', 'presentiel', 'manankasina', 'oui', 'lorem', 'oui'),
(15, 'andrana', 'andrana@gmail.com', '10/18/2020', 1341, 'angular', 'presentiel', 'andrana', 'oui', 'lorem', 'oui'),
(13, 'test', 'test@gmail.com', '10/18/2020', 14314, 'joomla', 'presentiel', 'fgfgh', 'non', 'fhjfgf', 'non'),
(14, 'fenitra', 'fenitra@gmail.com', '10/11/2020', 1341, 'merise', 'en ligne', 'fenitra', 'oui', 'lorem', 'non'),
(16, 'tovo', 'TOVO@gmail.com', '10/19/2020', 413411, 'postgresql', 'en ligne', 'tovo', 'non', 'tsy tonga', 'non'),
(17, 'rams', 'rams@gmail.com', '10/26/2020', 41341, 'oracle', 'presentiel', 'RAMS', 'oui', 'GKHJGHJG', 'oui'),
(18, 'fenitra VRA', 'testb@gmail.com', '10/17/2020', 322222222, 'kotlin', 'presentiel', 'Mr Fenitra\n', 'oui', 'Mpianatra mavitrika\n', 'oui');

-- --------------------------------------------------------

--
-- Table structure for table `dbclient`
--

DROP TABLE IF EXISTS `dbclient`;
CREATE TABLE IF NOT EXISTS `dbclient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `coordonnee` varchar(100) NOT NULL,
  `offre_service` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbclient`
--

INSERT INTO `dbclient` (`id`, `nom`, `coordonnee`, `offre_service`, `note`) VALUES
(1, 'test', '123', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `gestionclient`
--

DROP TABLE IF EXISTS `gestionclient`;
CREATE TABLE IF NOT EXISTS `gestionclient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `numClient` varchar(20) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `coordonnees` int(11) NOT NULL,
  `offreServices` varchar(50) NOT NULL,
  `debutAbonnement` varchar(50) NOT NULL,
  `finAbonnement` varchar(50) NOT NULL,
  `montant` varchar(255) NOT NULL,
  `numFacture` varchar(50) NOT NULL,
  `notes` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gestionclient`
--

INSERT INTO `gestionclient` (`id`, `type`, `numClient`, `nom`, `coordonnees`, `offreServices`, `debutAbonnement`, `finAbonnement`, `montant`, `numFacture`, `notes`) VALUES
(1, 'non', '21', 'Rabe', 21, 'TZ', '10/06/2020', '10/13/2020', '414', '21', ''),
(2, 'non', '1', 'TOVO', 1234567890, 'TEST', '10/12/2020', '10/19/2020', '111', '222', 'test'),
(3, 'non', '2', 'Miora', 987654321, 'andrana', '10/12/2020', '10/20/2020', '211', '3', 'andrana');

-- --------------------------------------------------------

--
-- Table structure for table `piece`
--

DROP TABLE IF EXISTS `piece`;
CREATE TABLE IF NOT EXISTS `piece` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) NOT NULL,
  `pieceJointe` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `piece`
--

INSERT INTO `piece` (`id`, `date`, `pieceJointe`) VALUES
(1, '10/05/2020', 'upload/grille1.png'),
(2, '10/01/2020', 'upload/backgound-image.PNG');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
