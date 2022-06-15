-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 13 juin 2022 à 02:04
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Base de données : `application`
--
-- --------------------------------------------------------
--
-- Structure de la table `entrepreneur`
--
CREATE TABLE `entrepreneur` (
  `code_entrepreneur` varchar(25) NOT NULL,
  `nom` text NOT NULL,
  `prénom` text NOT NULL,
  `date de naissance` date NOT NULL,
  `e-mail` text NOT NULL,
  `adresse` varchar(80) NOT NULL,
  `mot_de_passe` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- --------------------------------------------------------
--
-- Structure de la table `livraison`
--
CREATE TABLE `livraison` (
  `code_livraison` varchar(25) NOT NULL,
  `code_utilisateur` varchar(25) NOT NULL,
  `code_livreur` varchar(25) NOT NULL,
  `adresse_livraison` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- --------------------------------------------------------
--
-- Structure de la table `livreur`
--
CREATE TABLE `livreur` (
  `code_livreur` varchar(25) NOT NULL,
  `nom` text NOT NULL,
  `prénom` text NOT NULL,
  `date de naissance` date NOT NULL,
  `e-mail` text NOT NULL,
  `adresse` varchar(80) NOT NULL,
  `secteur` text NOT NULL,
  `mot_de_passe` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- --------------------------------------------------------
--
-- Structure de la table `utilisateur`
--
CREATE TABLE `utilisateur` (
  `code_utilisateur` varchar(25) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `prénom` varchar(80) NOT NULL,
  `date de naissance` date NOT NULL,
  `e-mail` varchar(250) NOT NULL,
  `adresse` varchar(80) NOT NULL,
  `mot_de_passe` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Index pour les tables déchargées
--
--
-- Index pour la table `entrepreneur`
--
ALTER TABLE `entrepreneur`
  ADD PRIMARY KEY (`code_entrepreneur`);
--
-- Index pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`code_livraison`),
  ADD KEY `livraison_ibfk_1` (`code_livreur`),
  ADD KEY `code_utilisateur` (`code_utilisateur`);
--
-- Index pour la table `livreur`
--
ALTER TABLE `livreur`
  ADD PRIMARY KEY (`code_livreur`);
--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`code_utilisateur`);
--
-- Contraintes pour les tables déchargées
--
--
-- Contraintes pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `livraison_ibfk_1` FOREIGN KEY (`code_livreur`) REFERENCES `livreur` (`code_livreur`),
  ADD CONSTRAINT `livraison_ibfk_2` FOREIGN KEY (`code_utilisateur`) REFERENCES `utilisateur` (`code_utilisateur`);
--
-- Contraintes pour la table `livreur`
--
ALTER TABLE `livreur`
  ADD CONSTRAINT `livraison_livreur` FOREIGN KEY (`code_livreur`) REFERENCES `livraison` (`code_livraison`);
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;