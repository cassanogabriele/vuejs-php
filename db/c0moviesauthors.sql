-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 13 fév. 2024 à 17:27
-- Version du serveur :  10.3.39-MariaDB-0+deb10u1
-- Version de PHP :  7.2.34-39+0~20230609.84+debian10~1.gbpf63844

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `c0moviesauthors`
--

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthdate` varchar(11) NOT NULL,
  `styles` varchar(100) NOT NULL,
  `country` varchar(70) NOT NULL,
  `region` varchar(70) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `author` int(11) NOT NULL,
  `publish_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `authors`
--

INSERT INTO `authors` (`id`, `name`, `birthdate`, `styles`, `country`, `region`, `description`, `picture`, `author`, `publish_date`) VALUES
(15, 'Isabella Montague', '14-07-1979', 'Aventure', 'France', 'Saint-Tropez', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ullamcorper interdum purus non facilisis.', 'isabella-montague.png', 1, '2020-09-14 11:41:28'),
(16, 'Felix Reynolds', '01-02-1982', 'Comédie', 'Espagne', 'Madrid', 'Praesent nisl nisi, lacinia quis quam ut, porta bibendum odio. Nullam lacus neque, volutpat sed eleifend non, ultricies at enim. ', 'felix-reynolds.png', 1, '2020-09-14 11:42:20'),
(17, 'Eliza Mercer', '10-12-1965', 'Horreur', 'Etats-Unis', 'Los Angeles', 'Vestibulum ut dignissim turpis. In hac habitasse platea dictumst. Proin odio nibh, dignissim id odio id, efficitur tristique odio.', 'eliza-mercer.png', 1, '2020-09-14 11:42:59'),
(18, 'Jasper Hale', '05-06-1978', 'Comédie', 'Etats-Unis', 'Washington', 'Donec congue pretium mauris, sit amet rhoncus lacus lobortis eu. Fusce venenatis condimentum arcu, et suscipit nunc. ', 'jasper-hale.png', 1, '2020-09-14 11:43:35'),
(19, 'Seraphina Quinn', '18-10-1983', 'Fantastique', 'Etats-Unis', 'Oregon', 'Pellentesque ultricies enim sed eros posuere, quis congue metus iaculis. Cras viverra eu nulla eu ornare. Fusce interdum ante ac commodo vulputate.', 'seraphina-quinn.png', 1, '2020-09-14 11:46:06'),
(20, 'Nolan Carrington', '05-05-1956', 'Horreur', 'Italie', 'Toscane', 'Aenean magna nulla, fringilla vel libero et, rutrum dictum velit. In volutpat, nisi id ultrices egestas, libero justo efficitur ante, sed bibendum enim metus nec nisl.', 'nolan-carrigton.png', 1, '2020-09-14 11:47:02'),
(21, 'Aurora Santiago', '03-02-1949', 'Comédie', 'France', 'Bordeaux', 'Curabitur tempor, elit a dictum eleifend, lorem leo fringilla quam, vel ornare dolor augue at nulla. Phasellus a sapien lectus. ', 'aurora-santiago.png', 1, '2020-09-14 11:48:39'),
(22, 'Donovan Blake', '25-10-1975', 'Fantastique', 'France', 'Lille', 'Etiam aliquet ipsum libero, id euismod libero lobortis ac. Fusce posuere accumsan ultricies. Quisque rhoncus aliquet est ac semper. ', 'donovan-blake.png', 1, '2020-09-14 11:49:09'),
(23, 'Margot Sinclair', '21-03-1965', 'Comédie', 'USA', 'California', 'Proin vitae faucibus sem, quis varius libero. Nulla pretium volutpat suscipit. Maecenas vel augue eu tellus dignissim tempor. Nulla facilisi. ', 'margot-sinclair.png', 1, '2020-09-14 11:50:01'),
(24, 'Remy Archer', '07-08-1988', 'Horreur', 'USA', 'Minessota', 'Curabitur accumsan libero et tellus congue, et molestie dolor faucibus. Fusce sollicitudin a orci quis sollicitudin. ', 'remy-archer.png', 1, '2020-09-14 11:51:18'),
(25, 'Celeste Donovan', '04-09-1999', 'Comédie', 'Argentine', 'Mendoza', 'Curabitur pulvinar viverra risus eget condimentum. Nulla velit erat, semper nec odio a, placerat commodo nisi. ', 'celeste-donovan.png', 1, '2020-09-14 11:52:17'),
(30, 'Atticus Wells', '12-05-1971', 'Fanastique', 'France', 'Nantes', 'Pellentesque massa lacus, tincidunt at arcu sed, auctor elementum urna. Etiam tincidunt nisi a urna varius, at elementum velit viverra. ', 'atticus-wells.png', 1, '2020-09-15 14:02:55');

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(70) NOT NULL,
  `region_name` varchar(80) NOT NULL,
  `flag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `admin` int(11) NOT NULL DEFAULT 0,
  `email` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `admin`, `email`, `password`) VALUES
(1, 1, 'jul.az@hotmail.com', 'test');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `country` (`country`),
  ADD KEY `region` (`region`);

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `country_name` (`country_name`),
  ADD KEY `region_name` (`region_name`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`author`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_ibfk_1` FOREIGN KEY (`country_name`) REFERENCES `authors` (`country`),
  ADD CONSTRAINT `countries_ibfk_2` FOREIGN KEY (`region_name`) REFERENCES `authors` (`region`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
