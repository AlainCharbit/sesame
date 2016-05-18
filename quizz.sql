-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 18 Mai 2016 à 11:24
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `quizz`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateurs`
--

CREATE TABLE IF NOT EXISTS `administrateurs` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `nomAdmin` varchar(100) NOT NULL,
  `prenomAdmin` varchar(100) NOT NULL,
  `mailAdmin` varchar(100) NOT NULL,
  `telAdmin` int(100) NOT NULL,
  `mdpAdmin` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `candidats`
--

CREATE TABLE IF NOT EXISTS `candidats` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nomCandidat` varchar(100) NOT NULL,
  `prenomCandidat` varchar(100) NOT NULL,
  `numCandidat` int(10) NOT NULL,
  `mailCandidat` varchar(100) NOT NULL,
  `ageCandidat` varchar(3) NOT NULL,
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
(6, 'Italien', 'IT'),
(7, 'Portugais', 'POR'),
(8, 'Russe', 'RUS'),
(9, 'Logique numérique', 'LOG');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE IF NOT EXISTS `historique` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `dateQuizz` datetime(6) NOT NULL,
  `note` int(2) NOT NULL,
  `idCandidat` int(10) NOT NULL,
  `idQuizz` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `historique`
--

INSERT INTO `historique` (`ID`, `dateQuizz`, `note`, `idCandidat`, `idQuizz`) VALUES
(1, '2016-05-09 11:33:55.000000', 3, 1, 14);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE IF NOT EXISTS `personne` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Mail` varchar(255) NOT NULL,
  `Age` int(3) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`ID`, `Nom`, `Prenom`, `Mail`, `Age`) VALUES
(1, 'Clément', 'Lefrançois', 'clement.lefrancois@ynov.com', 19),
(2, 'Test', 'Compte', 'test@ynov.com', 20),
(3, 'Angerfist', 'Hardcore', 'angerfist@Qdance.nl', 30);

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `idDiscipline` int(10) NOT NULL,
  `idAdmin` int(10) NOT NULL,
  `difficulteQuestion` int(2) NOT NULL,
  `enonceQuestion` varchar(255) NOT NULL,
  `recurrenceQuestion` int(3) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Contenu de la table `questions`
--

INSERT INTO `questions` (`ID`, `idDiscipline`, `idAdmin`, `difficulteQuestion`, `enonceQuestion`, `recurrenceQuestion`) VALUES
(1, 1, 1, 1, 'Question 1 ?', 1),
(2, 1, 1, 1, 'Question 2 ?', 1),
(3, 1, 1, 1, 'Question 3 ?', 1),
(5, 3, 1, 2, 'Question 5 ?', 5),
(6, 1, 1, 1, 'Question 6 ?', 1),
(7, 1, 1, 1, 'Question 7 ?', 1),
(8, 1, 1, 1, 'Question 8 ?', 1),
(9, 1, 1, 1, 'Question 9 ?', 1),
(10, 1, 1, 1, 'Question 10 ?', 1),
(11, 1, 1, 1, 'Question 11 ?', 1),
(12, 1, 1, 1, 'Question 12 ?', 1),
(14, 1, 1, 1, 'Question 14 ?', 1),
(15, 1, 1, 1, 'Question 15 ?', 1),
(16, 1, 1, 1, 'Question 16 ?', 1),
(17, 1, 1, 1, 'Question 17 ?', 1),
(18, 1, 1, 1, 'Question 18 ?', 1),
(19, 1, 1, 1, 'Question 19 ?', 1),
(20, 1, 1, 1, 'Question 20 ?', 1),
(21, 1, 1, 1, 'Question 21 ?', 1),
(22, 1, 1, 1, 'Question 22 ?', 1),
(23, 1, 1, 1, 'Question 23 ?', 1),
(24, 1, 1, 1, 'Question 24 ?', 1),
(25, 1, 1, 1, 'Question 25 ?', 1),
(26, 1, 1, 1, 'Question 26 ?', 1),
(27, 1, 1, 1, 'Question 27 ?', 1),
(28, 1, 1, 1, 'Question 28 ?', 1),
(29, 1, 1, 1, 'Question 29 ?', 1),
(30, 1, 1, 1, 'Question 30 ?', 1),
(31, 1, 1, 1, 'Question 31 ?', 1),
(32, 1, 1, 1, 'Question 32 ?', 1),
(33, 1, 1, 1, 'Question 33 ?', 1),
(34, 1, 1, 1, 'Question 34 ?', 1),
(35, 1, 1, 1, 'Questiojn 35 ?', 1),
(36, 1, 1, 1, 'Question 36 ?', 1),
(37, 1, 1, 1, 'Question 37 ?', 1),
(38, 1, 1, 1, 'Question 38 ?', 1),
(39, 1, 1, 1, 'Question 39 ?', 1),
(40, 1, 1, 1, 'Question 40 ?', 1),
(41, 1, 1, 1, 'Question 41 ?', 1),
(42, 1, 1, 1, 'Question 42 ? pourquoi ?', 1),
(43, 1, 1, 1, 'Question 43 ?', 1),
(44, 1, 1, 1, 'Question 44 ?', 1),
(45, 1, 1, 1, 'Question 45 ?', 1),
(46, 1, 1, 1, 'Question 46 ?', 1),
(47, 1, 1, 1, 'Question 47 ?', 1),
(48, 1, 1, 1, 'Question 48 ?', 1),
(49, 1, 1, 1, 'Question 49 ?', 1),
(50, 1, 1, 1, 'Question 50 ?', 1),
(51, 2, 0, 2, 'Question 51 ?', 2);

-- --------------------------------------------------------

--
-- Structure de la table `quizz`
--

CREATE TABLE IF NOT EXISTS `quizz` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `idDiscipline` int(10) NOT NULL,
  `difficulteQuizz` int(2) NOT NULL,
  `idQuestion1` int(11) NOT NULL,
  `idQuestion2` int(10) NOT NULL,
  `idQuestion3` int(10) NOT NULL,
  `idQuestion4` int(10) NOT NULL,
  `idQuestion5` int(10) NOT NULL,
  `idQuestion6` int(10) NOT NULL,
  `idQuestion7` int(10) NOT NULL,
  `idQuestion8` int(10) NOT NULL,
  `idQuestion9` int(10) NOT NULL,
  `idQuestion10` int(10) NOT NULL,
  `dureeQuizz` int(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `quizz`
--

INSERT INTO `quizz` (`ID`, `idDiscipline`, `difficulteQuizz`, `idQuestion1`, `idQuestion2`, `idQuestion3`, `idQuestion4`, `idQuestion5`, `idQuestion6`, `idQuestion7`, `idQuestion8`, `idQuestion9`, `idQuestion10`, `dureeQuizz`) VALUES
(1, 1, 1, 9, 43, 46, 2, 48, 22, 38, 16, 3, 25, 1),
(2, 1, 1, 1, 15, 43, 48, 17, 22, 11, 19, 12, 10, 1),
(3, 1, 1, 32, 1, 43, 23, 36, 11, 25, 3, 40, 39, 0),
(4, 2, 55, 42, 50, 37, 12, 10, 34, 32, 11, 48, 39, 0),
(5, 6, 2, 34, 19, 43, 14, 8, 20, 46, 24, 37, 25, 0),
(6, 1, 1, 42, 50, 20, 22, 36, 9, 15, 17, 30, 47, 0),
(7, 2, 5, 26, 46, 1, 8, 42, 9, 18, 38, 29, 25, 0),
(8, 8, 8, 8, 6, 2, 46, 34, 35, 29, 31, 17, 11, 0),
(9, 1, 1, 20, 25, 12, 22, 34, 32, 24, 27, 21, 49, 0),
(10, 1, 1, 34, 25, 36, 42, 37, 1, 49, 11, 50, 12, 0),
(11, 1, 2, 46, 35, 33, 14, 17, 49, 28, 40, 26, 31, 0),
(12, 1, 2, 8, 6, 34, 41, 49, 12, 24, 39, 10, 44, 0),
(13, 5, 5, 45, 21, 35, 37, 28, 6, 32, 22, 3, 41, 0),
(14, 8, 8, 33, 35, 50, 29, 19, 6, 32, 17, 31, 20, 0);

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

CREATE TABLE IF NOT EXISTS `reponses` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `idQuestion` int(10) NOT NULL,
  `ennonceReponse` varchar(255) NOT NULL,
  `resultatReponse` tinyint(1) NOT NULL,
  `correctionReponse` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `reponses`
--

INSERT INTO `reponses` (`ID`, `idQuestion`, `ennonceReponse`, `resultatReponse`, `correctionReponse`) VALUES
(1, 50, 'Reponse 1', 1, 'Correction de la Reponse 1'),
(2, 50, 'Reponse 2', 0, 'Correction de la Reponse 2'),
(3, 29, 'Reponse 3', 0, 'Correction de la Reponse 3'),
(4, 5, 'Question ?', 0, 'correction c''est trop bien !'),
(5, 20, 'Question ?', 1, 'Correction c''est trop bien !');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
