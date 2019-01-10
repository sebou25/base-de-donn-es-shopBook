-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 08 oct. 2018 à 11:48
-- Version du serveur :  10.1.34-MariaDB
-- Version de PHP :  7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `philia_book_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_online` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `nom`, `is_online`, `parent_id`) VALUES
(1, '2018-09-24 15:08:19', '2018-09-24 15:08:19', 'Auteur', 1, NULL),
(2, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Concept', 1, NULL),
(3, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Philosophe', 1, NULL),
(4, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Littérature', 1, NULL),
(5, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Comics', 1, NULL),
(6, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Spinoza', 1, 1),
(7, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Nietzsche', 1, 1),
(8, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Désir', 1, 2),
(9, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Le mal', 1, 2),
(10, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'L\'amour', 1, 2),
(11, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Deleuze pas à pas', 1, 3),
(12, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Nietzsche pas à pas', 1, 3),
(13, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Spinoza citation', 1, 3),
(14, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Don Quichotte', 1, 4),
(15, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Dom Juan', 1, 4),
(16, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Les diaboliques', 1, 4),
(17, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Walkig dead T1', 1, 5),
(18, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Walkig dead T2', 1, 5),
(19, '2018-09-24 15:08:20', '2018-09-24 15:08:20', 'Walkig dead T3', 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2018_09_12_135756_create_produits_table', 1),
(34, '2018_09_19_142013_create_categories_table', 1),
(35, '2018_09_19_210126_add_category_id_produit_table', 1),
(36, '2018_09_22_162509_add_field_parent_id_categories_table', 1),
(37, '2018_09_23_200431_create_tags_table', 1),
(38, '2018_09_23_203324_create_produit_tag_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `titre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hauteur` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editeur` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_ht` double(8,2) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `created_at`, `updated_at`, `titre`, `hauteur`, `editeur`, `collection`, `description`, `photo`, `prix_ht`, `category_id`) VALUES
(1, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Spinoza Connaître en citations', 'Delassus Eric', 'Ellipses', 'Connaître en citation', 'L’homme n’est pas « dans la nature comme un empire dans un empire » écrit Spinoza dans la préface de la troisième partie de son livre majeur L’Éthique. \n', 'spinoza_citation.jpg', 11.90, 3),
(2, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Traité théologico-politique', 'Spinoza', 'Manzini Frédéric', 'Focus sur ...', 'Jamais personne ne renoncera à son exigence de liberté, car elle est légitime et naturelle. Voici ce que Spinoza entend rappeler au pouvoir politique qui pourrait être tenté de l’oublier, que ce soit par volonté de tout contrôler ou parce qu’il est soumis à des pressions extérieures.', 'spinoza_ttp.jpg', 5.60, 1),
(3, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Deleuze pas à pas ', 'Jacques Vincent', 'Ellipses', 'Pas à pas', 'Si Deleuze suscite la curiosité, voire l’enthousiasme, plus d’un lecteur se trouve désarmé devant la complexité de sa philosophie. Pour appréhender l’oeuvre, cet ouvrage propose deux parcours pas à pas.', 'deleuze_pas_a_pas.jpg', 17.40, 3),
(4, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Ethique', 'Baruch Spinoza', 'Points', 'Oeuvre', ' Le livre que tu tiens prétend faire ton bonheur, par la seule vertu de la mathématique : à toi de voir, lecteur, si peu ou prou il y parvient.\nTu trouveras dans ce volume le texte original de l\' Éthique, tel qu\'il fut établi par Carl Gebhardt en 1925, la traduction que j\'en proposai en 1988, mais longuement revue et amendée, ainsi qu\'un dossier qui te dira ce qu\'on pense avoir été la vie, et la mort, du sage Spinoza. \nBernard Pautrat', 'spinoza_ethic.jpg', 11.90, 1),
(5, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Nietzsche pas à pas', 'Steffens Martin', 'Ellipses', 'Pas à pas', 'En guise d’invitation à son lecteur, Nietzsche avait composé ce petit poème :\n“Ils te séduisent mon style et mon langage ?\nQuoi, tu me suivrais pas à pas ?\nAie souci de n’être fidèle qu’à toi-même –\nEt tu m’auras suivi – tout doux ! tout doux !”\nMais si Nietzsche exige de n’être fidèle qu’à soi-même, pourquoi donc prendre la peine de le lire ?\n.jpg', 'nietzsche_pas_a_pas.jpg', 17.40, 3),
(6, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Ainsi Parlait Zarathoustra', 'Friedrich Nietzsche', 'Points', 'Oeuvre', 'Ainsi parlait Zarathoustra ou Ainsi parla Zarathoustra, sous-titré « Un livre pour tous et pour personne » est un poème philosophique de Friedrich Nietzsche, publié entre 1883 et 1885.', 'nietzsche_zara.jpg', 11.00, 1),
(7, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Le désir', 'Cabestan Philippe', 'Ellipses', 'Notions', '\nA la frontière du cours – dont on ne saurait faire l\'économie – et du recueil de sujets corrigés, Philo-notions voudrait apporter aux élèves des classes terminales une aide concrète.\n', 'desir.jpg', 5.70, 2),
(8, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Le mal', 'Claire Crignon', 'GF Corpus', 'Notions', 'Face à l’existence du mal sous ses multiples formes – crimes, catastrophes naturelles, mal moral ou physique, mal commis ou subi –, nombre de philosophes et de théologiens ont tenté de trouver à ce dernier des justifications.\n', 'mal.jpg', 7.50, 2),
(9, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'L\'amour', 'Éric Blondel', 'GF Corpus', 'Notions', 'Quoi de plus varié que les différentes nuances de l’amour? Amour-passion des amoureux, amour filial, amour platonique, amour hétéro- ou homosexuel, amour des belles choses, du vin ou du chant, amour du pouvoir, amour de Dieu.\n', 'lamour.jpg', 8.55, 2),
(10, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Walking dead 1', 'Robert Kirkman', 'Skyblound', 'Comics', 'Une épidémie de proportions apocalyptiques a balayé le globe, provoquant la montée des morts et se nourrissant des vivants. En quelques mois, la société s\'est effondrée; il n\'y a pas de gouvernement, pas d\'épicerie, pas de livraison du courrier, pas de télévision par câble.', 'walking1.jpg', 11.50, 5),
(11, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Walking dead 2', 'Robert Kirkman', 'Skyblound', 'Comics', 'Une épidémie de proportions apocalyptiques a balayé le globe, provoquant la montée des morts et se nourrissant des vivants. En quelques mois, la société s\'est effondrée; il n\'y a pas de gouvernement, pas d\'épicerie, pas de livraison du courrier, pas de télévision par câble.', 'Walking2.jpg', 11.50, 5),
(12, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Walking dead 3', 'Robert Kirkman', 'Skyblound', 'Comics', 'Une épidémie de proportions apocalyptiques a balayé le globe, provoquant la montée des morts et se nourrissant des vivants. En quelques mois, la société s\'est effondrée; il n\'y a pas de gouvernement, pas d\'épicerie, pas de livraison du courrier, pas de télévision par câble.', 'walking3.jpg', 11.50, 5),
(13, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Dom Juan', 'Molière', 'Pokete', 'Théatre', 'Ce grand seigneur est le diable en personne. Il blasphème, méprise ses créanciers, étincelle d\'esprit et de méchanceté. Il séduit mille femmes, pour les humilier après. À ses côtés, son valet, Sganarelle, est terrorisé par son insolence, son aisance, son cynisme.', 'dom.jpg', 4.50, 4),
(14, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Don Quichote', 'Miguel Cervantes', 'Points', 'Points', 'Mythe du chevalier se battant contre les moulins à vent, dessin de Gustave Doré, de Picasso, de Dali, tel est le don Quichotte qui survit aujourd\'hui dans nos mémoires. Pourtant, ce fou de littérature, ce dévoreur de romans de chevalerie, qui part à l\'aventure pour voir si ce que disent les livres est vrai, est le héros du premier roman moderne.', 'don.jpg', 9.50, 4),
(15, '2018-09-24 15:10:39', '2018-09-24 15:10:39', 'Les diaboliques', 'Barbey d\'Aurevilly', 'Lgf', 'Classique', 'Comme le Diable, qui était un ange aussi, mais qui a culbuté, - si elles sont des anges, c\'est comme lui, - la tête en bas, le... reste en haut ! »', 'diaboliques.jpg', 9.50, 4);

-- --------------------------------------------------------

--
-- Structure de la table `produit_recommande`
--

CREATE TABLE `produit_recommande` (
  `produit_recommande_id` int(10) UNSIGNED NOT NULL,
  `produit_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit_recommande`
--

INSERT INTO `produit_recommande` (`produit_recommande_id`, `produit_id`) VALUES
(1, 2),
(4, 2),
(7, 2),
(2, 4),
(7, 4),
(1, 4),
(7, 6),
(8, 6),
(5, 6),
(9, 7),
(13, 7),
(4, 7),
(6, 8),
(5, 8),
(15, 8),
(7, 9),
(13, 9),
(15, 9),
(2, 1),
(4, 1),
(7, 1),
(1, 3),
(5, 3),
(6, 3),
(1, 5),
(3, 5),
(4, 5),
(14, 13),
(7, 13),
(14, 13),
(13, 14),
(15, 14),
(6, 14),
(13, 15),
(14, 15),
(8, 15),
(11, 10),
(12, 10),
(15, 10),
(10, 11),
(12, 11),
(14, 11),
(10, 12),
(11, 12),
(15, 12);

-- --------------------------------------------------------

--
-- Structure de la table `produit_tag`
--

CREATE TABLE `produit_tag` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `produit_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit_tag`
--

INSERT INTO `produit_tag` (`tag_id`, `produit_id`) VALUES
(1, 1),
(1, 4),
(1, 7),
(1, 9),
(1, 13),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(4, 8),
(4, 15),
(5, 13),
(5, 14),
(5, 15),
(6, 10),
(6, 11),
(6, 12);

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tags`
--

INSERT INTO `tags` (`id`, `created_at`, `updated_at`, `nom`) VALUES
(1, '2018-09-24 15:13:49', '2018-09-24 15:13:49', '#désir'),
(2, '2018-09-24 15:13:49', '2018-09-24 15:13:49', '#philosophe'),
(3, '2018-09-24 15:13:49', '2018-09-24 15:13:49', '#politique'),
(4, '2018-09-24 15:13:49', '2018-09-24 15:13:49', '#mal'),
(5, '2018-09-24 15:13:49', '2018-09-24 15:13:49', '#fiction'),
(6, '2018-09-24 15:13:49', '2018-09-24 15:13:49', '#zombi');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'sebou', 'seb@gmail.com', NULL, '$2y$10$UNSAdrylDx1l3u.ICPkhwebmkC6DcuCtB9HQlStfxgFlPjhnwU.h6', NULL, '2018-10-05 08:05:14', '2018-10-05 08:05:14'),
(3, 'zeb', 'zeb@gmail.com', NULL, '$2y$10$q7da6ct3cwmEbEbKW1PIruz4h7JO6YDAnyd36pvnq0Mly.5THllIC', NULL, '2018-10-05 17:36:16', '2018-10-05 17:36:16'),
(4, 'toto', 'toto@aol.com', NULL, '$2y$10$zxOWrKhRAZjrZaeVXj9nFuf5elQhz.lHwdX3EsxR9lMfaax1EVKHe', NULL, '2018-10-05 20:48:15', '2018-10-05 20:48:15');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produits_category_id_foreign` (`category_id`);

--
-- Index pour la table `produit_recommande`
--
ALTER TABLE `produit_recommande`
  ADD KEY `produit_recommande_id` (`produit_recommande_id`);

--
-- Index pour la table `produit_tag`
--
ALTER TABLE `produit_tag`
  ADD PRIMARY KEY (`tag_id`,`produit_id`),
  ADD KEY `produit_tag_produit_id_foreign` (`produit_id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `produit_tag`
--
ALTER TABLE `produit_tag`
  ADD CONSTRAINT `produit_tag_produit_id_foreign` FOREIGN KEY (`produit_id`) REFERENCES `produits` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `produit_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
