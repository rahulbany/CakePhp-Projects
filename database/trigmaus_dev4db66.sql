-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 31, 2015 at 12:23 AM
-- Server version: 5.5.45-cll
-- PHP Version: 5.5.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trigmaus_dev4db66`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `street_address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `zip_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `address_user_id_index` (`user_id`),
  KEY `address_state_id_index` (`state_id`),
  KEY `address_zip_code_index` (`zip_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `api_auth`
--

CREATE TABLE IF NOT EXISTS `api_auth` (
  `user_id` int(10) unsigned NOT NULL,
  `access_token` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires_on` datetime NOT NULL,
  UNIQUE KEY `api_auth_user_id_unique` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_auth`
--

INSERT INTO `api_auth` (`user_id`, `access_token`, `ip`, `created_at`, `updated_at`, `expires_on`) VALUES
(2, '07eb9d0a9d8bf3958616e5831ca0c397b98660c1bfcab7fd07fac4d4f72041d79a05cc91f488c0e2ccb858bc76c1bae0c6e32d1a2e97a33675b3e0dbad4762ef7c1515f744424c52b2230b', '::1', '2015-11-06 23:45:06', '2015-11-06 23:45:06', '2015-11-10 11:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `credit_cards`
--

CREATE TABLE IF NOT EXISTS `credit_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `credit_card_no` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `cvv` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `expire_month_id` int(10) unsigned NOT NULL,
  `expire_year` int(10) unsigned NOT NULL,
  `neme_of_the_card` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `credit_cards_customer_id_credit_card_no_index` (`customer_id`,`credit_card_no`),
  KEY `credit_cards_customer_id_index` (`customer_id`),
  KEY `credit_cards_expire_month_id_index` (`expire_month_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `credit_cards`
--

INSERT INTO `credit_cards` (`id`, `customer_id`, `credit_card_no`, `cvv`, `expire_month_id`, `expire_year`, `neme_of_the_card`, `is_enabled`, `created_at`) VALUES
(2, 3, '1111111111111111', '411', 2, 2019, '', 1, '2015-12-14 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer-basic_service`
--

CREATE TABLE IF NOT EXISTS `customer-basic_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `property_id` int(10) unsigned NOT NULL,
  `money_payable` double(8,2) NOT NULL,
  `is_enabled` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `customer_basic_service_customer_id_index` (`customer_id`),
  KEY `customer_basic_service_property_id_index` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer-basic_service_payment`
--

CREATE TABLE IF NOT EXISTS `customer-basic_service_payment` (
  `scheduled_service_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `cbs_id` int(10) unsigned NOT NULL,
  `status` enum('In Progress','Processed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'In Progress',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `customer_basic_service_payment_scheduled_service_id_index` (`scheduled_service_id`),
  KEY `customer_basic_service_payment_customer_id_index` (`customer_id`),
  KEY `customer_basic_service_payment_cbs_id_index` (`cbs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer-extra_service`
--

CREATE TABLE IF NOT EXISTS `customer-extra_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `property_id` int(10) unsigned NOT NULL,
  `money_payable` double(8,2) NOT NULL,
  `extra_service_id` int(10) unsigned NOT NULL,
  `is_enabled` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `customer_extra_service_customer_id_index` (`customer_id`),
  KEY `customer_extra_service_property_id_index` (`property_id`),
  KEY `customer_extra_service_extra_service_id_index` (`extra_service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer-extra_service_payment`
--

CREATE TABLE IF NOT EXISTS `customer-extra_service_payment` (
  `scheduled_service_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `ces_id` int(10) unsigned NOT NULL,
  `status` enum('In Progress','Processed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'In Progress',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `customer_extra_service_payment_scheduled_service_id_index` (`scheduled_service_id`),
  KEY `customer_extra_service_payment_customer_id_index` (`customer_id`),
  KEY `customer_extra_service_payment_ces_id_index` (`ces_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `neighbourhood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `is_email_verified` tinyint(4) NOT NULL,
  `stripe_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `selected_credit_card_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`),
  UNIQUE KEY `customers_stripe_id_unique` (`stripe_id`),
  KEY `customers_user_id_index` (`user_id`),
  KEY `customers_selected_credit_card_id_index` (`selected_credit_card_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `neighbourhood`, `email`, `is_email_verified`, `stripe_id`, `selected_credit_card_id`) VALUES
(1, 2, '2982742c88', 'anything@something.com', 0, 'c52c44b7ae4dad33a20f59ea07a36a8339f0085c1a7034a404ec426ec94f', NULL),
(2, 3, 'Why me?', 'aaaa@ad.dd', 0, 'df678f0dcf19dbca8627c723ef52b7f26c5634f806ad355c228c7b584013', NULL),
(3, 4, 'e64d852c3d', 'nothing@something.com', 0, 'dc747a09dddb7c619711501b40e4fb46b9a6d54f08c00cc7f379239f7c0d', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_property`
--

CREATE TABLE IF NOT EXISTS `customer_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `house_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `street-address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `customer_property_customer_id_index` (`customer_id`),
  KEY `customer_property_zip_code_index` (`zip_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customer_property`
--

INSERT INTO `customer_property` (`id`, `customer_id`, `house_no`, `street-address`, `zip_code`, `city`, `state_id`, `image_url`, `created_at`) VALUES
(2, 1, '12', 'street-12', '1212', 'chandigarh', '12', 'sd', '0000-00-00 00:00:00'),
(3, 2, '12', 'street-145', '4545', 'chandigarh', '12', 'sd', '0000-00-00 00:00:00'),
(4, 3, '85', 'street-1845', '4545', 'chandigarh', '25', 'sd', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE IF NOT EXISTS `discount` (
  `discount_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(4) NOT NULL,
  `discount_money_value` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ending_time` datetime NOT NULL,
  UNIQUE KEY `discount_discount_code_unique` (`discount_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discount_code`, `is_enabled`, `discount_money_value`, `created_at`, `ending_time`) VALUES
('111', 1, 500, '2015-12-14 07:00:00', '2015-12-17 00:00:00'),
('425', 25, 100, '2015-12-17 07:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `extra_provided_services`
--

CREATE TABLE IF NOT EXISTS `extra_provided_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `extra_service_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `service_money_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `extra_provided_services_extra_service_name_unique` (`extra_service_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `frequency-customer`
--

CREATE TABLE IF NOT EXISTS `frequency-customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `frequency_id` int(10) unsigned NOT NULL,
  `is_enabled` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `frequency_customer_customer_id_index` (`customer_id`),
  KEY `frequency_customer_frequency_id_index` (`frequency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `frequency-customer`
--

INSERT INTO `frequency-customer` (`id`, `customer_id`, `frequency_id`, `is_enabled`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 12, '2015-12-14 07:00:00', '0000-00-00 00:00:00');

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
('2015_09_20_092325_create_zip_codes_table', 1),
('2015_10_20_092325_create_states_table', 1),
('2015_10_20_102437_create_users_table', 1),
('2015_10_20_102438_create_password_resets_table', 1),
('2015_10_20_102440_create_address_table', 1),
('2015_10_22_044220_create_customers_table', 1),
('2015_10_22_045107_create_months_table', 1),
('2015_10_22_045444_create_credit_cards_table', 1),
('2015_10_22_050748_create_mobile_no_table', 1),
('2015_10_22_052646_create_customer_propertys_table', 1),
('2015_10_22_053748_update_customers_table', 1),
('2015_10_22_061421_create_partners_table', 1),
('2015_10_22_062117_create_zip_code-partner_table', 1),
('2015_10_22_062751_create_service_day_table', 1),
('2015_10_22_062847_create_service_time_table', 1),
('2015_10_22_063045_create_partner_availablity_table', 1),
('2015_10_22_080029_create_partner_provided_services_table', 1),
('2015_10_22_080142_create_partner_provided_service-partner_table', 1),
('2015_10_22_082742_create_discount_table', 1),
('2015_10_22_083451_create_extra_services_table', 1),
('2015_10_22_083845_create_request_frequency_table', 1),
('2015_10_22_105353_create_customer-extra_service_table', 1),
('2015_10_22_110229_create_frequency-customer_table', 1),
('2015_10_22_113129_create_customer-basic_service_table', 1),
('2015_10_22_115038_create_scheduled_service_table', 1),
('2015_10_22_115040_create_customer-basic_service_payment_table', 1),
('2015_10_22_115058_create_customer-extra_service_payment_table', 1),
('2015_10_22_125018_create_user-referal_table', 1),
('2015_10_22_130353_create_partner_service_scheduling_table', 1),
('2015_10_22_131137_create_service_rating_table', 1),
('2015_11_03_112300_create_api_auth_table', 1),
('2015_11_05_020655_create_terms_and_conditions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_no`
--

CREATE TABLE IF NOT EXISTS `mobile_no` (
  `user_id` int(10) unsigned NOT NULL,
  `mobile_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `mobile_no_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE IF NOT EXISTS `months` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `month_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `month_name`) VALUES
(1, 'jan'),
(2, 'feb'),
(3, 'march'),
(4, 'april');

-- --------------------------------------------------------

--
-- Table structure for table `partnerinformations`
--

CREATE TABLE IF NOT EXISTS `partnerinformations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `business_type` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `partnerinformations`
--

INSERT INTO `partnerinformations` (`id`, `user_id`, `city`, `address`, `profile_image`, `business_type`, `company_name`) VALUES
(1, 9, 'dehradun', 'chandigarh it park sd', 'mee.JPG', 'testingss', 'trigmaa');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `company_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `type_of_phone` enum('Android','iOS','Other') COLLATE utf8_unicode_ci NOT NULL,
  `is_18_years_old` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `partners_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `user_id`, `company_name`, `type_of_phone`, `is_18_years_old`) VALUES
(1, 5, '50642f', 'Android', 'yes'),
(2, 6, '469888', 'iOS', 'no'),
(3, 7, 'e8a05e', 'Other', 'yes'),
(4, 9, 'trigma', 'Android', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `partner_availablity`
--

CREATE TABLE IF NOT EXISTS `partner_availablity` (
  `partner_id` int(10) unsigned NOT NULL,
  `day_id` int(10) unsigned NOT NULL,
  `time_id` int(10) unsigned NOT NULL,
  KEY `partner_availablity_partner_id_day_id_time_id_index` (`partner_id`,`day_id`,`time_id`),
  KEY `partner_availablity_partner_id_index` (`partner_id`),
  KEY `partner_availablity_day_id_index` (`day_id`),
  KEY `partner_availablity_time_id_index` (`time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner_provided_service-partner`
--

CREATE TABLE IF NOT EXISTS `partner_provided_service-partner` (
  `partner_id` int(10) unsigned NOT NULL,
  `pp_service_id` int(10) unsigned NOT NULL,
  KEY `partner_provided_service_partner_partner_id_index` (`partner_id`),
  KEY `partner_provided_service_partner_pp_service_id_index` (`pp_service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partner_provided_service-partner`
--

INSERT INTO `partner_provided_service-partner` (`partner_id`, `pp_service_id`) VALUES
(1, 2),
(2, 2),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `partner_provided_services`
--

CREATE TABLE IF NOT EXISTS `partner_provided_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_apply` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `id_3` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `partner_provided_services`
--

INSERT INTO `partner_provided_services` (`id`, `service`, `is_apply`) VALUES
(1, 'lawn services', 1),
(2, 'Lawn Mowing Services', 1),
(3, 'Junk Hauling Services', 0),
(4, 'Security Camera Services', 0),
(5, 'Smart Appliance Services', 0),
(6, 'Handyman/Labor Services', 0),
(7, 'Holiday Light Services', 0);

-- --------------------------------------------------------

--
-- Table structure for table `partner_provided_service_partners`
--

CREATE TABLE IF NOT EXISTS `partner_provided_service_partners` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `partner_id` int(11) unsigned NOT NULL,
  `pp_service_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `partner_id` (`partner_id`),
  KEY `pp_service_id` (`pp_service_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `partner_provided_service_partners`
--

INSERT INTO `partner_provided_service_partners` (`id`, `partner_id`, `pp_service_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 4, 1),
(10, 4, 2),
(17, 4, 4),
(19, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `partner_service_scheduling`
--

CREATE TABLE IF NOT EXISTS `partner_service_scheduling` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `partner_id` int(10) unsigned NOT NULL,
  `scheduled_service_id` int(10) unsigned NOT NULL,
  `is_done` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `is_cancelled` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `partner_service_scheduling_partner_id_index` (`partner_id`),
  KEY `partner_service_scheduling_scheduled_service_id_index` (`scheduled_service_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `partner_service_scheduling`
--

INSERT INTO `partner_service_scheduling` (`id`, `partner_id`, `scheduled_service_id`, `is_done`, `is_cancelled`, `created_at`, `updated_at`) VALUES
(5, 4, 3, 'yes', 'no', '2015-12-14 13:06:03', '2015-12-14 14:06:00'),
(6, 4, 4, 'yes', 'no', '2015-12-14 13:06:03', '2015-12-14 14:06:00'),
(8, 4, 5, 'yes', 'no', '2015-12-17 16:41:21', '2015-12-16 11:26:22'),
(17, 4, 6, 'no', 'no', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `login_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_valid` tinyint(4) NOT NULL,
  UNIQUE KEY `password_resets_password_reset_token_unique` (`password_reset_token`),
  KEY `password_resets_login_name_index` (`login_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_frequency`
--

CREATE TABLE IF NOT EXISTS `request_frequency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_frequency_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `request_frequency_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `request_frequency_request_frequency_name_unique` (`request_frequency_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `request_frequency`
--

INSERT INTO `request_frequency` (`id`, `request_frequency_name`, `request_frequency_value`) VALUES
(1, 'test', 500),
(2, 'test2', 400);

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_service`
--

CREATE TABLE IF NOT EXISTS `scheduled_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `pp_services_id` int(10) unsigned NOT NULL,
  `frequency_customer_id` int(10) unsigned NOT NULL,
  `discount_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `paid_card_id` int(10) unsigned NOT NULL,
  `tip` double(8,2) NOT NULL,
  `payable_money` double(8,2) NOT NULL,
  `is_done` enum('In Progress','Cancelled','Done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'In Progress',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `scheduled_service_customer_id_index` (`customer_id`),
  KEY `scheduled_service_frequency_customer_id_index` (`frequency_customer_id`),
  KEY `scheduled_service_discount_code_index` (`discount_code`),
  KEY `scheduled_service_paid_card_id_index` (`paid_card_id`),
  KEY `pp_services_id` (`pp_services_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `scheduled_service`
--

INSERT INTO `scheduled_service` (`id`, `customer_id`, `pp_services_id`, `frequency_customer_id`, `discount_code`, `paid_card_id`, `tip`, `payable_money`, `is_done`, `created_at`, `updated_at`, `status`) VALUES
(3, 3, 1, 1, '111', 2, 0.00, 800.00, 'Done', '2015-12-14 07:00:00', '0000-00-00 00:00:00', 0),
(4, 2, 3, 1, '111', 2, 0.00, 500.00, 'Done', '2015-12-15 13:08:10', '0000-00-00 00:00:00', 0),
(5, 1, 1, 1, '425', 2, 0.00, 400.00, 'In Progress', '2015-12-17 07:00:00', '0000-00-00 00:00:00', 0),
(6, 3, 7, 1, '111', 2, 0.00, 800.00, 'In Progress', '2015-12-17 07:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_day`
--

CREATE TABLE IF NOT EXISTS `service_day` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `day_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `service_rating`
--

CREATE TABLE IF NOT EXISTS `service_rating` (
  `partner_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `pss_id` int(10) unsigned NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `service_rating_partner_id_index` (`partner_id`),
  KEY `service_rating_customer_id_index` (`customer_id`),
  KEY `service_rating_pss_id_index` (`pss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_rating`
--

INSERT INTO `service_rating` (`partner_id`, `customer_id`, `pss_id`, `comment`, `rating`, `created_at`, `updated_at`) VALUES
(4, 3, 5, 'this is test', 5.00, '2015-12-14 07:00:00', '2015-12-15 07:00:00'),
(4, 2, 6, 'test', 8.00, '2015-12-15 07:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service_time`
--

CREATE TABLE IF NOT EXISTS `service_time` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_time_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE IF NOT EXISTS `terms_and_conditions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` enum('customer','partner') COLLATE utf8_unicode_ci NOT NULL,
  `serial` smallint(5) unsigned NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user-referal`
--

CREATE TABLE IF NOT EXISTS `user-referal` (
  `user_id` int(10) unsigned NOT NULL,
  `new_comer_user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `user_referal_new_comer_user_id_unique` (`new_comer_user_id`),
  KEY `user_referal_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `login_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('admin','partner','customer') COLLATE utf8_unicode_ci NOT NULL,
  `referal_code` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_referal_code_unique` (`referal_code`),
  KEY `users_login_name_index` (`login_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `login_name`, `email`, `password`, `user_type`, `referal_code`, `remember_token`, `created_at`, `updated_at`, `token`) VALUES
(1, 'Admin', 'Admin', 'admin', '', '$2y$10$J0NcLjNspjR5NmLiW5hBKOSEjMd1QEGEFUp09rCpvVEoemQnzocxS', 'admin', 'bac83a79b7fc31bea2d8ddb7625b9ed7c6ccd542e2f6e78647512a0eb66f', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(2, 'Abrar', 'Jahin', 'abrar', '', '$2y$10$dCePxBNcWOajFG.WgrKNauiiRpDCJBqn7GIEUv9kRxoBp/IeS/Qea', 'customer', 'c2767ef82edcb37516b326e4bac14175221b8bc150b1fa85cb8a062a504b', 'swz0lqqwmFkBdRBLuYqfWPjqpVWg7Sj3koGJ9QjSVzXNbTA6v1dLxzMlCGlH', '0000-00-00 00:00:00', '2015-11-06 23:45:06', ''),
(3, 'Abrar', 'Janhin', 'jahin', '', '$2y$10$UWop.GZqshsD9T/V8wmDO.znhpnMRICEX79tlocTOWG/Q9sruaJdK', 'customer', '0037bc83afeaf608bfc01ec045021800eba1c7fd66272200d572ed80772e', NULL, '0000-00-00 00:00:00', '2015-11-07 02:19:34', ''),
(4, 'Abrar', 'Jahin', 'abrarjahin', 'lavkush.ramtripathi@trigma.in', '$2y$10$.987mM0f.M/XiDbz4lBd/ex/zp8moN6uaSpS9zVxzRECUd233dn2G', 'customer', '3f46d48bcd1d55055fdaefe9451a86f279e5df823c263dd622c2761d3317', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(5, 'Abrar', 'Hasin', 'pranto', '', '$2y$10$DSHhCop6dqPMxoqOsGd8AuIWAUwexXt1y66s93kaITrbpl3tCks76', 'partner', 'a632462c673e81a9e490d458bffb08125f728fe4ce1d7bf7aaff87631df0', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(6, 'Abrar', 'Hasin', 'hasin', '', '$2y$10$LMVvBycmNYExsTcTEb8xn.ouJqoHPOfCuL1o7CxMTzZqmpDLZcoAK', 'partner', '6e5e5c06a14be5b2d43618b8201b5ed55fcf7a0909b8252c4eebbefa7e05', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(7, 'Abrar', 'Hasin', 'abrarhasin', '', '$2y$10$vm9QZV0hhA.5hteeEXX6/O5VEKDLk8tlmUHe6icHIDgLZXfHOdkUm', 'partner', 'ceb65bfcc98f81b500bf5a973849bfb6005643e8091bec21a271fd33f0dc', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(9, 'pramod', 'singh', 'peter', 'pramod.singh@trigma.in', '$2y$10$4y38ezoPB5Hqu0VwDZpRnuKrDOgMcteFLnZs2JhrL/cchSFlj9.By', 'partner', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'd0c1982cbe37fea1f843d04a989525eb221a198ff921f94a5779e5fb82bfbc5784a2b79ee2e022b6e3dca77e7fc34ec6f39c744b148edffe98b915e4f4bfa996');

-- --------------------------------------------------------

--
-- Table structure for table `zip_code-partner`
--

CREATE TABLE IF NOT EXISTS `zip_code-partner` (
  `zip_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `partner_id` int(10) unsigned NOT NULL,
  KEY `zip_code_partner_zip_code_index` (`zip_code`),
  KEY `zip_code_partner_partner_id_index` (`partner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zip_codes`
--

CREATE TABLE IF NOT EXISTS `zip_codes` (
  `zip_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `zip_codes_zip_code_unique` (`zip_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zip_codes`
--

INSERT INTO `zip_codes` (`zip_code`) VALUES
('1212'),
('4545');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `address_zip_code_foreign` FOREIGN KEY (`zip_code`) REFERENCES `zip_codes` (`zip_code`);

--
-- Constraints for table `api_auth`
--
ALTER TABLE `api_auth`
  ADD CONSTRAINT `api_auth_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `credit_cards`
--
ALTER TABLE `credit_cards`
  ADD CONSTRAINT `credit_cards_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `credit_cards_expire_month_id_foreign` FOREIGN KEY (`expire_month_id`) REFERENCES `months` (`id`);

--
-- Constraints for table `customer-basic_service`
--
ALTER TABLE `customer-basic_service`
  ADD CONSTRAINT `customer_basic_service_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `customer_basic_service_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `customer_property` (`id`);

--
-- Constraints for table `customer-basic_service_payment`
--
ALTER TABLE `customer-basic_service_payment`
  ADD CONSTRAINT `customer_basic_service_payment_cbs_id_foreign` FOREIGN KEY (`cbs_id`) REFERENCES `customer-basic_service` (`id`),
  ADD CONSTRAINT `customer_basic_service_payment_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `customer_basic_service_payment_scheduled_service_id_foreign` FOREIGN KEY (`scheduled_service_id`) REFERENCES `scheduled_service` (`id`);

--
-- Constraints for table `customer-extra_service`
--
ALTER TABLE `customer-extra_service`
  ADD CONSTRAINT `customer_extra_service_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `customer_extra_service_extra_service_id_foreign` FOREIGN KEY (`extra_service_id`) REFERENCES `extra_provided_services` (`id`),
  ADD CONSTRAINT `customer_extra_service_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `customer_property` (`id`);

--
-- Constraints for table `customer-extra_service_payment`
--
ALTER TABLE `customer-extra_service_payment`
  ADD CONSTRAINT `customer_extra_service_payment_ces_id_foreign` FOREIGN KEY (`ces_id`) REFERENCES `customer-extra_service` (`id`),
  ADD CONSTRAINT `customer_extra_service_payment_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `customer_extra_service_payment_scheduled_service_id_foreign` FOREIGN KEY (`scheduled_service_id`) REFERENCES `scheduled_service` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_selected_credit_card_id_foreign` FOREIGN KEY (`selected_credit_card_id`) REFERENCES `credit_cards` (`id`),
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `customer_property`
--
ALTER TABLE `customer_property`
  ADD CONSTRAINT `customer_property_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `customer_property_zip_code_foreign` FOREIGN KEY (`zip_code`) REFERENCES `zip_codes` (`zip_code`);

--
-- Constraints for table `frequency-customer`
--
ALTER TABLE `frequency-customer`
  ADD CONSTRAINT `frequency_customer_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `frequency_customer_frequency_id_foreign` FOREIGN KEY (`frequency_id`) REFERENCES `request_frequency` (`id`);

--
-- Constraints for table `mobile_no`
--
ALTER TABLE `mobile_no`
  ADD CONSTRAINT `mobile_no_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `partners`
--
ALTER TABLE `partners`
  ADD CONSTRAINT `partners_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `partner_availablity`
--
ALTER TABLE `partner_availablity`
  ADD CONSTRAINT `partner_availablity_day_id_foreign` FOREIGN KEY (`day_id`) REFERENCES `service_day` (`id`),
  ADD CONSTRAINT `partner_availablity_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`),
  ADD CONSTRAINT `partner_availablity_time_id_foreign` FOREIGN KEY (`time_id`) REFERENCES `service_time` (`id`);

--
-- Constraints for table `partner_provided_service-partner`
--
ALTER TABLE `partner_provided_service-partner`
  ADD CONSTRAINT `partner_provided_service_partner_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`),
  ADD CONSTRAINT `partner_provided_service_partner_pp_service_id_foreign` FOREIGN KEY (`pp_service_id`) REFERENCES `partner_provided_services` (`id`);

--
-- Constraints for table `partner_provided_service_partners`
--
ALTER TABLE `partner_provided_service_partners`
  ADD CONSTRAINT `partner_provided_service_partners_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`),
  ADD CONSTRAINT `partner_provided_service_partners_ibfk_2` FOREIGN KEY (`pp_service_id`) REFERENCES `partner_provided_services` (`id`);

--
-- Constraints for table `partner_service_scheduling`
--
ALTER TABLE `partner_service_scheduling`
  ADD CONSTRAINT `partner_service_scheduling_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`),
  ADD CONSTRAINT `partner_service_scheduling_scheduled_service_id_foreign` FOREIGN KEY (`scheduled_service_id`) REFERENCES `scheduled_service` (`id`);

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_login_name_foreign` FOREIGN KEY (`login_name`) REFERENCES `users` (`login_name`);

--
-- Constraints for table `scheduled_service`
--
ALTER TABLE `scheduled_service`
  ADD CONSTRAINT `scheduled_service_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `scheduled_service_discount_code_foreign` FOREIGN KEY (`discount_code`) REFERENCES `discount` (`discount_code`),
  ADD CONSTRAINT `scheduled_service_frequency_customer_id_foreign` FOREIGN KEY (`frequency_customer_id`) REFERENCES `frequency-customer` (`id`),
  ADD CONSTRAINT `scheduled_service_paid_card_id_foreign` FOREIGN KEY (`paid_card_id`) REFERENCES `credit_cards` (`id`);

--
-- Constraints for table `service_rating`
--
ALTER TABLE `service_rating`
  ADD CONSTRAINT `service_rating_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `service_rating_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`),
  ADD CONSTRAINT `service_rating_pss_id_foreign` FOREIGN KEY (`pss_id`) REFERENCES `partner_service_scheduling` (`id`);

--
-- Constraints for table `user-referal`
--
ALTER TABLE `user-referal`
  ADD CONSTRAINT `user_referal_new_comer_user_id_foreign` FOREIGN KEY (`new_comer_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_referal_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `zip_code-partner`
--
ALTER TABLE `zip_code-partner`
  ADD CONSTRAINT `zip_code_partner_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`),
  ADD CONSTRAINT `zip_code_partner_zip_code_foreign` FOREIGN KEY (`zip_code`) REFERENCES `zip_codes` (`zip_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
