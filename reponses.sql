-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 18 Mai 2016 à 16:06
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
-- Structure de la table `reponses`
--

CREATE TABLE IF NOT EXISTS `reponses` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `idQuestion` int(10) NOT NULL,
  `ennonceReponse` varchar(255) NOT NULL,
  `resultatReponse` tinyint(1) NOT NULL,
  `correctionReponse` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=170 ;

--
-- Contenu de la table `reponses`
--

INSERT INTO `reponses` (`ID`, `idQuestion`, `ennonceReponse`, `resultatReponse`, `correctionReponse`) VALUES
(6, 52, 'doesn’t / informations', 0, 'Deux règles s''appliquent ici :<br/>- Le nom &quot;people&quot; s’accorde toujours au pluriel.<br>- &quot;Information&quot; est un nom indénombrable et ne prend jamais de &quot;S&quot; à la fin.'),
(7, 52, 'don’t / information', 1, 'Deux règles s''appliquent ici :<br/>- Le nom &quot;people&quot; s’accorde toujours au pluriel.<br>- &quot;Information&quot; est un nom indénombrable et ne prend jamais de &quot;S&quot; à la fin.'),
(8, 52, 'don’t / informations', 0, 'Deux règles s''appliquent ici :<br/>- Le nom &quot;people&quot; s’accorde toujours au pluriel.<br>- &quot;Information&quot; est un nom indénombrable et ne prend jamais de &quot;S&quot; à la fin.'),
(9, 52, 'doesn’t / information', 0, 'Deux règles s''appliquent ici :<br/>- Le nom &quot;people&quot; s’accorde toujours au pluriel.<br>- &quot;Information&quot; est un nom indénombrable et ne prend jamais de &quot;S&quot; à la fin.'),
(10, 54, 'should have speak', 0, '&quot;Should have + participe passé&quot; exprime une notion de reproche, de regret ou de conseil sur ce qui aurait dû ou n’aurait pas dû être fait.'),
(11, 54, 'should have spoken', 0, '&quot;Should have + participe passé&quot; exprime une notion de reproche, de regret ou de conseil sur ce qui aurait dû ou n’aurait pas dû être fait.'),
(12, 54, 'shouldn’t have speak', 0, '&quot;Should have + participe passé&quot; exprime une notion de reproche, de regret ou de conseil sur ce qui aurait dû ou n’aurait pas dû être fait.'),
(13, 54, 'shouldn’t have spoken', 1, '&quot;Should have + participe passé&quot; exprime une notion de reproche, de regret ou de conseil sur ce qui aurait dû ou n’aurait pas dû être fait.'),
(14, 55, 'is used to drive', 0, '&quot; to be used to&quot; + un verbe en <i>-ing</i> exprime une habitude déjà acquise, d’un état présent.<br/><u>Régle</u> : On conjugue le verbe &quot;to be&quot; au présent simple, suivi de &quot;used to&quot; + un verbe en <i>-ing</i>.'),
(15, 55, 'is used to driving', 1, '&quot; to be used to&quot; + un verbe en <i>-ing</i> exprime une habitude déjà acquise, d’un état présent.<br/><u>Régle</u> : On conjugue le verbe &quot;to be&quot; au présent simple, suivi de &quot;used to&quot; + un verbe en <i>-ing</i>.'),
(16, 55, 'has used to driving', 0, '&quot; to be used to&quot; + un verbe en <i>-ing</i> exprime une habitude déjà acquise, d’un état présent.<br/><u>Régle</u> : On conjugue le verbe &quot;to be&quot; au présent simple, suivi de &quot;used to&quot; + un verbe en <i>-ing</i>.'),
(17, 55, 'has used to drive', 0, '&quot; to be used to&quot; + un verbe en <i>-ing</i> exprime une habitude déjà acquise, d’un état présent.<br/><u>Régle</u> : On conjugue le verbe &quot;to be&quot; au présent simple, suivi de &quot;used to&quot; + un verbe en <i>-ing</i>.'),
(18, 56, 'am used to being', 0, 'L’emploi de &quot;used to + l’infinitif&quot; exprime des actions qu’on avait l’habitude de faire autrefois mais qu’on ne fait plus aujourd’hui. <br/><u>Règle</u> : Le sujet + used to + l’infinitif.<br/> Attention : il n’y a pas de mot entre le sujet et l'),
(19, 56, 'used', 0, 'L’emploi de &quot;used to + l’infinitif&quot; exprime des actions qu’on avait l’habitude de faire autrefois mais qu’on ne fait plus aujourd’hui. <br/><u>Règle</u> : Le sujet + used to + l’infinitif.<br/> Attention : il n’y a pas de mot entre le sujet et l'),
(20, 56, 'used to be', 1, 'L’emploi de &quot;used to + l’infinitif&quot; exprime des actions qu’on avait l’habitude de faire autrefois mais qu’on ne fait plus aujourd’hui. <br/><u>Règle</u> : Le sujet + used to + l’infinitif.<br/> Attention : il n’y a pas de mot entre le sujet et l'),
(21, 56, 'was used to be', 0, 'L’emploi de &quot;used to + l’infinitif&quot; exprime des actions qu’on avait l’habitude de faire autrefois mais qu’on ne fait plus aujourd’hui. <br/><u>Règle</u> : Le sujet + used to + l’infinitif.<br/> Attention : il n’y a pas de mot entre le sujet et l'),
(22, 57, 'developpement / I agree', 0, '&quot;Development&quot; s''écrit avec un seul &quot;p&quot; et sans être suivi d’un &quot;e&quot;.<br/>La forme du verbe “to agree (with someone)” est un verbe régulier.'),
(23, 57, 'development / I am agree', 0, '&quot;Development&quot; s''écrit avec un seul &quot;p&quot; et sans être suivi d’un &quot;e&quot;.<br/>La forme du verbe “to agree (with someone)” est un verbe régulier.'),
(24, 57, 'developpment / I agree', 0, '&quot;Development&quot; s''écrit avec un seul &quot;p&quot; et sans être suivi d’un &quot;e&quot;.<br/>La forme du verbe “to agree (with someone)” est un verbe régulier.'),
(25, 57, 'development / I agree with you', 1, '&quot;Development&quot; s''écrit avec un seul &quot;p&quot; et sans être suivi d’un &quot;e&quot;.<br/>La forme du verbe “to agree (with someone)” est un verbe régulier.'),
(26, 58, 'to smoke', 0, '&quot;to stop&quot; + verbe en <i>-ing</i> signifie qu?on arrête ce qu?on est/était en train de faire. <br/>&quot;to stop&quot; + l?infinitif signifie qu?on arrête une chose pour en faire une autre.'),
(27, 58, 'smoking', 1, '&quot;to stop&quot; + verbe en <i>-ing</i> signifie qu?on arrête ce qu?on est/était en train de faire. <br/>&quot;to stop&quot; + l?infinitif signifie qu?on arrête une chose pour en faire une autre.'),
(28, 58, 'having smoked', 0, '&quot;to stop&quot; + verbe en <i>-ing</i> signifie qu?on arrête ce qu?on est/était en train de faire. <br/>&quot;to stop&quot; + l?infinitif signifie qu?on arrête une chose pour en faire une autre.'),
(29, 58, 'smoked', 0, '&quot;to stop&quot; + verbe en <i>-ing</i> signifie qu?on arrête ce qu?on est/était en train de faire. <br/>&quot;to stop&quot; + l?infinitif signifie qu?on arrête une chose pour en faire une autre.'),
(34, 59, 'should', 0, 'L?auxiliaire modal &quot;must&quot; (à la forme affirmative) exprime une déduction dans le présent, une quasi-certitude.'),
(35, 59, 'is supposed to', 0, 'L?auxiliaire modal &quot;must&quot; (à la forme affirmative) exprime une déduction dans le présent, une quasi-certitude.'),
(36, 59, 'must', 1, 'L?auxiliaire modal &quot;must&quot; (à la forme affirmative) exprime une déduction dans le présent, une quasi-certitude.'),
(37, 59, 'would', 0, 'L?auxiliaire modal &quot;must&quot; (à la forme affirmative) exprime une déduction dans le présent, une quasi-certitude.'),
(38, 60, 'advice / informations', 0, 'Les mots &quot;advice&quot; et &quot;information&quot; sont des mots indénombrables qui ne prennent pas de &quot;S&quot;.<br/>Attention à l?orthographe : &quot;advi<u>C</u>e&quot; (nom); &quot;to advi<u>S</u>e&quot; (verbe).'),
(39, 60, 'advises / informations', 0, 'Les mots &quot;advice&quot; et &quot;information&quot; sont des mots indénombrables qui ne prennent pas de &quot;S&quot;.<br/>Attention à l?orthographe : &quot;advi<u>C</u>e&quot; (nom); &quot;to advi<u>S</u>e&quot; (verbe).'),
(40, 60, 'advice / information', 1, 'Les mots &quot;advice&quot; et &quot;information&quot; sont des mots indénombrables qui ne prennent pas de &quot;S&quot;.<br/>Attention à l?orthographe : &quot;advi<u>C</u>e&quot; (nom); &quot;to advi<u>S</u>e&quot; (verbe).'),
(41, 60, 'advices / information', 0, 'Les mots &quot;advice&quot; et &quot;information&quot; sont des mots indénombrables qui ne prennent pas de &quot;S&quot;.<br/>Attention à l?orthographe : &quot;advi<u>C</u>e&quot; (nom); &quot;to advi<u>S</u>e&quot; (verbe).'),
(42, 61, 'up', 0, '<i>Phrasal verb</i> (ou verbe à particule) : <i>to take off</i> = décoller (pour un avion).'),
(43, 61, 'out', 0, '<i>Phrasal verb</i> (ou verbe à particule) : <i>to take off</i> = décoller (pour un avion).'),
(44, 61, 'off', 1, '<i>Phrasal verb</i> (ou verbe à particule) : <i>to take off</i> = décoller (pour un avion).'),
(45, 61, 'in', 0, '<i>Phrasal verb</i> (ou verbe à particule) : <i>to take off</i> = décoller (pour un avion).'),
(46, 62, 'Fifty millions of euros', 0, 'Dans un montant exprimé en anglais, les termes &quot;hundred&quot;, &quot;thousand&quot;, &quot;million&quot;, &quot;billion&quot;, &quot;trillion&quot;, etc. sont toujours au singulier.<br><u>Règle</u> : &quot;million&quot; ne prend pas de &quot;s&quot; '),
(47, 62, 'Fifty millions euros', 0, 'Dans un montant exprimé en anglais, les termes &quot;hundred&quot;, &quot;thousand&quot;, &quot;million&quot;, &quot;billion&quot;, &quot;trillion&quot;, etc. sont toujours au singulier.<br><u>Règle</u> : &quot;million&quot; ne prend pas de &quot;s&quot; '),
(48, 62, 'Fifty million of euros', 0, 'Dans un montant exprimé en anglais, les termes &quot;hundred&quot;, &quot;thousand&quot;, &quot;million&quot;, &quot;billion&quot;, &quot;trillion&quot;, etc. sont toujours au singulier.<br><u>Règle</u> : &quot;million&quot; ne prend pas de &quot;s&quot; '),
(49, 62, 'Fifty million euros', 1, 'Dans un montant exprimé en anglais, les termes &quot;hundred&quot;, &quot;thousand&quot;, &quot;million&quot;, &quot;billion&quot;, &quot;trillion&quot;, etc. sont toujours au singulier.<br><u>Règle</u> : &quot;million&quot; ne prend pas de &quot;s&quot; '),
(50, 63, 'shall pay for', 0, '<u>Verbe</u> : <i>to pay for something</i> = payer quelque chose<br/>Pour exprimer un fait, et sous-entendu effectué par quelqu?un, on emploie le passif au présent simple.</br><u>Règle</u> : Le passif au présent simple se forme avec le verbe <i>to be</i>,'),
(51, 63, 'is paid for', 1, '<u>Verbe</u> : <i>to pay for something</i> = payer quelque chose<br/>Pour exprimer un fait, et sous-entendu effectué par quelqu?un, on emploie le passif au présent simple.</br><u>Règle</u> : Le passif au présent simple se forme avec le verbe <i>to be</i>,'),
(52, 63, 'is paying for', 0, '<u>Verbe</u> : <i>to pay for something</i> = payer quelque chose<br/>Pour exprimer un fait, et sous-entendu effectué par quelqu?un, on emploie le passif au présent simple.</br><u>Règle</u> : Le passif au présent simple se forme avec le verbe <i>to be</i>,'),
(53, 63, 'will pay for', 0, '<u>Verbe</u> : <i>to pay for something</i> = payer quelque chose<br/>Pour exprimer un fait, et sous-entendu effectué par quelqu?un, on emploie le passif au présent simple.</br><u>Règle</u> : Le passif au présent simple se forme avec le verbe <i>to be</i>,'),
(54, 64, 'must', 0, '&quot;Had to&quot; exprime une obligation ou une contrainte dans le passé, due aux circonstances.<br/><u>Règle</u> : &quot;Had to&quot; est le prétérit de l?auxiliaire modal &quot;must&quot;.'),
(55, 64, 'needed', 0, '&quot;Had to&quot; exprime une obligation ou une contrainte dans le passé, due aux circonstances.<br/><u>Règle</u> : &quot;Had to&quot; est le prétérit de l?auxiliaire modal &quot;must&quot;.'),
(56, 64, 'had to', 1, '&quot;Had to&quot; exprime une obligation ou une contrainte dans le passé, due aux circonstances.<br/><u>Règle</u> : &quot;Had to&quot; est le prétérit de l?auxiliaire modal &quot;must&quot;.'),
(57, 64, 'might', 0, '&quot;Had to&quot; exprime une obligation ou une contrainte dans le passé, due aux circonstances.<br/><u>Règle</u> : &quot;Had to&quot; est le prétérit de l?auxiliaire modal &quot;must&quot;.'),
(58, 65, 'moves out', 0, 'L?expression &quot;it is high time&quot; est toujours suivie d?un verbe au <u>prétérit</u> à l?affirmatif.'),
(59, 65, 'has moved out ', 0, 'L?expression &quot;it is high time&quot; est toujours suivie d?un verbe au <u>prétérit</u> à l?affirmatif.'),
(60, 65, 'moved out ', 1, 'L?expression &quot;it is high time&quot; est toujours suivie d?un verbe au <u>prétérit</u> à l?affirmatif.'),
(61, 65, 'is moving out', 0, 'L?expression &quot;it is high time&quot; est toujours suivie d?un verbe au <u>prétérit</u> à l?affirmatif.'),
(62, 66, 'No sooner / when', 0, 'L?adverbe &quot;No sooner ? than&quot; est utilisé lorsqu?il y a deux évènements dans le passé, un qui suit immédiatement l?autre.<br/><u>Règle</u> : &quot;No sooner&quot; est un adverbe négatif, qui provoque une inversion du sujet et de l?auxiliaire (<i>'),
(63, 66, 'No sooner / than', 1, 'L?adverbe &quot;No sooner ? than&quot; est utilisé lorsqu?il y a deux évènements dans le passé, un qui suit immédiatement l?autre.<br/><u>Règle</u> : &quot;No sooner&quot; est un adverbe négatif, qui provoque une inversion du sujet et de l?auxiliaire (<i>'),
(64, 66, 'No sooner / that', 0, 'L?adverbe &quot;No sooner ? than&quot; est utilisé lorsqu?il y a deux évènements dans le passé, un qui suit immédiatement l?autre.<br/><u>Règle</u> : &quot;No sooner&quot; est un adverbe négatif, qui provoque une inversion du sujet et de l?auxiliaire (<i>'),
(65, 66, 'No sooner / then', 0, 'L?adverbe &quot;No sooner ? than&quot; est utilisé lorsqu?il y a deux évènements dans le passé, un qui suit immédiatement l?autre.<br/><u>Règle</u> : &quot;No sooner&quot; est un adverbe négatif, qui provoque une inversion du sujet et de l?auxiliaire (<i>'),
(66, 67, 'less / less', 0, '<i>Fewer</i> et <i>less</i> = moins de<br/><u>Règle</u> : &quot;Fewer&quot; est suivi d?un nom pluriel/dénombrable ? <i>par exemple : dollars, bottles, hours, cars</i><br/><u>Règle</u> : &quot;Less&quot; est suivi d?un nom singulier/indénombrable ? <i>par'),
(67, 67, 'fewer / fewer', 0, '<i>Fewer</i> et <i>less</i> = moins de<br/><u>Règle</u> : &quot;Fewer&quot; est suivi d?un nom pluriel/dénombrable ? <i>par exemple : dollars, bottles, hours, cars</i><br/><u>Règle</u> : &quot;Less&quot; est suivi d?un nom singulier/indénombrable ? <i>par'),
(68, 67, 'less / fewer', 0, '<i>Fewer</i> et <i>less</i> = moins de<br/><u>Règle</u> : &quot;Fewer&quot; est suivi d?un nom pluriel/dénombrable ? <i>par exemple : dollars, bottles, hours, cars</i><br/><u>Règle</u> : &quot;Less&quot; est suivi d?un nom singulier/indénombrable ? <i>par'),
(69, 67, 'fewer / less', 1, '<i>Fewer</i> et <i>less</i> = moins de<br/><u>Règle</u> : &quot;Fewer&quot; est suivi d?un nom pluriel/dénombrable ? <i>par exemple : dollars, bottles, hours, cars</i><br/><u>Règle</u> : &quot;Less&quot; est suivi d?un nom singulier/indénombrable ? <i>par'),
(70, 68, 'works', 0, 'On utilise le <i>présent parfait progressif</i> lorsqu?on fait référence à la durée d?une activité qui a commencé au passé et qui se poursuit au présent, au moment où on parle.<br/></u>Règle</u> : Le <i>présent parfait progressif</i> se forme avec l?auxil'),
(71, 68, 'has been working', 1, 'On utilise le <i>présent parfait progressif</i> lorsqu?on fait référence à la durée d?une activité qui a commencé au passé et qui se poursuit au présent, au moment où on parle.<br/></u>Règle</u> : Le <i>présent parfait progressif</i> se forme avec l?auxil'),
(72, 68, 'is working', 0, 'On utilise le <i>présent parfait progressif</i> lorsqu?on fait référence à la durée d?une activité qui a commencé au passé et qui se poursuit au présent, au moment où on parle.<br/></u>Règle</u> : Le <i>présent parfait progressif</i> se forme avec l?auxil'),
(73, 68, 'worked', 0, 'On utilise le <i>présent parfait progressif</i> lorsqu?on fait référence à la durée d?une activité qui a commencé au passé et qui se poursuit au présent, au moment où on parle.<br/></u>Règle</u> : Le <i>présent parfait progressif</i> se forme avec l?auxil'),
(74, 69, 'd have / would have stopped', 0, 'Le 3ème conditionnel exprime une condition et une conséquence ; un regret, un reproche, une situation qui a toujours eu lieu dans le passé et qu?on ne peut plus changer.<br/><u>Règle</u> : &quot;<i>If</i> + <i>had</i> + participé passé&quot;, (ou le plus '),
(75, 69, 'will have / would stop', 0, 'Le 3ème conditionnel exprime une condition et une conséquence ; un regret, un reproche, une situation qui a toujours eu lieu dans le passé et qu?on ne peut plus changer.<br/><u>Règle</u> : &quot;<i>If</i> + <i>had</i> + participé passé&quot;, (ou le plus '),
(76, 69, 'am having / will stop', 0, 'Le 3ème conditionnel exprime une condition et une conséquence ; un regret, un reproche, une situation qui a toujours eu lieu dans le passé et qu?on ne peut plus changer.<br/><u>Règle</u> : &quot;<i>If</i> + <i>had</i> + participé passé&quot;, (ou le plus '),
(77, 69, 'd had / would have stopped', 1, 'Le 3ème conditionnel exprime une condition et une conséquence ; un regret, un reproche, une situation qui a toujours eu lieu dans le passé et qu?on ne peut plus changer.<br/><u>Règle</u> : &quot;<i>If</i> + <i>had</i> + participé passé&quot;, (ou le plus '),
(78, 70, 'tips / look after', 1, '<i>To give some tips</i> = donner de bons conseils / des astuces pratiques.<br/><i>Phrasal verb</i> (verbe à particule) : <i>to look after someone</i> = s?occuper de quelqu?un.'),
(79, 70, 'pipes / look after', 0, '<i>To give some tips</i> = donner de bons conseils / des astuces pratiques.<br/><i>Phrasal verb</i> (verbe à particule) : <i>to look after someone</i> = s?occuper de quelqu?un.'),
(80, 70, 'guides / look after', 0, '<i>To give some tips</i> = donner de bons conseils / des astuces pratiques.<br/><i>Phrasal verb</i> (verbe à particule) : <i>to look after someone</i> = s?occuper de quelqu?un.'),
(81, 70, 'things / look for', 0, '<i>To give some tips</i> = donner de bons conseils / des astuces pratiques.<br/><i>Phrasal verb</i> (verbe à particule) : <i>to look after someone</i> = s?occuper de quelqu?un.'),
(82, 71, 'do you work', 0, 'Une question avec &quot;how long&quot; se pose sur la durée du déroulement d?une action, qui a commencé dans le passé et qui continue dans le présent.<br><u>Règle</u> : Pour former une question avec &quot;how long&quot;, on utilise : &quot;<I>has/have</i>'),
(83, 71, 'are you working', 0, 'Une question avec &quot;how long&quot; se pose sur la durée du déroulement d?une action, qui a commencé dans le passé et qui continue dans le présent.<br><u>Règle</u> : Pour former une question avec &quot;how long&quot;, on utilise : &quot;<I>has/have</i>'),
(84, 71, 'did you work', 0, 'Une question avec &quot;how long&quot; se pose sur la durée du déroulement d?une action, qui a commencé dans le passé et qui continue dans le présent.<br><u>Règle</u> : Pour former une question avec &quot;how long&quot;, on utilise : &quot;<I>has/have</i>'),
(85, 71, 'have you been working', 1, 'Une question avec &quot;how long&quot; se pose sur la durée du déroulement d?une action, qui a commencé dans le passé et qui continue dans le présent.<br><u>Règle</u> : Pour former une question avec &quot;how long&quot;, on utilise : &quot;<I>has/have</i>'),
(86, 72, 'would rather not', 1, '<u>Règle</u> : &quot;<i>would rather (not)</i> + l?infinitif <u>sans <i>to</i></u>&quot; et &quot;<i>would prefer (not)</i> + l?infinitif&quot; expriment une préférence.'),
(87, 72, 'would prefer not', 0, '<u>Règle</u> : &quot;<i>would rather (not)</i> + l?infinitif <u>sans <i>to</i></u>&quot; et &quot;<i>would prefer (not)</i> + l?infinitif&quot; expriment une préférence.'),
(88, 72, 'would rather not to', 0, '<u>Règle</u> : &quot;<i>would rather (not)</i> + l?infinitif <u>sans <i>to</i></u>&quot; et &quot;<i>would prefer (not)</i> + l?infinitif&quot; expriment une préférence.'),
(89, 72, 'would rather prefer not', 0, '<u>Règle</u> : &quot;<i>would rather (not)</i> + l?infinitif <u>sans <i>to</i></u>&quot; et &quot;<i>would prefer (not)</i> + l?infinitif&quot; expriment une préférence.'),
(90, 73, 'hard / successful', 0, 'La réponse exprime l''idée de croissance simultanée (ou de décroissance simultanée).<br/>Règle : <b>the</b> + comparatif + sujet + verbe conjugé au temps approprié suivi dans la proposition suivante de : <b>the</b> + comparatif + sujet + verbe conjugé au t'),
(91, 73, 'harder / more successful', 0, 'La réponse exprime l''idée de croissance simultanée (ou de décroissance simultanée).<br/>Règle : <b>the</b> + comparatif + sujet + verbe conjugé au temps approprié suivi dans la proposition suivante de : <b>the</b> + comparatif + sujet + verbe conjugé au t'),
(92, 73, 'the harder / the more successful', 1, 'La réponse exprime l''idée de croissance simultanée (ou de décroissance simultanée).<br/>Règle : <b>the</b> + comparatif + sujet + verbe conjugé au temps approprié suivi dans la proposition suivante de : <b>the</b> + comparatif + sujet + verbe conjugé au t'),
(93, 73, 'the hardest / the most successful', 0, 'La réponse exprime l''idée de croissance simultanée (ou de décroissance simultanée).<br/>Règle : <b>the</b> + comparatif + sujet + verbe conjugé au temps approprié suivi dans la proposition suivante de : <b>the</b> + comparatif + sujet + verbe conjugé au t'),
(94, 74, 'joining the ends', 0, 'L?expression utilisée est : <b>to make ends meet</b> = <i>joindre les deux bouts</i> (ou éventuellement ?to make both ends meet? mais jamais ?to make the both ends meet?.<br/><i>To have difficulty IN + -ing</i>'),
(95, 74, 'making ends meet', 1, 'L?expression utilisée est : <b>to make ends meet</b> = <i>joindre les deux bouts</i> (ou éventuellement ?to make both ends meet? mais jamais ?to make the both ends meet?.<br/><i>To have difficulty IN + -ing</i>'),
(96, 74, 'meeting the ends', 0, 'L?expression utilisée est : <b>to make ends meet</b> = <i>joindre les deux bouts</i> (ou éventuellement ?to make both ends meet? mais jamais ?to make the both ends meet?.<br/><i>To have difficulty IN + -ing</i>'),
(97, 74, 'making the both ends meet', 0, 'L?expression utilisée est : <b>to make ends meet</b> = <i>joindre les deux bouts</i> (ou éventuellement ?to make both ends meet? mais jamais ?to make the both ends meet?.<br/><i>To have difficulty IN + -ing</i>'),
(98, 75, 'signed', 1, 'On utilise le prétérit avec l?expression &quot;last year&quot; qui est une notion de temps dans le passé, qui est finie.'),
(99, 75, 'have signed', 0, 'On utilise le prétérit avec l?expression &quot;last year&quot; qui est une notion de temps dans le passé, qui est finie.'),
(100, 75, 'have sign', 0, 'On utilise le prétérit avec l?expression &quot;last year&quot; qui est une notion de temps dans le passé, qui est finie.'),
(101, 75, 'did sign', 0, 'On utilise le prétérit avec l?expression &quot;last year&quot; qui est une notion de temps dans le passé, qui est finie.'),
(102, 76, 'listening', 0, 'Le verbe &quot;to listen&quot; est toujours suivi de l?infinitif avec &quot;to&quot;'),
(103, 76, 'listening to', 1, 'Le verbe &quot;to listen&quot; est toujours suivi de l?infinitif avec &quot;to&quot;'),
(104, 76, 'hearing', 0, 'Le verbe &quot;to listen&quot; est toujours suivi de l?infinitif avec &quot;to&quot;'),
(105, 76, 'hearing to', 0, 'Le verbe &quot;to listen&quot; est toujours suivi de l?infinitif avec &quot;to&quot;'),
(106, 77, 'you to go', 1, 'To want someone to do something = <i>vouloir que quelqu?un fasse quelque chose</i><br/>Il n?y a pas de &quot;that + sujet&quot; après &quot;want&quot;.<br/><i>Règle : Conjuger le verbe &quot;to want&quot; au temps approprié + objet + l?infinitif </i>'),
(107, 77, 'you will go', 0, 'To want someone to do something = <i>vouloir que quelqu?un fasse quelque chose</i><br/>Il n?y a pas de &quot;that + sujet&quot; après &quot;want&quot;.<br/><i>Règle : Conjuger le verbe &quot;to want&quot; au temps approprié + objet + l?infinitif </i>'),
(108, 77, 'that you go', 0, 'To want someone to do something = <i>vouloir que quelqu?un fasse quelque chose</i><br/>Il n?y a pas de &quot;that + sujet&quot; après &quot;want&quot;.<br/><i>Règle : Conjuger le verbe &quot;to want&quot; au temps approprié + objet + l?infinitif </i>'),
(109, 77, 'you go', 0, 'To want someone to do something = <i>vouloir que quelqu?un fasse quelque chose</i><br/>Il n?y a pas de &quot;that + sujet&quot; après &quot;want&quot;.<br/><i>Règle : Conjuger le verbe &quot;to want&quot; au temps approprié + objet + l?infinitif </i>'),
(110, 78, 'inconvenient', 0, '&quot;inconvenience&quot; est un nom au singulier et &quot;inconveniences&quot; est un nom au pluriel. <br/>&quot;inconvenient&quot; est un adjectif.<br/><i>Règle : &quot;one of&quot; + le superlatif + un nom. Le nom employé est toujours au pluriel, ici &'),
(111, 78, 'inconvenience', 0, '&quot;inconvenience&quot; est un nom au singulier et &quot;inconveniences&quot; est un nom au pluriel. <br/>&quot;inconvenient&quot; est un adjectif.<br/><i>Règle : &quot;one of&quot; + le superlatif + un nom. Le nom employé est toujours au pluriel, ici &'),
(112, 78, 'inconveniences', 1, '&quot;inconvenience&quot; est un nom au singulier et &quot;inconveniences&quot; est un nom au pluriel. <br/>&quot;inconvenient&quot; est un adjectif.<br/><i>Règle : &quot;one of&quot; + le superlatif + un nom. Le nom employé est toujours au pluriel, ici &'),
(113, 78, 'inconvenients', 0, '&quot;inconvenience&quot; est un nom au singulier et &quot;inconveniences&quot; est un nom au pluriel. <br/>&quot;inconvenient&quot; est un adjectif.<br/><i>Règle : &quot;one of&quot; + le superlatif + un nom. Le nom employé est toujours au pluriel, ici &'),
(114, 79, 'for / during', 0, '&quot;DURING&quot; est uniquement employé avec un nom. Il signifie &quot;pendant&quot; et n?exprime pas une durée de temps.<br/>&quot;FOR&quot; exprime la durée de temps.'),
(115, 79, 'for / for', 0, '&quot;DURING&quot; est uniquement employé avec un nom. Il signifie &quot;pendant&quot; et n?exprime pas une durée de temps.<br/>&quot;FOR&quot; exprime la durée de temps.'),
(116, 79, 'during / during', 0, '&quot;DURING&quot; est uniquement employé avec un nom. Il signifie &quot;pendant&quot; et n?exprime pas une durée de temps.<br/>&quot;FOR&quot; exprime la durée de temps.'),
(117, 79, 'during / for', 1, '&quot;DURING&quot; est uniquement employé avec un nom. Il signifie &quot;pendant&quot; et n?exprime pas une durée de temps.<br/>&quot;FOR&quot; exprime la durée de temps.'),
(118, 80, 'many advices', 0, '<I>Règle : &quot;Advice&quot; est un nom indénombrable, et ne prend jamais de &quot;S&quot;. </i><br/>On emploie en règle générale &quot;a lot of&quot; ou &quot;lots of&quot; dans les phrases à tournures positives.<br/>Several (<i>plusieurs</i>) est utili'),
(119, 80, 'a lot of advices', 0, '<I>Règle : &quot;Advice&quot; est un nom indénombrable, et ne prend jamais de &quot;S&quot;. </i><br/>On emploie en règle générale &quot;a lot of&quot; ou &quot;lots of&quot; dans les phrases à tournures positives.<br/>Several (<i>plusieurs</i>) est utili'),
(120, 80, 'lots of advice', 1, '<I>Règle : &quot;Advice&quot; est un nom indénombrable, et ne prend jamais de &quot;S&quot;. </i><br/>On emploie en règle générale &quot;a lot of&quot; ou &quot;lots of&quot; dans les phrases à tournures positives.<br/>Several (<i>plusieurs</i>) est utili'),
(121, 80, 'several advice', 0, '<I>Règle : &quot;Advice&quot; est un nom indénombrable, et ne prend jamais de &quot;S&quot;. </i><br/>On emploie en règle générale &quot;a lot of&quot; ou &quot;lots of&quot; dans les phrases à tournures positives.<br/>Several (<i>plusieurs</i>) est utili'),
(122, 81, 'most hard', 0, 'Le superlatif sert à comparer un élément (une chose ou une personne) avec plusieurs éléments.<br/><i>Règle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(123, 81, 'harder', 0, 'Le superlatif sert à comparer un élément (une chose ou une personne) avec plusieurs éléments.<br/><i>Règle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(124, 81, 'more hard', 0, 'Le superlatif sert à comparer un élément (une chose ou une personne) avec plusieurs éléments.<br/><i>Règle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(125, 81, 'hardest', 1, 'Le superlatif sert à comparer un élément (une chose ou une personne) avec plusieurs éléments.<br/><i>Règle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(126, 82, 'big / rich', 0, 'Le superlatif sert à comparer un élément (une chose ou une personne) avec plusieurs éléments.<br/><i>Règle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(127, 82, 'bigger / richer', 0, 'Le superlatif sert à comparer un élément (une chose ou une personne) avec plusieurs éléments.<br/><i>Règle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(128, 82, 'biggest / richest', 1, 'Le superlatif sert à comparer un élément (une chose ou une personne) avec plusieurs éléments.<br/><i>Règle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(129, 82, 'most big / more rich', 0, 'Le superlatif sert à comparer un élément (une chose ou une personne) avec plusieurs éléments.<br/><i>Règle : pour les adjectives courts, la forme superlative est : <b>the</b> + adjectif + <b>est</b></i>'),
(130, 83, 'look for', 0, 'Phrasal verb (<i>verbe à particule</i>) : <b>to look after</b> = s?occuper de quelqu?un.'),
(131, 83, 'look after', 1, 'Phrasal verb (<i>verbe à particule</i>) : <b>to look after</b> = s?occuper de quelqu?un.'),
(132, 83, 'look at', 0, 'Phrasal verb (<i>verbe à particule</i>) : <b>to look after</b> = s?occuper de quelqu?un.'),
(133, 83, 'look to', 0, 'Phrasal verb (<i>verbe à particule</i>) : <b>to look after</b> = s?occuper de quelqu?un.'),
(134, 84, 'crossing', 1, '&quot;Before&quot; est suivi d?un verbe en <i>-ing</i> pour exprimer &quot;avant de +l?infinitif&quot;'),
(135, 84, 'to cross', 0, '&quot;Before&quot; est suivi d?un verbe en <i>-ing</i> pour exprimer &quot;avant de +l?infinitif&quot;'),
(136, 84, 'cross', 0, '&quot;Before&quot; est suivi d?un verbe en <i>-ing</i> pour exprimer &quot;avant de +l?infinitif&quot;'),
(137, 84, 'crossed', 0, '&quot;Before&quot; est suivi d?un verbe en <i>-ing</i> pour exprimer &quot;avant de +l?infinitif&quot;'),
(138, 85, 'can', 1, '<i>Règle : &quot;May, might, could&quot; servent à exprimer une possibilité éventuelle, dans l?incertitude.<br/>&quot;Can&quot; sert à exprimer une possibilité matérielle, une capacité.'),
(139, 85, 'might', 0, '<i>Règle : &quot;May, might, could&quot; servent à exprimer une possibilité éventuelle, dans l?incertitude.<br/>&quot;Can&quot; sert à exprimer une possibilité matérielle, une capacité.'),
(140, 85, 'may', 0, '<i>Règle : &quot;May, might, could&quot; servent à exprimer une possibilité éventuelle, dans l?incertitude.<br/>&quot;Can&quot; sert à exprimer une possibilité matérielle, une capacité.'),
(141, 85, 'could', 0, '<i>Règle : &quot;May, might, could&quot; servent à exprimer une possibilité éventuelle, dans l?incertitude.<br/>&quot;Can&quot; sert à exprimer une possibilité matérielle, une capacité.'),
(142, 86, 'over', 0, 'Phrasal verb (<i>verbe à particule</i>). &quot;Up&quot; suggère un mouvement vers le haut.<br/>Parler plus fort : <i>to speak up</i>.'),
(143, 86, 'out', 0, 'Phrasal verb (<i>verbe à particule</i>). &quot;Up&quot; suggère un mouvement vers le haut.<br/>Parler plus fort : <i>to speak up</i>.'),
(144, 86, 'down', 0, 'Phrasal verb (<i>verbe à particule</i>). &quot;Up&quot; suggère un mouvement vers le haut.<br/>Parler plus fort : <i>to speak up</i>.'),
(145, 86, 'up', 1, 'Phrasal verb (<i>verbe à particule</i>). &quot;Up&quot; suggère un mouvement vers le haut.<br/>Parler plus fort : <i>to speak up</i>.'),
(146, 87, 'borrowed some money to', 0, '<i>Règle : Le verbe &quot;to borrow something&quot; est toujours suivi de la préposition &quot;from&quot; = emprunter à quelqu?un.</i>'),
(147, 87, 'borrowed some money from', 1, '<i>Règle : Le verbe &quot;to borrow something&quot; est toujours suivi de la préposition &quot;from&quot; = emprunter à quelqu?un.</i>'),
(148, 87, 'borrowed some money of', 0, '<i>Règle : Le verbe &quot;to borrow something&quot; est toujours suivi de la préposition &quot;from&quot; = emprunter à quelqu?un.</i>'),
(149, 87, 'borrowed some money at', 0, '<i>Règle : Le verbe &quot;to borrow something&quot; est toujours suivi de la préposition &quot;from&quot; = emprunter à quelqu?un.</i>'),
(150, 88, 'when he ran', 1, 'L?adverbe &quot;hardly ... when&quot; est utilisé lorsqu?il y a deux évènements dans le passé, un qui suit immédiatement l?autre.<br/><i>Règle : &quot;Hardly&quot; est un adverbe négatif, qui provoque une inversion du sujet et de l?auxiliaire (<b>had</b>)'),
(151, 88, 'when he runs', 0, 'L?adverbe &quot;hardly ... when&quot; est utilisé lorsqu?il y a deux évènements dans le passé, un qui suit immédiatement l?autre.<br/><i>Règle : &quot;Hardly&quot; est un adverbe négatif, qui provoque une inversion du sujet et de l?auxiliaire (<b>had</b>)'),
(152, 88, 'than he ran', 0, 'L?adverbe &quot;hardly ... when&quot; est utilisé lorsqu?il y a deux évènements dans le passé, un qui suit immédiatement l?autre.<br/><i>Règle : &quot;Hardly&quot; est un adverbe négatif, qui provoque une inversion du sujet et de l?auxiliaire (<b>had</b>)'),
(153, 88, 'he runs', 0, 'L?adverbe &quot;hardly ... when&quot; est utilisé lorsqu?il y a deux évènements dans le passé, un qui suit immédiatement l?autre.<br/><i>Règle : &quot;Hardly&quot; est un adverbe négatif, qui provoque une inversion du sujet et de l?auxiliaire (<b>had</b>)'),
(154, 89, 'take over', 0, 'Phrasal verb (<i>verbe à particule</i>). To take on = <i>embaucher quelqu?un</i>.'),
(155, 89, 'take on', 1, 'Phrasal verb (<i>verbe à particule</i>). To take on = <i>embaucher quelqu?un</i>.'),
(156, 89, 'take through', 0, 'Phrasal verb (<i>verbe à particule</i>). To take on = <i>embaucher quelqu?un</i>.'),
(157, 89, 'take with', 0, 'Phrasal verb (<i>verbe à particule</i>). To take on = <i>embaucher quelqu?un</i>.'),
(158, 90, 'ought / repair', 0, '<i>Règle : Le modal &quot;ought&quot est toujours suivi de &quot;to&quot; qui exprime un conseil. (ought to have = should have)<br/> Règle : to have something done = faire faire quelque chose et se forme avec &quot;to have (au temps souhaité) + objet + pa'),
(159, 90, 'ought / mended', 1, '<i>Règle : Le modal &quot;ought&quot est toujours suivi de &quot;to&quot; qui exprime un conseil. (ought to have = should have)<br/> Règle : to have something done = faire faire quelque chose et se forme avec &quot;to have (au temps souhaité) + objet + pa'),
(160, 90, 'should / mended', 0, '<i>Règle : Le modal &quot;ought&quot est toujours suivi de &quot;to&quot; qui exprime un conseil. (ought to have = should have)<br/> Règle : to have something done = faire faire quelque chose et se forme avec &quot;to have (au temps souhaité) + objet + pa'),
(161, 90, 'must / repaired', 0, '<i>Règle : Le modal &quot;ought&quot est toujours suivi de &quot;to&quot; qui exprime un conseil. (ought to have = should have)<br/> Règle : to have something done = faire faire quelque chose et se forme avec &quot;to have (au temps souhaité) + objet + pa'),
(162, 91, 'is moving', 0, '&quot;Ago&quot; est un adverbe de temps qui situe un évènement dans le passé par rapport au moment où l?on parle.<br/><i>Règle : L?emploi du prétérit est obligatoire avec &quot;ago&quot;.</i>'),
(163, 91, 'moved', 1, '&quot;Ago&quot; est un adverbe de temps qui situe un évènement dans le passé par rapport au moment où l?on parle.<br/><i>Règle : L?emploi du prétérit est obligatoire avec &quot;ago&quot;.</i>'),
(164, 91, 'has moved', 0, '&quot;Ago&quot; est un adverbe de temps qui situe un évènement dans le passé par rapport au moment où l?on parle.<br/><i>Règle : L?emploi du prétérit est obligatoire avec &quot;ago&quot;.</i>'),
(165, 91, 'was moved', 1, '&quot;Ago&quot; est un adverbe de temps qui situe un évènement dans le passé par rapport au moment où l?on parle.<br/><i>Règle : L?emploi du prétérit est obligatoire avec &quot;ago&quot;.</i>'),
(166, 92, 'of taking', 0, '<i>Règle : Le verbe &quot;to prevent&quot; est toujours suivi par la préposition &quot;from&quot; + un verbe en <b>-ing</b>.</i>'),
(167, 92, 'for take', 0, '<i>Règle : Le verbe &quot;to prevent&quot; est toujours suivi par la préposition &quot;from&quot; + un verbe en <b>-ing</b>.</i>'),
(168, 92, 'from taking', 1, '<i>Règle : Le verbe &quot;to prevent&quot; est toujours suivi par la préposition &quot;from&quot; + un verbe en <b>-ing</b>.</i>'),
(169, 92, 'to take', 0, '<i>Règle : Le verbe &quot;to prevent&quot; est toujours suivi par la préposition &quot;from&quot; + un verbe en <b>-ing</b>.</i>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
