-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2014 at 07:24 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=228 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `route`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', NULL, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Cars & Vehicles ', NULL, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Property', NULL, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Jobs & Services', NULL, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Personal Items', NULL, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Home Appliances', NULL, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Leisure, Sport & Hobby', NULL, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Education & Teaching', NULL, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Pets & Animals', NULL, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Food & Agriculture', NULL, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Other', NULL, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Mobile Phones', 1, 'mobile-phones', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Computers & Accessories', 1, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'TV & Video', 1, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Video Games & Consoles', 1, 'video-games-consoles', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Audio & MP3', 1, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Mobile Phone Accessories', 1, 'mobile-phone-accessories', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Cameras & Camcorders', 1, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Other Electronics', 1, 'other-electronics', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Cars', 2, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Truck, Bus & Heavy-Duty', 2, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Parts & Accessories', 2, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Bikes & Scooters', 2, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Boats & Water Transport', 2, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Houses', 3, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Land', 3, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Apartments', 3, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Rooms', 3, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Commercial Property', 3, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Services', 4, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Job Vacancies', 4, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Clothing & Fashion', 5, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Health & Beauty', 5, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Children''s Items', 5, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Other Personal Items', 5, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Handicrafts', 5, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'White Goods & Kitchenware', 6, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Home & Garden', 6, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Furniture', 6, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Other Home Appliances', 6, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Movies, Music & Literature', 7, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Travel', 7, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Musical Instruments', 7, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Sports Equipment', 7, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Art & Collectibles', 7, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Tickets & Vouchers', 7, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Other Leisure, Sport & Hobby', 7, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Teaching & Training', 8, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Other Education & Teaching', 8, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Text Books', 8, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Pets', 9, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Farm Animals', 9, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Accessories for Pets & Animals', 9, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Food for Pets & Animals', 9, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Veterinary Services', 9, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Caretakers, Pet sitters & Dog walkers', 9, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Other Pets & Animals', 9, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Other Food & Agriculture', 10, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Chemicals, Tools & Machinery', 10, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Crops, Seeds & Plants', 10, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Fish', 10, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Meat', 10, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Vegetables', 10, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Fruits', 10, 'default-route', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Laptops & Netbooks', 13, 'laptops-netbooks', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Computer Accessories', 13, 'computer-accessories', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Tablet Devices', 13, 'tablet-devices', '2014-01-04 23:10:57', '2014-01-04 23:10:57'),
(68, 'Desktop Computers', 13, 'desktop-computers', '2014-01-04 23:11:20', '2014-01-04 23:11:20'),
(69, 'TVs', 14, 'tvs', '2014-01-04 23:12:08', '2014-01-04 23:12:08'),
(70, 'TV & Video Accessories', 14, 'tv-video-accessories', '2014-01-04 23:12:19', '2014-01-04 23:12:19'),
(71, 'Projectors', 14, 'projectors', '2014-01-04 23:12:29', '2014-01-04 23:12:29'),
(72, 'Video Players', 14, 'video-players', '2014-01-04 23:12:39', '2014-01-04 23:12:39'),
(73, 'Speakers & Sound Systems', 16, 'speakers-sound-systems', '2014-01-04 23:13:51', '2014-01-04 23:13:51'),
(74, 'iPod & MP3 Players', 16, 'ipod-mp3-players', '2014-01-04 23:14:22', '2014-01-04 23:14:22'),
(75, 'Other Audio & MP3', 16, 'other-audio-mp3', '2014-01-04 23:14:33', '2014-01-04 23:14:33'),
(76, 'Photo Cameras', 18, 'photo-cameras', '2014-01-04 23:15:10', '2014-01-04 23:15:10'),
(77, 'Video Camcorders', 18, 'video-camcorders', '2014-01-04 23:15:59', '2014-01-04 23:15:59'),
(78, 'Other Cameras', 18, 'other-cameras', '2014-01-04 23:16:12', '2014-01-04 23:16:12'),
(79, 'Photo & Video Accessories', 18, 'photo-video-accessories', '2014-01-04 23:16:46', '2014-01-04 23:16:46'),
(80, 'Trucks & Vans', 21, 'default-route', '2014-01-04 23:18:04', '2014-01-04 23:18:04'),
(81, 'Buses & Taxis', 21, 'default-route', '2014-01-04 23:18:18', '2014-01-04 23:18:18'),
(82, 'Tractors & Heavy-Duty', 21, 'default-route', '2014-01-04 23:18:35', '2014-01-04 23:18:35'),
(83, 'Auto Parts', 22, 'default-route', '2014-01-04 23:18:58', '2014-01-04 23:18:58'),
(84, 'Other Parts & Accessories', 22, 'default-route', '2014-01-04 23:19:08', '2014-01-04 23:19:08'),
(85, 'Maintenance & Repair', 22, 'default-route', '2014-01-04 23:19:19', '2014-01-04 23:19:19'),
(86, 'Tyres & Rims', 22, 'default-route', '2014-01-04 23:19:28', '2014-01-04 23:19:28'),
(87, 'Car Audio', 22, 'default-route', '2014-01-04 23:19:37', '2014-01-04 23:19:37'),
(88, 'Security & Safety', 22, 'default-route', '2014-01-04 23:19:48', '2014-01-04 23:19:48'),
(89, 'Motorbikes & Scooters', 23, 'default-route', '2014-01-04 23:20:00', '2014-01-04 23:20:00'),
(90, 'Bicycles', 23, 'default-route', '2014-01-04 23:20:10', '2014-01-04 23:20:10'),
(91, 'Shops', 29, 'default-route', '2014-01-04 23:20:35', '2014-01-04 23:20:35'),
(92, 'Offices', 29, 'default-route', '2014-01-04 23:20:43', '2014-01-04 23:20:43'),
(93, 'Warehouses & Workshops', 29, 'default-route', '2014-01-04 23:20:52', '2014-01-04 23:20:52'),
(94, 'Other Commercial Property', 29, 'default-route', '2014-01-04 23:21:02', '2014-01-04 23:21:02'),
(95, 'Hotels', 29, 'default-route', '2014-01-04 23:21:09', '2014-01-04 23:21:09'),
(96, 'Buildings', 29, 'default-route', '2014-01-04 23:21:16', '2014-01-04 23:21:16'),
(97, 'Restaurants', 29, 'default-route', '2014-01-04 23:21:22', '2014-01-04 23:21:22'),
(98, 'Factories & Mills', 29, 'default-route', '2014-01-04 23:21:37', '2014-01-04 23:21:37'),
(99, 'Computer Services', 30, 'default-route', '2014-01-04 23:22:08', '2014-01-04 23:22:08'),
(100, 'General Services', 30, 'default-route', '2014-01-04 23:22:17', '2014-01-04 23:22:17'),
(101, 'Construction Services', 30, 'default-route', '2014-01-04 23:22:30', '2014-01-04 23:22:30'),
(102, 'Printing Services', 30, 'default-route', '2014-01-04 23:22:38', '2014-01-04 23:22:38'),
(103, 'Travel & Tourism services', 30, 'default-route', '2014-01-04 23:22:47', '2014-01-04 23:22:47'),
(104, 'Media & Entertainment Services', 30, 'default-route', '2014-01-04 23:22:59', '2014-01-04 23:22:59'),
(105, 'Mobile Phone Services', 30, 'default-route', '2014-01-04 23:23:08', '2014-01-04 23:23:08'),
(106, 'Food & Catering Services', 30, 'default-route', '2014-01-04 23:23:17', '2014-01-04 23:23:17'),
(107, 'Car & Transport Services', 30, 'default-route', '2014-01-04 23:23:32', '2014-01-04 23:23:32'),
(108, 'Electronics & Engineering Services', 30, 'default-route', '2014-01-04 23:23:43', '2014-01-04 23:23:43'),
(109, 'Financial & Legal services', 30, 'default-route', '2014-01-04 23:23:51', '2014-01-04 23:23:51'),
(110, 'Fashion, Beauty & Health Services', 30, 'default-route', '2014-01-04 23:23:59', '2014-01-04 23:23:59'),
(111, 'Drying & Cleaning Services', 30, 'default-route', '2014-01-04 23:24:07', '2014-01-04 23:24:07'),
(112, 'Security Services', 30, 'default-route', '2014-01-04 23:24:16', '2014-01-04 23:24:16'),
(113, 'Home Services', 30, 'default-route', '2014-01-04 23:24:23', '2014-01-04 23:24:23'),
(114, 'Music & Event Services', 30, 'default-route', '2014-01-04 23:24:33', '2014-01-04 23:24:33'),
(115, 'Caretaking Services', 30, 'default-route', '2014-01-04 23:24:41', '2014-01-04 23:24:41'),
(116, 'Writing services', 30, 'default-route', '2014-01-04 23:24:50', '2014-01-04 23:24:50'),
(117, 'Maritime Services', 30, 'default-route', '2014-01-04 23:25:00', '2014-01-04 23:25:00'),
(118, 'Sales & Retail', 31, 'default-route', '2014-01-04 23:42:25', '2014-01-04 23:42:25'),
(119, 'Media, Advertising & Marketing', 31, 'default-route', '2014-01-04 23:42:35', '2014-01-04 23:42:35'),
(120, 'General Labour', 31, 'default-route', '2014-01-04 23:42:45', '2014-01-04 23:42:45'),
(121, 'Work Overseas', 31, 'default-route', '2014-01-04 23:42:53', '2014-01-04 23:42:53'),
(122, 'Secretary & Office Admin', 31, 'default-route', '2014-01-04 23:43:02', '2014-01-04 23:43:02'),
(123, 'Transportation', 31, 'default-route', '2014-01-04 23:43:09', '2014-01-04 23:43:09'),
(124, 'Teaching', 31, 'default-route', '2014-01-04 23:43:17', '2014-01-04 23:43:17'),
(125, 'Household Help', 31, 'default-route', '2014-01-04 23:43:31', '2014-01-04 23:43:31'),
(126, 'Accounting & Finance', 31, 'default-route', '2014-01-04 23:43:40', '2014-01-04 23:43:40'),
(127, 'Food & Catering', 31, 'default-route', '2014-01-04 23:43:49', '2014-01-04 23:43:49'),
(128, 'IT & Telecom', 31, 'default-route', '2014-01-04 23:43:58', '2014-01-04 23:43:58'),
(129, 'Customer Service', 31, 'default-route', '2014-01-04 23:44:07', '2014-01-04 23:44:07'),
(130, 'Fashion & Beauty', 31, 'default-route', '2014-01-04 23:44:15', '2014-01-04 23:44:15'),
(131, 'Hotels & Tourism', 31, 'default-route', '2014-01-04 23:44:24', '2014-01-04 23:44:24'),
(132, 'Civil Engineering & Construction', 31, 'default-route', '2014-01-04 23:44:34', '2014-01-04 23:44:34'),
(133, 'Design, Art & Photography', 31, 'default-route', '2014-01-04 23:44:42', '2014-01-04 23:44:42'),
(134, 'Engineering & Architecture', 31, 'default-route', '2014-01-04 23:44:50', '2014-01-04 23:44:50'),
(135, 'Security', 31, 'default-route', '2014-01-04 23:44:58', '2014-01-04 23:44:58'),
(136, 'Medical & Biotech', 31, 'default-route', '2014-01-04 23:45:07', '2014-01-04 23:45:07'),
(137, 'Management Consulting', 31, 'default-route', '2014-01-04 23:45:15', '2014-01-04 23:45:15'),
(138, 'Manufacturing', 31, 'default-route', '2014-01-04 23:45:23', '2014-01-04 23:45:23'),
(139, 'Research & Development', 31, 'default-route', '2014-01-04 23:45:32', '2014-01-04 23:45:32'),
(140, 'Agricultural', 31, 'default-route', '2014-01-04 23:45:41', '2014-01-04 23:45:41'),
(141, 'Travel & Airline', 31, 'default-route', '2014-01-04 23:45:49', '2014-01-04 23:45:49'),
(142, 'Tradesmen & Craftsmen', 31, 'default-route', '2014-01-04 23:45:58', '2014-01-04 23:45:58'),
(143, 'Legal', 31, 'default-route', '2014-01-04 23:46:08', '2014-01-04 23:46:08'),
(144, 'Clothing', 32, 'default-route', '2014-01-04 23:46:26', '2014-01-04 23:46:26'),
(145, 'Footwear & Shoes', 32, 'default-route', '2014-01-04 23:46:39', '2014-01-04 23:46:39'),
(146, 'Watches', 32, 'default-route', '2014-01-04 23:46:47', '2014-01-04 23:46:47'),
(147, 'Jewellery', 32, 'default-route', '2014-01-04 23:46:54', '2014-01-04 23:46:54'),
(148, 'Bags', 32, 'default-route', '2014-01-04 23:47:04', '2014-01-04 23:47:04'),
(149, 'Other Fashion Items', 32, 'default-route', '2014-01-04 23:47:12', '2014-01-04 23:47:12'),
(150, 'Eyeglasses', 32, 'default-route', '2014-01-04 23:47:22', '2014-01-04 23:47:22'),
(151, 'Perfume', 33, 'default-route', '2014-01-04 23:47:34', '2014-01-04 23:47:34'),
(152, 'Other Health & Beauty', 33, 'default-route', '2014-01-04 23:47:44', '2014-01-04 23:47:44'),
(153, 'Hair Products', 33, 'default-route', '2014-01-04 23:48:02', '2014-01-04 23:48:02'),
(154, 'Grooming & Bodycare', 33, 'default-route', '2014-01-04 23:48:11', '2014-01-04 23:48:11'),
(155, 'Weight Loss', 33, 'default-route', '2014-01-04 23:48:21', '2014-01-04 23:48:21'),
(156, 'Cosmetics', 33, 'default-route', '2014-01-04 23:48:27', '2014-01-04 23:48:27'),
(157, 'Other Children''s Items', 34, 'default-route', '2014-01-04 23:48:41', '2014-01-04 23:48:41'),
(158, 'Clothes & Shoes', 34, 'default-route', '2014-01-04 23:48:51', '2014-01-04 23:48:51'),
(159, 'Toys', 34, 'default-route', '2014-01-04 23:49:03', '2014-01-04 23:49:03'),
(160, 'Car Seats & Baby Carriers', 34, 'default-route', '2014-01-04 23:49:19', '2014-01-04 23:49:19'),
(161, 'Children''s Furniture', 34, 'default-route', '2014-01-04 23:49:28', '2014-01-04 23:49:28'),
(162, 'Prams & Strollers', 34, 'default-route', '2014-01-04 23:49:37', '2014-01-04 23:49:37'),
(163, 'Refrigerators & Deep Freezers', 37, 'default-route', '2014-01-04 23:50:21', '2014-01-04 23:50:21'),
(164, 'Stoves, Ovens & Microwave Ovens', 37, 'default-route', '2014-01-04 23:50:33', '2014-01-04 23:50:33'),
(165, 'Washing Machines & Dishwashers', 37, 'default-route', '2014-01-04 23:50:42', '2014-01-04 23:50:42'),
(166, 'Utencils & Cookers', 37, 'default-route', '2014-01-04 23:50:51', '2014-01-04 23:50:51'),
(167, 'Other White Goods & Kitchenware', 37, 'default-route', '2014-01-04 23:50:59', '2014-01-04 23:50:59'),
(168, 'Kitchen & Dining', 37, 'default-route', '2014-01-04 23:51:07', '2014-01-04 23:51:07'),
(169, 'Makers & Toasters', 37, 'default-route', '2014-01-04 23:51:15', '2014-01-04 23:51:15'),
(170, 'Water Purifier', 37, 'default-route', '2014-01-04 23:51:24', '2014-01-04 23:51:24'),
(171, 'Dryers & Cleaners', 37, 'default-route', '2014-01-04 23:51:31', '2014-01-04 23:51:31'),
(172, 'Heating, Cooling & AC', 38, 'default-route', '2014-01-04 23:51:47', '2014-01-04 23:51:47'),
(173, 'Electric Generators', 38, 'default-route', '2014-01-04 23:51:56', '2014-01-04 23:51:56'),
(174, 'Other Home & Garden', 38, 'default-route', '2014-01-04 23:52:06', '2014-01-04 23:52:06'),
(175, 'UPS & Inverters', 38, 'default-route', '2014-01-04 23:52:15', '2014-01-04 23:52:15'),
(176, 'Bathroom & WC', 38, 'default-route', '2014-01-04 23:52:23', '2014-01-04 23:52:23'),
(177, 'Garden Tools & Machinery', 38, 'default-route', '2014-01-04 23:52:33', '2014-01-04 23:52:33'),
(178, 'Chairs & Tables', 39, 'default-route', '2014-01-04 23:52:53', '2014-01-04 23:52:53'),
(179, 'Sofas', 39, 'default-route', '2014-01-04 23:53:00', '2014-01-04 23:53:00'),
(180, 'Other Furniture', 39, 'default-route', '2014-01-04 23:53:08', '2014-01-04 23:53:08'),
(181, 'Beds & Bedding', 39, 'default-route', '2014-01-04 23:53:16', '2014-01-04 23:53:16'),
(182, 'Shelves & Storage', 39, 'default-route', '2014-01-04 23:53:24', '2014-01-04 23:53:24'),
(183, 'Textiles, Carpets & Decorations', 39, 'default-route', '2014-01-04 23:53:36', '2014-01-04 23:53:36'),
(184, 'Lighting', 39, 'default-route', '2014-01-04 23:53:43', '2014-01-04 23:53:43'),
(185, 'TV & Stereo Furniture', 39, 'default-route', '2014-01-04 23:53:51', '2014-01-04 23:53:51'),
(186, 'Antiques & Art', 39, 'default-route', '2014-01-04 23:54:00', '2014-01-04 23:54:00'),
(187, 'Games & Board Games', 41, 'default-route', '2014-01-04 23:54:31', '2014-01-04 23:54:31'),
(188, 'Books & Novels', 41, 'default-route', '2014-01-04 23:54:40', '2014-01-04 23:54:40'),
(189, 'DVDs', 41, 'default-route', '2014-01-04 23:54:47', '2014-01-04 23:54:47'),
(190, 'Other Entertainment', 41, 'default-route', '2014-01-04 23:54:55', '2014-01-04 23:54:55'),
(191, 'CDs', 41, 'default-route', '2014-01-04 23:55:02', '2014-01-04 23:55:02'),
(192, 'Magazines & Comics', 41, 'default-route', '2014-01-04 23:55:11', '2014-01-04 23:55:11'),
(193, 'Studio & Live Music Equipment', 43, 'default-route', '2014-01-04 23:55:24', '2014-01-04 23:55:24'),
(194, 'String Instruments & Amplifiers', 43, 'default-route', '2014-01-04 23:55:33', '2014-01-04 23:55:33'),
(195, 'Keyboards & Pianos', 43, 'default-route', '2014-01-04 23:55:42', '2014-01-04 23:55:42'),
(196, 'Percussion & Drums', 43, 'default-route', '2014-01-04 23:56:00', '2014-01-04 23:56:00'),
(197, 'Woodwind & Brass Instruments', 43, 'default-route', '2014-01-04 23:56:10', '2014-01-04 23:56:10'),
(198, 'Other Musical Instruments', 43, 'default-route', '2014-01-04 23:56:18', '2014-01-04 23:56:18'),
(199, 'Sheet Music', 43, 'default-route', '2014-01-04 23:56:28', '2014-01-04 23:56:28'),
(200, 'Fitness & Gym', 44, 'default-route', '2014-01-04 23:56:40', '2014-01-04 23:56:40'),
(201, 'Outdoor Sports Equipment', 44, 'default-route', '2014-01-04 23:56:50', '2014-01-04 23:56:50'),
(202, 'Indoor Sports Equipment', 44, 'default-route', '2014-01-04 23:57:00', '2014-01-04 23:57:00'),
(203, 'Other Sports Equipment', 44, 'default-route', '2014-01-04 23:57:08', '2014-01-04 23:57:08'),
(204, 'Water Sports', 44, 'default-route', '2014-01-04 23:57:17', '2014-01-04 23:57:17'),
(205, 'Hunting, Fishing, Camping & Hiking', 44, 'default-route', '2014-01-04 23:57:28', '2014-01-04 23:57:28'),
(206, 'Travel Tickets', 46, 'default-route', '2014-01-04 23:57:46', '2014-01-04 23:57:46'),
(207, 'Concert Tickets', 46, 'default-route', '2014-01-04 23:57:54', '2014-01-04 23:57:54'),
(208, 'Theater & Show Tickets', 46, 'default-route', '2014-01-04 23:58:03', '2014-01-04 23:58:03'),
(209, 'Other Tickets & Vouchers', 46, 'default-route', '2014-01-04 23:58:14', '2014-01-04 23:58:14'),
(210, 'Vouchers', 46, 'default-route', '2014-01-04 23:58:21', '2014-01-04 23:58:21'),
(211, 'Coaching & Training', 48, 'default-route', '2014-01-04 23:58:41', '2014-01-04 23:58:41'),
(212, 'Tutoring', 48, 'default-route', '2014-01-04 23:58:48', '2014-01-04 23:58:48'),
(213, 'Other Teaching or Training', 48, 'default-route', '2014-01-04 23:58:57', '2014-01-04 23:58:57'),
(214, 'Private Lessons', 48, 'default-route', '2014-01-04 23:59:04', '2014-01-04 23:59:04'),
(215, 'Other Text Books', 50, 'default-route', '2014-01-04 23:59:24', '2014-01-04 23:59:24'),
(216, 'Colleges & Universities', 50, 'default-route', '2014-01-04 23:59:32', '2014-01-04 23:59:32'),
(217, 'Schools', 50, 'default-route', '2014-01-04 23:59:39', '2014-01-04 23:59:39'),
(218, 'Nursery & Primary', 50, 'default-route', '2014-01-04 23:59:47', '2014-01-04 23:59:47'),
(219, 'Dogs', 51, 'default-route', '2014-01-05 00:00:10', '2014-01-05 00:00:10'),
(220, 'Rabbits', 51, 'default-route', '2014-01-05 00:00:16', '2014-01-05 00:00:16'),
(221, 'Cats', 51, 'default-route', '2014-01-05 00:00:23', '2014-01-05 00:00:23'),
(222, 'Birds', 51, 'default-route', '2014-01-05 00:00:30', '2014-01-05 00:00:30'),
(223, 'Fish', 51, 'default-route', '2014-01-05 00:00:37', '2014-01-05 00:00:37'),
(224, 'Other Pets', 51, 'default-route', '2014-01-05 00:00:48', '2014-01-05 00:00:48'),
(225, 'Poultry', 52, 'default-route', '2014-01-05 00:01:14', '2014-01-05 00:01:14'),
(226, 'Livestock', 52, 'default-route', '2014-01-05 00:01:21', '2014-01-05 00:01:21'),
(227, 'Other Farm Animals', 52, 'default-route', '2014-01-05 00:01:29', '2014-01-05 00:01:29');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Administrators', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
('2014_01_04_160429_create_images_table', 3),
('2014_01_05_021245_update_products_table', 4),
('2014_01_05_091842_add_for_features_fileds_products_table', 5),
('2014_01_07_144729_edit_products_table', 6);

-- --------------------------------------------------------

--
-- Stand-in structure for view `mobile_phones`
--
CREATE TABLE IF NOT EXISTS `mobile_phones` (
`id` int(10) unsigned
,`category_id` int(10) unsigned
,`poster_id` int(10) unsigned
,`product_for` varchar(255)
,`is_replica` varchar(10)
,`is_touch` varchar(10)
,`title` varchar(255)
,`description` text
,`price` decimal(8,2)
,`image_path` varchar(255)
,`brand` varchar(255)
,`created_at` timestamp
,`updated_at` timestamp
);
-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `poster_id` int(10) unsigned NOT NULL,
  `product_for` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_replica` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_touch` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `sold` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_poster_id_foreign` (`poster_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `poster_id`, `product_for`, `is_replica`, `is_touch`, `description`, `price`, `image_path`, `brand`, `model`, `year`, `body_type`, `transmission`, `fuel_type`, `mileage`, `engine_capacity`, `street_landmark`, `size`, `no_bedrooms`, `no_bathrooms`, `land_type`, `features`, `company_website`, `apply_via`, `job_title`, `job_description`, `logo_path`, `created_at`, `updated_at`, `sold`) VALUES
(12, 12, 'Apple 3GS', 2, 'sale', 'replica', 'touch', 'Its a very good phone with nice features and its slight ly used.........', 4000.00, 'uploads/aidnL3zY3NU2seGbuRgp.jpg', 'acer', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '2014-01-06 21:36:28', '2014-01-07 16:05:27', NULL),
(13, 12, 'Iphone 3GS', 2, 'product_for', NULL, 'touch', 'Its also a very good phone', 7643.00, 'uploads/GuTuS9zEl0oNDxlS3gV4.jpg', 'alcatel', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '2014-01-06 21:40:21', '2014-01-07 18:56:01', NULL),
(15, 12, 'Human Mobile Phone With Good Reception', 2, 'sale', 'replica', 'touch', 'The best ever phone', 20.00, 'uploads/H1kiP2XMgQpi8AQzOSUD.jpg', 'huawei', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '2014-01-06 22:00:12', '2014-01-07 04:54:13', NULL),
(16, 12, 'BlackBerry 900 Series', 2, 'sale', 'replica', 'touch', 'What a Wonderful Phone.What a Wonderful Phone..What a Wonderful Phone.\r\nWhat a Wonderful Phone.\r\nWhat a Wonderful Phone.', 66777.00, 'uploads/IK97wrvjaeSFC4jNBVH4.jpg', 'blackberry', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '2014-01-07 00:59:38', '2014-01-07 00:59:38', NULL),
(17, 12, 'Apple 3GS', 2, 'sale', NULL, 'touch', 'this is good ok whay', 8787.00, 'uploads/rsgnJZtPI9ZFFYXcVbws.jpg', 'alcatel', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '2014-01-07 04:20:29', '2014-01-07 15:34:36', NULL),
(18, 12, 'Apple 3GS', 2, 'sale', 'replica', 'touch', 'klkjldkjkjlk', 999.00, 'uploads/CHH6puDXbu3Rh16tIVIe.jpg', 'apple', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '2014-01-07 04:20:57', '2014-01-07 04:20:57', NULL),
(21, 12, 'Google Mobile - Brand new', 2, 'wanted', 'replica', 'touch', '\r\n    Make sure you post in the correct category.\r\n    Do not post the same ad more than once. Duplicate ads will be rejected.\r\n    Do not upload pictures with watermarks. Invalid pictures will be removed.\r\n    Do not put your email or phone numbers in the title or description.\r\n', 87987.00, 'uploads/x7UlMtb5BACsdpjWScF7.jpg', 'google-nexus', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '2014-01-07 18:35:22', '2014-01-07 18:35:22', NULL),
(22, 12, 'Lamin darboe', 2, 'sale', 'replica', 'touch', 'test', 88.00, 'uploads/N7L1hs5rPiGEzllABrUR.jpg', 'alcatel', '', 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '2014-01-07 19:21:14', '2014-01-07 19:22:47', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `user_type`, `phone_no`, `location`, `group_id`, `created_at`, `updated_at`) VALUES
(2, 'lmndarboe@gmail.com', '$2y$10$inLr14S7BW.S/6d8GZqdXOky5jhGG3At3FD2aCqS0Jq5Gi9Stb84O', 'Lamin Darboe', 'Private', '02908872872', 'Accra', 1, '0000-00-00 00:00:00', '2014-01-05 16:06:14');

-- --------------------------------------------------------

--
-- Structure for view `mobile_phones`
--
DROP TABLE IF EXISTS `mobile_phones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mobile_phones` AS select `products`.`id` AS `id`,`products`.`category_id` AS `category_id`,`products`.`poster_id` AS `poster_id`,`products`.`product_for` AS `product_for`,`products`.`is_replica` AS `is_replica`,`products`.`is_touch` AS `is_touch`,`products`.`title` AS `title`,`products`.`description` AS `description`,`products`.`price` AS `price`,`products`.`image_path` AS `image_path`,`products`.`brand` AS `brand`,`products`.`created_at` AS `created_at`,`products`.`updated_at` AS `updated_at` from `products`;

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
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_poster_id_foreign` FOREIGN KEY (`poster_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
