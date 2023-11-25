-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 02:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imagehosting`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` int(50) NOT NULL,
  `postid` int(50) NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `userid`, `postid`, `text`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'test', '2023-10-30 07:14:04', '2023-10-30 07:37:46'),
(2, 13, 29, 'Jai Babu', '2023-11-04 17:57:44', '2023-11-04 17:57:44'),
(3, 13, 20, 'Only Anna Dosa !!!!!!!!!!!!!!!!', '2023-11-04 17:59:00', '2023-11-04 17:59:00'),
(4, 13, 20, 'Only Anna!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', '2023-11-04 18:00:14', '2023-11-04 18:00:14'),
(5, 13, 20, 'dosaaa', '2023-11-04 18:01:03', '2023-11-04 18:01:03'),
(6, 13, 20, 'sasasas', '2023-11-04 18:01:29', '2023-11-04 18:01:29'),
(7, 13, 20, 'sasasasasas', '2023-11-04 18:02:50', '2023-11-04 18:02:50'),
(8, 13, 20, 'sasasasasasa', '2023-11-04 18:04:07', '2023-11-04 18:04:07'),
(9, 13, 20, 'south Indian Dosa', '2023-11-04 18:06:09', '2023-11-04 18:06:09'),
(10, 13, 20, 'dsjdksjdsjdhkjsd', '2023-11-04 18:07:24', '2023-11-04 18:07:24'),
(11, 13, 20, 'sasasasa', '2023-11-04 18:09:12', '2023-11-04 18:09:12'),
(12, 21, 66, 'wow', '2023-11-07 07:29:38', '2023-11-07 07:29:38'),
(13, 21, 66, 'wow', '2023-11-07 07:30:35', '2023-11-07 07:30:35'),
(14, 21, 66, 'wow', '2023-11-07 07:31:07', '2023-11-07 07:31:07'),
(15, 21, 75, 'hiii', '2023-11-07 07:31:27', '2023-11-07 07:31:27'),
(16, 18, 87, 'wow', '2023-11-07 07:34:04', '2023-11-07 07:34:04'),
(17, 18, 75, 'beautiful ❤❤❤❤', '2023-11-07 07:38:52', '2023-11-07 07:38:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(50) NOT NULL,
  `post_id` int(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(65, 21, 87, '2023-11-07 07:29:01', '2023-11-07 07:29:01'),
(66, 21, 76, '2023-11-07 07:29:04', '2023-11-07 07:29:04'),
(67, 21, 75, '2023-11-07 07:29:06', '2023-11-07 07:29:06'),
(68, 21, 86, '2023-11-07 07:29:08', '2023-11-07 07:29:08'),
(69, 21, 56, '2023-11-07 07:29:24', '2023-11-07 07:29:24'),
(70, 21, 66, '2023-11-07 07:29:25', '2023-11-07 07:29:25'),
(71, 18, 87, '2023-11-07 07:34:41', '2023-11-07 07:34:41'),
(72, 18, 86, '2023-11-07 07:34:42', '2023-11-07 07:34:42'),
(73, 18, 75, '2023-11-07 07:38:35', '2023-11-07 07:38:35'),
(74, 18, 76, '2023-11-07 07:41:50', '2023-11-07 07:41:50'),
(75, 18, 66, '2023-11-07 07:41:51', '2023-11-07 07:41:51'),
(76, 18, 55, '2023-11-07 07:41:53', '2023-11-07 07:41:53'),
(77, 18, 56, '2023-11-07 07:41:55', '2023-11-07 07:41:55'),
(78, 18, 47, '2023-11-07 07:41:56', '2023-11-07 07:41:56'),
(79, 18, 46, '2023-11-07 07:41:57', '2023-11-07 07:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_10_30_100333_create_users_table', 1),
(5, '2023_10_30_100907_create_posts_table', 2),
(6, '2023_10_30_101742_create_comments_table', 3),
(7, '2023_11_02_055201_create_profiles_table', 4),
(8, '2023_11_02_055929_create_registers_table', 5),
(9, '2023_11_03_060512_create_profiles_table', 6),
(10, '2023_11_04_065355_create_likes_table', 6),
(11, '2023_11_05_080015_create_tags_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\user', 9, 'MyAuthApp', '307cd88f89325d2f08672f0a9d864e0f2a10291d4475b07a7da3a12fbe019ca8', '[\"*\"]', NULL, NULL, '2023-11-03 08:51:25', '2023-11-03 08:51:25'),
(2, 'App\\Models\\user', 10, 'MyAuthApp', 'fd4a8bac3bcd42fa83e58c137fa148177713e0fd18e62c1f0ae4bb34bcac4fb6', '[\"*\"]', NULL, NULL, '2023-11-03 08:58:18', '2023-11-03 08:58:18'),
(3, 'App\\Models\\User', 3, 'authToken', '6e639b156165727c56971f53caeb5db14a7e070735ae5f99a8a791fc3218d90d', '[\"*\"]', NULL, NULL, '2023-11-03 09:07:36', '2023-11-03 09:07:36'),
(4, 'App\\Models\\User', 10, 'authToken', 'e4916c305a3a3ee5528e0edbb7e7a4ffe1d56b0658383014592261bd50080481', '[\"*\"]', NULL, NULL, '2023-11-03 09:07:48', '2023-11-03 09:07:48'),
(5, 'App\\Models\\User', 10, 'authToken', 'f794efb1e75777315bdad85c07b684407277d7d59262d7a69750df437f378011', '[\"*\"]', NULL, NULL, '2023-11-03 23:46:57', '2023-11-03 23:46:57'),
(6, 'App\\Models\\User', 10, 'authToken', 'c12a503d1534e527d5e29d88d5d08e3b0200157610ddc58aa5bc2efdf08702c0', '[\"*\"]', NULL, NULL, '2023-11-04 00:00:53', '2023-11-04 00:00:53'),
(7, 'App\\Models\\User', 10, 'authToken', '97935c4d7041bcaa0e873e0ca8ec91668c387e2ae9f16a5c8d1321f627a57060', '[\"*\"]', NULL, NULL, '2023-11-04 00:01:19', '2023-11-04 00:01:19'),
(8, 'App\\Models\\User', 10, 'authToken', '58cc72047de42fd81fb34b2746690cebe1c29d4350a9c066120e1a536919511a', '[\"*\"]', NULL, NULL, '2023-11-04 00:03:06', '2023-11-04 00:03:06'),
(9, 'App\\Models\\User', 10, 'authToken', 'a961398bc0248ab2cc9753e718a79b89a8919d3d13cd7ccb9259bce53201aa22', '[\"*\"]', NULL, NULL, '2023-11-04 00:13:02', '2023-11-04 00:13:02'),
(10, 'App\\Models\\User', 10, 'authToken', '7eaa800c74f87aba8cee67b339defe201ddcd2d33cac9a7ebf4b7b92dbe874bc', '[\"*\"]', NULL, NULL, '2023-11-04 00:17:55', '2023-11-04 00:17:55'),
(11, 'App\\Models\\User', 10, 'authToken', '13219acffae37aa483b6ffcdb8c43e7b541bcef5c9ec64b44128c230abe3655f', '[\"*\"]', NULL, NULL, '2023-11-04 00:19:06', '2023-11-04 00:19:06'),
(12, 'App\\Models\\User', 10, 'authToken', '0d1249e1126d1cf7675913f9f70b4610e6e63bda67b16ab68aea76dde4c88f44', '[\"*\"]', NULL, NULL, '2023-11-04 00:19:47', '2023-11-04 00:19:47'),
(13, 'App\\Models\\User', 10, 'authToken', '8c0243ade981e41c3c214691483249090da10903328c97d20f6a668fb0aae8bd', '[\"*\"]', NULL, NULL, '2023-11-04 00:20:31', '2023-11-04 00:20:31'),
(14, 'App\\Models\\User', 10, 'authToken', '13f3996fd9dead594866d9e8de6fabee86252dae13a0f886682b96abf2af83d0', '[\"*\"]', NULL, NULL, '2023-11-04 00:46:01', '2023-11-04 00:46:01'),
(15, 'App\\Models\\User', 10, 'authToken', '4aa6fc47eed6f9e228d520e2f0f917868dc9708ab625508bd2abd998a340e9c8', '[\"*\"]', NULL, NULL, '2023-11-04 01:01:42', '2023-11-04 01:01:42'),
(16, 'App\\Models\\User', 11, 'MyAuthApp', 'e3464bdfef0f0c887c0c72894fdb87840da57f4081642eeee6880adafa65430c', '[\"*\"]', NULL, NULL, '2023-11-04 02:25:52', '2023-11-04 02:25:52'),
(17, 'App\\Models\\User', 12, 'MyAuthApp', '2499e760d61a3af3f45c0aed171e2d8a7a548208da2dce8cd04771a74be11def', '[\"*\"]', NULL, NULL, '2023-11-04 02:26:37', '2023-11-04 02:26:37'),
(18, 'App\\Models\\User', 10, 'authToken', '44fcf0d3e0f22d0b09dfdf48eb9bc135cd38515f0ec3124ceb57bc0cb5cedefb', '[\"*\"]', NULL, NULL, '2023-11-04 02:26:52', '2023-11-04 02:26:52'),
(19, 'App\\Models\\User', 10, 'authToken', '73951b06d4b3a13fcd6040c8f85d13801a67dd98f2c4db5f16b3699f156c6eb0', '[\"*\"]', NULL, NULL, '2023-11-04 02:30:08', '2023-11-04 02:30:08'),
(20, 'App\\Models\\User', 10, 'authToken', 'be654a66990eb493cca70afa95cf5a1c03de02d1c8b999242e36a76438cf5a45', '[\"*\"]', NULL, NULL, '2023-11-04 02:31:44', '2023-11-04 02:31:44'),
(21, 'App\\Models\\User', 10, 'authToken', 'd9f934e1b82c15b25b0bb9ab218e3c00a606f4a007c9894ce0e1b53888a5f184', '[\"*\"]', NULL, NULL, '2023-11-04 02:37:50', '2023-11-04 02:37:50'),
(22, 'App\\Models\\User', 10, 'authToken', 'd4db677407c6ed8d4cfe2e9c45d3313016194fedf3b6b4c0afe4b5ebee6974c2', '[\"*\"]', NULL, NULL, '2023-11-04 02:43:27', '2023-11-04 02:43:27'),
(23, 'App\\Models\\User', 10, 'authToken', '199c100993479c65d4813bfc3bce2f37bceff7227053f9d7d77c54e54ee2d98a', '[\"*\"]', NULL, NULL, '2023-11-04 03:11:42', '2023-11-04 03:11:42'),
(24, 'App\\Models\\User', 10, 'authToken', 'ed8650b4fa919749d0b5a3f538e1c3682baa80ccbd0a132ab1b4141145d8f855', '[\"*\"]', NULL, NULL, '2023-11-04 07:01:36', '2023-11-04 07:01:36'),
(25, 'App\\Models\\User', 13, 'MyAuthApp', 'ca4159f94f7c4dbf2bfe598aa6d1749350ddc65b01ec68fec348c8963235200c', '[\"*\"]', NULL, NULL, '2023-11-04 07:02:50', '2023-11-04 07:02:50'),
(26, 'App\\Models\\User', 13, 'authToken', '986f0765f50eab6de74841906e4fbf954afb378381cbb66ec1c4c5c939faf61b', '[\"*\"]', NULL, NULL, '2023-11-04 07:03:22', '2023-11-04 07:03:22'),
(27, 'App\\Models\\User', 10, 'authToken', '763d8aa1cc898bc7ac1481fb46a471118bc2f62f42f50674a26537d9123026e1', '[\"*\"]', NULL, NULL, '2023-11-04 17:04:55', '2023-11-04 17:04:55'),
(28, 'App\\Models\\User', 13, 'authToken', '7a5eefd9479039e5043989ba1499018cd542a9ca37f9898ed44d26133c529d3a', '[\"*\"]', NULL, NULL, '2023-11-04 17:05:20', '2023-11-04 17:05:20'),
(29, 'App\\Models\\User', 14, 'MyAuthApp', '491681e7e493d8ea87eaf663ec13023edf35d63810f514eb74c26107113546db', '[\"*\"]', NULL, NULL, '2023-11-05 06:26:11', '2023-11-05 06:26:11'),
(30, 'App\\Models\\User', 15, 'MyAuthApp', 'f7c9840b74bc4270ea7474a082c24ec7d2daa9fa62de0324df00b63aa955a7aa', '[\"*\"]', NULL, NULL, '2023-11-05 06:32:58', '2023-11-05 06:32:58'),
(31, 'App\\Models\\User', 16, 'MyAuthApp', '9ff4d5fe3fad8c643d69f5e6ff6242c6210b0b395af4573c1f55bc4b2e368e37', '[\"*\"]', NULL, NULL, '2023-11-05 06:39:30', '2023-11-05 06:39:30'),
(32, 'App\\Models\\User', 17, 'MyAuthApp', '5108ce410045d3f3c03a7b62b9630752aeeb7c7de832a559b27a4e190268cc6e', '[\"*\"]', NULL, NULL, '2023-11-05 06:42:03', '2023-11-05 06:42:03'),
(33, 'App\\Models\\User', 18, 'authToken', 'e5a39240e15d5b66a91a08c4ce070ab5b0b9b385cb28655afcdb47c51f36d7b1', '[\"*\"]', NULL, NULL, '2023-11-07 07:33:49', '2023-11-07 07:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photopath` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(50) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `userid`, `title`, `description`, `tags`, `photopath`, `thumbnail`, `active`, `likes`, `created_at`, `updated_at`) VALUES
(38, '2', 'Festival - Diwali', 'Bring the festivities in full style. #Diwalivibes #festive #indianfestival', '[\"diwalivibes\",\"festive\",\"indianfestival\"]', '[\"diwali.jpeg\"]', NULL, '0', 0, '2023-11-05 04:33:45', '2023-11-05 04:33:45'),
(39, '2', 'Vacation - Mumbai', 'Exploring the vibrant streets of Mumbai. #mumbaikar #mumbaidiaries  #trip #vacation #travel  #nature #naturephotography', '[\"mumbaikar\",\"mumbaidiaries\",\"trip\",\"vacation\",\"travel\",\"nature\",\"naturephotography\"]', '[\"getway.jpg\",\"marinedrive.jpg\",\"taj.jpg\"]', NULL, '0', 0, '2023-11-05 04:35:30', '2023-11-05 04:35:30'),
(40, '2', 'Sports - Cricket', 'The legacy of legends, the journey of champions. #sports #cricket #ipl #worldcup #team #sports #champion', '[\"sports\",\"cricket\",\"ipl\",\"worldcup\",\"team\",\"sports\",\"champion\"]', '[\"cricket.jpeg\"]', NULL, '0', 0, '2023-11-05 04:36:11', '2023-11-05 04:36:11'),
(41, '2', 'Food', 'Being a foodie is difficult because all you want to do is eat – sometimes your friends’ food as well. #foodie #yummy #foodlover #healthyfood #tasty #delicious', '[\"foodie\",\"yummy\",\"foodlover\",\"healthyfood\",\"tasty\",\"delicious\"]', '[\"Food1.jpeg\",\"Food2.jpeg\",\"Food3.jpeg\"]', NULL, '0', 0, '2023-11-05 04:37:34', '2023-11-05 04:37:34'),
(42, '2', 'Shopping - Watch', 'Shop till you drop! #shopping #fashion #style #trend #love', '[\"shopping\",\"fashion\",\"style\",\"trend\",\"love\"]', '[\"watch.jpeg\",\"watch1.jpeg\"]', NULL, '0', 0, '2023-11-05 04:38:24', '2023-11-05 04:38:24'),
(43, '2', 'Movie', '“Theater date nights: making memories, one film at a time.” #cinema #movie #hollywood #bollywood #tollywood #films', '[\"cinema\",\"movie\",\"hollywood\",\"bollywood\",\"tollywood\",\"films\"]', '[\"movie.jpeg\"]', NULL, '0', 0, '2023-11-05 04:39:08', '2023-11-05 04:39:08'),
(44, '2', 'Bar & Grill', '\"Cocktails are a celebration of flavor and creativity.\" #cocktails #happyhour #WineWednesday', '[\"cocktails\",\"happyhour\",\"winewednesday\"]', '[\"bar.jpeg\",\"bar1.jpeg\"]', NULL, '0', 0, '2023-11-05 04:39:51', '2023-11-05 04:39:51'),
(45, '2', 'Restaurant', 'It is the place where my dreams meet with reality. #restaurant #weekend', '[\"restaurant\",\"weekend\"]', '[\"Restaurant.jpg\"]', NULL, '0', 0, '2023-11-05 04:41:06', '2023-11-05 04:41:06'),
(46, '2', 'Cafe', 'Coffee is the best part of waking up. #cafe #coffeetime #coffeelover #latte #espresso #cappuccino', '[\"cafe\",\"coffeetime\",\"coffeelover\",\"latte\",\"espresso\",\"cappuccino\"]', '[\"coffee.jpg\"]', NULL, '0', 1, '2023-11-05 04:42:07', '2023-11-07 07:41:57'),
(47, '2', 'Casino', 'Get ready to roll the dice and seize the jackpot!!! #jackpot #casinoroyale #casinos #casinogames #casinonight', '[\"jackpot\",\"casinoroyale\",\"casinos\",\"casinogames\",\"casinonight\"]', '[\"casino.jpeg\",\"casino1.jpeg\",\"casino2.jpeg\"]', NULL, '0', 1, '2023-11-05 04:42:55', '2023-11-07 07:41:56'),
(48, '3', 'Museum', 'The best introduction to art is to stroll through a museum. #streetart #modernart #exhibition #wallart #ancient #historical #statue', '[\"streetart\",\"modernart\",\"exhibition\",\"wallart\",\"ancient\",\"historical\",\"statue\"]', '[\"Museum.jpeg\",\"Museum1.jpg\"]', NULL, '0', 0, '2023-11-05 04:44:36', '2023-11-05 04:44:36'),
(49, '3', 'Sports - Football', 'Where legends are made and memories are cherished. #footballplayer #championsleague #team #sports #champion', '[\"footballplayer\",\"championsleague\",\"team\",\"sports\",\"champion\"]', '[\"football.jpeg\"]', NULL, '0', 0, '2023-11-05 04:45:26', '2023-11-05 04:45:26'),
(50, '3', 'Movie', 'Enjoyed the movie. #cinema #movie #hollywood #bollywood #tollywood #films', '[\"cinema\",\"movie\",\"hollywood\",\"bollywood\",\"tollywood\",\"films\"]', '[\"movie2.jpeg\"]', NULL, '0', 0, '2023-11-05 04:46:35', '2023-11-05 04:46:35'),
(51, '3', 'Shopping - Shoes', 'Lots of bags...lots of shopping!!! #shopping #fashion #style #trend #love', '[\"shopping\",\"fashion\",\"style\",\"trend\",\"love\"]', '[\"shoes.jpeg\"]', NULL, '0', 0, '2023-11-05 04:48:05', '2023-11-05 04:48:05'),
(52, '3', 'Food', 'Good food, good mood…!!! #instafood #dessert #tasty #colddrink  #foodie #yummy #foodlover #healthyfood #delicious', '[\"instafood\",\"dessert\",\"tasty\",\"colddrink\",\"foodie\",\"yummy\",\"foodlover\",\"healthyfood\",\"delicious\"]', '[\"Food.jpeg\",\"Food4.jpeg\",\"Food5.jpg\"]', NULL, '0', 0, '2023-11-05 04:48:42', '2023-11-05 04:48:42'),
(53, '3', 'Actor - Sam', 'Celebrity dreams, set to the perfect soundtrack. #actors #flims #movie #telugucinema #teluguactress', '[\"actors\",\"flims\",\"movie\",\"telugucinema\",\"teluguactress\"]', '[\"sam.jpeg\",\"sam1.jpeg\"]', NULL, '0', 0, '2023-11-05 04:50:39', '2023-11-05 04:50:39'),
(54, '3', 'Vacation-Hyderabad', 'In a world full of trends, be a Hyderabadi charm. #hyderabaddairies #photooftheday #picoftheday #trip #vacation #nature #travel #naturephotography', '[\"hyderabaddairies\",\"photooftheday\",\"picoftheday\",\"trip\",\"vacation\",\"nature\",\"travel\",\"naturephotography\"]', '[\"Hyd.jpeg\",\"Hyd1.jpeg\",\"Hyd2.jpg\",\"Hyd4.jpg\"]', NULL, '0', 0, '2023-11-05 04:51:49', '2023-11-05 04:51:49'),
(55, '3', 'Cartoon - Tom & Jerry', 'A comedy duo like no other. #cartoon #tomandjerry #enjoying', '[\"cartoon\",\"tomandjerry\",\"enjoying\"]', '[\"tomnjerry.jpeg\"]', NULL, '0', 1, '2023-11-05 04:53:27', '2023-11-07 07:41:53'),
(56, '3', 'Quotes', 'Lines... #quoteoftheday  #thoughts', '[\"quoteoftheday\",\"thoughts\"]', '[\"quote.jpg\"]', NULL, '0', 2, '2023-11-05 04:54:03', '2023-11-07 07:41:55'),
(57, '3', 'Outing', 'Calories don’t count when you’re on vacation. #picnic #dayout #happyholidays #enjoying #travel #nature', '[\"picnic\",\"dayout\",\"happyholidays\",\"enjoying\",\"travel\",\"nature\"]', '[\"Picnic.jpg\",\"picnic1.jpeg\"]', NULL, '0', 0, '2023-11-05 04:55:55', '2023-11-05 04:55:55'),
(58, '4', 'Dance - Bharatanatyam', 'Dance with a sparkle in your eyes. #bharatanatyam #indianclassicaldance #dance #classicaldance #dancer #indian #art', '[\"bharatanatyam\",\"indianclassicaldance\",\"dance\",\"classicaldance\",\"dancer\",\"indian\",\"art\"]', '[\"dance.jpg\"]', NULL, '0', 0, '2023-11-05 04:57:38', '2023-11-05 04:57:38'),
(59, '4', 'Actor - Mahesh Babu', 'Beauty & Charm! #ssmb #telugucinema #teluguactress #maheshbabufans #indianactor  #love #nani #milkyboy #chocolateboy #superstarmaheshbabu #mb #actors #flims #movie', '[\"ssmb\",\"telugucinema\",\"teluguactress\",\"maheshbabufans\",\"indianactor\",\"love\",\"nani\",\"milkyboy\",\"chocolateboy\",\"superstarmaheshbabu\",\"mb\",\"actors\",\"flims\",\"movie\"]', '[\"mb.jpg\",\"mb1.jpg\",\"mb2.jpg\",\"mb3.jpg\",\"mb5.jpeg\",\"mb6.jpg\"]', NULL, '0', 0, '2023-11-05 04:59:55', '2023-11-05 04:59:55'),
(60, '4', 'Rain - Baarish', 'Peacefull rain..#barish #rain #poetry #rainyday #nature #shayari #monsoon  #mausam #weather #chai', '[\"barish\",\"rain\",\"poetry\",\"rainyday\",\"nature\",\"shayari\",\"monsoon\",\"mausam\",\"weather\",\"chai\"]', '[\"rain.jpg\",\"rain1.jpg\",\"rain2.jpg\"]', NULL, '0', 0, '2023-11-05 05:00:59', '2023-11-05 05:00:59'),
(61, '4', 'Dessert - IceCream', 'Cold treats are my kind of comfort food. #icecream #dessert #food #yummy #icecreamlover #delicious #tasty #icecreamcone #icecreamtime #icecreamlovers #vanilla #strawberry #butterscotch', '[\"icecream\",\"dessert\",\"food\",\"yummy\",\"icecreamlover\",\"delicious\",\"tasty\",\"icecreamcone\",\"icecreamtime\",\"icecreamlovers\",\"vanilla\",\"strawberry\",\"butterscotch\"]', '[\"icecream.jpeg\",\"icecream1.jpeg\",\"icecream2.jpg\",\"Ice-Cream-2.jpg\"]', NULL, '0', 0, '2023-11-05 05:02:04', '2023-11-05 05:02:04'),
(62, '4', 'Gifts', 'Unboxing happiness! #gifts #surprise #giftbox #birthdaygift #christmasgifts #weddinggift #smiles #happy', '[\"gifts\",\"surprise\",\"giftbox\",\"birthdaygift\",\"christmasgifts\",\"weddinggift\",\"smiles\",\"happy\"]', '[\"g1.jpg\",\"g3.jpg\"]', NULL, '0', 0, '2023-11-05 05:03:22', '2023-11-05 05:03:22'),
(63, '4', 'Vacation - Bali', 'Bali, where the sunsets paint the sky in hues of magic. #bali #explorebali #balilife #baliindonesia #baliisland #visitbali #travel #longweekend #nature #naturephotography', '[\"bali\",\"explorebali\",\"balilife\",\"baliindonesia\",\"baliisland\",\"visitbali\",\"travel\",\"longweekend\",\"nature\",\"naturephotography\"]', '[\"bali.jpeg\",\"bali1.jpg\",\"bali3.jpg\",\"bali4.jpg\",\"bali5.jpg\"]', NULL, '0', 0, '2023-11-05 05:05:28', '2023-11-05 05:05:28'),
(64, '4', 'Music', 'Music is love in search of a word. #music #love #hiphop #rap #art #musician #artist #musica  #singer #rock #guitar #newmusic #beats #enjoying', '[\"music\",\"love\",\"hiphop\",\"rap\",\"art\",\"musician\",\"artist\",\"musica\",\"singer\",\"rock\",\"guitar\",\"newmusic\",\"beats\",\"enjoying\"]', '[\"music.jpg\"]', NULL, '0', 0, '2023-11-05 05:10:16', '2023-11-05 05:10:16'),
(65, '4', 'Moonlight', 'The beauty of the moon reflects in your eyes. #moon #moonlight #night #nature #luna #sky #art #stars #fullmoon #space  #nightsky  #moonlovers #universe #photo #beautiful #dark #clouds #love', '[\"moon\",\"moonlight\",\"night\",\"nature\",\"luna\",\"sky\",\"art\",\"stars\",\"fullmoon\",\"space\",\"nightsky\",\"moonlovers\",\"universe\",\"photo\",\"beautiful\",\"dark\",\"clouds\",\"love\"]', '[\"moon.jpg\",\"moon1.jpg\"]', NULL, '0', 0, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(66, '4', 'Novels', 'I love reading good books in cozy little nooks. #novels #books #booklover #book #reading #poetry #read #bookaddict  #romancenovels #lovenovels', '[\"novels\",\"books\",\"booklover\",\"book\",\"reading\",\"poetry\",\"read\",\"bookaddict\",\"romancenovels\",\"lovenovels\"]', '[\"novel.jpg\"]', NULL, '0', 2, '2023-11-05 05:12:02', '2023-11-07 07:41:51'),
(67, '4', 'Home Decor', 'My home decor: where style and silliness collide! #homedecor #interiordesign #home #interior #decor #design #homedesign  #homesweethome #art #decoration #furniture #architecture #interiors #homedecoration #love #interiordecor #interiordesigner', '[\"homedecor\",\"interiordesign\",\"home\",\"interior\",\"decor\",\"design\",\"homedesign\",\"homesweethome\",\"art\",\"decoration\",\"furniture\",\"architecture\",\"interiors\",\"homedecoration\",\"love\",\"interiordecor\",\"interiordesigner\"]', '[\"decor1.jpg\",\"decor2.jpg\",\"decor3.jpg\",\"decor4.jpg\"]', NULL, '0', 0, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(68, '5', 'Cartoon - Doraemon', 'There is no greater gift than friendship. #doraemon #doraemonlovers  #doraemonlover  #shizuka #shinchan #nobitashizuka #nobitalovers #cartoon #enjoying', '[\"doraemon\",\"doraemonlovers\",\"doraemonlover\",\"shizuka\",\"shinchan\",\"nobitashizuka\",\"nobitalovers\",\"cartoon\",\"enjoying\"]', '[\"Doraemon.jpg\"]', NULL, '0', 0, '2023-11-05 05:14:48', '2023-11-05 05:14:48'),
(69, '5', 'Home Town', 'A garden is a little slice of heaven here on earth. #homegarden #garden #nature', '[\"homegarden\",\"garden\",\"nature\"]', '[\"garden.jpg\"]', NULL, '0', 0, '2023-11-05 05:16:08', '2023-11-05 05:16:08'),
(70, '5', 'Actor - Prabhas', 'The spotlight is where I belong. #actorlife #actors #flims #movie #telugucinema #teluguactress', '[\"actorlife\",\"actors\",\"flims\",\"movie\",\"telugucinema\",\"teluguactress\"]', '[\"prabhas.jpg\",\"prabhas1.JPG\"]', NULL, '0', 0, '2023-11-05 05:17:48', '2023-11-05 05:17:48'),
(71, '5', 'Bike - Freedom on Two Wheels', 'Livin’ the bike life... #bikerides #bikelover #longdrive #roadtrip #travel #enjoying', '[\"bikerides\",\"bikelover\",\"longdrive\",\"roadtrip\",\"travel\",\"enjoying\"]', '[\"bikes.jpg\"]', NULL, '0', 0, '2023-11-05 05:19:37', '2023-11-05 05:19:37'),
(72, '5', 'Festival - Holi', 'Sprinkle colors into your life! #holi #happyholi #holifestival #festival #colors #colours #festivalofcolors #indianfestival #holihai #holicelebration #holifest #holifestivalofcolours #color #festivalofcolours #holiparty  #festive #indianfestival', '[\"holi\",\"happyholi\",\"holifestival\",\"festival\",\"colors\",\"colours\",\"festivalofcolors\",\"indianfestival\",\"holihai\",\"holicelebration\",\"holifest\",\"holifestivalofcolours\",\"color\",\"festivalofcolours\",\"holiparty\",\"festive\",\"indianfestival\"]', '[\"holi.jpeg\",\"holi1.jpg\",\"holi2.jpeg\"]', NULL, '0', 0, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(73, '5', 'Food', 'Savoring the flavors that ignite my senses.  #foodie #yummy #foodlover #delicious #healthyfood #tasty', '[\"foodie\",\"yummy\",\"foodlover\",\"delicious\",\"healthyfood\",\"tasty\"]', '[\"Food6.jpg\",\"Food7.jpeg\"]', NULL, '0', 0, '2023-11-05 05:23:15', '2023-11-05 05:23:15'),
(74, '5', 'Movie', 'Let the movie take you on a journey you\'ll never forget!', '[]', '[\"movie5.jpg\"]', NULL, '0', 0, '2023-11-05 05:24:05', '2023-11-05 05:24:05'),
(75, '5', 'Vacation - Manali', 'Manali – the gateway to heaven. #manali #travel #nature #manalidiaries #naturephotography #enjoying #love', '[\"manali\",\"travel\",\"nature\",\"manalidiaries\",\"naturephotography\",\"enjoying\",\"love\"]', '[\"manali.jpeg\",\"manali1.jpeg\",\"manali2.jpg\"]', NULL, '0', 2, '2023-11-05 05:25:43', '2023-11-07 07:38:35'),
(76, '5', 'Sports - Basketball', 'Bouncing through life, one basket at a time... #basketball #team #sports #champion', '[\"basketball\",\"team\",\"sports\",\"champion\"]', '[\"basketball.jpg\"]', NULL, '0', 2, '2023-11-05 05:26:30', '2023-11-07 07:41:50'),
(77, '5', 'Shopping - Perfumes', 'Spray a little happiness with every scent. #perfumes #perfume #perfumecollection #fragrance  #shopping #perfumelovers #fragrances #perfumeaddict #scent #love #trend', '[\"perfumes\",\"perfume\",\"perfumecollection\",\"fragrance\",\"shopping\",\"perfumelovers\",\"fragrances\",\"perfumeaddict\",\"scent\",\"love\",\"trend\"]', '[\"perfume.jpg\"]', NULL, '0', 0, '2023-11-05 05:27:13', '2023-11-05 05:27:13'),
(78, '6', 'Festival - Ganpati', 'Celebrating the divine presence of Lord Ganesh. #festive #indianfestival #ganpati #bappa #ganpatibappamorya #mumbai #morya #ganesha #ganeshchaturthi #ganpatifestival #bappamajha #ganeshutsav #festival', '[\"festive\",\"indianfestival\",\"ganpati\",\"bappa\",\"ganpatibappamorya\",\"mumbai\",\"morya\",\"ganesha\",\"ganeshchaturthi\",\"ganpatifestival\",\"bappamajha\",\"ganeshutsav\",\"festival\"]', '[\"ganpati.jpg\",\"ganpati1.jpg\",\"ganpati2.jpg\"]', NULL, '0', 0, '2023-11-05 07:08:15', '2023-11-05 07:08:15'),
(79, '6', 'Vacation - London', 'All you need is love and a vacation in London. #london #uk #love #paris #newyork #travel #londonlife #beauty #photo #travel #beautiful #visitlondon #londoncity  #nature', '[\"london\",\"uk\",\"love\",\"paris\",\"newyork\",\"travel\",\"londonlife\",\"beauty\",\"photo\",\"travel\",\"beautiful\",\"visitlondon\",\"londoncity\",\"nature\"]', '[\"london.jpeg\",\"london1.jpeg\",\"london2.jpg\"]', NULL, '0', 0, '2023-11-05 07:09:19', '2023-11-05 07:09:19'),
(80, '6', 'Sports - Hockey', 'The coolest sport with the hottest fights is only ice hockey. #hockey #hockeylife #icehockey #sports #hockeyplayer #hockeyislife #sport #hockeyplayers #team #champion', '[\"hockey\",\"hockeylife\",\"icehockey\",\"sports\",\"hockeyplayer\",\"hockeyislife\",\"sport\",\"hockeyplayers\",\"team\",\"champion\"]', '[\"hockey.jpeg\"]', NULL, '0', 0, '2023-11-05 07:10:04', '2023-11-05 07:10:04'),
(81, '6', 'Food', 'Life’s better with this refreshing drink. #softdrink #drink #drinks #soda #cocacola #softdrinks #food #cocktails #cola #pepsi #coke #beverage #cocktail #bar', '[\"softdrink\",\"drink\",\"drinks\",\"soda\",\"cocacola\",\"softdrinks\",\"food\",\"cocktails\",\"cola\",\"pepsi\",\"coke\",\"beverage\",\"cocktail\",\"bar\"]', '[\"drinks.jpg\"]', NULL, '0', 0, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(82, '6', 'Actor - Anushka Shetty', 'Sweety! ##anushkashetty #tollywood #actorlife #actors #flims #movie #telugucinema #teluguactress', '[\"anushkashetty\",\"tollywood\",\"actorlife\",\"actors\",\"flims\",\"movie\",\"telugucinema\",\"teluguactress\"]', '[\"anu.jpg\"]', NULL, '0', 0, '2023-11-05 07:11:56', '2023-11-05 07:11:56'),
(83, '6', 'Movie', 'Lights, camera, action!  #cinema #movie  #bollywood #tollywood #films', '[\"cinema\",\"movie\",\"bollywood\",\"tollywood\",\"films\"]', '[\"ghost.jpeg\"]', NULL, '0', 0, '2023-11-05 07:12:32', '2023-11-05 07:12:32'),
(84, '6', 'Music', 'Good music, good times, and good vibes. #music #love #hiphop #rap #art #musician #artist #musica  #singer #rock #guitar #newmusic #beats #enjoying', '[\"music\",\"love\",\"hiphop\",\"rap\",\"art\",\"musician\",\"artist\",\"musica\",\"singer\",\"rock\",\"guitar\",\"newmusic\",\"beats\",\"enjoying\"]', '[\"songs5.jpg\"]', NULL, '0', 0, '2023-11-05 07:13:09', '2023-11-05 07:13:09'),
(85, '6', 'Waterfalls', 'Walk behind a waterfall for an authentic experience. #waterfalls #nature #waterfall #naturephotography #travel  #water #naturelovers #waterfallphotography #mountains #chasingwaterfalls #naturelover', '[\"waterfalls\",\"nature\",\"waterfall\",\"naturephotography\",\"travel\",\"water\",\"naturelovers\",\"waterfallphotography\",\"mountains\",\"chasingwaterfalls\",\"naturelover\"]', '[\"waterfall.jpeg\"]', NULL, '0', 0, '2023-11-05 07:13:42', '2023-11-05 07:13:42'),
(86, '6', 'Garden', 'A garden is a little slice of heaven here on earth. #homegarden #garden #nature', '[\"homegarden\",\"garden\",\"nature\"]', '[\"garden5.jpg\"]', NULL, '0', 2, '2023-11-05 07:14:16', '2023-11-07 07:34:42'),
(87, '6', 'Cafe', 'Life is brew-tea-ful with a cup of tea. #tea #teatime #tealovers #chai #love #greentea #teaaddict #blacktea #cafe #healthy #tealife #teacup #chailover #herbaltea #tealove', '[\"tea\",\"teatime\",\"tealovers\",\"chai\",\"love\",\"greentea\",\"teaaddict\",\"blacktea\",\"cafe\",\"healthy\",\"tealife\",\"teacup\",\"chailover\",\"herbaltea\",\"tealove\"]', '[\"tea.jpeg\"]', NULL, '0', 2, '2023-11-05 07:14:50', '2023-11-07 07:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_posts` int(50) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `total_posts`, `created_at`, `updated_at`) VALUES
(5, 'diwalivibes', 1, '2023-11-05 04:33:45', '2023-11-05 04:33:45'),
(6, 'festive', 3, '2023-11-05 04:33:45', '2023-11-05 07:08:15'),
(7, 'indianfestival', 4, '2023-11-05 04:33:45', '2023-11-05 07:08:15'),
(8, 'mumbaikar', 1, '2023-11-05 04:35:30', '2023-11-05 04:35:30'),
(9, 'mumbaidiaries', 1, '2023-11-05 04:35:30', '2023-11-05 04:35:30'),
(10, 'trip', 2, '2023-11-05 04:35:30', '2023-11-05 04:51:49'),
(11, 'vacation', 2, '2023-11-05 04:35:30', '2023-11-05 04:51:49'),
(12, 'travel', 9, '2023-11-05 04:35:30', '2023-11-05 07:13:42'),
(13, 'nature', 11, '2023-11-05 04:35:30', '2023-11-05 07:14:16'),
(14, 'naturephotography', 5, '2023-11-05 04:35:30', '2023-11-05 07:13:42'),
(15, 'sports', 5, '2023-11-05 04:36:11', '2023-11-05 07:10:05'),
(16, 'cricket', 1, '2023-11-05 04:36:11', '2023-11-05 04:36:11'),
(17, 'ipl', 1, '2023-11-05 04:36:11', '2023-11-05 04:36:11'),
(18, 'worldcup', 1, '2023-11-05 04:36:11', '2023-11-05 04:36:11'),
(19, 'team', 4, '2023-11-05 04:36:11', '2023-11-05 07:10:05'),
(20, 'champion', 4, '2023-11-05 04:36:11', '2023-11-05 07:10:05'),
(21, 'foodie', 3, '2023-11-05 04:37:34', '2023-11-05 05:23:15'),
(22, 'yummy', 4, '2023-11-05 04:37:34', '2023-11-05 05:23:15'),
(23, 'foodlover', 3, '2023-11-05 04:37:34', '2023-11-05 05:23:15'),
(24, 'healthyfood', 3, '2023-11-05 04:37:34', '2023-11-05 05:23:15'),
(25, 'tasty', 4, '2023-11-05 04:37:34', '2023-11-05 05:23:15'),
(26, 'delicious', 4, '2023-11-05 04:37:34', '2023-11-05 05:23:15'),
(27, 'shopping', 3, '2023-11-05 04:38:24', '2023-11-05 05:27:13'),
(28, 'fashion', 2, '2023-11-05 04:38:24', '2023-11-05 04:48:05'),
(29, 'style', 2, '2023-11-05 04:38:24', '2023-11-05 04:48:05'),
(30, 'trend', 3, '2023-11-05 04:38:24', '2023-11-05 05:27:13'),
(31, 'love', 11, '2023-11-05 04:38:24', '2023-11-05 07:14:50'),
(32, 'cinema', 3, '2023-11-05 04:39:08', '2023-11-05 07:12:32'),
(33, 'movie', 7, '2023-11-05 04:39:08', '2023-11-05 07:12:32'),
(34, 'hollywood', 2, '2023-11-05 04:39:08', '2023-11-05 04:46:35'),
(35, 'bollywood', 3, '2023-11-05 04:39:08', '2023-11-05 07:12:32'),
(36, 'tollywood', 4, '2023-11-05 04:39:08', '2023-11-05 07:12:32'),
(37, 'films', 3, '2023-11-05 04:39:08', '2023-11-05 07:12:32'),
(38, 'cocktails', 2, '2023-11-05 04:39:51', '2023-11-05 07:11:07'),
(39, 'happyhour', 1, '2023-11-05 04:39:51', '2023-11-05 04:39:51'),
(40, 'winewednesday', 1, '2023-11-05 04:39:51', '2023-11-05 04:39:51'),
(41, 'restaurant', 1, '2023-11-05 04:41:06', '2023-11-05 04:41:06'),
(42, 'weekend', 1, '2023-11-05 04:41:06', '2023-11-05 04:41:06'),
(43, 'cafe', 2, '2023-11-05 04:42:07', '2023-11-05 07:14:50'),
(44, 'coffeetime', 1, '2023-11-05 04:42:07', '2023-11-05 04:42:07'),
(45, 'coffeelover', 1, '2023-11-05 04:42:07', '2023-11-05 04:42:07'),
(46, 'latte', 1, '2023-11-05 04:42:07', '2023-11-05 04:42:07'),
(47, 'espresso', 1, '2023-11-05 04:42:07', '2023-11-05 04:42:07'),
(48, 'cappuccino', 1, '2023-11-05 04:42:07', '2023-11-05 04:42:07'),
(49, 'jackpot', 1, '2023-11-05 04:42:55', '2023-11-05 04:42:55'),
(50, 'casinoroyale', 1, '2023-11-05 04:42:55', '2023-11-05 04:42:55'),
(51, 'casinos', 1, '2023-11-05 04:42:55', '2023-11-05 04:42:55'),
(52, 'casinogames', 1, '2023-11-05 04:42:55', '2023-11-05 04:42:55'),
(53, 'casinonight', 1, '2023-11-05 04:42:55', '2023-11-05 04:42:55'),
(54, 'streetart', 1, '2023-11-05 04:44:36', '2023-11-05 04:44:36'),
(55, 'modernart', 1, '2023-11-05 04:44:36', '2023-11-05 04:44:36'),
(56, 'exhibition', 1, '2023-11-05 04:44:36', '2023-11-05 04:44:36'),
(57, 'wallart', 1, '2023-11-05 04:44:36', '2023-11-05 04:44:36'),
(58, 'ancient', 1, '2023-11-05 04:44:36', '2023-11-05 04:44:36'),
(59, 'historical', 1, '2023-11-05 04:44:36', '2023-11-05 04:44:36'),
(60, 'statue', 1, '2023-11-05 04:44:36', '2023-11-05 04:44:36'),
(61, 'footballplayer', 1, '2023-11-05 04:45:26', '2023-11-05 04:45:26'),
(62, 'championsleague', 1, '2023-11-05 04:45:26', '2023-11-05 04:45:26'),
(63, 'instafood', 1, '2023-11-05 04:48:42', '2023-11-05 04:48:42'),
(64, 'dessert', 2, '2023-11-05 04:48:42', '2023-11-05 05:02:04'),
(65, 'colddrink', 1, '2023-11-05 04:48:42', '2023-11-05 04:48:42'),
(66, 'actors', 4, '2023-11-05 04:50:39', '2023-11-05 07:11:56'),
(67, 'flims', 4, '2023-11-05 04:50:39', '2023-11-05 07:11:56'),
(68, 'telugucinema', 4, '2023-11-05 04:50:39', '2023-11-05 07:11:56'),
(69, 'teluguactress', 4, '2023-11-05 04:50:39', '2023-11-05 07:11:56'),
(70, 'hyderabaddairies', 1, '2023-11-05 04:51:49', '2023-11-05 04:51:49'),
(71, 'photooftheday', 1, '2023-11-05 04:51:49', '2023-11-05 04:51:49'),
(72, 'picoftheday', 1, '2023-11-05 04:51:49', '2023-11-05 04:51:49'),
(73, 'cartoon', 2, '2023-11-05 04:53:27', '2023-11-05 05:14:48'),
(74, 'tomandjerry', 1, '2023-11-05 04:53:27', '2023-11-05 04:53:27'),
(75, 'enjoying', 7, '2023-11-05 04:53:27', '2023-11-05 07:13:09'),
(76, 'quoteoftheday', 1, '2023-11-05 04:54:03', '2023-11-05 04:54:03'),
(77, 'thoughts', 1, '2023-11-05 04:54:03', '2023-11-05 04:54:03'),
(78, 'picnic', 1, '2023-11-05 04:55:55', '2023-11-05 04:55:55'),
(79, 'dayout', 1, '2023-11-05 04:55:55', '2023-11-05 04:55:55'),
(80, 'happyholidays', 1, '2023-11-05 04:55:55', '2023-11-05 04:55:55'),
(81, 'bharatanatyam', 1, '2023-11-05 04:57:38', '2023-11-05 04:57:38'),
(82, 'indianclassicaldance', 1, '2023-11-05 04:57:38', '2023-11-05 04:57:38'),
(83, 'dance', 1, '2023-11-05 04:57:38', '2023-11-05 04:57:38'),
(84, 'classicaldance', 1, '2023-11-05 04:57:38', '2023-11-05 04:57:38'),
(85, 'dancer', 1, '2023-11-05 04:57:38', '2023-11-05 04:57:38'),
(86, 'indian', 1, '2023-11-05 04:57:38', '2023-11-05 04:57:38'),
(87, 'art', 5, '2023-11-05 04:57:38', '2023-11-05 07:13:09'),
(88, 'ssmb', 1, '2023-11-05 04:59:55', '2023-11-05 04:59:55'),
(89, 'maheshbabufans', 1, '2023-11-05 04:59:55', '2023-11-05 04:59:55'),
(90, 'indianactor', 1, '2023-11-05 04:59:55', '2023-11-05 04:59:55'),
(91, 'nani', 1, '2023-11-05 04:59:55', '2023-11-05 04:59:55'),
(92, 'milkyboy', 1, '2023-11-05 04:59:55', '2023-11-05 04:59:55'),
(93, 'chocolateboy', 1, '2023-11-05 04:59:55', '2023-11-05 04:59:55'),
(94, 'superstarmaheshbabu', 1, '2023-11-05 04:59:55', '2023-11-05 04:59:55'),
(95, 'mb', 1, '2023-11-05 04:59:55', '2023-11-05 04:59:55'),
(96, 'barish', 1, '2023-11-05 05:00:59', '2023-11-05 05:00:59'),
(97, 'rain', 1, '2023-11-05 05:00:59', '2023-11-05 05:00:59'),
(98, 'poetry', 2, '2023-11-05 05:00:59', '2023-11-05 05:12:02'),
(99, 'rainyday', 1, '2023-11-05 05:00:59', '2023-11-05 05:00:59'),
(100, 'shayari', 1, '2023-11-05 05:00:59', '2023-11-05 05:00:59'),
(101, 'monsoon', 1, '2023-11-05 05:00:59', '2023-11-05 05:00:59'),
(102, 'mausam', 1, '2023-11-05 05:00:59', '2023-11-05 05:00:59'),
(103, 'weather', 1, '2023-11-05 05:00:59', '2023-11-05 05:00:59'),
(104, 'chai', 2, '2023-11-05 05:00:59', '2023-11-05 07:14:50'),
(105, 'icecream', 1, '2023-11-05 05:02:04', '2023-11-05 05:02:04'),
(106, 'food', 2, '2023-11-05 05:02:04', '2023-11-05 07:11:07'),
(107, 'icecreamlover', 1, '2023-11-05 05:02:04', '2023-11-05 05:02:04'),
(108, 'icecreamcone', 1, '2023-11-05 05:02:04', '2023-11-05 05:02:04'),
(109, 'icecreamtime', 1, '2023-11-05 05:02:04', '2023-11-05 05:02:04'),
(110, 'icecreamlovers', 1, '2023-11-05 05:02:04', '2023-11-05 05:02:04'),
(111, 'vanilla', 1, '2023-11-05 05:02:04', '2023-11-05 05:02:04'),
(112, 'strawberry', 1, '2023-11-05 05:02:04', '2023-11-05 05:02:04'),
(113, 'butterscotch', 1, '2023-11-05 05:02:04', '2023-11-05 05:02:04'),
(114, 'gifts', 1, '2023-11-05 05:03:22', '2023-11-05 05:03:22'),
(115, 'surprise', 1, '2023-11-05 05:03:22', '2023-11-05 05:03:22'),
(116, 'giftbox', 1, '2023-11-05 05:03:22', '2023-11-05 05:03:22'),
(117, 'birthdaygift', 1, '2023-11-05 05:03:22', '2023-11-05 05:03:22'),
(118, 'christmasgifts', 1, '2023-11-05 05:03:22', '2023-11-05 05:03:22'),
(119, 'weddinggift', 1, '2023-11-05 05:03:22', '2023-11-05 05:03:22'),
(120, 'smiles', 1, '2023-11-05 05:03:22', '2023-11-05 05:03:22'),
(121, 'happy', 1, '2023-11-05 05:03:22', '2023-11-05 05:03:22'),
(122, 'bali', 1, '2023-11-05 05:05:28', '2023-11-05 05:05:28'),
(123, 'explorebali', 1, '2023-11-05 05:05:28', '2023-11-05 05:05:28'),
(124, 'balilife', 1, '2023-11-05 05:05:28', '2023-11-05 05:05:28'),
(125, 'baliindonesia', 1, '2023-11-05 05:05:28', '2023-11-05 05:05:28'),
(126, 'baliisland', 1, '2023-11-05 05:05:28', '2023-11-05 05:05:28'),
(127, 'visitbali', 1, '2023-11-05 05:05:28', '2023-11-05 05:05:28'),
(128, 'longweekend', 1, '2023-11-05 05:05:28', '2023-11-05 05:05:28'),
(129, 'music', 2, '2023-11-05 05:10:16', '2023-11-05 07:13:09'),
(130, 'hiphop', 2, '2023-11-05 05:10:16', '2023-11-05 07:13:09'),
(131, 'rap', 2, '2023-11-05 05:10:16', '2023-11-05 07:13:09'),
(132, 'musician', 2, '2023-11-05 05:10:16', '2023-11-05 07:13:09'),
(133, 'artist', 2, '2023-11-05 05:10:16', '2023-11-05 07:13:09'),
(134, 'musica', 2, '2023-11-05 05:10:16', '2023-11-05 07:13:09'),
(135, 'singer', 2, '2023-11-05 05:10:16', '2023-11-05 07:13:09'),
(136, 'rock', 2, '2023-11-05 05:10:16', '2023-11-05 07:13:09'),
(137, 'guitar', 2, '2023-11-05 05:10:16', '2023-11-05 07:13:09'),
(138, 'newmusic', 2, '2023-11-05 05:10:16', '2023-11-05 07:13:09'),
(139, 'beats', 2, '2023-11-05 05:10:16', '2023-11-05 07:13:09'),
(140, 'moon', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(141, 'moonlight', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(142, 'night', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(143, 'luna', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(144, 'sky', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(145, 'stars', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(146, 'fullmoon', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(147, 'space', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(148, 'nightsky', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(149, 'moonlovers', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(150, 'universe', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(151, 'photo', 2, '2023-11-05 05:11:14', '2023-11-05 07:09:19'),
(152, 'beautiful', 2, '2023-11-05 05:11:14', '2023-11-05 07:09:19'),
(153, 'dark', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(154, 'clouds', 1, '2023-11-05 05:11:14', '2023-11-05 05:11:14'),
(155, 'novels', 1, '2023-11-05 05:12:02', '2023-11-05 05:12:02'),
(156, 'books', 1, '2023-11-05 05:12:02', '2023-11-05 05:12:02'),
(157, 'booklover', 1, '2023-11-05 05:12:02', '2023-11-05 05:12:02'),
(158, 'book', 1, '2023-11-05 05:12:02', '2023-11-05 05:12:02'),
(159, 'reading', 1, '2023-11-05 05:12:02', '2023-11-05 05:12:02'),
(160, 'read', 1, '2023-11-05 05:12:02', '2023-11-05 05:12:02'),
(161, 'bookaddict', 1, '2023-11-05 05:12:02', '2023-11-05 05:12:02'),
(162, 'romancenovels', 1, '2023-11-05 05:12:02', '2023-11-05 05:12:02'),
(163, 'lovenovels', 1, '2023-11-05 05:12:02', '2023-11-05 05:12:02'),
(164, 'homedecor', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(165, 'interiordesign', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(166, 'home', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(167, 'interior', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(168, 'decor', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(169, 'design', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(170, 'homedesign', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(171, 'homesweethome', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(172, 'decoration', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(173, 'furniture', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(174, 'architecture', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(175, 'interiors', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(176, 'homedecoration', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(177, 'interiordecor', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(178, 'interiordesigner', 1, '2023-11-05 05:13:06', '2023-11-05 05:13:06'),
(179, 'doraemon', 1, '2023-11-05 05:14:48', '2023-11-05 05:14:48'),
(180, 'doraemonlovers', 1, '2023-11-05 05:14:48', '2023-11-05 05:14:48'),
(181, 'doraemonlover', 1, '2023-11-05 05:14:48', '2023-11-05 05:14:48'),
(182, 'shizuka', 1, '2023-11-05 05:14:48', '2023-11-05 05:14:48'),
(183, 'shinchan', 1, '2023-11-05 05:14:48', '2023-11-05 05:14:48'),
(184, 'nobitashizuka', 1, '2023-11-05 05:14:48', '2023-11-05 05:14:48'),
(185, 'nobitalovers', 1, '2023-11-05 05:14:48', '2023-11-05 05:14:48'),
(186, 'homegarden', 2, '2023-11-05 05:16:08', '2023-11-05 07:14:16'),
(187, 'garden', 2, '2023-11-05 05:16:08', '2023-11-05 07:14:16'),
(188, 'actorlife', 2, '2023-11-05 05:17:48', '2023-11-05 07:11:56'),
(189, 'bikerides', 1, '2023-11-05 05:19:37', '2023-11-05 05:19:37'),
(190, 'bikelover', 1, '2023-11-05 05:19:37', '2023-11-05 05:19:37'),
(191, 'longdrive', 1, '2023-11-05 05:19:37', '2023-11-05 05:19:37'),
(192, 'roadtrip', 1, '2023-11-05 05:19:37', '2023-11-05 05:19:37'),
(193, 'holi', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(194, 'happyholi', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(195, 'holifestival', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(196, 'festival', 2, '2023-11-05 05:21:30', '2023-11-05 07:08:15'),
(197, 'colors', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(198, 'colours', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(199, 'festivalofcolors', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(200, 'holihai', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(201, 'holicelebration', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(202, 'holifest', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(203, 'holifestivalofcolours', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(204, 'color', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(205, 'festivalofcolours', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(206, 'holiparty', 1, '2023-11-05 05:21:30', '2023-11-05 05:21:30'),
(207, 'manali', 1, '2023-11-05 05:25:43', '2023-11-05 05:25:43'),
(208, 'manalidiaries', 1, '2023-11-05 05:25:43', '2023-11-05 05:25:43'),
(209, 'basketball', 1, '2023-11-05 05:26:30', '2023-11-05 05:26:30'),
(210, 'perfumes', 1, '2023-11-05 05:27:13', '2023-11-05 05:27:13'),
(211, 'perfume', 1, '2023-11-05 05:27:13', '2023-11-05 05:27:13'),
(212, 'perfumecollection', 1, '2023-11-05 05:27:13', '2023-11-05 05:27:13'),
(213, 'fragrance', 1, '2023-11-05 05:27:13', '2023-11-05 05:27:13'),
(214, 'perfumelovers', 1, '2023-11-05 05:27:13', '2023-11-05 05:27:13'),
(215, 'fragrances', 1, '2023-11-05 05:27:13', '2023-11-05 05:27:13'),
(216, 'perfumeaddict', 1, '2023-11-05 05:27:13', '2023-11-05 05:27:13'),
(217, 'scent', 1, '2023-11-05 05:27:13', '2023-11-05 05:27:13'),
(218, 'ganpati', 1, '2023-11-05 07:08:15', '2023-11-05 07:08:15'),
(219, 'bappa', 1, '2023-11-05 07:08:15', '2023-11-05 07:08:15'),
(220, 'ganpatibappamorya', 1, '2023-11-05 07:08:15', '2023-11-05 07:08:15'),
(221, 'mumbai', 1, '2023-11-05 07:08:15', '2023-11-05 07:08:15'),
(222, 'morya', 1, '2023-11-05 07:08:15', '2023-11-05 07:08:15'),
(223, 'ganesha', 1, '2023-11-05 07:08:15', '2023-11-05 07:08:15'),
(224, 'ganeshchaturthi', 1, '2023-11-05 07:08:15', '2023-11-05 07:08:15'),
(225, 'ganpatifestival', 1, '2023-11-05 07:08:15', '2023-11-05 07:08:15'),
(226, 'bappamajha', 1, '2023-11-05 07:08:15', '2023-11-05 07:08:15'),
(227, 'ganeshutsav', 1, '2023-11-05 07:08:15', '2023-11-05 07:08:15'),
(228, 'london', 1, '2023-11-05 07:09:19', '2023-11-05 07:09:19'),
(229, 'uk', 1, '2023-11-05 07:09:19', '2023-11-05 07:09:19'),
(230, 'paris', 1, '2023-11-05 07:09:19', '2023-11-05 07:09:19'),
(231, 'newyork', 1, '2023-11-05 07:09:19', '2023-11-05 07:09:19'),
(232, 'londonlife', 1, '2023-11-05 07:09:19', '2023-11-05 07:09:19'),
(233, 'beauty', 1, '2023-11-05 07:09:19', '2023-11-05 07:09:19'),
(234, 'visitlondon', 1, '2023-11-05 07:09:19', '2023-11-05 07:09:19'),
(235, 'londoncity', 1, '2023-11-05 07:09:19', '2023-11-05 07:09:19'),
(236, 'hockey', 1, '2023-11-05 07:10:04', '2023-11-05 07:10:04'),
(237, 'hockeylife', 1, '2023-11-05 07:10:04', '2023-11-05 07:10:04'),
(238, 'icehockey', 1, '2023-11-05 07:10:05', '2023-11-05 07:10:05'),
(239, 'hockeyplayer', 1, '2023-11-05 07:10:05', '2023-11-05 07:10:05'),
(240, 'hockeyislife', 1, '2023-11-05 07:10:05', '2023-11-05 07:10:05'),
(241, 'sport', 1, '2023-11-05 07:10:05', '2023-11-05 07:10:05'),
(242, 'hockeyplayers', 1, '2023-11-05 07:10:05', '2023-11-05 07:10:05'),
(243, 'softdrink', 1, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(244, 'drink', 1, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(245, 'drinks', 1, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(246, 'soda', 1, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(247, 'cocacola', 1, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(248, 'softdrinks', 1, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(249, 'cola', 1, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(250, 'pepsi', 1, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(251, 'coke', 1, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(252, 'beverage', 1, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(253, 'cocktail', 1, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(254, 'bar', 1, '2023-11-05 07:11:07', '2023-11-05 07:11:07'),
(255, 'anushkashetty', 1, '2023-11-05 07:11:56', '2023-11-05 07:11:56'),
(256, 'waterfalls', 1, '2023-11-05 07:13:42', '2023-11-05 07:13:42'),
(257, 'waterfall', 1, '2023-11-05 07:13:42', '2023-11-05 07:13:42'),
(258, 'water', 1, '2023-11-05 07:13:42', '2023-11-05 07:13:42'),
(259, 'naturelovers', 1, '2023-11-05 07:13:42', '2023-11-05 07:13:42'),
(260, 'waterfallphotography', 1, '2023-11-05 07:13:42', '2023-11-05 07:13:42'),
(261, 'mountains', 1, '2023-11-05 07:13:42', '2023-11-05 07:13:42'),
(262, 'chasingwaterfalls', 1, '2023-11-05 07:13:42', '2023-11-05 07:13:42'),
(263, 'naturelover', 1, '2023-11-05 07:13:42', '2023-11-05 07:13:42'),
(264, 'tea', 1, '2023-11-05 07:14:50', '2023-11-05 07:14:50'),
(265, 'teatime', 1, '2023-11-05 07:14:50', '2023-11-05 07:14:50'),
(266, 'tealovers', 1, '2023-11-05 07:14:50', '2023-11-05 07:14:50'),
(267, 'greentea', 1, '2023-11-05 07:14:50', '2023-11-05 07:14:50'),
(268, 'teaaddict', 1, '2023-11-05 07:14:50', '2023-11-05 07:14:50'),
(269, 'blacktea', 1, '2023-11-05 07:14:50', '2023-11-05 07:14:50'),
(270, 'healthy', 1, '2023-11-05 07:14:50', '2023-11-05 07:14:50'),
(271, 'tealife', 1, '2023-11-05 07:14:50', '2023-11-05 07:14:50'),
(272, 'teacup', 1, '2023-11-05 07:14:50', '2023-11-05 07:14:50'),
(273, 'chailover', 1, '2023-11-05 07:14:50', '2023-11-05 07:14:50'),
(274, 'herbaltea', 1, '2023-11-05 07:14:50', '2023-11-05 07:14:50'),
(275, 'tealove', 1, '2023-11-05 07:14:50', '2023-11-05 07:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `type`, `active`, `contact`, `created_at`, `updated_at`) VALUES
(2, 'ashwini', 'ashwiniachugatla@gmail.com', '$2y$10$1Zn27TrrqpmdlgZvOt0ZVO9jgMXtY41iKNSGDTBeUysXvUih6qjNq', NULL, NULL, '9420150181', '2023-11-05 06:26:11', '2023-11-05 06:26:11'),
(3, 'ranigangi', 'rajeshwariganji1979@gmail.com', '$2y$10$rPP7yHDlNaNiW08q47rJYOz2qfc4JeWAAGWBjrnVwGUPbj5bTE2Vy', NULL, NULL, '9874563210', '2023-11-05 06:32:58', '2023-11-05 06:32:58'),
(5, 'saividap', 'sai.vidap77@gmail.com', '$2y$10$K2sZSFmxWZzuchNyx.jOEORKUSXbGT/MTbWdrgjaCUdlrVpFGzSgC', NULL, NULL, '7057115277', '2023-11-04 07:02:50', '2023-11-04 07:02:50'),
(6, 'namrata', 'namratarumal2406@gmail.com', '$2y$10$D4ekdJR/A8gMymN8h1dz0uzkD1Rcq6gVLBwsRmssWQVjmv6IyMKga', NULL, NULL, '8745693021', '2023-11-05 06:42:03', '2023-11-05 06:42:03'),
(18, 'abhishek16', 'abhishekgouda882@gmail.com', '$2y$10$2VIt2JGXhGUF0ClPts3Hrep.oe63DAK03YeJl6w2grxCCwTZuLZ2e', NULL, NULL, '9999999999', '2023-11-07 07:32:57', '2023-11-07 07:32:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
