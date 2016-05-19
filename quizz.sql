-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 19 Mai 2016 à 15:41
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=134 ;

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
(92, 1, 1, 1, 'Who prevented her .... part in the school play?', 1),
(93, 9, 1, 1, 'D''aprÃ¨s une enquÃªte, les femmes en France passent en moyenne 10 mn devant la glace le matin, 5 mn l''aprÃ¨s-midi et 5 mn le soir.&lt;br/&gt;Combien de temps passent-elles en moyenne devant la glace en 5 ans (on suppose que toutes les annÃ©es ont 365 jour', 1),
(94, 9, 1, 1, 'Pour sa nouvelle maison, Victor achÃ¨te une baignoire Ã  660 &amp;euro;uros qu''il paie en trois fois. La premiÃ¨re fois, il verse 1/3 de la somme, puis la deuxiÃ¨me fois les 3/5 du reste.&lt;br/&gt;Combien verse-t-il la troisiÃ¨me fois ?', 1),
(95, 9, 1, 1, 'Le nombre 0,000000631 s''Ã©crit aussi :', 1),
(97, 9, 1, 1, 'Dans une classe de 20 Ã©lÃ¨ves, combien peut-on former de groupes de travail diffÃ©rents de 3 Ã©lÃ¨ves chacun ?', 1),
(98, 9, 1, 1, 'Un tÃ©traÃ¨dre rÃ©gulier est composÃ© de 4 faces identiques qui sont 4 triangles Ã©quilatÃ©raux. La somme des longueurs des arÃªtes de ce tÃ©traÃ¨dre est 24 cm. Quelle est la longueur dâ€™une arÃªte de ce tÃ©traÃ¨dre ?', 1),
(99, 9, 1, 1, 'Un litre de mÃ©lange pour tondeuse contient 6 % dâ€™huile. Quel volume dâ€™essence pure doit-on rajouter Ã  ce mÃ©lange pour que le nouveau mÃ©lange obtenu contienne 4 % dâ€™huile ?', 1),
(100, 9, 1, 1, 'On rÃ©alise un puzzle de 20 cm sur 30 cm avec des piÃ¨ces qui mesurent en moyenne 15 mm sur 20 mm. Combien le puzzle contient-il de piÃ¨ces ?', 1),
(101, 9, 1, 1, '&lt;i&gt;x&lt;/i&gt; Ã©tant un nombre strictement positif, on note &lt;i&gt;V&lt;/i&gt; le volume dâ€™un cube de cÃ´tÃ© &lt;i&gt;x&lt;/i&gt; et on note &lt;i&gt;Vâ€™&lt;/i&gt; le volume dâ€™un cube de cÃ´tÃ© &lt;i&gt;x&lt;/i&gt;/2.&lt;br&gt;Quelle relatio', 1),
(102, 9, 1, 1, 'Par combien de zÃ©ros se termine le produit : 1x2x3x4x5x6x7x â€¦ x20 ?', 1),
(103, 9, 1, 2, 'On dÃ©sire acheter un grand nombre de gÃ¢teaux Ã  un pÃ¢tissier.&lt;br/&gt;Les 10 premiers gÃ¢teaux achetÃ©s coÃ»tent le prix habituel, soit 42 &amp;euro;uros les 10. Chaque gÃ¢teau supplÃ©mentaire achetÃ© coÃ»te 3 &amp;euro;uros.&lt;br/&gt;Combien doit-o', 1),
(104, 9, 1, 2, 'Une balle est lÃ¢chÃ©e dâ€™une hauteur de 100 cm. A chaque rebond la hauteur atteinte par la balle diminue de 10 %. Quelle est la hauteur atteinte par la balle aprÃ¨s le 3&lt;sup&gt;Ã¨me&lt;/sup&gt; rebond ?', 1),
(105, 9, 1, 2, 'Quel est le nombre de chiffres de l''entier 5&lt;sup&gt;8&lt;/sup&gt;x2&lt;sup&gt;8 ?', 1),
(106, 9, 1, 2, 'Un terrain de jeux a une forme circulaire de 40 m de diamÃ¨tre.&lt;br/&gt;La municipalitÃ© a dÃ©cidÃ© de l''entourer d''une bande de gazon de largeur 4 m.&lt;br/&gt;Le prix du mÂ² de gazon, achetÃ© et posÃ©, est estimÃ© Ã  5 &amp;euro;uros.&lt;br/&gt;Quel e', 1),
(107, 9, 1, 2, 'Si les dimensions dâ€™un rectangle augmentent de 20 %, son aire augmente de :', 1),
(108, 9, 1, 2, 'La diffÃ©rence entre le carrÃ© du double de 2/3 et lâ€™opposÃ© du carrÃ© de 3/2 est :', 1),
(109, 9, 1, 2, 'En 2004, une compagnie aÃ©rienne a effectuÃ© 50 % de ses vols vers lâ€™Europe et lâ€™autre moitiÃ© vers les CaraÃ¯bes. Entre 2004 et 2005, le nombre total de vols a baissÃ© de 10 % et le pourcentage de vols Ã  destination des CaraÃ¯bes est passÃ© de 50 % ', 1),
(110, 9, 1, 2, 'Une machine-outil trie et met sous enveloppe des cartes postales par paquets de 4. &lt;br/&gt;Cette machine sâ€™arrÃªte dÃ¨s quâ€™il reste moins de 4 cartes. On charge 415679 cartes dans la machine. Combien restera t-il de cartes lorsquâ€™elle sâ€™arrÃªte', 1),
(111, 9, 1, 2, 'Un bateau met 2 heures pour traverser la Manche Ã  une vitesse de 8 nÅ“uds. SimultanÃ©ment, cinq bateaux identiques partent pour le mÃªme trajet.&lt;br/&gt; Combien mettront-ils de temps pour rejoindre lâ€™autre rive ?', 1),
(112, 9, 1, 2, 'Un cylindre creux en inox, utilisÃ© pour la fabrication dâ€™un meuble de luxe, mesure 20 cm de diamÃ¨tre et 60 cm de hauteur.&lt;br/&gt;Le crÃ©ateur envisage de recouvrir sa surface extÃ©rieure dâ€™un cuir de haut de gamme. Le coÃ»t du mÃ¨tre carrÃ© du cu', 1),
(113, 9, 1, 3, 'Une des solutions de lâ€™Ã©quation &lt;i&gt;x&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt;-9x10&lt;sup&gt;4&lt;/sup&gt; = 0 est...', 1),
(114, 9, 1, 3, 'Le prix dâ€™un diamant est proportionnel au carrÃ© de son poids. Un diamant de 0,4 gramme vaut 6000 &amp;euro;uros.&lt;br/&gt;Quel est le poids dâ€™un diamant dâ€™une valeur de 13500 &amp;euro;uros ?', 1),
(115, 9, 1, 3, 'On a rempli d''eau un bidon cylindrique jusqu''Ã  une hauteur &lt;i&gt;h&lt;/i&gt;.&lt;br/&gt;On a versÃ© ensuite cette eau dans un autre bidon cylindrique dont le diamÃ¨tre est le double du diamÃ¨tre du bidon prÃ©cÃ©dent.&lt;br/&gt;La hauteur de l''eau obte', 1),
(116, 9, 1, 3, 'Sachant que la superficie du cercle est de 314 cmÂ², quelle est la diagonale du carrÃ© ?', 1),
(117, 9, 1, 3, 'Le prix initial de la matiÃ¨re premiÃ¨re M est de 20 â‚¬ le kilogramme. Son prix a augmentÃ© de 100 % par an.&lt;br/&gt;Le prix du kilogramme de M dÃ©passera 900 â‚¬ au bout de...', 1),
(118, 9, 1, 3, 'Sur une banquise, vivait, en mai 2003, une colonie de 500 pingouins.&lt;br/&gt;Lorsque lâ€™hiver est rigoureux, la population des pingouins diminue de 20 %, sinon elle augmente de 10 %. Entre mai 2003 et mai 2005, il nâ€™y a eu quâ€™un hiver rigoureux.&lt', 1),
(119, 9, 1, 3, 'Un rÃ©servoir dâ€™eau peut alimenter 200 maisons pendant 12 jours. Pendant combien de temps peut-il alimenter 240 maisons ?', 1),
(120, 9, 1, 3, 'Un escargot est tombÃ© dans un puits de 10 mÃ¨tres de profondeur. &lt;br/&gt;Combien de jours lui faudra-t-il pour sortir de ce puits, sachant que, le jour, il monte de 3 mÃ¨tres, que, durant la nuit, il redescend de 2 mÃ¨tres, et qu''il dÃ©bute son ascens', 1),
(121, 9, 1, 3, 'Un hÃ´tel dont le tarif habituel pour une nuit est de 200 &amp;euro;uros propose une nouvelle formule Â« spÃ©ciale long sÃ©jour Â». La formule propose une base forfaitaire de 500 &amp;euro;uros Ã  laquelle sâ€™ajoute un prix de 150 &amp;euro;uros par nuit', 1),
(122, 9, 1, 3, 'Combien trouve-t-on, au total, de carrÃ©s dans la figure ci-dessous ?&lt;br/&gt;&lt;center&gt;&lt;img src=&quot;carres.png&quot;&gt;&lt;/center&gt;', 1),
(123, 9, 1, 1, 'Un diviseur de 30 est un nombre entier &lt;i&gt;k&lt;/i&gt; strictement positif tel que &lt;sup&gt;30&lt;/sup&gt;&amp;frasl;&lt;sub&gt;&lt;i&gt;k&lt;/i&gt;&lt;/sub&gt; est un nombre entier.&lt;br/&gt;Le nombre de diviseurs de 30 est...', 1),
(124, 9, 1, 2, 'Un mÃ©decin doit visiter dans la matinÃ©e trois patients &lt;i&gt;A&lt;/i&gt;, &lt;i&gt;B&lt;/i&gt; et &lt;i&gt;C&lt;/i&gt;. Sachant quâ€™il souhaite rendre visite au patient &lt;i&gt;C&lt;/i&gt; avant le patient &lt;i&gt;B&lt;/i&gt;, de combien de faÃ§on', 1),
(125, 9, 1, 3, 'Une espÃ¨ce animale trÃ¨s menacÃ©e voit sa population baisser de 20 % chaque dÃ©cennie par rapport Ã  la dÃ©cennie prÃ©cÃ©dente. Au bout de quarante ans, que peut-on dire de cette espÃ¨ce ?', 1),
(126, 9, 1, 1, 'Un commerÃ§ant a achetÃ© un nombre &lt;i&gt;N&lt;/i&gt; de produits identiques dont il est sÃ»r de vendre tout le stock.&lt;br/&gt;Si le prix de vente unitaire est fixÃ© Ã  5 &amp;euro;uros, il gagne 1 700 &amp;euro;uros.&lt;br/&gt;Si le prix de vente uni', 1),
(127, 9, 1, 2, 'Lors dâ€™un mois de 30 jours, trois lundis sont des jours pairs. Quel jour de la semaine tombe le 25 du mois ?', 1),
(128, 9, 1, 3, 'Deux entiers &lt;i&gt;k&lt;/i&gt; et &lt;k&gt;p&lt;/i&gt; vÃ©rifient les relations &lt;i&gt;k&lt;/i&gt; + &lt;i&gt;p&lt;/i&gt; = 20 et &lt;i&gt;k&lt;/i&gt;.&lt;i&gt;p&lt;/i&gt; = 91. Quelle est la valeur de &lt;i&gt;k&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; + &', 1),
(129, 9, 1, 2, 'Lâ€™annÃ©e derniÃ¨re, lâ€™Ã¢ge de Laura Ã©tait un multiple de 8, lâ€™annÃ©e prochaine son Ã¢ge sera un multiple de 9.&lt;br/&gt;Parmi les propositions suivantes, quel est son Ã¢ge ?', 1),
(130, 9, 1, 1, 'Un sac contient 20 jetons. Les jetons peuvent Ãªtre de couleur blanche ou rouge. Il y a au moins un jeton blanc. Chaque fois que lâ€™on tire au hasard 2 jetons du sac, il y a au moins un jeton rouge. Quel est le nombre de jetons rouges ?', 1),
(131, 9, 1, 2, 'Si &lt;i&gt;x&lt;/i&gt; est Ã©gal au cinquiÃ¨me de ( &lt;i&gt;x&lt;/i&gt; + &lt;i&gt;y&lt;/i&gt; ), alors la valeur de &lt;sup&gt;&lt;i&gt;x &lt;/i&gt;&lt;/sup&gt;&amp;frasl;&lt;sub&gt;&lt;i&gt;y&lt;/i&gt;&lt;/sub&gt; est :', 1),
(132, 9, 1, 3, 'Quel nombre &lt;i&gt;n&lt;/i&gt; vÃ©rifie lâ€™Ã©quation (10&lt;sup&gt;-5&lt;/sup&gt; x 10&lt;sup&gt;&lt;i&gt;n&lt;/i&gt;&lt;/sup&gt;)&lt;sup&gt;2&lt;/sup&gt; / (10 x 10&lt;sup&gt;-4&lt;/sup&gt;) = 1000 ?', 1),
(133, 9, 1, 2, 'Les nombres &lt;i&gt;a&lt;/i&gt;, &lt;i&gt;b&lt;/i&gt; et &lt;i&gt;c&lt;/i&gt; sont trois rÃ©els non nuls.&lt;br/&gt;Le nombre &lt;i&gt;X&lt;/i&gt; = (-2&lt;i&gt;a&lt;/i&gt;.&lt;i&gt;b&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt;)&lt;sup&gt;2&lt;/sup&gt; / (&lt;i&gt', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=334 ;

--
-- Contenu de la table `reponses`
--

INSERT INTO `reponses` (`ID`, `idQuestion`, `ennonceReponse`, `resultatReponse`, `correctionReponse`) VALUES
(6, 52, 'doesn’t / informations', 0, 'Deux regles sappliquent ici :<br/>- Le nom &quot;people&quot; saccorde toujours au pluriel.<br>- &quot;Information&quot; est un nom indenombrable et ne prend jamais de &quot;S&quot; a la fin.'),
(7, 52, 'don’t / information', 1, 'Deux rÃ¨gles s''appliquent ici :<br/>- Le nom &quot;people&quot; s’accorde toujours au pluriel.<br>- &quot;Information&quot; est un nom indÃ©nombrable et ne prend jamais de &quot;S&quot; à la fin.'),
(8, 52, 'don’t / informations', 0, 'Deux rÃ¨gles s''appliquent ici :<br/>- Le nom &quot;people&quot; s’accorde toujours au pluriel.<br>- &quot;Information&quot; est un nom indÃ©nombrable et ne prend jamais de &quot;S&quot; à la fin.'),
(9, 52, 'doesn’t / information', 0, 'Deux rÃ¨gles s''appliquent ici :<br/>- Le nom &quot;people&quot; s’accorde toujours au pluriel.<br>- &quot;Information&quot; est un nom indÃ©nombrable et ne prend jamais de &quot;S&quot; à la fin.'),
(10, 54, 'should have speak', 0, '&quot;Should have + participe passÃ©&quot; exprime une notion de reproche, de regret ou de conseil sur ce qui aurait dû ou n’aurait pas dû être fait.'),
(11, 54, 'should have spoken', 0, '&quot;Should have + participe passÃ©&quot; exprime une notion de reproche, de regret ou de conseil sur ce qui aurait dû ou n’aurait pas dû être fait.'),
(12, 54, 'shouldn’t have speak', 0, '&quot;Should have + participe passÃ©&quot; exprime une notion de reproche, de regret ou de conseil sur ce qui aurait dû ou n’aurait pas dû être fait.'),
(13, 54, 'shouldn’t have spoken', 1, '&quot;Should have + participe passÃ©&quot; exprime une notion de reproche, de regret ou de conseil sur ce qui aurait dû ou n’aurait pas dû être fait.'),
(14, 55, 'is used to drive', 0, '&quot; to be used to&quot; + un verbe en <i>-ing</i> exprime une habitude dÃ©jà acquise, d’un Ã©tat prÃ©sent.<br/><u>RÃ©gle</u> : On conjugue le verbe &quot;to be&quot; au prÃ©sent simple, suivi de &quot;used to&quot; + un verbe en <i>-ing</i>.'),
(15, 55, 'is used to driving', 1, '&quot; to be used to&quot; + un verbe en <i>-ing</i> exprime une habitude dÃ©jà acquise, d’un Ã©tat prÃ©sent.<br/><u>RÃ©gle</u> : On conjugue le verbe &quot;to be&quot; au prÃ©sent simple, suivi de &quot;used to&quot; + un verbe en <i>-ing</i>.'),
(16, 55, 'has used to driving', 0, '&quot; to be used to&quot; + un verbe en <i>-ing</i> exprime une habitude dÃ©jà acquise, d’un Ã©tat prÃ©sent.<br/><u>RÃ©gle</u> : On conjugue le verbe &quot;to be&quot; au prÃ©sent simple, suivi de &quot;used to&quot; + un verbe en <i>-ing</i>.'),
(17, 55, 'has used to drive', 0, '&quot; to be used to&quot; + un verbe en <i>-ing</i> exprime une habitude dÃ©jà acquise, d’un Ã©tat prÃ©sent.<br/><u>RÃ©gle</u> : On conjugue le verbe &quot;to be&quot; au prÃ©sent simple, suivi de &quot;used to&quot; + un verbe en <i>-ing</i>.'),
(18, 56, 'am used to being', 0, 'L’emploi de &quot;used to + l’infinitif&quot; exprime des actions qu’on avait l’habitude de faire autrefois mais qu’on ne fait plus aujourd’hui. <br/><u>RÃ¨gle</u> : Le sujet + used to + l’infinitif.<br/> Attention : il n’y a pas de mot entre le sujet et '),
(19, 56, 'used', 0, 'L’emploi de &quot;used to + l’infinitif&quot; exprime des actions qu’on avait l’habitude de faire autrefois mais qu’on ne fait plus aujourd’hui. <br/><u>RÃ¨gle</u> : Le sujet + used to + l’infinitif.<br/> Attention : il n’y a pas de mot entre le sujet et '),
(20, 56, 'used to be', 1, 'L’emploi de &quot;used to + l’infinitif&quot; exprime des actions qu’on avait l’habitude de faire autrefois mais qu’on ne fait plus aujourd’hui. <br/><u>RÃ¨gle</u> : Le sujet + used to + l’infinitif.<br/> Attention : il n’y a pas de mot entre le sujet et '),
(21, 56, 'was used to be', 0, 'L’emploi de &quot;used to + l’infinitif&quot; exprime des actions qu’on avait l’habitude de faire autrefois mais qu’on ne fait plus aujourd’hui. <br/><u>RÃ¨gle</u> : Le sujet + used to + l’infinitif.<br/> Attention : il n’y a pas de mot entre le sujet et '),
(22, 57, 'developpement / I agree', 0, '&quot;Development&quot; s''Ã©crit avec un seul &quot;p&quot; et sans être suivi d’un &quot;e&quot;.<br/>La forme du verbe “to agree (with someone)” est un verbe rÃ©gulier.'),
(23, 57, 'development / I am agree', 0, '&quot;Development&quot; s''Ã©crit avec un seul &quot;p&quot; et sans être suivi d’un &quot;e&quot;.<br/>La forme du verbe “to agree (with someone)” est un verbe rÃ©gulier.'),
(24, 57, 'developpment / I agree', 0, '&quot;Development&quot; s''Ã©crit avec un seul &quot;p&quot; et sans être suivi d’un &quot;e&quot;.<br/>La forme du verbe “to agree (with someone)” est un verbe rÃ©gulier.'),
(25, 57, 'development / I agree with you', 1, '&quot;Development&quot; s''Ã©crit avec un seul &quot;p&quot; et sans être suivi d’un &quot;e&quot;.<br/>La forme du verbe “to agree (with someone)” est un verbe rÃ©gulier.'),
(26, 58, 'to smoke', 0, '&quot;to stop&quot; + verbe en <i>-ing</i> signifie qu?on arrête ce qu?on est/Ã©tait en train de faire. <br/>&quot;to stop&quot; + l?infinitif signifie qu?on arrête une chose pour en faire une autre.'),
(27, 58, 'smoking', 1, '&quot;to stop&quot; + verbe en <i>-ing</i> signifie qu?on arrête ce qu?on est/Ã©tait en train de faire. <br/>&quot;to stop&quot; + l?infinitif signifie qu?on arrête une chose pour en faire une autre.'),
(28, 58, 'having smoked', 0, '&quot;to stop&quot; + verbe en <i>-ing</i> signifie qu?on arrête ce qu?on est/Ã©tait en train de faire. <br/>&quot;to stop&quot; + l?infinitif signifie qu?on arrête une chose pour en faire une autre.'),
(29, 58, 'smoked', 0, '&quot;to stop&quot; + verbe en <i>-ing</i> signifie qu?on arrête ce qu?on est/Ã©tait en train de faire. <br/>&quot;to stop&quot; + l?infinitif signifie qu?on arrête une chose pour en faire une autre.'),
(34, 59, 'should', 0, 'L?auxiliaire modal &quot;must&quot; (à la forme affirmative) exprime une dÃ©duction dans le prÃ©sent, une quasi-certitude.'),
(35, 59, 'is supposed to', 0, 'L?auxiliaire modal &quot;must&quot; (à la forme affirmative) exprime une dÃ©duction dans le prÃ©sent, une quasi-certitude.'),
(36, 59, 'must', 1, 'L?auxiliaire modal &quot;must&quot; (à la forme affirmative) exprime une dÃ©duction dans le prÃ©sent, une quasi-certitude.'),
(37, 59, 'would', 0, 'L?auxiliaire modal &quot;must&quot; (à la forme affirmative) exprime une dÃ©duction dans le prÃ©sent, une quasi-certitude.'),
(38, 60, 'advice / informations', 0, 'Les mots &quot;advice&quot; et &quot;information&quot; sont des mots indÃ©nombrables qui ne prennent pas de &quot;S&quot;.<br/>Attention à l?orthographe : &quot;advi<u>C</u>e&quot; (nom); &quot;to advi<u>S</u>e&quot; (verbe).'),
(39, 60, 'advises / informations', 0, 'Les mots &quot;advice&quot; et &quot;information&quot; sont des mots indÃ©nombrables qui ne prennent pas de &quot;S&quot;.<br/>Attention à l?orthographe : &quot;advi<u>C</u>e&quot; (nom); &quot;to advi<u>S</u>e&quot; (verbe).'),
(40, 60, 'advice / information', 1, 'Les mots &quot;advice&quot; et &quot;information&quot; sont des mots indÃ©nombrables qui ne prennent pas de &quot;S&quot;.<br/>Attention à l?orthographe : &quot;advi<u>C</u>e&quot; (nom); &quot;to advi<u>S</u>e&quot; (verbe).'),
(41, 60, 'advices / information', 0, 'Les mots &quot;advice&quot; et &quot;information&quot; sont des mots indÃ©nombrables qui ne prennent pas de &quot;S&quot;.<br/>Attention à l?orthographe : &quot;advi<u>C</u>e&quot; (nom); &quot;to advi<u>S</u>e&quot; (verbe).'),
(42, 61, 'up', 0, '<i>Phrasal verb</i> (ou verbe à particule) : <i>to take off</i> = dÃ©coller (pour un avion).'),
(43, 61, 'out', 0, '<i>Phrasal verb</i> (ou verbe à particule) : <i>to take off</i> = dÃ©coller (pour un avion).'),
(44, 61, 'off', 1, '<i>Phrasal verb</i> (ou verbe à particule) : <i>to take off</i> = dÃ©coller (pour un avion).'),
(45, 61, 'in', 0, '<i>Phrasal verb</i> (ou verbe à particule) : <i>to take off</i> = dÃ©coller (pour un avion).'),
(46, 62, 'Fifty millions of euros', 0, 'Dans un montant exprimÃ© en anglais, les termes &quot;hundred&quot;, &quot;thousand&quot;, &quot;million&quot;, &quot;billion&quot;, &quot;trillion&quot;, etc. sont toujours au singulier.<br><u>RÃ¨gle</u> : &quot;million&quot; ne prend pas de &quot;s&quot'),
(47, 62, 'Fifty millions euros', 0, 'Dans un montant exprimÃ© en anglais, les termes &quot;hundred&quot;, &quot;thousand&quot;, &quot;million&quot;, &quot;billion&quot;, &quot;trillion&quot;, etc. sont toujours au singulier.<br><u>RÃ¨gle</u> : &quot;million&quot; ne prend pas de &quot;s&quot'),
(48, 62, 'Fifty million of euros', 0, 'Dans un montant exprimÃ© en anglais, les termes &quot;hundred&quot;, &quot;thousand&quot;, &quot;million&quot;, &quot;billion&quot;, &quot;trillion&quot;, etc. sont toujours au singulier.<br><u>RÃ¨gle</u> : &quot;million&quot; ne prend pas de &quot;s&quot'),
(49, 62, 'Fifty million euros', 1, 'Dans un montant exprimÃ© en anglais, les termes &quot;hundred&quot;, &quot;thousand&quot;, &quot;million&quot;, &quot;billion&quot;, &quot;trillion&quot;, etc. sont toujours au singulier.<br><u>RÃ¨gle</u> : &quot;million&quot; ne prend pas de &quot;s&quot'),
(50, 63, 'shall pay for', 0, '<u>Verbe</u> : <i>to pay for something</i> = payer quelque chose<br/>Pour exprimer un fait, et sous-entendu effectuÃ© par quelqu?un, on emploie le passif au prÃ©sent simple.</br><u>RÃ¨gle</u> : Le passif au prÃ©sent simple se forme avec le verbe <i>to be<'),
(51, 63, 'is paid for', 1, '<u>Verbe</u> : <i>to pay for something</i> = payer quelque chose<br/>Pour exprimer un fait, et sous-entendu effectuÃ© par quelqu?un, on emploie le passif au prÃ©sent simple.</br><u>RÃ¨gle</u> : Le passif au prÃ©sent simple se forme avec le verbe <i>to be<'),
(52, 63, 'is paying for', 0, '<u>Verbe</u> : <i>to pay for something</i> = payer quelque chose<br/>Pour exprimer un fait, et sous-entendu effectuÃ© par quelqu?un, on emploie le passif au prÃ©sent simple.</br><u>RÃ¨gle</u> : Le passif au prÃ©sent simple se forme avec le verbe <i>to be<'),
(53, 63, 'will pay for', 0, '<u>Verbe</u> : <i>to pay for something</i> = payer quelque chose<br/>Pour exprimer un fait, et sous-entendu effectuÃ© par quelqu?un, on emploie le passif au prÃ©sent simple.</br><u>RÃ¨gle</u> : Le passif au prÃ©sent simple se forme avec le verbe <i>to be<'),
(54, 64, 'must', 0, '&quot;Had to&quot; exprime une obligation ou une contrainte dans le passÃ©, due aux circonstances.<br/><u>RÃ¨gle</u> : &quot;Had to&quot; est le prÃ©tÃ©rit de l?auxiliaire modal &quot;must&quot;.'),
(55, 64, 'needed', 0, '&quot;Had to&quot; exprime une obligation ou une contrainte dans le passÃ©, due aux circonstances.<br/><u>RÃ¨gle</u> : &quot;Had to&quot; est le prÃ©tÃ©rit de l?auxiliaire modal &quot;must&quot;.'),
(56, 64, 'had to', 1, '&quot;Had to&quot; exprime une obligation ou une contrainte dans le passÃ©, due aux circonstances.<br/><u>RÃ¨gle</u> : &quot;Had to&quot; est le prÃ©tÃ©rit de l?auxiliaire modal &quot;must&quot;.'),
(57, 64, 'might', 0, '&quot;Had to&quot; exprime une obligation ou une contrainte dans le passÃ©, due aux circonstances.<br/><u>RÃ¨gle</u> : &quot;Had to&quot; est le prÃ©tÃ©rit de l?auxiliaire modal &quot;must&quot;.'),
(58, 65, 'moves out', 0, 'L?expression &quot;it is high time&quot; est toujours suivie d?un verbe au <u>prÃ©tÃ©rit</u> à l?affirmatif.'),
(59, 65, 'has moved out ', 0, 'L?expression &quot;it is high time&quot; est toujours suivie d?un verbe au <u>prÃ©tÃ©rit</u> à l?affirmatif.'),
(60, 65, 'moved out ', 1, 'L?expression &quot;it is high time&quot; est toujours suivie d?un verbe au <u>prÃ©tÃ©rit</u> à l?affirmatif.'),
(61, 65, 'is moving out', 0, 'L?expression &quot;it is high time&quot; est toujours suivie d?un verbe au <u>prÃ©tÃ©rit</u> à l?affirmatif.'),
(62, 66, 'No sooner / when', 0, 'L?adverbe &quot;No sooner ? than&quot; est utilisÃ© lorsqu?il y a deux Ã©vÃ¨nements dans le passÃ©, un qui suit immÃ©diatement l?autre.<br/><u>RÃ¨gle</u> : &quot;No sooner&quot; est un adverbe nÃ©gatif, qui provoque une inversion du sujet et de l?auxiliai'),
(63, 66, 'No sooner / than', 1, 'L?adverbe &quot;No sooner ? than&quot; est utilisÃ© lorsqu?il y a deux Ã©vÃ¨nements dans le passÃ©, un qui suit immÃ©diatement l?autre.<br/><u>RÃ¨gle</u> : &quot;No sooner&quot; est un adverbe nÃ©gatif, qui provoque une inversion du sujet et de l?auxiliai'),
(64, 66, 'No sooner / that', 0, 'L?adverbe &quot;No sooner ? than&quot; est utilisÃ© lorsqu?il y a deux Ã©vÃ¨nements dans le passÃ©, un qui suit immÃ©diatement l?autre.<br/><u>RÃ¨gle</u> : &quot;No sooner&quot; est un adverbe nÃ©gatif, qui provoque une inversion du sujet et de l?auxiliai'),
(65, 66, 'No sooner / then', 0, 'L?adverbe &quot;No sooner ? than&quot; est utilisÃ© lorsqu?il y a deux Ã©vÃ¨nements dans le passÃ©, un qui suit immÃ©diatement l?autre.<br/><u>RÃ¨gle</u> : &quot;No sooner&quot; est un adverbe nÃ©gatif, qui provoque une inversion du sujet et de l?auxiliai'),
(66, 67, 'less / less', 0, '<i>Fewer</i> et <i>less</i> = moins de<br/><u>RÃ¨gle</u> : &quot;Fewer&quot; est suivi d?un nom pluriel/dÃ©nombrable ? <i>par exemple : dollars, bottles, hours, cars</i><br/><u>RÃ¨gle</u> : &quot;Less&quot; est suivi d?un nom singulier/indÃ©nombrable ? <i'),
(67, 67, 'fewer / fewer', 0, '<i>Fewer</i> et <i>less</i> = moins de<br/><u>RÃ¨gle</u> : &quot;Fewer&quot; est suivi d?un nom pluriel/dÃ©nombrable ? <i>par exemple : dollars, bottles, hours, cars</i><br/><u>RÃ¨gle</u> : &quot;Less&quot; est suivi d?un nom singulier/indÃ©nombrable ? <i'),
(68, 67, 'less / fewer', 0, '<i>Fewer</i> et <i>less</i> = moins de<br/><u>RÃ¨gle</u> : &quot;Fewer&quot; est suivi d?un nom pluriel/dÃ©nombrable ? <i>par exemple : dollars, bottles, hours, cars</i><br/><u>RÃ¨gle</u> : &quot;Less&quot; est suivi d?un nom singulier/indÃ©nombrable ? <i'),
(69, 67, 'fewer / less', 1, '<i>Fewer</i> et <i>less</i> = moins de<br/><u>RÃ¨gle</u> : &quot;Fewer&quot; est suivi d?un nom pluriel/dÃ©nombrable ? <i>par exemple : dollars, bottles, hours, cars</i><br/><u>RÃ¨gle</u> : &quot;Less&quot; est suivi d?un nom singulier/indÃ©nombrable ? <i'),
(70, 68, 'works', 0, 'On utilise le <i>prÃ©sent parfait progressif</i> lorsqu?on fait rÃ©fÃ©rence à la durÃ©e d?une activitÃ© qui a commencÃ© au passÃ© et qui se poursuit au prÃ©sent, au moment où on parle.<br/></u>RÃ¨gle</u> : Le <i>prÃ©sent parfait progressif</i> se forme av'),
(71, 68, 'has been working', 1, 'On utilise le <i>prÃ©sent parfait progressif</i> lorsqu?on fait rÃ©fÃ©rence à la durÃ©e d?une activitÃ© qui a commencÃ© au passÃ© et qui se poursuit au prÃ©sent, au moment où on parle.<br/></u>RÃ¨gle</u> : Le <i>prÃ©sent parfait progressif</i> se forme av'),
(72, 68, 'is working', 0, 'On utilise le <i>prÃ©sent parfait progressif</i> lorsqu?on fait rÃ©fÃ©rence à la durÃ©e d?une activitÃ© qui a commencÃ© au passÃ© et qui se poursuit au prÃ©sent, au moment où on parle.<br/></u>RÃ¨gle</u> : Le <i>prÃ©sent parfait progressif</i> se forme av'),
(73, 68, 'worked', 0, 'On utilise le <i>prÃ©sent parfait progressif</i> lorsqu?on fait rÃ©fÃ©rence à la durÃ©e d?une activitÃ© qui a commencÃ© au passÃ© et qui se poursuit au prÃ©sent, au moment où on parle.<br/></u>RÃ¨gle</u> : Le <i>prÃ©sent parfait progressif</i> se forme av'),
(74, 69, 'd have / would have stopped', 0, 'Le 3Ã¨me conditionnel exprime une condition et une consÃ©quence ; un regret, un reproche, une situation qui a toujours eu lieu dans le passÃ© et qu?on ne peut plus changer.<br/><u>RÃ¨gle</u> : &quot;<i>If</i> + <i>had</i> + participÃ© passÃ©&quot;, (ou le'),
(75, 69, 'will have / would stop', 0, 'Le 3Ã¨me conditionnel exprime une condition et une consÃ©quence ; un regret, un reproche, une situation qui a toujours eu lieu dans le passÃ© et qu?on ne peut plus changer.<br/><u>RÃ¨gle</u> : &quot;<i>If</i> + <i>had</i> + participÃ© passÃ©&quot;, (ou le'),
(76, 69, 'am having / will stop', 0, 'Le 3Ã¨me conditionnel exprime une condition et une consÃ©quence ; un regret, un reproche, une situation qui a toujours eu lieu dans le passÃ© et qu?on ne peut plus changer.<br/><u>RÃ¨gle</u> : &quot;<i>If</i> + <i>had</i> + participÃ© passÃ©&quot;, (ou le'),
(77, 69, 'd had / would have stopped', 1, 'Le 3Ã¨me conditionnel exprime une condition et une consÃ©quence ; un regret, un reproche, une situation qui a toujours eu lieu dans le passÃ© et qu?on ne peut plus changer.<br/><u>RÃ¨gle</u> : &quot;<i>If</i> + <i>had</i> + participÃ© passÃ©&quot;, (ou le'),
(78, 70, 'tips / look after', 1, '<i>To give some tips</i> = donner de bons conseils / des astuces pratiques.<br/><i>Phrasal verb</i> (verbe à particule) : <i>to look after someone</i> = s?occuper de quelqu?un.'),
(79, 70, 'pipes / look after', 0, '<i>To give some tips</i> = donner de bons conseils / des astuces pratiques.<br/><i>Phrasal verb</i> (verbe à particule) : <i>to look after someone</i> = s?occuper de quelqu?un.'),
(80, 70, 'guides / look after', 0, '<i>To give some tips</i> = donner de bons conseils / des astuces pratiques.<br/><i>Phrasal verb</i> (verbe à particule) : <i>to look after someone</i> = s?occuper de quelqu?un.'),
(81, 70, 'things / look for', 0, '<i>To give some tips</i> = donner de bons conseils / des astuces pratiques.<br/><i>Phrasal verb</i> (verbe à particule) : <i>to look after someone</i> = s?occuper de quelqu?un.'),
(82, 71, 'do you work', 0, 'Une question avec &quot;how long&quot; se pose sur la durÃ©e du dÃ©roulement d?une action, qui a commencÃ© dans le passÃ© et qui continue dans le prÃ©sent.<br><u>RÃ¨gle</u> : Pour former une question avec &quot;how long&quot;, on utilise : &quot;<I>has/ha'),
(83, 71, 'are you working', 0, 'Une question avec &quot;how long&quot; se pose sur la durÃ©e du dÃ©roulement d?une action, qui a commencÃ© dans le passÃ© et qui continue dans le prÃ©sent.<br><u>RÃ¨gle</u> : Pour former une question avec &quot;how long&quot;, on utilise : &quot;<I>has/ha'),
(84, 71, 'did you work', 0, 'Une question avec &quot;how long&quot; se pose sur la durÃ©e du dÃ©roulement d?une action, qui a commencÃ© dans le passÃ© et qui continue dans le prÃ©sent.<br><u>RÃ¨gle</u> : Pour former une question avec &quot;how long&quot;, on utilise : &quot;<I>has/ha'),
(85, 71, 'have you been working', 1, 'Une question avec &quot;how long&quot; se pose sur la durÃ©e du dÃ©roulement d?une action, qui a commencÃ© dans le passÃ© et qui continue dans le prÃ©sent.<br><u>RÃ¨gle</u> : Pour former une question avec &quot;how long&quot;, on utilise : &quot;<I>has/ha'),
(86, 72, 'would rather not', 1, '<u>RÃ¨gle</u> : &quot;<i>would rather (not)</i> + l?infinitif <u>sans <i>to</i></u>&quot; et &quot;<i>would prefer (not)</i> + l?infinitif&quot; expriment une prÃ©fÃ©rence.'),
(87, 72, 'would prefer not', 0, '<u>RÃ¨gle</u> : &quot;<i>would rather (not)</i> + l?infinitif <u>sans <i>to</i></u>&quot; et &quot;<i>would prefer (not)</i> + l?infinitif&quot; expriment une prÃ©fÃ©rence.'),
(88, 72, 'would rather not to', 0, '<u>RÃ¨gle</u> : &quot;<i>would rather (not)</i> + l?infinitif <u>sans <i>to</i></u>&quot; et &quot;<i>would prefer (not)</i> + l?infinitif&quot; expriment une prÃ©fÃ©rence.'),
(89, 72, 'would rather prefer not', 0, '<u>RÃ¨gle</u> : &quot;<i>would rather (not)</i> + l?infinitif <u>sans <i>to</i></u>&quot; et &quot;<i>would prefer (not)</i> + l?infinitif&quot; expriment une prÃ©fÃ©rence.'),
(90, 73, 'hard / successful', 0, 'La rÃ©ponse exprime l''idÃ©e de croissance simultanÃ©e (ou de dÃ©croissance simultanÃ©e).<br/>RÃ¨gle : <b>the</b> + comparatif + sujet + verbe conjugÃ© au temps appropriÃ© suivi dans la proposition suivante de : <b>the</b> + comparatif + sujet + verbe conj'),
(91, 73, 'harder / more successful', 0, 'La rÃ©ponse exprime l''idÃ©e de croissance simultanÃ©e (ou de dÃ©croissance simultanÃ©e).<br/>RÃ¨gle : <b>the</b> + comparatif + sujet + verbe conjugÃ© au temps appropriÃ© suivi dans la proposition suivante de : <b>the</b> + comparatif + sujet + verbe conj'),
(92, 73, 'the harder / the more successful', 1, 'La rÃ©ponse exprime l''idÃ©e de croissance simultanÃ©e (ou de dÃ©croissance simultanÃ©e).<br/>RÃ¨gle : <b>the</b> + comparatif + sujet + verbe conjugÃ© au temps appropriÃ© suivi dans la proposition suivante de : <b>the</b> + comparatif + sujet + verbe conj'),
(93, 73, 'the hardest / the most successful', 0, 'La rÃ©ponse exprime l''idÃ©e de croissance simultanÃ©e (ou de dÃ©croissance simultanÃ©e).<br/>RÃ¨gle : <b>the</b> + comparatif + sujet + verbe conjugÃ© au temps appropriÃ© suivi dans la proposition suivante de : <b>the</b> + comparatif + sujet + verbe conj'),
(94, 74, 'joining the ends', 0, 'L?expression utilisÃ©e est : <b>to make ends meet</b> = <i>joindre les deux bouts</i> (ou Ã©ventuellement ?to make both ends meet? mais jamais ?to make the both ends meet?.<br/><i>To have difficulty IN + -ing</i>'),
(95, 74, 'making ends meet', 1, 'L?expression utilisÃ©e est : <b>to make ends meet</b> = <i>joindre les deux bouts</i> (ou Ã©ventuellement ?to make both ends meet? mais jamais ?to make the both ends meet?.<br/><i>To have difficulty IN + -ing</i>'),
(96, 74, 'meeting the ends', 0, 'L?expression utilisÃ©e est : <b>to make ends meet</b> = <i>joindre les deux bouts</i> (ou Ã©ventuellement ?to make both ends meet? mais jamais ?to make the both ends meet?.<br/><i>To have difficulty IN + -ing</i>'),
(97, 74, 'making the both ends meet', 0, 'L?expression utilisÃ©e est : <b>to make ends meet</b> = <i>joindre les deux bouts</i> (ou Ã©ventuellement ?to make both ends meet? mais jamais ?to make the both ends meet?.<br/><i>To have difficulty IN + -ing</i>'),
(98, 75, 'signed', 1, 'On utilise le prÃ©tÃ©rit avec l?expression &quot;last year&quot; qui est une notion de temps dans le passÃ©, qui est finie.'),
(99, 75, 'have signed', 0, 'On utilise le prÃ©tÃ©rit avec l?expression &quot;last year&quot; qui est une notion de temps dans le passÃ©, qui est finie.'),
(100, 75, 'have sign', 0, 'On utilise le prÃ©tÃ©rit avec l?expression &quot;last year&quot; qui est une notion de temps dans le passÃ©, qui est finie.'),
(101, 75, 'did sign', 0, 'On utilise le prÃ©tÃ©rit avec l?expression &quot;last year&quot; qui est une notion de temps dans le passÃ©, qui est finie.'),
(102, 76, 'listening', 0, 'Le verbe &quot;to listen&quot; est toujours suivi de l?infinitif avec &quot;to&quot;'),
(103, 76, 'listening to', 1, 'Le verbe &quot;to listen&quot; est toujours suivi de l?infinitif avec &quot;to&quot;'),
(104, 76, 'hearing', 0, 'Le verbe &quot;to listen&quot; est toujours suivi de l?infinitif avec &quot;to&quot;'),
(105, 76, 'hearing to', 0, 'Le verbe &quot;to listen&quot; est toujours suivi de l?infinitif avec &quot;to&quot;'),
(106, 77, 'you to go', 1, 'To want someone to do something = <i>vouloir que quelqu?un fasse quelque chose</i><br/>Il n?y a pas de &quot;that + sujet&quot; aprÃ¨s &quot;want&quot;.<br/><i>RÃ¨gle : Conjuger le verbe &quot;to want&quot; au temps appropriÃ© + objet + l?infinitif </i>'),
(107, 77, 'you will go', 0, 'To want someone to do something = <i>vouloir que quelqu?un fasse quelque chose</i><br/>Il n?y a pas de &quot;that + sujet&quot; aprÃ¨s &quot;want&quot;.<br/><i>RÃ¨gle : Conjuger le verbe &quot;to want&quot; au temps appropriÃ© + objet + l?infinitif </i>'),
(108, 77, 'that you go', 0, 'To want someone to do something = <i>vouloir que quelqu?un fasse quelque chose</i><br/>Il n?y a pas de &quot;that + sujet&quot; aprÃ¨s &quot;want&quot;.<br/><i>RÃ¨gle : Conjuger le verbe &quot;to want&quot; au temps appropriÃ© + objet + l?infinitif </i>'),
(109, 77, 'you go', 0, 'To want someone to do something = <i>vouloir que quelqu?un fasse quelque chose</i><br/>Il n?y a pas de &quot;that + sujet&quot; aprÃ¨s &quot;want&quot;.<br/><i>RÃ¨gle : Conjuger le verbe &quot;to want&quot; au temps appropriÃ© + objet + l?infinitif </i>'),
(110, 78, 'inconvenient', 0, '&quot;inconvenience&quot; est un nom au singulier et &quot;inconveniences&quot; est un nom au pluriel. <br/>&quot;inconvenient&quot; est un adjectif.<br/><i>RÃ¨gle : &quot;one of&quot; + le superlatif + un nom. Le nom employÃ© est toujours au pluriel, ici'),
(111, 78, 'inconvenience', 0, '&quot;inconvenience&quot; est un nom au singulier et &quot;inconveniences&quot; est un nom au pluriel. <br/>&quot;inconvenient&quot; est un adjectif.<br/><i>RÃ¨gle : &quot;one of&quot; + le superlatif + un nom. Le nom employÃ© est toujours au pluriel, ici'),
(112, 78, 'inconveniences', 1, '&quot;inconvenience&quot; est un nom au singulier et &quot;inconveniences&quot; est un nom au pluriel. <br/>&quot;inconvenient&quot; est un adjectif.<br/><i>RÃ¨gle : &quot;one of&quot; + le superlatif + un nom. Le nom employÃ© est toujours au pluriel, ici'),
(113, 78, 'inconvenients', 0, '&quot;inconvenience&quot; est un nom au singulier et &quot;inconveniences&quot; est un nom au pluriel. <br/>&quot;inconvenient&quot; est un adjectif.<br/><i>RÃ¨gle : &quot;one of&quot; + le superlatif + un nom. Le nom employÃ© est toujours au pluriel, ici'),
(114, 79, 'for / during', 0, '&quot;DURING&quot; est uniquement employÃ© avec un nom. Il signifie &quot;pendant&quot; et n?exprime pas une durÃ©e de temps.<br/>&quot;FOR&quot; exprime la durÃ©e de temps.'),
(115, 79, 'for / for', 0, '&quot;DURING&quot; est uniquement employÃ© avec un nom. Il signifie &quot;pendant&quot; et n?exprime pas une durÃ©e de temps.<br/>&quot;FOR&quot; exprime la durÃ©e de temps.'),
(116, 79, 'during / during', 0, '&quot;DURING&quot; est uniquement employÃ© avec un nom. Il signifie &quot;pendant&quot; et n?exprime pas une durÃ©e de temps.<br/>&quot;FOR&quot; exprime la durÃ©e de temps.'),
(117, 79, 'during / for', 1, '&quot;DURING&quot; est uniquement employÃ© avec un nom. Il signifie &quot;pendant&quot; et n?exprime pas une durÃ©e de temps.<br/>&quot;FOR&quot; exprime la durÃ©e de temps.'),
(118, 80, 'many advices', 0, '<I>RÃ¨gle : &quot;Advice&quot; est un nom indÃ©nombrable, et ne prend jamais de &quot;S&quot;. </i><br/>On emploie en rÃ¨gle gÃ©nÃ©rale &quot;a lot of&quot; ou &quot;lots of&quot; dans les phrases à tournures positives.<br/>Several (<i>plusieurs</i>) est '),
(119, 80, 'a lot of advices', 0, '<I>RÃ¨gle : &quot;Advice&quot; est un nom indÃ©nombrable, et ne prend jamais de &quot;S&quot;. </i><br/>On emploie en rÃ¨gle gÃ©nÃ©rale &quot;a lot of&quot; ou &quot;lots of&quot; dans les phrases à tournures positives.<br/>Several (<i>plusieurs</i>) est '),
(120, 80, 'lots of advice', 1, '<I>RÃ¨gle : &quot;Advice&quot; est un nom indÃ©nombrable, et ne prend jamais de &quot;S&quot;. </i><br/>On emploie en rÃ¨gle gÃ©nÃ©rale &quot;a lot of&quot; ou &quot;lots of&quot; dans les phrases à tournures positives.<br/>Several (<i>plusieurs</i>) est '),
(121, 80, 'several advice', 0, '<I>RÃ¨gle : &quot;Advice&quot; est un nom indÃ©nombrable, et ne prend jamais de &quot;S&quot;. </i><br/>On emploie en rÃ¨gle gÃ©nÃ©rale &quot;a lot of&quot; ou &quot;lots of&quot; dans les phrases à tournures positives.<br/>Several (<i>plusieurs</i>) est '),
(122, 81, 'most hard', 0, 'Le superlatif sert à comparer un Ã©lÃ©ment (une chose ou une personne) avec plusieurs Ã©lÃ©ments.<br/><i>RÃ¨gle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(123, 81, 'harder', 0, 'Le superlatif sert à comparer un Ã©lÃ©ment (une chose ou une personne) avec plusieurs Ã©lÃ©ments.<br/><i>RÃ¨gle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(124, 81, 'more hard', 0, 'Le superlatif sert à comparer un Ã©lÃ©ment (une chose ou une personne) avec plusieurs Ã©lÃ©ments.<br/><i>RÃ¨gle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(125, 81, 'hardest', 1, 'Le superlatif sert à comparer un Ã©lÃ©ment (une chose ou une personne) avec plusieurs Ã©lÃ©ments.<br/><i>RÃ¨gle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(126, 82, 'big / rich', 0, 'Le superlatif sert à comparer un Ã©lÃ©ment (une chose ou une personne) avec plusieurs Ã©lÃ©ments.<br/><i>RÃ¨gle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(127, 82, 'bigger / richer', 0, 'Le superlatif sert à comparer un Ã©lÃ©ment (une chose ou une personne) avec plusieurs Ã©lÃ©ments.<br/><i>RÃ¨gle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(128, 82, 'biggest / richest', 1, 'Le superlatif sert à comparer un Ã©lÃ©ment (une chose ou une personne) avec plusieurs Ã©lÃ©ments.<br/><i>RÃ¨gle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(129, 82, 'most big / more rich', 0, 'Le superlatif sert à comparer un Ã©lÃ©ment (une chose ou une personne) avec plusieurs Ã©lÃ©ments.<br/><i>RÃ¨gle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(130, 83, 'look for', 0, 'Phrasal verb (<i>verbe à particule</i>) : <b>to look after</b> = s?occuper de quelqu?un.'),
(131, 83, 'look after', 1, 'Phrasal verb (<i>verbe à particule</i>) : <b>to look after</b> = s?occuper de quelqu?un.'),
(132, 83, 'look at', 0, 'Phrasal verb (<i>verbe à particule</i>) : <b>to look after</b> = s?occuper de quelqu?un.'),
(133, 83, 'look to', 0, 'Phrasal verb (<i>verbe à particule</i>) : <b>to look after</b> = s?occuper de quelqu?un.'),
(134, 84, 'crossing', 1, '&quot;Before&quot; est suivi d?un verbe en <i>-ing</i> pour exprimer &quot;avant de +l?infinitif&quot;'),
(135, 84, 'to cross', 0, '&quot;Before&quot; est suivi d?un verbe en <i>-ing</i> pour exprimer &quot;avant de +l?infinitif&quot;'),
(136, 84, 'cross', 0, '&quot;Before&quot; est suivi d?un verbe en <i>-ing</i> pour exprimer &quot;avant de +l?infinitif&quot;'),
(137, 84, 'crossed', 0, '&quot;Before&quot; est suivi d?un verbe en <i>-ing</i> pour exprimer &quot;avant de +l?infinitif&quot;'),
(138, 85, 'can', 1, '<i>RÃ¨gle : &quot;May, might, could&quot; servent à exprimer une possibilitÃ© Ã©ventuelle, dans l?incertitude.<br/>&quot;Can&quot; sert à exprimer une possibilitÃ© matÃ©rielle, une capacitÃ©.'),
(139, 85, 'might', 0, '<i>RÃ¨gle : &quot;May, might, could&quot; servent à exprimer une possibilitÃ© Ã©ventuelle, dans l?incertitude.<br/>&quot;Can&quot; sert à exprimer une possibilitÃ© matÃ©rielle, une capacitÃ©.'),
(140, 85, 'may', 0, '<i>RÃ¨gle : &quot;May, might, could&quot; servent à exprimer une possibilitÃ© Ã©ventuelle, dans l?incertitude.<br/>&quot;Can&quot; sert à exprimer une possibilitÃ© matÃ©rielle, une capacitÃ©.'),
(141, 85, 'could', 0, '<i>RÃ¨gle : &quot;May, might, could&quot; servent à exprimer une possibilitÃ© Ã©ventuelle, dans l?incertitude.<br/>&quot;Can&quot; sert à exprimer une possibilitÃ© matÃ©rielle, une capacitÃ©.'),
(142, 86, 'over', 0, 'Phrasal verb (<i>verbe à particule</i>). &quot;Up&quot; suggÃ¨re un mouvement vers le haut.<br/>Parler plus fort : <i>to speak up</i>.'),
(143, 86, 'out', 0, 'Phrasal verb (<i>verbe à particule</i>). &quot;Up&quot; suggÃ¨re un mouvement vers le haut.<br/>Parler plus fort : <i>to speak up</i>.'),
(144, 86, 'down', 0, 'Phrasal verb (<i>verbe à particule</i>). &quot;Up&quot; suggÃ¨re un mouvement vers le haut.<br/>Parler plus fort : <i>to speak up</i>.'),
(145, 86, 'up', 1, 'Phrasal verb (<i>verbe à particule</i>). &quot;Up&quot; suggÃ¨re un mouvement vers le haut.<br/>Parler plus fort : <i>to speak up</i>.'),
(146, 87, 'borrowed some money to', 0, '<i>RÃ¨gle : Le verbe &quot;to borrow something&quot; est toujours suivi de la prÃ©position &quot;from&quot; = emprunter à quelqu?un.</i>'),
(147, 87, 'borrowed some money from', 1, '<i>RÃ¨gle : Le verbe &quot;to borrow something&quot; est toujours suivi de la prÃ©position &quot;from&quot; = emprunter à quelqu?un.</i>'),
(148, 87, 'borrowed some money of', 0, '<i>RÃ¨gle : Le verbe &quot;to borrow something&quot; est toujours suivi de la prÃ©position &quot;from&quot; = emprunter à quelqu?un.</i>'),
(149, 87, 'borrowed some money at', 0, '<i>RÃ¨gle : Le verbe &quot;to borrow something&quot; est toujours suivi de la prÃ©position &quot;from&quot; = emprunter à quelqu?un.</i>'),
(150, 88, 'when he ran', 1, 'L?adverbe &quot;hardly ... when&quot; est utilisÃ© lorsqu?il y a deux Ã©vÃ¨nements dans le passÃ©, un qui suit immÃ©diatement l?autre.<br/><i>RÃ¨gle : &quot;Hardly&quot; est un adverbe nÃ©gatif, qui provoque une inversion du sujet et de l?auxiliaire (<b>h'),
(151, 88, 'when he runs', 0, 'L?adverbe &quot;hardly ... when&quot; est utilisÃ© lorsqu?il y a deux Ã©vÃ¨nements dans le passÃ©, un qui suit immÃ©diatement l?autre.<br/><i>RÃ¨gle : &quot;Hardly&quot; est un adverbe nÃ©gatif, qui provoque une inversion du sujet et de l?auxiliaire (<b>h'),
(152, 88, 'than he ran', 0, 'L?adverbe &quot;hardly ... when&quot; est utilisÃ© lorsqu?il y a deux Ã©vÃ¨nements dans le passÃ©, un qui suit immÃ©diatement l?autre.<br/><i>RÃ¨gle : &quot;Hardly&quot; est un adverbe nÃ©gatif, qui provoque une inversion du sujet et de l?auxiliaire (<b>h'),
(153, 88, 'he runs', 0, 'L?adverbe &quot;hardly ... when&quot; est utilisÃ© lorsqu?il y a deux Ã©vÃ¨nements dans le passÃ©, un qui suit immÃ©diatement l?autre.<br/><i>RÃ¨gle : &quot;Hardly&quot; est un adverbe nÃ©gatif, qui provoque une inversion du sujet et de l?auxiliaire (<b>h'),
(154, 89, 'take over', 0, 'Phrasal verb (<i>verbe à particule</i>). To take on = <i>embaucher quelqu?un</i>.'),
(155, 89, 'take on', 1, 'Phrasal verb (<i>verbe à particule</i>). To take on = <i>embaucher quelqu?un</i>.'),
(156, 89, 'take through', 0, 'Phrasal verb (<i>verbe à particule</i>). To take on = <i>embaucher quelqu?un</i>.'),
(157, 89, 'take with', 0, 'Phrasal verb (<i>verbe à particule</i>). To take on = <i>embaucher quelqu?un</i>.'),
(158, 90, 'ought / repair', 0, '<i>RÃ¨gle : Le modal &quot;ought&quot est toujours suivi de &quot;to&quot; qui exprime un conseil. (ought to have = should have)<br/> RÃ¨gle : to have something done = faire faire quelque chose et se forme avec &quot;to have (au temps souhaitÃ©) + objet +'),
(159, 90, 'ought / mended', 1, '<i>RÃ¨gle : Le modal &quot;ought&quot est toujours suivi de &quot;to&quot; qui exprime un conseil. (ought to have = should have)<br/> RÃ¨gle : to have something done = faire faire quelque chose et se forme avec &quot;to have (au temps souhaitÃ©) + objet +'),
(160, 90, 'should / mended', 0, '<i>RÃ¨gle : Le modal &quot;ought&quot est toujours suivi de &quot;to&quot; qui exprime un conseil. (ought to have = should have)<br/> RÃ¨gle : to have something done = faire faire quelque chose et se forme avec &quot;to have (au temps souhaitÃ©) + objet +'),
(161, 90, 'must / repaired', 0, '<i>RÃ¨gle : Le modal &quot;ought&quot est toujours suivi de &quot;to&quot; qui exprime un conseil. (ought to have = should have)<br/> RÃ¨gle : to have something done = faire faire quelque chose et se forme avec &quot;to have (au temps souhaitÃ©) + objet +'),
(162, 91, 'is moving', 0, '&quot;Ago&quot; est un adverbe de temps qui situe un Ã©vÃ¨nement dans le passÃ© par rapport au moment où l?on parle.<br/><i>RÃ¨gle : L?emploi du prÃ©tÃ©rit est obligatoire avec &quot;ago&quot;.</i>'),
(163, 91, 'moved', 1, '&quot;Ago&quot; est un adverbe de temps qui situe un Ã©vÃ¨nement dans le passÃ© par rapport au moment où l?on parle.<br/><i>RÃ¨gle : L?emploi du prÃ©tÃ©rit est obligatoire avec &quot;ago&quot;.</i>'),
(164, 91, 'has moved', 0, '&quot;Ago&quot; est un adverbe de temps qui situe un Ã©vÃ¨nement dans le passÃ© par rapport au moment où l?on parle.<br/><i>RÃ¨gle : L?emploi du prÃ©tÃ©rit est obligatoire avec &quot;ago&quot;.</i>'),
(165, 91, 'was moved', 1, '&quot;Ago&quot; est un adverbe de temps qui situe un Ã©vÃ¨nement dans le passÃ© par rapport au moment où l?on parle.<br/><i>RÃ¨gle : L?emploi du prÃ©tÃ©rit est obligatoire avec &quot;ago&quot;.</i>'),
(166, 92, 'of taking', 0, '<i>RÃ¨gle : Le verbe &quot;to prevent&quot; est toujours suivi par la prÃ©position &quot;from&quot; + un verbe en <b>-ing</b>.</i>'),
(167, 92, 'for take', 0, '<i>RÃ¨gle : Le verbe &quot;to prevent&quot; est toujours suivi par la prÃ©position &quot;from&quot; + un verbe en <b>-ing</b>.</i>'),
(168, 92, 'from taking', 1, '<i>RÃ¨gle : Le verbe &quot;to prevent&quot; est toujours suivi par la prÃ©position &quot;from&quot; + un verbe en <b>-ing</b>.</i>'),
(169, 92, 'to take', 0, '<i>RÃ¨gle : Le verbe &quot;to prevent&quot; est toujours suivi par la prÃ©position &quot;from&quot; + un verbe en <b>-ing</b>.</i>'),
(170, 93, '730 mn', 0, 'Sur une journÃ©e, les femmes passent 20 minutes devant la glace (10â€™ le matin + 5â€™ lâ€™aprÃ¨s-midi + 5â€™ le soir).&lt;br/&gt;En cinq ans, elles passent donc lâ€™Ã©quivalent de 365 * 20 *5 = 365 * 100 soit 36 500 minutes.'),
(171, 93, '121 h 45 mn', 0, 'Sur une journÃ©e, les femmes passent 20 minutes devant la glace (10â€™ le matin + 5â€™ lâ€™aprÃ¨s-midi + 5â€™ le soir).&lt;br/&gt;En cinq ans, elles passent donc lâ€™Ã©quivalent de 365 * 20 *5 = 365 * 100 soit 36 500 minutes.'),
(172, 93, '202 h 46 mn 40 s', 0, 'Sur une journÃ©e, les femmes passent 20 minutes devant la glace (10â€™ le matin + 5â€™ lâ€™aprÃ¨s-midi + 5â€™ le soir).&lt;br/&gt;En cinq ans, elles passent donc lâ€™Ã©quivalent de 365 * 20 *5 = 365 * 100 soit 36 500 minutes.'),
(173, 93, '36500 mn', 1, 'Sur une journÃ©e, les femmes passent 20 minutes devant la glace (10â€™ le matin + 5â€™ lâ€™aprÃ¨s-midi + 5â€™ le soir).&lt;br/&gt;En cinq ans, elles passent donc lâ€™Ã©quivalent de 365 * 20 *5 = 365 * 100 soit 36 500 minutes.'),
(174, 94, '176 &amp;euro;uros', 1, '&lt;li&gt;1&lt;sup&gt;er&lt;/sup&gt; versement : 660/3 = 220 &amp;euro;uros&lt;/li&gt;&lt;li&gt;2&lt;sup&gt;Ã¨me&lt;/sup&gt; versement : reste Ã  payer 440 &amp;euro;uros. 3/5 * 440 = 264 &amp;euro;uros&lt;/li&gt;&lt;li&gt;3&lt;sup&gt;Ã¨me&lt;/sup&gt; ver'),
(175, 94, '156 &amp;euro;uros', 0, '&lt;li&gt;1&lt;sup&gt;er&lt;/sup&gt; versement : 660/3 = 220 &amp;euro;uros&lt;/li&gt;&lt;li&gt;2&lt;sup&gt;Ã¨me&lt;/sup&gt; versement : reste Ã  payer 440 &amp;euro;uros. 3/5 * 440 = 264 &amp;euro;uros&lt;/li&gt;&lt;li&gt;3&lt;sup&gt;Ã¨me&lt;/sup&gt; ver'),
(176, 94, '186 &amp;euro;uros', 0, '&lt;li&gt;1&lt;sup&gt;er&lt;/sup&gt; versement : 660/3 = 220 &amp;euro;uros&lt;/li&gt;&lt;li&gt;2&lt;sup&gt;Ã¨me&lt;/sup&gt; versement : reste Ã  payer 440 &amp;euro;uros. 3/5 * 440 = 264 &amp;euro;uros&lt;/li&gt;&lt;li&gt;3&lt;sup&gt;Ã¨me&lt;/sup&gt; ver'),
(177, 94, '264 &amp;euro;uros', 0, '&lt;li&gt;1&lt;sup&gt;er&lt;/sup&gt; versement : 660/3 = 220 &amp;euro;uros&lt;/li&gt;&lt;li&gt;2&lt;sup&gt;Ã¨me&lt;/sup&gt; versement : reste Ã  payer 440 &amp;euro;uros. 3/5 * 440 = 264 &amp;euro;uros&lt;/li&gt;&lt;li&gt;3&lt;sup&gt;Ã¨me&lt;/sup&gt; ver'),
(178, 95, '631 x 10&lt;sup&gt;-6&lt;/sup&gt;', 0, '10&lt;sup&gt;-7&lt;/sup&gt; sâ€™Ã©crit aussi 1/10&lt;sup&gt;7&lt;/sup&gt;. Quand on multiplie un nombre dÃ©cimal par 1/10&lt;sup&gt;7&lt;/sup&gt; , cela revient donc Ã  dÃ©caler la virgule de 7 rangs vers la gauche.&lt;br/&gt;Le rÃ©sultat de lâ€™opÃ©ratio'),
(179, 95, '631&lt;sup&gt;-9&lt;/sup&gt;', 0, '10&lt;sup&gt;-7&lt;/sup&gt; sâ€™Ã©crit aussi 1/10&lt;sup&gt;7&lt;/sup&gt;. Quand on multiplie un nombre dÃ©cimal par 1/10&lt;sup&gt;7&lt;/sup&gt; , cela revient donc Ã  dÃ©caler la virgule de 7 rangs vers la gauche.&lt;br/&gt;Le rÃ©sultat de lâ€™opÃ©ratio'),
(180, 95, '6,31&lt;sup&gt;-9&lt;/sup&gt;', 0, '10&lt;sup&gt;-7&lt;/sup&gt; sâ€™Ã©crit aussi 1/10&lt;sup&gt;7&lt;/sup&gt;. Quand on multiplie un nombre dÃ©cimal par 1/10&lt;sup&gt;7&lt;/sup&gt; , cela revient donc Ã  dÃ©caler la virgule de 7 rangs vers la gauche.&lt;br/&gt;Le rÃ©sultat de lâ€™opÃ©ratio'),
(181, 95, '6,31x10&lt;sup&gt;-7&lt;/sup&gt;', 1, '10&lt;sup&gt;-7&lt;/sup&gt; sâ€™Ã©crit aussi 1/10&lt;sup&gt;7&lt;/sup&gt;. Quand on multiplie un nombre dÃ©cimal par 1/10&lt;sup&gt;7&lt;/sup&gt; , cela revient donc Ã  dÃ©caler la virgule de 7 rangs vers la gauche.&lt;br/&gt;Le rÃ©sultat de lâ€™opÃ©ratio'),
(182, 96, '631 x 10&lt;sup&gt;-6&lt;/sup&gt;', 0, '10&lt;sup&gt;-7&lt;/sup&gt; sâ€™Ã©crit aussi 1/10&lt;sup&gt;7&lt;/sup&gt;. Quand on multiplie un nombre dÃ©cimal par 1/10&lt;sup&gt;7&lt;/sup&gt; , cela revient donc Ã  dÃ©caler la virgule de 7 rangs vers la gauche.&lt;br/&gt;Le rÃ©sultat de lâ€™opÃ©ratio'),
(183, 96, '631&lt;sup&gt;-9&lt;/sup&gt;', 0, '10&lt;sup&gt;-7&lt;/sup&gt; sâ€™Ã©crit aussi 1/10&lt;sup&gt;7&lt;/sup&gt;. Quand on multiplie un nombre dÃ©cimal par 1/10&lt;sup&gt;7&lt;/sup&gt; , cela revient donc Ã  dÃ©caler la virgule de 7 rangs vers la gauche.&lt;br/&gt;Le rÃ©sultat de lâ€™opÃ©ratio'),
(184, 96, '6,31&lt;sup&gt;-9&lt;/sup&gt;', 0, '10&lt;sup&gt;-7&lt;/sup&gt; sâ€™Ã©crit aussi 1/10&lt;sup&gt;7&lt;/sup&gt;. Quand on multiplie un nombre dÃ©cimal par 1/10&lt;sup&gt;7&lt;/sup&gt; , cela revient donc Ã  dÃ©caler la virgule de 7 rangs vers la gauche.&lt;br/&gt;Le rÃ©sultat de lâ€™opÃ©ratio'),
(185, 96, '6,31x10&lt;sup&gt;-7&lt;/sup&gt;', 1, '10&lt;sup&gt;-7&lt;/sup&gt; sâ€™Ã©crit aussi 1/10&lt;sup&gt;7&lt;/sup&gt;. Quand on multiplie un nombre dÃ©cimal par 1/10&lt;sup&gt;7&lt;/sup&gt; , cela revient donc Ã  dÃ©caler la virgule de 7 rangs vers la gauche.&lt;br/&gt;Le rÃ©sultat de lâ€™opÃ©ratio'),
(186, 97, '18', 0, '&lt;li&gt;Pour le choix de la 1&lt;sup&gt;Ã¨re&lt;/sup&gt; personne, il y a 20 possibilitÃ©s &lt;/li&gt;&lt;li&gt;Pour le choix de la deuxiÃ¨me personne, il nâ€™y a plus que 19 possibilitÃ©s (Ã©tant donnÃ© que quelquâ€™un occupe dÃ©jÃ  la 1ere place)&lt;/'),
(187, 97, '840', 0, '&lt;li&gt;Pour le choix de la 1&lt;sup&gt;Ã¨re&lt;/sup&gt; personne, il y a 20 possibilitÃ©s &lt;/li&gt;&lt;li&gt;Pour le choix de la deuxiÃ¨me personne, il nâ€™y a plus que 19 possibilitÃ©s (Ã©tant donnÃ© que quelquâ€™un occupe dÃ©jÃ  la 1ere place)&lt;/'),
(188, 97, '1140', 1, '&lt;li&gt;Pour le choix de la 1&lt;sup&gt;Ã¨re&lt;/sup&gt; personne, il y a 20 possibilitÃ©s &lt;/li&gt;&lt;li&gt;Pour le choix de la deuxiÃ¨me personne, il nâ€™y a plus que 19 possibilitÃ©s (Ã©tant donnÃ© que quelquâ€™un occupe dÃ©jÃ  la 1ere place)&lt;/'),
(189, 97, '6', 0, '&lt;li&gt;Pour le choix de la 1&lt;sup&gt;Ã¨re&lt;/sup&gt; personne, il y a 20 possibilitÃ©s &lt;/li&gt;&lt;li&gt;Pour le choix de la deuxiÃ¨me personne, il nâ€™y a plus que 19 possibilitÃ©s (Ã©tant donnÃ© que quelquâ€™un occupe dÃ©jÃ  la 1ere place)&lt;/'),
(190, 98, '4 cm', 1, 'Il y a 6 arÃªtes dans un tÃ©traÃ¨dre rÃ©gulier. La somme des longueurs des arÃªtes valant 24 cm, on en dÃ©duit quâ€™une arÃªte mesure 4 cm.'),
(191, 98, '6 cm', 0, 'Il y a 6 arÃªtes dans un tÃ©traÃ¨dre rÃ©gulier. La somme des longueurs des arÃªtes valant 24 cm, on en dÃ©duit quâ€™une arÃªte mesure 4 cm.'),
(192, 98, '2 cm', 0, 'Il y a 6 arÃªtes dans un tÃ©traÃ¨dre rÃ©gulier. La somme des longueurs des arÃªtes valant 24 cm, on en dÃ©duit quâ€™une arÃªte mesure 4 cm.'),
(193, 98, '8 cm', 0, 'Il y a 6 arÃªtes dans un tÃ©traÃ¨dre rÃ©gulier. La somme des longueurs des arÃªtes valant 24 cm, on en dÃ©duit quâ€™une arÃªte mesure 4 cm.'),
(194, 99, '1/3 de litre', 0, 'On cherche une contenance totale, notÃ©e &lt;i&gt;X&lt;/i&gt; de telle sorte que : 0,06/&lt;i&gt;X&lt;/i&gt; = 0,04 . Soit 6/&lt;i&gt;X&lt;/i&gt; = 4 dâ€™oÃ¹ &lt;i&gt;X&lt;/i&gt; = 1,5.&lt;br&gt;Le rÃ©sultat obtenu correspond Ã  la contenance totale.&lt;b'),
(195, 99, '0,5 litre', 1, 'On cherche une contenance totale, notÃ©e &lt;i&gt;X&lt;/i&gt; de telle sorte que : 0,06/&lt;i&gt;X&lt;/i&gt; = 0,04 . Soit 6/&lt;i&gt;X&lt;/i&gt; = 4 dâ€™oÃ¹ &lt;i&gt;X&lt;/i&gt; = 1,5.&lt;br&gt;Le rÃ©sultat obtenu correspond Ã  la contenance totale.&lt;b'),
(196, 99, '1 litre', 0, 'On cherche une contenance totale, notÃ©e &lt;i&gt;X&lt;/i&gt; de telle sorte que : 0,06/&lt;i&gt;X&lt;/i&gt; = 0,04 . Soit 6/&lt;i&gt;X&lt;/i&gt; = 4 dâ€™oÃ¹ &lt;i&gt;X&lt;/i&gt; = 1,5.&lt;br&gt;Le rÃ©sultat obtenu correspond Ã  la contenance totale.&lt;b'),
(197, 99, '1,5 litre', 0, 'On cherche une contenance totale, notÃ©e &lt;i&gt;X&lt;/i&gt; de telle sorte que : 0,06/&lt;i&gt;X&lt;/i&gt; = 0,04 . Soit 6/&lt;i&gt;X&lt;/i&gt; = 4 dâ€™oÃ¹ &lt;i&gt;X&lt;/i&gt; = 1,5.&lt;br&gt;Le rÃ©sultat obtenu correspond Ã  la contenance totale.&lt;b'),
(198, 100, '200 piÃ¨ces', 1, 'Sur la longueur totale du puzzle (300 mm), on peut placer sur chaque rangÃ©e 20 piÃ¨ces de 15 mm.&lt;br&gt;Sur la largeur du puzzle (200 mm), on peut positionner sur chaque rangÃ©e 10 piÃ¨ces de 20 mm&lt;br&gt;Au total, cela reprÃ©sente donc 20x10 = 200 p'),
(199, 100, '600 piÃ¨ces', 0, 'Sur la longueur totale du puzzle (300 mm), on peut placer sur chaque rangÃ©e 20 piÃ¨ces de 15 mm.&lt;br&gt;Sur la largeur du puzzle (200 mm), on peut positionner sur chaque rangÃ©e 10 piÃ¨ces de 20 mm&lt;br&gt;Au total, cela reprÃ©sente donc 20x10 = 200 p'),
(200, 100, '2000 piÃ¨ces', 0, 'Sur la longueur totale du puzzle (300 mm), on peut placer sur chaque rangÃ©e 20 piÃ¨ces de 15 mm.&lt;br&gt;Sur la largeur du puzzle (200 mm), on peut positionner sur chaque rangÃ©e 10 piÃ¨ces de 20 mm&lt;br&gt;Au total, cela reprÃ©sente donc 20x10 = 200 p'),
(201, 100, '150 piÃ¨ces', 0, 'Sur la longueur totale du puzzle (300 mm), on peut placer sur chaque rangÃ©e 20 piÃ¨ces de 15 mm.&lt;br&gt;Sur la largeur du puzzle (200 mm), on peut positionner sur chaque rangÃ©e 10 piÃ¨ces de 20 mm&lt;br&gt;Au total, cela reprÃ©sente donc 20x10 = 200 p'),
(202, 101, '&lt;i&gt;V''&lt;/i&gt; = &lt;i&gt;V&lt;/i&gt; / 2', 0, 'Le volume &lt;i&gt;V&lt;/i&gt; dâ€™un cube de cÃ´tÃ© &lt;i&gt;x&lt;/i&gt; correspond Ã  &lt;i&gt;x&lt;/i&gt;&lt;sup&gt;3&lt;/sup&gt;.&lt;br/&gt;Pour un cube de cÃ´tÃ© &lt;i&gt;x&lt;/i&gt;/2, le volume &lt;i&gt;V''&lt;/i&gt; vaut &lt;i&gt;x&lt;/i&gt;&lt;sup'),
(203, 101, '&lt;i&gt;V''&lt;/i&gt; = &lt;i&gt;V&lt;/i&gt; / 4', 0, 'Le volume &lt;i&gt;V&lt;/i&gt; dâ€™un cube de cÃ´tÃ© &lt;i&gt;x&lt;/i&gt; correspond Ã  &lt;i&gt;x&lt;/i&gt;&lt;sup&gt;3&lt;/sup&gt;.&lt;br/&gt;Pour un cube de cÃ´tÃ© &lt;i&gt;x&lt;/i&gt;/2, le volume &lt;i&gt;V''&lt;/i&gt; vaut &lt;i&gt;x&lt;/i&gt;&lt;sup'),
(204, 101, '&lt;i&gt;V''&lt;/i&gt; = &lt;i&gt;V&lt;/i&gt; / 8', 1, 'Le volume &lt;i&gt;V&lt;/i&gt; dâ€™un cube de cÃ´tÃ© &lt;i&gt;x&lt;/i&gt; correspond Ã  &lt;i&gt;x&lt;/i&gt;&lt;sup&gt;3&lt;/sup&gt;.&lt;br/&gt;Pour un cube de cÃ´tÃ© &lt;i&gt;x&lt;/i&gt;/2, le volume &lt;i&gt;V''&lt;/i&gt; vaut &lt;i&gt;x&lt;/i&gt;&lt;sup'),
(205, 101, '&lt;i&gt;V''&lt;/i&gt; = &lt;i&gt;V&lt;/i&gt; / 16', 0, 'Le volume &lt;i&gt;V&lt;/i&gt; dâ€™un cube de cÃ´tÃ© &lt;i&gt;x&lt;/i&gt; correspond Ã  &lt;i&gt;x&lt;/i&gt;&lt;sup&gt;3&lt;/sup&gt;.&lt;br/&gt;Pour un cube de cÃ´tÃ© &lt;i&gt;x&lt;/i&gt;/2, le volume &lt;i&gt;V''&lt;/i&gt; vaut &lt;i&gt;x&lt;/i&gt;&lt;sup'),
(206, 102, '4', 1, 'Ce qui dÃ©termine le nombre de zÃ©ros par lequel se termine le produit de lâ€™opÃ©ration, câ€™est le nombre de fois oÃ¹ le facteur 10 va apparaitre dans lâ€™expression. Dans 1x2x3x4x5x6x7x â€¦ x20, il apparait bien entendu tel quel 1 fois mais aussi dans '),
(207, 102, '2', 0, 'Ce qui dÃ©termine le nombre de zÃ©ros par lequel se termine le produit de lâ€™opÃ©ration, câ€™est le nombre de fois oÃ¹ le facteur 10 va apparaitre dans lâ€™expression. Dans 1x2x3x4x5x6x7x â€¦ x20, il apparait bien entendu tel quel 1 fois mais aussi dans '),
(208, 102, '3', 0, 'Ce qui dÃ©termine le nombre de zÃ©ros par lequel se termine le produit de lâ€™opÃ©ration, câ€™est le nombre de fois oÃ¹ le facteur 10 va apparaitre dans lâ€™expression. Dans 1x2x3x4x5x6x7x â€¦ x20, il apparait bien entendu tel quel 1 fois mais aussi dans '),
(209, 102, '8', 0, 'Ce qui dÃ©termine le nombre de zÃ©ros par lequel se termine le produit de lâ€™opÃ©ration, câ€™est le nombre de fois oÃ¹ le facteur 10 va apparaitre dans lâ€™expression. Dans 1x2x3x4x5x6x7x â€¦ x20, il apparait bien entendu tel quel 1 fois mais aussi dans '),
(210, 103, '60 gÃ¢teaux', 1, 'Pour Ã©viter de rÃ©soudre lâ€™Ã©quation, tester les rÃ©ponses peut se rÃ©vÃ©ler plus rapide. Pour cela, il faut mieux choisir une valeur facile Ã  manier au niveau des calculs. La plus facile parmi celles proposÃ©es est 60.&lt;br/&gt;Si on achÃ¨te 60 gÃ¢t'),
(211, 103, '210 gÃ¢teaux', 0, 'Pour Ã©viter de rÃ©soudre lâ€™Ã©quation, tester les rÃ©ponses peut se rÃ©vÃ©ler plus rapide. Pour cela, il faut mieux choisir une valeur facile Ã  manier au niveau des calculs. La plus facile parmi celles proposÃ©es est 60.&lt;br/&gt;Si on achÃ¨te 60 gÃ¢t');
INSERT INTO `reponses` (`ID`, `idQuestion`, `ennonceReponse`, `resultatReponse`, `correctionReponse`) VALUES
(212, 103, '42 gÃ¢teaux', 0, 'Pour Ã©viter de rÃ©soudre lâ€™Ã©quation, tester les rÃ©ponses peut se rÃ©vÃ©ler plus rapide. Pour cela, il faut mieux choisir une valeur facile Ã  manier au niveau des calculs. La plus facile parmi celles proposÃ©es est 60.&lt;br/&gt;Si on achÃ¨te 60 gÃ¢t'),
(213, 103, '21 gÃ¢teaux', 0, 'Pour Ã©viter de rÃ©soudre lâ€™Ã©quation, tester les rÃ©ponses peut se rÃ©vÃ©ler plus rapide. Pour cela, il faut mieux choisir une valeur facile Ã  manier au niveau des calculs. La plus facile parmi celles proposÃ©es est 60.&lt;br/&gt;Si on achÃ¨te 60 gÃ¢t'),
(214, 104, '90 cm', 0, '&lt;li&gt;Au 1&lt;sup&gt;er&lt;/sup&gt; rebond, la ballle a atteint une hauteur de 90 cm&lt;/LI&gt;&lt;li&gt;Au 2&lt;sup&gt;Ã¨me&lt;/sup&gt; rebond, elle a atteint une hauteur de 90 â€“ 9 = 81 cm&lt;/li&gt;&lt;li&gt;Au 3&lt;sup&gt;Ã¨me&lt;/sup&gt; rebond '),
(215, 104, '65,7 cm', 0, '&lt;li&gt;Au 1&lt;sup&gt;er&lt;/sup&gt; rebond, la ballle a atteint une hauteur de 90 cm&lt;/LI&gt;&lt;li&gt;Au 2&lt;sup&gt;Ã¨me&lt;/sup&gt; rebond, elle a atteint une hauteur de 90 â€“ 9 = 81 cm&lt;/li&gt;&lt;li&gt;Au 3&lt;sup&gt;Ã¨me&lt;/sup&gt; rebond '),
(216, 104, '81 cm', 0, '&lt;li&gt;Au 1&lt;sup&gt;er&lt;/sup&gt; rebond, la ballle a atteint une hauteur de 90 cm&lt;/LI&gt;&lt;li&gt;Au 2&lt;sup&gt;Ã¨me&lt;/sup&gt; rebond, elle a atteint une hauteur de 90 â€“ 9 = 81 cm&lt;/li&gt;&lt;li&gt;Au 3&lt;sup&gt;Ã¨me&lt;/sup&gt; rebond '),
(217, 104, '72,9 cm', 1, '&lt;li&gt;Au 1&lt;sup&gt;er&lt;/sup&gt; rebond, la ballle a atteint une hauteur de 90 cm&lt;/LI&gt;&lt;li&gt;Au 2&lt;sup&gt;Ã¨me&lt;/sup&gt; rebond, elle a atteint une hauteur de 90 â€“ 9 = 81 cm&lt;/li&gt;&lt;li&gt;Au 3&lt;sup&gt;Ã¨me&lt;/sup&gt; rebond '),
(218, 105, '8', 0, '5&lt;sup&gt;8&lt;/sup&gt;x2&lt;sup&gt;8&lt;/sup&gt; =10&lt;sup&gt;8&lt;/sup&gt; soit un rÃ©sultat Ã  9 chiffres'),
(219, 105, '9', 1, '5&lt;sup&gt;8&lt;/sup&gt;x2&lt;sup&gt;8&lt;/sup&gt; =10&lt;sup&gt;8&lt;/sup&gt; soit un rÃ©sultat Ã  9 chiffres'),
(220, 105, '16', 0, '5&lt;sup&gt;8&lt;/sup&gt;x2&lt;sup&gt;8&lt;/sup&gt; =10&lt;sup&gt;8&lt;/sup&gt; soit un rÃ©sultat Ã  9 chiffres'),
(221, 105, '17', 0, '5&lt;sup&gt;8&lt;/sup&gt;x2&lt;sup&gt;8&lt;/sup&gt; =10&lt;sup&gt;8&lt;/sup&gt; soit un rÃ©sultat Ã  9 chiffres'),
(222, 106, '2763,20 &amp;euro;uros', 1, 'Lâ€™aire dâ€™un cercle de rayon R = &amp;pi;R&lt;sup&gt;2&lt;/sup&gt;.&lt;br/&gt;La superficie de la bande de gazon = la superficie du plus grand cercle â€“ la superficie du cercle blanc (terrain de jeux).&lt;br/&gt;&lt;u&gt;Superficie du plus grand cercl'),
(223, 106, '2000,00 &amp;euro;uros', 0, 'Lâ€™aire dâ€™un cercle de rayon R = &amp;pi;R&lt;sup&gt;2&lt;/sup&gt;.&lt;br/&gt;La superficie de la bande de gazon = la superficie du plus grand cercle â€“ la superficie du cercle blanc (terrain de jeux).&lt;br/&gt;&lt;u&gt;Superficie du plus grand cercl'),
(224, 106, '1063,20 &amp;euro;uros', 0, 'Lâ€™aire dâ€™un cercle de rayon R = &amp;pi;R&lt;sup&gt;2&lt;/sup&gt;.&lt;br/&gt;La superficie de la bande de gazon = la superficie du plus grand cercle â€“ la superficie du cercle blanc (terrain de jeux).&lt;br/&gt;&lt;u&gt;Superficie du plus grand cercl'),
(225, 106, '5203,20 &amp;euro;uros', 0, 'Lâ€™aire dâ€™un cercle de rayon R = &amp;pi;R&lt;sup&gt;2&lt;/sup&gt;.&lt;br/&gt;La superficie de la bande de gazon = la superficie du plus grand cercle â€“ la superficie du cercle blanc (terrain de jeux).&lt;br/&gt;&lt;u&gt;Superficie du plus grand cercl'),
(226, 107, '0,44', 1, 'Lâ€™aire dâ€™un rectangle = Longueur x Largeur&lt;br/&gt;Si les dimensions augmentent de 20 %, elles sont multipliÃ©es par 1,2.&lt;br/&gt;Dâ€™une superficie de dÃ©part notÃ©e Lxl on passe Ã  1,2 Lx1,2 l soit 1,44 Lxl.&lt;br/&gt;La surface a donc Ã©tÃ© mul'),
(227, 107, '0,4', 0, 'Lâ€™aire dâ€™un rectangle = Longueur x Largeur&lt;br/&gt;Si les dimensions augmentent de 20 %, elles sont multipliÃ©es par 1,2.&lt;br/&gt;Dâ€™une superficie de dÃ©part notÃ©e Lxl on passe Ã  1,2 Lx1,2 l soit 1,44 Lxl.&lt;br/&gt;La surface a donc Ã©tÃ© mul'),
(228, 107, '0,2', 0, 'Lâ€™aire dâ€™un rectangle = Longueur x Largeur&lt;br/&gt;Si les dimensions augmentent de 20 %, elles sont multipliÃ©es par 1,2.&lt;br/&gt;Dâ€™une superficie de dÃ©part notÃ©e Lxl on passe Ã  1,2 Lx1,2 l soit 1,44 Lxl.&lt;br/&gt;La surface a donc Ã©tÃ© mul'),
(229, 107, '0,22', 0, 'Lâ€™aire dâ€™un rectangle = Longueur x Largeur&lt;br/&gt;Si les dimensions augmentent de 20 %, elles sont multipliÃ©es par 1,2.&lt;br/&gt;Dâ€™une superficie de dÃ©part notÃ©e Lxl on passe Ã  1,2 Lx1,2 l soit 1,44 Lxl.&lt;br/&gt;La surface a donc Ã©tÃ© mul'),
(230, 108, '-&amp;nbsp;&lt;sup&gt;17&lt;/sup&gt;&amp;frasl;&lt;sub&gt;36&lt;/sub&gt;', 0, '&lt;li&gt;Le carrÃ© du double de &lt;sup&gt;2&lt;/sup&gt;&amp;frasl;&lt;sub&gt;3&lt;/sub&gt; = &lt;sup&gt;4&lt;/sup&gt;&amp;frasl;&lt;sub&gt;3&lt;/sub&gt; x &lt;sup&gt;4&lt;/sup&gt;&amp;frasl;&lt;sub&gt;3&lt;/sub&gt; = &lt;sup&gt;16&lt;/sup&gt;&amp;frasl;'),
(231, 108, '&lt;sup&gt;113&lt;/sup&gt;&amp;frasl;&lt;sub&gt;36&lt;/sub&gt;', 0, '&lt;li&gt;Le carrÃ© du double de &lt;sup&gt;2&lt;/sup&gt;&amp;frasl;&lt;sub&gt;3&lt;/sub&gt; = &lt;sup&gt;4&lt;/sup&gt;&amp;frasl;&lt;sub&gt;3&lt;/sub&gt; x &lt;sup&gt;4&lt;/sup&gt;&amp;frasl;&lt;sub&gt;3&lt;/sub&gt; = &lt;sup&gt;16&lt;/sup&gt;&amp;frasl;'),
(232, 108, '-&amp;nbsp;&lt;sup&gt;49&lt;/sup&gt;&amp;frasl;&lt;sub&gt;36&lt;/sub&gt;', 0, '&lt;li&gt;Le carrÃ© du double de &lt;sup&gt;2&lt;/sup&gt;&amp;frasl;&lt;sub&gt;3&lt;/sub&gt; = &lt;sup&gt;4&lt;/sup&gt;&amp;frasl;&lt;sub&gt;3&lt;/sub&gt; x &lt;sup&gt;4&lt;/sup&gt;&amp;frasl;&lt;sub&gt;3&lt;/sub&gt; = &lt;sup&gt;16&lt;/sup&gt;&amp;frasl;'),
(233, 108, '&lt;sup&gt;145&lt;/sup&gt;&amp;frasl;&lt;sub&gt;36&lt;/sub&gt;', 1, '&lt;li&gt;Le carrÃ© du double de &lt;sup&gt;2&lt;/sup&gt;&amp;frasl;&lt;sub&gt;3&lt;/sub&gt; = &lt;sup&gt;4&lt;/sup&gt;&amp;frasl;&lt;sub&gt;3&lt;/sub&gt; x &lt;sup&gt;4&lt;/sup&gt;&amp;frasl;&lt;sub&gt;3&lt;/sub&gt; = &lt;sup&gt;16&lt;/sup&gt;&amp;frasl;'),
(234, 109, 'a augmentÃ© de 0,5 %', 0, 'En raisonnant Ã  partir dâ€™une base 100 pour faciliter les calculs, il y a en 2004 : &lt;br/&gt;50 vols vers lâ€™Europe et 50 vols vers les CaraÃ¯bes. &lt;br/&gt;Entre 2004 et 2005, le nombre total de vols a baissÃ© de 10 % . Il y a donc au total 90 vols'),
(235, 109, 'est restÃ© le mÃªme', 0, 'En raisonnant Ã  partir dâ€™une base 100 pour faciliter les calculs, il y a en 2004 : &lt;br/&gt;50 vols vers lâ€™Europe et 50 vols vers les CaraÃ¯bes. &lt;br/&gt;Entre 2004 et 2005, le nombre total de vols a baissÃ© de 10 % . Il y a donc au total 90 vols'),
(236, 109, 'a baissÃ© de 0,5 %', 0, 'En raisonnant Ã  partir dâ€™une base 100 pour faciliter les calculs, il y a en 2004 : &lt;br/&gt;50 vols vers lâ€™Europe et 50 vols vers les CaraÃ¯bes. &lt;br/&gt;Entre 2004 et 2005, le nombre total de vols a baissÃ© de 10 % . Il y a donc au total 90 vols'),
(237, 109, 'a baissÃ© de 1 %', 1, 'En raisonnant Ã  partir dâ€™une base 100 pour faciliter les calculs, il y a en 2004 : &lt;br/&gt;50 vols vers lâ€™Europe et 50 vols vers les CaraÃ¯bes. &lt;br/&gt;Entre 2004 et 2005, le nombre total de vols a baissÃ© de 10 % . Il y a donc au total 90 vols'),
(238, 110, 'aucune carte', 0, 'Cette question fait rÃ©fÃ©rence au critÃ¨re de divisibilitÃ© par 4.&lt;br/&gt;Pour savoir si 415679 est divisible par 4, soit vous faÃ®tes la division Â« Ã  la main Â» et le reste de lâ€™opÃ©ration correspondra Ã  la bonne rÃ©ponse, soit vous choisissez u'),
(239, 110, '1 carte', 0, 'Cette question fait rÃ©fÃ©rence au critÃ¨re de divisibilitÃ© par 4.&lt;br/&gt;Pour savoir si 415679 est divisible par 4, soit vous faÃ®tes la division Â« Ã  la main Â» et le reste de lâ€™opÃ©ration correspondra Ã  la bonne rÃ©ponse, soit vous choisissez u'),
(240, 110, '2 cartes', 0, 'Cette question fait rÃ©fÃ©rence au critÃ¨re de divisibilitÃ© par 4.&lt;br/&gt;Pour savoir si 415679 est divisible par 4, soit vous faÃ®tes la division Â« Ã  la main Â» et le reste de lâ€™opÃ©ration correspondra Ã  la bonne rÃ©ponse, soit vous choisissez u'),
(241, 110, '3 cartes', 1, 'Cette question fait rÃ©fÃ©rence au critÃ¨re de divisibilitÃ© par 4.&lt;br/&gt;Pour savoir si 415679 est divisible par 4, soit vous faÃ®tes la division Â« Ã  la main Â» et le reste de lâ€™opÃ©ration correspondra Ã  la bonne rÃ©ponse, soit vous choisissez u'),
(242, 111, '24 minutes', 0, 'Inutile de faire trop de calculs.&lt;br/&gt; Un bateau met 2 heures pour faire la traversÃ©e.&lt;br/&gt;Quel que soit le nombre de bateaux au dÃ©part, Ã©tant donnÃ© quâ€™ils partent au mÃªme moment et ont la mÃªme vitesse ils mettront aussi 2 heures.'),
(243, 111, '2 heures', 1, 'Inutile de faire trop de calculs.&lt;br/&gt; Un bateau met 2 heures pour faire la traversÃ©e.&lt;br/&gt;Quel que soit le nombre de bateaux au dÃ©part, Ã©tant donnÃ© quâ€™ils partent au mÃªme moment et ont la mÃªme vitesse ils mettront aussi 2 heures.'),
(244, 111, '2 heures et 40 minutes', 0, 'Inutile de faire trop de calculs.&lt;br/&gt; Un bateau met 2 heures pour faire la traversÃ©e.&lt;br/&gt;Quel que soit le nombre de bateaux au dÃ©part, Ã©tant donnÃ© quâ€™ils partent au mÃªme moment et ont la mÃªme vitesse ils mettront aussi 2 heures.'),
(245, 111, '10 heures', 0, 'Inutile de faire trop de calculs.&lt;br/&gt; Un bateau met 2 heures pour faire la traversÃ©e.&lt;br/&gt;Quel que soit le nombre de bateaux au dÃ©part, Ã©tant donnÃ© quâ€™ils partent au mÃªme moment et ont la mÃªme vitesse ils mettront aussi 2 heures.'),
(246, 112, '11,30 &amp;euro;', 0, 'La surface de ce cylindre est donnÃ©e par la formule suivante : 2&amp;pi;R x H oÃ¹ R correspond au rayon et H Ã  la hauteur. Il sâ€™agit de la surface latÃ©rale sans les bases, puisque le cylindre est creux.&lt;br/&gt;Surface = 2 x 10 x &amp;pi; x 60= 120'),
(247, 112, '21,60 &amp;euro;', 0, 'La surface de ce cylindre est donnÃ©e par la formule suivante : 2&amp;pi;R x H oÃ¹ R correspond au rayon et H Ã  la hauteur. Il sâ€™agit de la surface latÃ©rale sans les bases, puisque le cylindre est creux.&lt;br/&gt;Surface = 2 x 10 x &amp;pi; x 60= 120'),
(248, 112, '36,00 &amp;euro;', 0, 'La surface de ce cylindre est donnÃ©e par la formule suivante : 2&amp;pi;R x H oÃ¹ R correspond au rayon et H Ã  la hauteur. Il sâ€™agit de la surface latÃ©rale sans les bases, puisque le cylindre est creux.&lt;br/&gt;Surface = 2 x 10 x &amp;pi; x 60= 120'),
(249, 112, '113,04 &amp;euro;', 1, 'La surface de ce cylindre est donnÃ©e par la formule suivante : 2&amp;pi;R x H oÃ¹ R correspond au rayon et H Ã  la hauteur. Il sâ€™agit de la surface latÃ©rale sans les bases, puisque le cylindre est creux.&lt;br/&gt;Surface = 2 x 10 x &amp;pi; x 60= 120'),
(250, 113, '300&lt;sup&gt;2&lt;/sup&gt;', 0, '&lt;i&gt;x&gt;&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt;-9x10&lt;sup&gt;4&lt;/sup&gt; = 0 s''Ã©crit aussi &lt;i&gt;x&gt;&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; = 90 000 d''oÃ¹ &lt;i&gt;x&lt;/i&gt; = 300 Ã©quivalent de 3x10&lt;sup&gt;2&lt;/sup&gt;. Il s''agit bien d''une d'),
(251, 113, '3x10&lt;sup&gt;2&lt;/sup&gt;', 1, '&lt;i&gt;x&gt;&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt;-9x10&lt;sup&gt;4&lt;/sup&gt; = 0 s''Ã©crit aussi &lt;i&gt;x&gt;&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; = 90 000 d''oÃ¹ &lt;i&gt;x&lt;/i&gt; = 300 Ã©quivalent de 3x10&lt;sup&gt;2&lt;/sup&gt;. Il s''agit bien d''une d'),
(252, 113, '-&amp;nbsp;3x10&lt;sup&gt;4&lt;/sup&gt;', 0, '&lt;i&gt;x&gt;&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt;-9x10&lt;sup&gt;4&lt;/sup&gt; = 0 s''Ã©crit aussi &lt;i&gt;x&gt;&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; = 90 000 d''oÃ¹ &lt;i&gt;x&lt;/i&gt; = 300 Ã©quivalent de 3x10&lt;sup&gt;2&lt;/sup&gt;. Il s''agit bien d''une d'),
(253, 113, '&lt;sup&gt;9&lt;/sup&gt;&amp;frasl;&lt;sub&gt;2&lt;/sub&gt;x10&lt;sup&gt;4&lt;/sup&gt;', 0, '&lt;i&gt;x&gt;&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt;-9x10&lt;sup&gt;4&lt;/sup&gt; = 0 s''Ã©crit aussi &lt;i&gt;x&gt;&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; = 90 000 d''oÃ¹ &lt;i&gt;x&lt;/i&gt; = 300 Ã©quivalent de 3x10&lt;sup&gt;2&lt;/sup&gt;. Il s''agit bien d''une d'),
(254, 114, '0,6 gramme', 1, 'La rÃ¨gle de proportionnalitÃ© se schÃ©matise de la faÃ§on suivante : &lt;br/&gt;&lt;center&gt;&lt;img src=&quot;diamants.png&quot;&gt;&lt;/center&gt;'),
(255, 114, '0,81 gramme', 0, 'La rÃ¨gle de proportionnalitÃ© se schÃ©matise de la faÃ§on suivante : &lt;br/&gt;&lt;center&gt;&lt;img src=&quot;diamants.png&quot;&gt;&lt;/center&gt;'),
(256, 114, '0,9 gramme', 0, 'La rÃ¨gle de proportionnalitÃ© se schÃ©matise de la faÃ§on suivante : &lt;br/&gt;&lt;center&gt;&lt;img src=&quot;diamants.png&quot;&gt;&lt;/center&gt;'),
(257, 114, '2,05 grammes', 0, 'La rÃ¨gle de proportionnalitÃ© se schÃ©matise de la faÃ§on suivante : &lt;br/&gt;&lt;center&gt;&lt;img src=&quot;diamants.png&quot;&gt;&lt;/center&gt;'),
(258, 115, '24 cm', 0, 'Le volume dâ€™un cylindre = &amp;pi; RÂ² x h oÃ¹ R correspond au rayon et &lt;i&gt;h&lt;/i&gt; Ã  la hauteur.&lt;br/&gt;On a transfÃ©rÃ© lâ€™eau du 1&lt;up&gt;er&lt;/sup&gt; bidon au 2&lt;sup&gt;nd&lt;/sup&gt; bidon. Le volume dâ€™eau est donc restÃ© iden'),
(259, 115, '36 cm', 0, 'Le volume dâ€™un cylindre = &amp;pi; RÂ² x h oÃ¹ R correspond au rayon et &lt;i&gt;h&lt;/i&gt; Ã  la hauteur.&lt;br/&gt;On a transfÃ©rÃ© lâ€™eau du 1&lt;up&gt;er&lt;/sup&gt; bidon au 2&lt;sup&gt;nd&lt;/sup&gt; bidon. Le volume dâ€™eau est donc restÃ© iden'),
(260, 115, '48 cm', 1, 'Le volume dâ€™un cylindre = &amp;pi; RÂ² x h oÃ¹ R correspond au rayon et &lt;i&gt;h&lt;/i&gt; Ã  la hauteur.&lt;br/&gt;On a transfÃ©rÃ© lâ€™eau du 1&lt;up&gt;er&lt;/sup&gt; bidon au 2&lt;sup&gt;nd&lt;/sup&gt; bidon. Le volume dâ€™eau est donc restÃ© iden'),
(261, 115, '60 cm', 0, 'Le volume dâ€™un cylindre = &amp;pi; RÂ² x h oÃ¹ R correspond au rayon et &lt;i&gt;h&lt;/i&gt; Ã  la hauteur.&lt;br/&gt;On a transfÃ©rÃ© lâ€™eau du 1&lt;up&gt;er&lt;/sup&gt; bidon au 2&lt;sup&gt;nd&lt;/sup&gt; bidon. Le volume dâ€™eau est donc restÃ© iden'),
(262, 116, '7,7 cm', 0, 'La superficie dâ€™un cercle est donnÃ©e par la formule 2&amp;pi;RÂ². La superficie vaut 314cmÂ², ce qui signifie que 2&amp;pi;Â² vaut 100 soit R =10.&lt;br/&gt;Le cÃ´tÃ© du carrÃ© vaut 2x10 = 20. La diagonale dâ€™un carrÃ© de cÃ´tÃ© &lt;i&gt;c&lt;/i&gt; e'),
(263, 116, '14,14 cm', 0, 'La superficie dâ€™un cercle est donnÃ©e par la formule 2&amp;pi;RÂ². La superficie vaut 314cmÂ², ce qui signifie que 2&amp;pi;Â² vaut 100 soit R =10.&lt;br/&gt;Le cÃ´tÃ© du carrÃ© vaut 2x10 = 20. La diagonale dâ€™un carrÃ© de cÃ´tÃ© &lt;i&gt;c&lt;/i&gt; e'),
(264, 116, '28,28 cm', 1, 'La superficie dâ€™un cercle est donnÃ©e par la formule 2&amp;pi;RÂ². La superficie vaut 314cmÂ², ce qui signifie que 2&amp;pi;Â² vaut 100 soit R =10.&lt;br/&gt;Le cÃ´tÃ© du carrÃ© vaut 2x10 = 20. La diagonale dâ€™un carrÃ© de cÃ´tÃ© &lt;i&gt;c&lt;/i&gt; e'),
(265, 116, '36,36 cm', 0, 'La superficie dâ€™un cercle est donnÃ©e par la formule 2&amp;pi;RÂ². La superficie vaut 314cmÂ², ce qui signifie que 2&amp;pi;Â² vaut 100 soit R =10.&lt;br/&gt;Le cÃ´tÃ© du carrÃ© vaut 2x10 = 20. La diagonale dâ€™un carrÃ© de cÃ´tÃ© &lt;i&gt;c&lt;/i&gt; e'),
(266, 117, '4 annÃ©es', 0, 'Augmenter de 100 % signifie doubler.&lt;br/&gt;On cherche donc un nombre dâ€™annÃ©es, notÃ© &lt;i&gt;n&lt;/i&gt; de telle sorte que 20 x 2&lt;sup&gt;&lt;i&gt;n&lt;/i&gt;&lt;/sup&gt; &gt; 900, soit 2&lt;sup&gt;&lt;i&gt;n&lt;/i&gt;&lt;/sup&gt; &gt; 45 dâ€™o'),
(267, 117, '5 annÃ©es', 0, 'Augmenter de 100 % signifie doubler.&lt;br/&gt;On cherche donc un nombre dâ€™annÃ©es, notÃ© &lt;i&gt;n&lt;/i&gt; de telle sorte que 20 x 2&lt;sup&gt;&lt;i&gt;n&lt;/i&gt;&lt;/sup&gt; &gt; 900, soit 2&lt;sup&gt;&lt;i&gt;n&lt;/i&gt;&lt;/sup&gt; &gt; 45 dâ€™o'),
(268, 117, '6 annÃ©es', 1, 'Augmenter de 100 % signifie doubler.&lt;br/&gt;On cherche donc un nombre dâ€™annÃ©es, notÃ© &lt;i&gt;n&lt;/i&gt; de telle sorte que 20 x 2&lt;sup&gt;&lt;i&gt;n&lt;/i&gt;&lt;/sup&gt; &gt; 900, soit 2&lt;sup&gt;&lt;i&gt;n&lt;/i&gt;&lt;/sup&gt; &gt; 45 dâ€™o'),
(269, 117, '7 annÃ©es', 0, 'Augmenter de 100 % signifie doubler.&lt;br/&gt;On cherche donc un nombre dâ€™annÃ©es, notÃ© &lt;i&gt;n&lt;/i&gt; de telle sorte que 20 x 2&lt;sup&gt;&lt;i&gt;n&lt;/i&gt;&lt;/sup&gt; &gt; 900, soit 2&lt;sup&gt;&lt;i&gt;n&lt;/i&gt;&lt;/sup&gt; &gt; 45 dâ€™o'),
(270, 118, '440', 1, 'Sur la pÃ©riode de mai 2003 Ã  mai 2005, il y a eu deux hivers dont un seul rigoureux. La colonie de pingouins a donc diminue de 20 %, ce qui lâ€™a ramenÃ© Ã  un nombre de 400 et lâ€™hiver suivant, le nombre a augmentÃ© de 10 % soit 440 pingouins au total'),
(271, 118, '450', 0, 'Sur la pÃ©riode de mai 2003 Ã  mai 2005, il y a eu deux hivers dont un seul rigoureux. La colonie de pingouins a donc diminue de 20 %, ce qui lâ€™a ramenÃ© Ã  un nombre de 400 et lâ€™hiver suivant, le nombre a augmentÃ© de 10 % soit 440 pingouins au total'),
(272, 118, '490', 0, 'Sur la pÃ©riode de mai 2003 Ã  mai 2005, il y a eu deux hivers dont un seul rigoureux. La colonie de pingouins a donc diminue de 20 %, ce qui lâ€™a ramenÃ© Ã  un nombre de 400 et lâ€™hiver suivant, le nombre a augmentÃ© de 10 % soit 440 pingouins au total'),
(273, 118, '550', 0, 'Sur la pÃ©riode de mai 2003 Ã  mai 2005, il y a eu deux hivers dont un seul rigoureux. La colonie de pingouins a donc diminue de 20 %, ce qui lâ€™a ramenÃ© Ã  un nombre de 400 et lâ€™hiver suivant, le nombre a augmentÃ© de 10 % soit 440 pingouins au total'),
(274, 119, '14 jours', 0, 'La quantitÃ© totale dâ€™eau disponible restant identique, si le nombre de maisons augmente alors cela signifie que le nombre de jours devra diminuer (cas de proportion inverse).&lt;br/&gt;Soit le calcul suivant : 200 x &lt;sup&gt;12&lt;/sup&gt;&amp;frasl;'),
(275, 119, '15 jours', 0, 'La quantitÃ© totale dâ€™eau disponible restant identique, si le nombre de maisons augmente alors cela signifie que le nombre de jours devra diminuer (cas de proportion inverse).&lt;br/&gt;Soit le calcul suivant : 200 x &lt;sup&gt;12&lt;/sup&gt;&amp;frasl;'),
(276, 119, '10 jours', 1, 'La quantitÃ© totale dâ€™eau disponible restant identique, si le nombre de maisons augmente alors cela signifie que le nombre de jours devra diminuer (cas de proportion inverse).&lt;br/&gt;Soit le calcul suivant : 200 x &lt;sup&gt;12&lt;/sup&gt;&amp;frasl;'),
(277, 119, '11 jours', 0, 'La quantitÃ© totale dâ€™eau disponible restant identique, si le nombre de maisons augmente alors cela signifie que le nombre de jours devra diminuer (cas de proportion inverse).&lt;br/&gt;Soit le calcul suivant : 200 x &lt;sup&gt;12&lt;/sup&gt;&amp;frasl;'),
(278, 120, '7 jours', 0, 'Le dernier jour de son ascension, lâ€™escargot monte de 3 m. Il aura du, au prÃ©alable, parcourir 10-3 = 7 mÃ¨tres.&lt;br/&gt;Il monte 1 mÃ¨tre par jour, il lui faudra donc 7 jours et le 8Ã¨me jour, il va faire ses 3 mÃ¨tres de montÃ©e, il ne descendra pl'),
(279, 120, '8 jours', 1, 'Le dernier jour de son ascension, lâ€™escargot monte de 3 m. Il aura du, au prÃ©alable, parcourir 10-3 = 7 mÃ¨tres.&lt;br/&gt;Il monte 1 mÃ¨tre par jour, il lui faudra donc 7 jours et le 8Ã¨me jour, il va faire ses 3 mÃ¨tres de montÃ©e, il ne descendra pl'),
(280, 120, '9 jours', 0, 'Le dernier jour de son ascension, lâ€™escargot monte de 3 m. Il aura du, au prÃ©alable, parcourir 10-3 = 7 mÃ¨tres.&lt;br/&gt;Il monte 1 mÃ¨tre par jour, il lui faudra donc 7 jours et le 8Ã¨me jour, il va faire ses 3 mÃ¨tres de montÃ©e, il ne descendra pl'),
(281, 120, '10 jours', 0, 'Le dernier jour de son ascension, lâ€™escargot monte de 3 m. Il aura du, au prÃ©alable, parcourir 10-3 = 7 mÃ¨tres.&lt;br/&gt;Il monte 1 mÃ¨tre par jour, il lui faudra donc 7 jours et le 8Ã¨me jour, il va faire ses 3 mÃ¨tres de montÃ©e, il ne descendra pl'),
(282, 121, '20 nuits', 0, 'Soit &lt;i&gt;x&lt;/i&gt; le nombre de nuits, on a lâ€™inÃ©quation suivante 500 + 150&lt;i&gt;x&lt;/i&gt; &lt; 200&lt;i&gt;x&lt;/i&gt;&lt;br/&gt;500 &lt; 50&lt;i&gt;x&lt;/i&gt; soit 10 &lt; &lt;i&gt;x&lt;/i&gt;&lt;br/&gt;&lt;i&gt;En testant les rÃ©ponses,'),
(283, 121, '30 nuits', 0, 'Soit &lt;i&gt;x&lt;/i&gt; le nombre de nuits, on a lâ€™inÃ©quation suivante 500 + 150&lt;i&gt;x&lt;/i&gt; &lt; 200&lt;i&gt;x&lt;/i&gt;&lt;br/&gt;500 &lt; 50&lt;i&gt;x&lt;/i&gt; soit 10 &lt; &lt;i&gt;x&lt;/i&gt;&lt;br/&gt;&lt;i&gt;En testant les rÃ©ponses,'),
(284, 121, '5 nuits', 0, 'Soit &lt;i&gt;x&lt;/i&gt; le nombre de nuits, on a lâ€™inÃ©quation suivante 500 + 150&lt;i&gt;x&lt;/i&gt; &lt; 200&lt;i&gt;x&lt;/i&gt;&lt;br/&gt;500 &lt; 50&lt;i&gt;x&lt;/i&gt; soit 10 &lt; &lt;i&gt;x&lt;/i&gt;&lt;br/&gt;&lt;i&gt;En testant les rÃ©ponses,'),
(285, 121, '10 nuits', 1, 'Soit &lt;i&gt;x&lt;/i&gt; le nombre de nuits, on a lâ€™inÃ©quation suivante 500 + 150&lt;i&gt;x&lt;/i&gt; &lt; 200&lt;i&gt;x&lt;/i&gt;&lt;br/&gt;500 &lt; 50&lt;i&gt;x&lt;/i&gt; soit 10 &lt; &lt;i&gt;x&lt;/i&gt;&lt;br/&gt;&lt;i&gt;En testant les rÃ©ponses,'),
(286, 122, '1', 0, 'Certaines rÃ©ponses pouvaient Ãªtre rapidement Ã©cartÃ©es.&lt;br/&gt;Pour une rÃ©solution Â« rigoureuse Â», il existe la formule suivante :&lt;br/&gt;Pour Ã©viter de compter les carrÃ©s un par un (au risque dâ€™en oublier certains), il est prÃ©fÃ©rable dâ'),
(287, 122, '16', 0, 'Certaines rÃ©ponses pouvaient Ãªtre rapidement Ã©cartÃ©es.&lt;br/&gt;Pour une rÃ©solution Â« rigoureuse Â», il existe la formule suivante :&lt;br/&gt;Pour Ã©viter de compter les carrÃ©s un par un (au risque dâ€™en oublier certains), il est prÃ©fÃ©rable dâ'),
(288, 122, '17', 0, 'Certaines rÃ©ponses pouvaient Ãªtre rapidement Ã©cartÃ©es.&lt;br/&gt;Pour une rÃ©solution Â« rigoureuse Â», il existe la formule suivante :&lt;br/&gt;Pour Ã©viter de compter les carrÃ©s un par un (au risque dâ€™en oublier certains), il est prÃ©fÃ©rable dâ'),
(289, 122, '30', 1, 'Certaines rÃ©ponses pouvaient Ãªtre rapidement Ã©cartÃ©es.&lt;br/&gt;Pour une rÃ©solution Â« rigoureuse Â», il existe la formule suivante :&lt;br/&gt;Pour Ã©viter de compter les carrÃ©s un par un (au risque dâ€™en oublier certains), il est prÃ©fÃ©rable dâ'),
(290, 123, '3', 0, '30 est divisible par :&lt;li&gt;1 et 30&lt;/li&gt;&lt;li&gt;2 et 15&lt;/li&gt;&lt;li&gt;3 et 10&lt;/li&gt;&lt;li&gt;5 et 6&lt;/li&gt;Soit 8 diviseurs au total.'),
(291, 123, '4', 0, '30 est divisible par :&lt;li&gt;1 et 30&lt;/li&gt;&lt;li&gt;2 et 15&lt;/li&gt;&lt;li&gt;3 et 10&lt;/li&gt;&lt;li&gt;5 et 6&lt;/li&gt;Soit 8 diviseurs au total.'),
(292, 123, '7', 0, '30 est divisible par :&lt;li&gt;1 et 30&lt;/li&gt;&lt;li&gt;2 et 15&lt;/li&gt;&lt;li&gt;3 et 10&lt;/li&gt;&lt;li&gt;5 et 6&lt;/li&gt;Soit 8 diviseurs au total.'),
(293, 123, '8', 1, '30 est divisible par :&lt;li&gt;1 et 30&lt;/li&gt;&lt;li&gt;2 et 15&lt;/li&gt;&lt;li&gt;3 et 10&lt;/li&gt;&lt;li&gt;5 et 6&lt;/li&gt;Soit 8 diviseurs au total.'),
(294, 124, '1 faÃ§on', 0, 'Lâ€™ordre possible des visites serait le suivant : &lt;i&gt;CBA&lt;/i&gt;, &lt;i&gt;CAB&lt;/i&gt; ou &lt;i&gt;ACB&lt;/i&gt;.&lt;br/&gt;Soit &lt;i&gt;C&lt;/i&gt; est visitÃ© en premier, soit &lt;i&gt;C&lt;/i&gt; est visitÃ© en 2&lt;sup&gt;Ã¨me&lt;/sup&gt; '),
(295, 124, '2 faÃ§ons', 0, 'Lâ€™ordre possible des visites serait le suivant : &lt;i&gt;CBA&lt;/i&gt;, &lt;i&gt;CAB&lt;/i&gt; ou &lt;i&gt;ACB&lt;/i&gt;.&lt;br/&gt;Soit &lt;i&gt;C&lt;/i&gt; est visitÃ© en premier, soit &lt;i&gt;C&lt;/i&gt; est visitÃ© en 2&lt;sup&gt;Ã¨me&lt;/sup&gt; '),
(296, 124, '3 faÃ§ons', 1, 'Lâ€™ordre possible des visites serait le suivant : &lt;i&gt;CBA&lt;/i&gt;, &lt;i&gt;CAB&lt;/i&gt; ou &lt;i&gt;ACB&lt;/i&gt;.&lt;br/&gt;Soit &lt;i&gt;C&lt;/i&gt; est visitÃ© en premier, soit &lt;i&gt;C&lt;/i&gt; est visitÃ© en 2&lt;sup&gt;Ã¨me&lt;/sup&gt; '),
(297, 124, '4 faÃ§ons', 0, 'Lâ€™ordre possible des visites serait le suivant : &lt;i&gt;CBA&lt;/i&gt;, &lt;i&gt;CAB&lt;/i&gt; ou &lt;i&gt;ACB&lt;/i&gt;.&lt;br/&gt;Soit &lt;i&gt;C&lt;/i&gt; est visitÃ© en premier, soit &lt;i&gt;C&lt;/i&gt; est visitÃ© en 2&lt;sup&gt;Ã¨me&lt;/sup&gt; '),
(298, 125, 'sa population a baissÃ© de 51 % environ', 0, 'Si on part dâ€™une base 100, on peut relater la baisse de chaque dÃ©cennie de la faÃ§on suivante :&lt;li&gt;1&lt;sup&gt;Ã¨re&lt;/sup&gt; dÃ©cennie : la population passe Ã  80&lt;/li&gt;&lt;li&gt;2&lt;sup&gt;Ã¨me&lt;/sup&gt; dÃ©cennie : la population passe'),
(299, 125, 'sa population a baissÃ© de 59 % environ', 1, 'Si on part dâ€™une base 100, on peut relater la baisse de chaque dÃ©cennie de la faÃ§on suivante :&lt;li&gt;1&lt;sup&gt;Ã¨re&lt;/sup&gt; dÃ©cennie : la population passe Ã  80&lt;/li&gt;&lt;li&gt;2&lt;sup&gt;Ã¨me&lt;/sup&gt; dÃ©cennie : la population passe'),
(300, 125, 'sa population a baissÃ© de 80 %', 0, 'Si on part dâ€™une base 100, on peut relater la baisse de chaque dÃ©cennie de la faÃ§on suivante :&lt;li&gt;1&lt;sup&gt;Ã¨re&lt;/sup&gt; dÃ©cennie : la population passe Ã  80&lt;/li&gt;&lt;li&gt;2&lt;sup&gt;Ã¨me&lt;/sup&gt; dÃ©cennie : la population passe'),
(301, 125, 'lâ€™espÃ¨ce a disparu', 0, 'Si on part dâ€™une base 100, on peut relater la baisse de chaque dÃ©cennie de la faÃ§on suivante :&lt;li&gt;1&lt;sup&gt;Ã¨re&lt;/sup&gt; dÃ©cennie : la population passe Ã  80&lt;/li&gt;&lt;li&gt;2&lt;sup&gt;Ã¨me&lt;/sup&gt; dÃ©cennie : la population passe'),
(302, 126, '200', 0, '2&lt;i&gt;N&lt;/i&gt; = 1000 soit &lt;i&gt;N&lt;/i&gt; = 500'),
(303, 126, '400', 0, '2&lt;i&gt;N&lt;/i&gt; = 1000 soit &lt;i&gt;N&lt;/i&gt; = 500'),
(304, 126, '450', 0, '2&lt;i&gt;N&lt;/i&gt; = 1000 soit &lt;i&gt;N&lt;/i&gt; = 500'),
(305, 126, '500', 1, '2&lt;i&gt;N&lt;/i&gt; = 1000 soit &lt;i&gt;N&lt;/i&gt; = 500'),
(306, 127, 'mardi ', 0, 'Il y a quatre semaines par mois.&lt;br/&gt;Entre le 1&lt;sup&gt;er&lt;/sup&gt; lundi du mois et le dernier, il y a un intervalle de 28 jours (7x4).&lt;br/&gt;On en dÃ©duit que le 1&lt;sup&gt;er&lt;/sup&gt; lundi doit Ãªtre dans les tous premiers jours du '),
(307, 127, 'mercredi', 1, 'Il y a quatre semaines par mois.&lt;br/&gt;Entre le 1&lt;sup&gt;er&lt;/sup&gt; lundi du mois et le dernier, il y a un intervalle de 28 jours (7x4).&lt;br/&gt;On en dÃ©duit que le 1&lt;sup&gt;er&lt;/sup&gt; lundi doit Ãªtre dans les tous premiers jours du '),
(308, 127, 'jeudi', 0, 'Il y a quatre semaines par mois.&lt;br/&gt;Entre le 1&lt;sup&gt;er&lt;/sup&gt; lundi du mois et le dernier, il y a un intervalle de 28 jours (7x4).&lt;br/&gt;On en dÃ©duit que le 1&lt;sup&gt;er&lt;/sup&gt; lundi doit Ãªtre dans les tous premiers jours du '),
(309, 127, 'vendredi', 0, 'Il y a quatre semaines par mois.&lt;br/&gt;Entre le 1&lt;sup&gt;er&lt;/sup&gt; lundi du mois et le dernier, il y a un intervalle de 28 jours (7x4).&lt;br/&gt;On en dÃ©duit que le 1&lt;sup&gt;er&lt;/sup&gt; lundi doit Ãªtre dans les tous premiers jours du '),
(310, 128, '208', 0, '&lt;i&gt;k&lt;/i&gt; et &lt;i&gt;p&lt;/i&gt; valent 13 et 7, dâ€™oÃ¹ &lt;i&gt;k&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; + &lt;i&gt;p&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; = 13&lt;sup&gt;2&lt;/sup&gt; +7&lt;sup&gt;2&lt;/sup&gt; = 218.'),
(311, 128, '232', 0, '&lt;i&gt;k&lt;/i&gt; et &lt;i&gt;p&lt;/i&gt; valent 13 et 7, dâ€™oÃ¹ &lt;i&gt;k&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; + &lt;i&gt;p&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; = 13&lt;sup&gt;2&lt;/sup&gt; +7&lt;sup&gt;2&lt;/sup&gt; = 218.'),
(312, 128, '218', 1, '&lt;i&gt;k&lt;/i&gt; et &lt;i&gt;p&lt;/i&gt; valent 13 et 7, dâ€™oÃ¹ &lt;i&gt;k&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; + &lt;i&gt;p&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; = 13&lt;sup&gt;2&lt;/sup&gt; +7&lt;sup&gt;2&lt;/sup&gt; = 218.'),
(313, 128, '202', 0, '&lt;i&gt;k&lt;/i&gt; et &lt;i&gt;p&lt;/i&gt; valent 13 et 7, dâ€™oÃ¹ &lt;i&gt;k&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; + &lt;i&gt;p&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt; = 13&lt;sup&gt;2&lt;/sup&gt; +7&lt;sup&gt;2&lt;/sup&gt; = 218.'),
(314, 129, '9 ans', 0, 'En sâ€™intÃ©ressant uniquement Ã  la seconde information (lâ€™annÃ©e prochaine, lâ€™Ã¢ge de Laura sera un multiple de 9), on en dÃ©duit que la rÃ©ponse + 1 = multiple de 9.&lt;br/&gt;Seule la rÃ©ponse B correspond.'),
(315, 129, '17 ans', 1, 'En sâ€™intÃ©ressant uniquement Ã  la seconde information (lâ€™annÃ©e prochaine, lâ€™Ã¢ge de Laura sera un multiple de 9), on en dÃ©duit que la rÃ©ponse + 1 = multiple de 9.&lt;br/&gt;Seule la rÃ©ponse B correspond.'),
(316, 129, '41 ans', 0, 'En sâ€™intÃ©ressant uniquement Ã  la seconde information (lâ€™annÃ©e prochaine, lâ€™Ã¢ge de Laura sera un multiple de 9), on en dÃ©duit que la rÃ©ponse + 1 = multiple de 9.&lt;br/&gt;Seule la rÃ©ponse B correspond.'),
(317, 129, '57 ans', 0, 'En sâ€™intÃ©ressant uniquement Ã  la seconde information (lâ€™annÃ©e prochaine, lâ€™Ã¢ge de Laura sera un multiple de 9), on en dÃ©duit que la rÃ©ponse + 1 = multiple de 9.&lt;br/&gt;Seule la rÃ©ponse B correspond.'),
(318, 130, '10', 0, 'A chaque tirage de 2 jetons, il y a au moins un jeton rouge, cela signifie quâ€™il y a 19 jetons rouges dans le sac. Un tirage correspond la plupart du temps Ã  deux jetons rouges et il nâ€™y a quâ€™un cas de figure oÃ¹ il sâ€™agit dâ€™un tirage avec 1 je'),
(319, 130, '1', 0, 'A chaque tirage de 2 jetons, il y a au moins un jeton rouge, cela signifie quâ€™il y a 19 jetons rouges dans le sac. Un tirage correspond la plupart du temps Ã  deux jetons rouges et il nâ€™y a quâ€™un cas de figure oÃ¹ il sâ€™agit dâ€™un tirage avec 1 je'),
(320, 130, '19', 1, 'A chaque tirage de 2 jetons, il y a au moins un jeton rouge, cela signifie quâ€™il y a 19 jetons rouges dans le sac. Un tirage correspond la plupart du temps Ã  deux jetons rouges et il nâ€™y a quâ€™un cas de figure oÃ¹ il sâ€™agit dâ€™un tirage avec 1 je'),
(321, 130, '9', 0, 'A chaque tirage de 2 jetons, il y a au moins un jeton rouge, cela signifie quâ€™il y a 19 jetons rouges dans le sac. Un tirage correspond la plupart du temps Ã  deux jetons rouges et il nâ€™y a quâ€™un cas de figure oÃ¹ il sâ€™agit dâ€™un tirage avec 1 je'),
(322, 131, '4', 1, '&lt;i&gt;x&lt;/i&gt; = &lt;sup&gt;1&lt;/sup&gt;&amp;frasl;&lt;sub&gt;5&lt;/sub&gt; (&lt;i&gt;x&lt;/i&gt; + &lt;i&gt;y&lt;/i&gt;)&lt;br/&gt;&lt;i&gt;x&lt;/i&gt;/(&lt;i&gt;x&lt;/i&gt;+&lt;i&gt;y&lt;/i&gt;) = &lt;sup&gt;1&lt;/sup&gt;&amp;frasl;&lt;sub&gt;5&l'),
(323, 131, '-&lt;sup&gt;1&lt;/sup&gt;&amp;frasl;&lt;sub&gt;5&lt;/sub&gt;', 0, '&lt;i&gt;x&lt;/i&gt; = &lt;sup&gt;1&lt;/sup&gt;&amp;frasl;&lt;sub&gt;5&lt;/sub&gt; (&lt;i&gt;x&lt;/i&gt; + &lt;i&gt;y&lt;/i&gt;)&lt;br/&gt;&lt;i&gt;x&lt;/i&gt;/(&lt;i&gt;x&lt;/i&gt;+&lt;i&gt;y&lt;/i&gt;) = &lt;sup&gt;1&lt;/sup&gt;&amp;frasl;&lt;sub&gt;5&l'),
(324, 131, '&lt;sup&gt;1&lt;/sup&gt;&amp;frasl;&lt;sub&gt;5&lt;/sub&gt;', 0, '&lt;i&gt;x&lt;/i&gt; = &lt;sup&gt;1&lt;/sup&gt;&amp;frasl;&lt;sub&gt;5&lt;/sub&gt; (&lt;i&gt;x&lt;/i&gt; + &lt;i&gt;y&lt;/i&gt;)&lt;br/&gt;&lt;i&gt;x&lt;/i&gt;/(&lt;i&gt;x&lt;/i&gt;+&lt;i&gt;y&lt;/i&gt;) = &lt;sup&gt;1&lt;/sup&gt;&amp;frasl;&lt;sub&gt;5&l'),
(325, 131, '&lt;sup&gt;4&lt;/sup&gt;&amp;frasl;&lt;sub&gt;5&lt;/sub&gt;', 0, '&lt;i&gt;x&lt;/i&gt; = &lt;sup&gt;1&lt;/sup&gt;&amp;frasl;&lt;sub&gt;5&lt;/sub&gt; (&lt;i&gt;x&lt;/i&gt; + &lt;i&gt;y&lt;/i&gt;)&lt;br/&gt;&lt;i&gt;x&lt;/i&gt;/(&lt;i&gt;x&lt;/i&gt;+&lt;i&gt;y&lt;/i&gt;) = &lt;sup&gt;1&lt;/sup&gt;&amp;frasl;&lt;sub&gt;5&l'),
(326, 132, '0', 0, '(10&lt;sup&gt;-5&lt;/sup&gt; x 10&lt;sup&gt;n&lt;/sup&gt;)&lt;sup&gt;2&lt;/sup&gt; / (10 x 10&lt;sup&gt;-4&lt;/sup&gt;) = 1000 s''Ã©crit aussi (10&lt;sup&gt;-10&lt;/sup&gt; x 10&lt;sup&gt;2n&lt;/sup&gt;) / (10&lt;sup&gt;-3&lt;/sup&gt;) = 1000&lt;br/&gt;Soi'),
(327, 132, '5', 1, '(10&lt;sup&gt;-5&lt;/sup&gt; x 10&lt;sup&gt;n&lt;/sup&gt;)&lt;sup&gt;2&lt;/sup&gt; / (10 x 10&lt;sup&gt;-4&lt;/sup&gt;) = 1000 s''Ã©crit aussi (10&lt;sup&gt;-10&lt;/sup&gt; x 10&lt;sup&gt;2n&lt;/sup&gt;) / (10&lt;sup&gt;-3&lt;/sup&gt;) = 1000&lt;br/&gt;Soi'),
(328, 132, '8', 0, '(10&lt;sup&gt;-5&lt;/sup&gt; x 10&lt;sup&gt;n&lt;/sup&gt;)&lt;sup&gt;2&lt;/sup&gt; / (10 x 10&lt;sup&gt;-4&lt;/sup&gt;) = 1000 s''Ã©crit aussi (10&lt;sup&gt;-10&lt;/sup&gt; x 10&lt;sup&gt;2n&lt;/sup&gt;) / (10&lt;sup&gt;-3&lt;/sup&gt;) = 1000&lt;br/&gt;Soi'),
(329, 132, '9', 0, '(10&lt;sup&gt;-5&lt;/sup&gt; x 10&lt;sup&gt;n&lt;/sup&gt;)&lt;sup&gt;2&lt;/sup&gt; / (10 x 10&lt;sup&gt;-4&lt;/sup&gt;) = 1000 s''Ã©crit aussi (10&lt;sup&gt;-10&lt;/sup&gt; x 10&lt;sup&gt;2n&lt;/sup&gt;) / (10&lt;sup&gt;-3&lt;/sup&gt;) = 1000&lt;br/&gt;Soi'),
(330, 133, '&lt;i&gt;X&lt;/i&gt; = -2&lt;i&gt;b&lt;/i&gt;&lt;sup&gt;5&lt;/sup&gt;', 0, '&lt;i&gt;X&lt;/i&gt; = (-2&lt;i&gt;ab&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt;)&lt;sup&gt;2&lt;/sup&gt; / (&lt;i&gt;a&lt;/i&gt;&lt;sup&gt;3&lt;/sup&gt;&lt;i&gt;b&lt;/i&gt;)&lt;sup&gt;-1&lt;/sup&gt; s''Ã©crit aussi &lt;i&gt;X&lt;/i&gt; = (4&lt;i&gt;a&lt;/i&gt;&lt;'),
(331, 133, '&lt;i&gt;X&lt;/i&gt; = (-2&lt;i&gt;b&lt;/i&gt;&lt;sup&gt;5&lt;/sup&gt;)/&lt;i&gt;a&lt;/i&gt;&lt;sup&gt;4&lt;/sup&gt;', 0, '&lt;i&gt;X&lt;/i&gt; = (-2&lt;i&gt;ab&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt;)&lt;sup&gt;2&lt;/sup&gt; / (&lt;i&gt;a&lt;/i&gt;&lt;sup&gt;3&lt;/sup&gt;&lt;i&gt;b&lt;/i&gt;)&lt;sup&gt;-1&lt;/sup&gt; s''Ã©crit aussi &lt;i&gt;X&lt;/i&gt; = (4&lt;i&gt;a&lt;/i&gt;&lt;'),
(332, 133, '&lt;i&gt;X&lt;/i&gt; = (-4&lt;i&gt;b&lt;/i&gt;&lt;sup&gt;5&lt;/sup&gt;)/&lt;i&gt;a&lt;/i&gt;', 0, '&lt;i&gt;X&lt;/i&gt; = (-2&lt;i&gt;ab&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt;)&lt;sup&gt;2&lt;/sup&gt; / (&lt;i&gt;a&lt;/i&gt;&lt;sup&gt;3&lt;/sup&gt;&lt;i&gt;b&lt;/i&gt;)&lt;sup&gt;-1&lt;/sup&gt; s''Ã©crit aussi &lt;i&gt;X&lt;/i&gt; = (4&lt;i&gt;a&lt;/i&gt;&lt;'),
(333, 133, '&lt;i&gt;X&lt;/i&gt; = 4&lt;i&gt;a&lt;/i&gt;&lt;sup&gt;5&lt;/sup&gt;&lt;i&gt;b&lt;/i&gt;&lt;sup&gt;5&lt;/sup&gt;', 1, '&lt;i&gt;X&lt;/i&gt; = (-2&lt;i&gt;ab&lt;/i&gt;&lt;sup&gt;2&lt;/sup&gt;)&lt;sup&gt;2&lt;/sup&gt; / (&lt;i&gt;a&lt;/i&gt;&lt;sup&gt;3&lt;/sup&gt;&lt;i&gt;b&lt;/i&gt;)&lt;sup&gt;-1&lt;/sup&gt; s''Ã©crit aussi &lt;i&gt;X&lt;/i&gt; = (4&lt;i&gt;a&lt;/i&gt;&lt;');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
