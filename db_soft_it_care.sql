-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2022 at 10:19 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_soft_it_care`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prod_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `prod_id`, `user_id`, `created_at`, `updated_at`) VALUES
(17, 1, 87, '2022-01-16 11:52:14', '2022-01-16 11:52:14'),
(18, 1, 87, '2022-01-16 11:58:37', '2022-01-16 11:58:37');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_16_165415_create_carts_table', 2),
(6, '2022_01_16_173232_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(8, 2, 17, 'pending', 'Online', 'pending', 'Dhaka', '2022-01-16 14:25:01', '2022-01-16 14:25:01'),
(9, 25, 2, 'pending', 'Online', 'pending', 'Mirpur', '2022-01-16 14:28:47', '2022-01-16 14:28:47'),
(10, 2, 20, 'pending', 'Online', 'pending', 'Dhaka', '2022-01-16 14:30:04', '2022-01-16 14:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(15) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `gallery` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`) VALUES
(17, 'Oppo mobile', '300', 'mobile', 'A smartphone with 8gb ram and much more feature', 'https://assetscdn1.paytm.com/images/catalog/product/M/MO/MOBOPPO-A52-6-GFUTU6297453D3D253C/1592019058170_0..png'),
(18, 'Panasonic Tv', '400', 'tv', 'A smart tv with much more feature', 'https://i.gadgets360cdn.com/products/televisions/large/1548154685_832_panasonic_32-inch-lcd-full-hd-tv-th-l32u20.jpg'),
(19, 'Soni Tv', '500', 'tv', 'A tv with much more feature', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png'),
(20, 'LG fridge', '200', 'fridge', 'A fridge with much more feature', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTFx-2-wTOcfr5at01ojZWduXEm5cZ-sRYPJA&usqp=CAU'),
(21, 'Oppo mobile', '300', 'mobile', 'A smartphone with 8gb ram and much more feature', 'https://assetscdn1.paytm.com/images/catalog/product/M/MO/MOBOPPO-A52-6-GFUTU6297453D3D253C/1592019058170_0..png'),
(22, 'Panasonic Tv', '400', 'tv', 'A smart tv with much more feature', 'https://i.gadgets360cdn.com/products/televisions/large/1548154685_832_panasonic_32-inch-lcd-full-hd-tv-th-l32u20.jpg'),
(23, 'Soni Tv', '500', 'tv', 'A tv with much more feature', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png'),
(24, 'LG fridge', '200', 'fridge', 'A fridge with much more feature', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTFx-2-wTOcfr5at01ojZWduXEm5cZ-sRYPJA&usqp=CAU'),
(25, 'Oppo mobile', '300', 'mobile', 'A smartphone with 8gb ram and much more feature', 'https://assetscdn1.paytm.com/images/catalog/product/M/MO/MOBOPPO-A52-6-GFUTU6297453D3D253C/1592019058170_0..png'),
(26, 'Panasonic Tv', '400', 'tv', 'A smart tv with much more feature', 'https://i.gadgets360cdn.com/products/televisions/large/1548154685_832_panasonic_32-inch-lcd-full-hd-tv-th-l32u20.jpg'),
(27, 'Soni Tv', '500', 'tv', 'A tv with much more feature', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png'),
(28, 'LG fridge', '200', 'fridge', 'A fridge with much more feature', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTFx-2-wTOcfr5at01ojZWduXEm5cZ-sRYPJA&usqp=CAU');

-- --------------------------------------------------------

--
-- Table structure for table `userlogins`
--

CREATE TABLE `userlogins` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `token` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogins`
--

INSERT INTO `userlogins` (`id`, `phone_number`, `token`) VALUES
(2, '01515283568', ''),
(3, '01934987143', '3095'),
(4, '01934987143', '9847'),
(5, '01961490887', '2902'),
(6, '01961490887', '6352'),
(7, '01515283568', '5997'),
(8, '01934987143', '9102'),
(9, '01515283568', '3198'),
(10, '01515283568', '9154'),
(11, '01515283568', '9906'),
(12, '01515283568', '6066'),
(13, '01515283568', '1364'),
(14, '01515283568', '5614'),
(15, '01515283568', '5698'),
(16, '01515283568', '1721'),
(17, '01515283568', '5380'),
(18, '01515283568', '3769'),
(19, '01515283568', '8986'),
(20, '01515283568', '2657'),
(21, '01515283568', '6609'),
(22, '01515283568', '2546'),
(23, '01515283568', '8733'),
(24, '01515283568', '9594'),
(25, '01515283568', '1398'),
(26, '01515283568', '3478'),
(27, '01515283568', '3895'),
(28, '01515283568', '7114'),
(29, '01515283568', '3527'),
(30, '01515283568', '2125'),
(31, '01515283568', '3122'),
(32, '01515283568', '4255'),
(33, '01515283568', '8871'),
(34, '01515283568', '5748'),
(35, '01515283568', '5370'),
(36, '01515283568', '8006'),
(37, '01515283568', '8061'),
(38, '01515283568', '5103'),
(39, '01515283568', '7417'),
(40, '01515283568', '5201'),
(41, '01515283568', '9539'),
(42, '01515283568', '8900'),
(43, '01515283568', '2135'),
(44, '01515283568', '7897'),
(45, '01515283568', '9940'),
(46, '01515283568', '6775'),
(47, '01515283568', '9043'),
(48, '01515283568', '2484'),
(49, '01515283568', '1251'),
(50, '01515283568', '5630'),
(51, '01934987143', '8866'),
(52, '01934987143', '3997'),
(53, '01934987143', '2914'),
(54, '01934987143', ''),
(55, '01515283568', '6713'),
(56, '01515283568', '2882'),
(57, '01515283568', '7795'),
(58, '01515283568', '2916'),
(59, '01515283568', '7159'),
(60, '01515283568', ''),
(61, '01515283568', '5097'),
(62, '01515283568', ''),
(63, '01515283568', '2363'),
(64, '01515283568', '7320'),
(65, '01515283568', '1863'),
(66, '01515283568', '3437'),
(67, '01515283568', '1131'),
(68, '01515283568', '5264'),
(69, '01515283568', '3897'),
(70, '01515283568', '4827'),
(71, '01934987143', ''),
(72, '01515283568', '7709'),
(73, '01934987143', ''),
(74, '01934987143', '9871'),
(75, '01961490887', '7012'),
(76, '01961490887', '1806'),
(77, '01961490887', '7675'),
(78, '01961490887', '8285'),
(79, '01961490887', '6221'),
(80, '01961490887', '7691'),
(81, '01961490887', '8974'),
(82, '01961490887', ''),
(83, '01961490887', ''),
(84, '01515283568', ''),
(85, '01961490887', '6177'),
(86, '01961490887', ''),
(87, '01934987143', ''),
(88, '01515283568', ''),
(89, '01934987143', ''),
(90, '01934987143', ''),
(91, '01515283568', '7202'),
(92, '01934987143', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogins`
--
ALTER TABLE `userlogins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `userlogins`
--
ALTER TABLE `userlogins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
