-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 03 juin 2021 à 08:23
-- Version du serveur :  8.0.18
-- Version de PHP :  7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mugs_party`
--

-- --------------------------------------------------------

--
-- Structure de la table `mugs`
--

DROP TABLE IF EXISTS `mugs`;
CREATE TABLE IF NOT EXISTS `mugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `description` text NOT NULL,
  `qte` int(11) NOT NULL,
  `price` varchar(10) NOT NULL,
  `color` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `size` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `new` tinyint(1) NOT NULL,
  `tendances` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mugs`
--

INSERT INTO `mugs` (`id`, `title`, `slug`, `image`, `description`, `qte`, `price`, `color`, `size`, `new`, `tendances`) VALUES
(10, 'black mug', 'black-mug', '001.png', 'Mug design noir et blanc Yaara, utilisation : maison, bureau.\r\nSpécial développeur.', 100, '30', 'Marron', 'S,M', 1, 1),
(20, 'perso mug', 'perso-mug', '002.png', 'Personnalise ton mug. Utilisez une photo, un logo, un texte de votre choix.', 0, '12', 'Vert,Blanc,Rose', 'M,XL', 0, 0),
(30, 'small mug', 'small-mug', '003.png', 'Trop de café, tue le café !!! Opter pour un petit mug.', 80, '8', 'Blanc,Rose,Violet', 'S,M', 0, 1),
(50, 'papy poule mug', 'papy-poule-mug', '004.png', 'Une idée cadeau ? Fêtes des papy ? Pour un super papy poule.', 10, '7', 'Blanc,Jaune,Vert', 'XXL,S', 0, 0),
(51, 'mamie mug', 'mamie-mug', '005.png', 'Une idée cadeau ? Fêtes des mamies ?', 60, '7', 'Vert,Jaune', 'M,XL,XXL', 0, 0),
(52, 'déguelasse mug', 'deguelasse-mug', '006.png', 'Tu es un gros déguellase ? Voici le mug du baveur déguelasse.', 98, '13', 'Jaune,Violet,Vert', 'XXL', 1, 1),
(53, 'sexy mug', 'sexy-mug', '007.png', 'Le mug du sexy boy. Pête toi la dès le matin avec ce mug aussi sexy que toi.', 65, '26', 'Rose,Jaune', 'XXL,M', 1, 1),
(54, 'capitaine mug', 'capitaine-mug', '008.png', 'Le mug du capitaine. Le mug idéal pour tout pirate du net', 0, '8', 'Vert', 'M', 0, 0),
(55, 'beau frère mug', 'beau-frere-mug', '009.png', 'Tu pense avoir la chance, d\'avoir un beau frère cool. Alors ce MUG est pour toi.', 99, '15', 'Noir,Rose', 'M,S,XXL', 1, 0),
(56, 'a morning mug', 'a-morning-mug', '010.png', 'Tu te lève du pied gauche, ce mug est pour toi.', 0, '16', 'Vert,Jaune,Marron,Violet,Noir,Blanc', 'S,XXL,XL', 0, 0),
(57, 'homer mug', 'homer-mug', '011.png', 'Avant la bière, un bon café dans le mug Homer pour commencer une bonne journée.', 55, '22', 'Noir,Marron', 'S,XXL', 1, 0),
(58, 'dark vador mug', 'dark-vador-mug', '012.png', 'Pour les fan de Dark Vador et du côté obscure. Que la force obscure sois avec toi.', 99, '10', 'Vert,Rose,Noir,Marron', 'M,XL,XXL', 1, 1),
(32, 'saucisse mug', 'saucisse-mug', '', 'Le mug saucisse.', 20, '14', 'Vert,Blanc', 'M,S', 1, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
