-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 18 Mai 2016 à 16:07
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Contenu de la table `questions`
--

INSERT INTO `questions` (`ID`, `idDiscipline`, `idAdmin`, `difficulteQuestion`, `enonceQuestion`, `recurrenceQuestion`) VALUES
(52, 1, 1, 1, 'Thanks to the Internet, people.... necessarily have to use libraries to get .... .', 1),
(54, 1, 1, 1, 'Sean was very upset yesterday, you .... to him so harshly.', 1),
(55, 1, 1, 1, 'Bob .... to work in bad weather.', 1),
(56, 1, 1, 1, 'I .... a good skier, but I’m getting a bit old now.', 1),
(57, 1, 1, 1, 'John: &quot;This is a very interesting .... Plan&quot;<br/>Jack: &quot;....&quot;', 1),
(58, 1, 1, 1, 'He stopped .... a long time ago.', 1),
(59, 1, 1, 1, 'He .... be very rich to have such a beautiful house.', 1),
(60, 1, 1, 1, 'Although the job centre gave me some .... I found a lot more .... on the Internet.', 1),
(61, 1, 1, 1, 'What time does your flight take .... tomorrow morning?', 1),
(62, 1, 1, 1, '.... has been spent on new roads.', 1),
(63, 1, 1, 1, 'Her job includes travelling, and the petrol .... by the firm.', 1),
(64, 1, 1, 1, 'Last week, the government .... organise a special evacuation plan due to the severe flooding in the north of the country.', 1),
(65, 1, 1, 1, 'It is high time he .... of his parents? home. He is going to be 35 next year.', 1),
(66, 1, 1, 1, '.... had they arrived in the tropics, .... they were told about the mosquitoes.', 1),
(67, 1, 1, 1, 'Because there are .... tourists coming into the country, there is .... money circulating in the economy.', 1),
(68, 1, 1, 1, 'Since the beginning of this summer holiday, she .... in this restaurant.', 1),
(69, 1, 1, 1, 'If I .... more time, I .... off in Paris on my way back to London.', 1),
(70, 1, 1, 1, 'Could you give me some .... on how to .... these children?', 1),
(71, 1, 1, 1, 'How long .... in your current job?', 1),
(72, 1, 1, 1, 'Many students of English .... take tests.', 1),
(73, 1, 1, 1, 'Most people will agree that .... you work, .... you will be in life.', 1),
(74, 1, 1, 1, 'His family had asked for his help as they were having difficulty in .... .', 1),
(75, 1, 1, 1, 'We .... a contract last year and it is still valid.', 1),
(76, 1, 1, 1, 'Some people try to improve their English by .... the BBC.', 1),
(77, 1, 1, 1, 'She wants .... to her office right now.', 1),
(78, 1, 1, 1, 'One of the biggest .... of travelling by car is that it is much slower than flying.', 1),
(79, 1, 1, 1, 'Ten of us were taken ill .... a party we were at in Sydney. I felt ill .... a couple of days, but was fine after that.', 1),
(80, 1, 1, 1, 'He gave me .... about investing money.', 1),
(81, 1, 1, 1, 'It is said that Chinese is perhaps the world?s .... language to learn.', 1),
(82, 1, 1, 1, 'Russia may well be the .... country in the world, but it is by no means the .... .', 1),
(83, 1, 1, 1, 'His mother is dead. Who will .... him now ?', 1),
(84, 1, 1, 1, 'Always look before .... the road.', 1),
(85, 1, 1, 1, 'Which ONE word is NOT possible in the following sentence : <br/>It .... rain this afternoon, so you?d better take an umbrella with you.', 1),
(86, 1, 1, 1, 'I can?t hear you. Speak .... .', 1),
(87, 1, 1, 1, 'He really wanted to go to Ibiza so he .... his uncle and aunt.', 1),
(88, 1, 1, 1, 'Hardly had he seen the dog, .... away.', 1),
(89, 1, 1, 1, 'As we have a lot of orders we have decided to .... two new employees.', 1),
(90, 1, 1, 1, 'That ladder doesn?t look very safe, you .... to have it .... .', 1),
(91, 1, 1, 1, 'She .... to this town five years ago.', 1),
(92, 1, 1, 1, 'Who prevented her .... part in the school play?', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
