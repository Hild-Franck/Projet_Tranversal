-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 20 Janvier 2016 à 14:06
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `projet_transversal`
--

-- --------------------------------------------------------

--
-- Structure de la table `conversation`
--

CREATE TABLE IF NOT EXISTS `conversation` (
  `ID_Conversation` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` text NOT NULL,
  `fk_ID_Users` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Conversation`),
  KEY `fk_ID_Users` (`fk_ID_Users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `ID_Message` int(11) NOT NULL AUTO_INCREMENT,
  `DateMessage` datetime DEFAULT CURRENT_TIMESTAMP,
  `fk_ID_Users` int(11) NOT NULL,
  `Text` text NOT NULL,
  PRIMARY KEY (`ID_Message`),
  KEY `fk_ID_Users` (`fk_ID_Users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `messaging`
--

CREATE TABLE IF NOT EXISTS `messaging` (
  `ID_Messagerie` int(11) NOT NULL AUTO_INCREMENT,
  `fk_ID_Users` int(11) NOT NULL,
  `fk_ID_Conversation` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Messagerie`),
  KEY `fk_ID_Users` (`fk_ID_Users`),
  KEY `fk_ID_Conversation` (`fk_ID_Conversation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID_Users` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Pass` text NOT NULL,
  PRIMARY KEY (`ID_Users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `conversation`
--
ALTER TABLE `conversation`
  ADD CONSTRAINT `conversation_ibfk_1` FOREIGN KEY (`fk_ID_Users`) REFERENCES `users` (`ID_Users`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`fk_ID_Users`) REFERENCES `users` (`ID_Users`);

--
-- Contraintes pour la table `messaging`
--
ALTER TABLE `messaging`
  ADD CONSTRAINT `messaging_ibfk_1` FOREIGN KEY (`fk_ID_Users`) REFERENCES `users` (`ID_Users`),
  ADD CONSTRAINT `messaging_ibfk_2` FOREIGN KEY (`fk_ID_Conversation`) REFERENCES `conversation` (`ID_Conversation`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
