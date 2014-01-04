-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2014 at 07:51 PM
-- Server version: 5.5.29
-- PHP Version: 5.4.6-1ubuntu1.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gmarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=65 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `route`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Cars & Vehicles ', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Property', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Jobs & Services', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Personal Items', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Home Appliances', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Leisure, Sport & Hobby', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Education & Teaching', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Pets & Animals', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Food & Agriculture', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Other', NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Mobile Phones', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Computers & Accessories', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'TV & Video', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Video Games & Consoles', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Audio & MP3', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Mobile Phone Accessories', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Cameras & Camcorders', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Other Electronics', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Cars', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Truck, Bus & Heavy-Duty', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Parts & Accessories', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Bikes & Scooters', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Boats & Water Transport', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Houses', 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Land', 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Apartments', 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Rooms', 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Commercial Property', 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Services', 4, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Job Vacancies', 4, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Clothing & Fashion', 5, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Health & Beauty', 5, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Children''s Items', 5, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Other Personal Items', 5, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Handicrafts', 5, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'White Goods & Kitchenware', 6, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Home & Garden', 6, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Furniture', 6, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Other Home Appliances', 6, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Movies, Music & Literature', 7, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Travel', 7, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Musical Instruments', 7, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Sports Equipment', 7, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Art & Collectibles', 7, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Tickets & Vouchers', 7, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Other Leisure, Sport & Hobby', 7, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Teaching & Training', 8, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Other Education & Teaching', 8, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Text Books', 8, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Pets', 9, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Farm Animals', 9, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Accessories for Pets & Animals', 9, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Food for Pets & Animals', 9, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Veterinary Services', 9, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Caretakers, Pet sitters & Dog walkers', 9, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Other Pets & Animals', 9, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Other Food & Agriculture', 10, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Chemicals, Tools & Machinery', 10, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Crops, Seeds & Plants', 10, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Fish', 10, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Meat', 10, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Vegetables', 10, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Fruits', 10, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `images_product_id_foreign` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_01_04_133917_create_groups_table', 1),
('2014_01_04_133930_create_users_table', 1),
('2014_01_04_135217_create_categories_table', 1),
('2014_01_04_155948_products', 2),
('2014_01_04_160429_create_images_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `body_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transmission` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fuel_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mileage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `engine_capacity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street_landmark` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `no_bedrooms` int(11) NOT NULL,
  `no_bathrooms` int(11) NOT NULL,
  `land_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `features` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apply_via` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_group_id_foreign` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
