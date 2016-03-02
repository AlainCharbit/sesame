-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 02 Mars 2016 à 15:11
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `sesame`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateurs`
--

CREATE TABLE IF NOT EXISTS `administrateurs` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `nomAdmin` int(10) NOT NULL,
  `prenomAdmin` varchar(100) NOT NULL,
  `mailAdmin` varchar(100) NOT NULL,
  `telAdmin` int(100) NOT NULL,
  `mdpAdmin` int(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `candidats`
--

CREATE TABLE IF NOT EXISTS `candidats` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `nomCandidat` varchar(100) NOT NULL,
  `prenomCandidat` varchar(100) NOT NULL,
  `numCandidat` int(10) NOT NULL,
  `mailCandidat` varchar(100) NOT NULL,
  `ageCandidat` int(3) NOT NULL,
  `telCandidat` int(100) NOT NULL,
  `mdpCandidat` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `disciplines`
--

CREATE TABLE IF NOT EXISTS `disciplines` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `nomDiscipline` varchar(30) NOT NULL,
  `codeDiscipline` varchar(3) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `disciplines`
--

INSERT INTO `disciplines` (`ID`, `nomDiscipline`, `codeDiscipline`) VALUES
(1, 'Anglais', 'ANG'),
(2, 'Allemand', 'ALL'),
(3, 'Espagnol', 'ESP'),
(4, 'Arabe', 'ARA'),
(5, 'Chinois', 'CHI'),
(6, 'Italien', 'ITA'),
(7, 'Portuguais', 'POR'),
(8, 'Russe', 'RUS'),
(9, 'Logique numérique', 'LOG');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE IF NOT EXISTS `historique` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `note` int(2) NOT NULL,
  `idCandidat` int(10) NOT NULL,
  `idQuizz` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE IF NOT EXISTS `personne` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Nom` text NOT NULL,
  `Prenom` text NOT NULL,
  `Mail` text NOT NULL,
  `Age` int(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`ID`, `Nom`, `Prenom`, `Mail`, `Age`) VALUES
(7, 'Rika', 'Zarai', 'triceratops@caramail.com', 130),
(8, 'rgregre', 'gregregre', 'r6e@gre.gt', 46516);

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `idDiscipline` int(10) NOT NULL,
  `idAdmin` varchar(10) NOT NULL,
  `difficulteQuestion` int(2) NOT NULL,
  `enonceQuestion` varchar(255) NOT NULL,
  `recurenceQuestion` int(3) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `quizz`
--

CREATE TABLE IF NOT EXISTS `quizz` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Libellé` int(11) NOT NULL,
  `idDiscipline` int(10) NOT NULL,
  `idQuestion1` int(10) NOT NULL,
  `idQuestion2` int(10) NOT NULL,
  `idQuestion3` int(10) NOT NULL,
  `idQuestion4` int(10) NOT NULL,
  `idQuestion5` int(10) NOT NULL,
  `idQuestion6` int(10) NOT NULL,
  `idQuestion7` int(10) NOT NULL,
  `idQuestion8` int(10) NOT NULL,
  `idQuestion9` int(10) NOT NULL,
  `idQuestion10` int(10) NOT NULL,
  `dureeQuizz` time(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

CREATE TABLE IF NOT EXISTS `reponses` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `idQuestion` int(10) NOT NULL,
  `enonceReponse` varchar(255) NOT NULL,
  `resultatReponse` tinyint(1) NOT NULL,
  `correctionReponse` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
