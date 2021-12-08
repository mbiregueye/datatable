-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 08 déc. 2021 à 11:02
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_datatable`
--

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `product_name` varchar(255) NOT NULL COMMENT 'product name',
  `price` double NOT NULL COMMENT 'product price',
  `minStock` int(11) NOT NULL COMMENT 'min stock product'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='datatable demo table';

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `product_name`, `price`, `minStock`) VALUES
(1, 'Gimjimbre Proudre', 320800, 61),
(2, 'Gimjimbre cok', 170750, 63),
(3, 'Tamarin Poudre', 86000, 66),
(4, 'Tamarin semicoke', 433060, 22),
(5, 'Tamarin coke', 162700, 33),
(6, 'Tamarin racine', 372000, 61),
(7, 'Lunette Blanc', 137500, 59),
(8, 'Nivea Bleu', 327900, 55),
(9, 'Lunette maron', 205500, 39),
(10, 'Nivea Blanc', 103600, 23),
(11, 'Nivea maron', 90560, 30),
(12, 'Quinn FX', 342000, 22),
(13, 'Charo 45', 470600, 36),
(14, 'Charo 56', 313500, 43),
(15, 'Charo 212', 385750, 19),
(16, 'Cartouche B', 198500, 66),
(17, 'Paulene xp2', 725000, 64),
(18, 'Cartouche B', 237500, 59),
(19, 'Cartouche BC', 132000, 41),
(20, 'Cartouche R2', 217500, 35),
(21, 'Pot 22', 345000, 30),
(22, 'Pot 21', 675000, 40),
(23, 'Pot 11', 106450, 21),
(24, 'Pot 11B', 85600, 23),
(25, 'Pot 1', 1200000, 47),
(26, 'Gavin Joyce', 92575, 42),
(27, 'Jennifer Chang', 357650, 28),
(28, 'Brenden Wagner', 206850, 28),
(29, 'Fiona Green', 850000, 48),
(30, 'Shou Itou', 163000, 20),
(31, 'Michelle House', 95400, 37),
(32, 'Suki Burks', 114500, 53),
(33, 'Prescott Bartlett', 145000, 27),
(34, 'Gavin Cortez', 235500, 22),
(35, 'Martena Mccray', 324050, 46),
(36, 'Unity Butler', 85675, 47),
(37, 'Howard Hatfield', 164500, 51),
(38, 'Hope Fuentes', 109850, 41),
(39, 'Vivian Harrell', 452500, 62),
(40, 'Timothy Mooney', 136200, 37),
(41, 'Jackson Bradshaw', 645750, 65),
(42, 'Olivia Liang', 234500, 64),
(43, 'Bruno Nash', 163500, 38),
(44, 'Sakura Yamamoto', 139575, 37),
(45, 'Thor Walton', 98540, 61),
(46, 'Finn Camacho', 87500, 47),
(47, 'Serge Baldwin', 138575, 64),
(48, 'Zenaida Frank', 125250, 63),
(49, 'Zorita Serrano', 115000, 56),
(50, 'Jennifer Acosta', 75650, 43),
(51, 'Cara Stevens', 145600, 46),
(52, 'Hermione Butler', 356250, 47),
(53, 'Lael Greer', 103500, 21),
(54, 'Jonas Alexander', 86500, 30),
(55, 'Shad Decker', 183000, 51),
(56, 'Michael Bruce', 183000, 29),
(57, 'kahy yh', 183000, 29),
(58, 'mostiba hd', 183000, 29),
(59, 'Anis Bruce', 183000, 29),
(60, 'karvac Bruce', 183000, 29),
(61, 'Forza Xp', 183000, 29),
(62, 'Cla Up', 183000, 29),
(63, 'Tournevice USA', 183000, 29),
(64, 'Tournevice FR', 183000, 29),
(65, 'Cavier Bruce', 183000, 29),
(66, 'USB2', 183000, 29),
(67, 'USB3', 112000, 27),
(68, 'USB4 Snider', 112000, 27),
(69, 'Stylo Bleu', 112000, 27),
(70, 'Stylo Rouge', 112000, 27);


--
-- Index pour les tables déchargées
--

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
