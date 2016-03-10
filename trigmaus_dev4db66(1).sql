-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 10, 2016 at 10:12 PM
-- Server version: 5.5.48-cll
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
  `zip_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'store zip code',
  `size` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1->for main address,0->property address',
  PRIMARY KEY (`id`),
  KEY `address_user_id_index` (`user_id`),
  KEY `address_state_id_index` (`state_id`),
  KEY `address_zip_code_index` (`zip_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=143 ;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `street_address`, `city`, `user_id`, `state_id`, `zip_code`, `zip`, `size`, `image`, `status`) VALUES
(1, ' Street R20 chandigarh', 'delhi', 96, 1, '1212', '1212', '', '', 0),
(2, 'House No: 614, Mohali', 'Mohali', 7, 1, '1212', '52', '', '', 0),
(3, 'House No: 614, dehradun', 'dehradun', 112, 3, '1212', '455', '', '', 0),
(4, 'House No: 614, delhi', 'delhi', 134, 4, '1212', '1212', 'm', '', 0),
(5, 'H.no 45 delhi', 'delhi', 2, 2, NULL, '4564', '', '', 0),
(8, '123456', '123456', 234, 1, NULL, '12', '', '', 0),
(12, 'DLF chandigarh IT park', 'dehrahun', 9, 3, NULL, '123', '', '', 0),
(13, '123456', '123456', 236, 1, NULL, '12', '', '', 0),
(14, '123456', '123456', 237, 1, NULL, '12', '', '', 0),
(15, '123456', '123456', 238, 1, NULL, '12', '', '', 0),
(16, '123456', '123456', 239, 1, NULL, '12', '', '', 0),
(17, '123456', '123456', 240, 1, NULL, '12', '', '', 0),
(18, '123456', '123456', 241, 1, NULL, '12', '', '', 0),
(19, '123456', '123456', 242, 1, NULL, '12', '', '', 0),
(20, '123456', '123456', 243, 1, NULL, '12', '', '', 0),
(21, '123456', '123456', 244, 1, NULL, '12', '', '', 0),
(22, '123456', '123456', 245, 1, NULL, '12', '', '', 0),
(23, '123456', '123456', 246, 1, NULL, '12', '', '', 0),
(24, '123456', '123456', 247, 1, NULL, '12', '', '', 0),
(25, '123456', '123456', 248, 1, NULL, '12', '', '', 0),
(26, '123456', '123456', 252, 1, NULL, '12', '', '', 1),
(27, '123456', '123456', 253, 1, NULL, '12', '', '', 0),
(35, '123456', '123456', 284, 1, NULL, '12', '', '', 0),
(36, '123456', '123456', 285, 1, NULL, '12', '', '', 0),
(37, '123456', '123456', 286, 1, NULL, '12', '', '', 0),
(38, '123456', '123456', 287, 1, NULL, '12', '1', '', 0),
(40, '10', '10', 2, 1, NULL, '10', '3', '', 0),
(41, '10', '10', 287, 1, NULL, '10', '4', '', 0),
(43, 'test address', 'ambala city', 134, 5, '1212', '1212', 's', '', 1),
(44, '123456', '123456', 301, 1, NULL, '12', '', '', 0),
(46, 'rajpur road dehradun', 'dehrahun', 9, 3, NULL, '421', '', '', 1),
(47, 'ankur', '118', 302, 1, NULL, '2013', '1', '2016-03-04-11:02:43profile.png', 1),
(48, 'pauri garhwal', 'srinagar', 134, 6, '1212', '24562', 'l', '', 0),
(49, 'sadsadsa do', 'asdsadsasadsad', 303, 1, NULL, 'sadsadsad', '', '', 0),
(50, '123456', '123456', 304, 1, NULL, '12', '', '', 0),
(51, 'fdgfdgfdg', 'fgfdgfdgfdgfdg', 305, 1, NULL, 'dfgfdgfdgfd', '', '', 0),
(52, 'fdgfdgfdg', 'fdgfdgfdgfgfd', 306, 1, NULL, 'fdgfdgfd', '', '', 0),
(53, 'sadsad', 'sadsadssadsad', 307, 1, NULL, 'dsadsadsad', '', '', 0),
(54, 'hkj', 'khkjh', 308, 1, NULL, 'hkhkjhk', '', '', 0),
(55, 'lkj', 'lkj', 309, 1, NULL, 'lkjlkjk', '', '', 0),
(56, 'fdsf', 'dfdsf1', 310, 1, NULL, 'fdfsdfdsfds', '', '', 0),
(57, 'a', 'as', 311, 1, NULL, 'a', '', '', 0),
(58, 'kayak', 'U.K.', 312, 1, NULL, '123456789', '', '', 0),
(59, '123456', '123456', 313, 1, NULL, '12', '', '', 0),
(60, 'mans', 'bjsdjgs', 315, 1, NULL, '123456', '', '', 0),
(61, '', '3b2 phase', 316, 1, NULL, '1234567891', '', '', 0),
(62, '123456', '123456', 317, 1, NULL, '12', '', '', 0),
(63, '123456', '123456', 318, 1, NULL, '12', '', '', 0),
(64, '', 'mohali', 319, 1, NULL, '145236', '', '', 0),
(65, '123456', '123456', 322, 1, NULL, '12', '', '', 0),
(66, 'job', 'John', 323, 1, NULL, 'sdfgds', '', '', 0),
(67, '123456', '123456', 324, 1, NULL, '12', '', '', 0),
(68, 'a', 'a', 325, 1, NULL, '123', '', '', 0),
(69, 'a', 'a', 326, 1, NULL, '123', '', '', 0),
(70, 'a', 'a', 327, 1, NULL, '123', '', '', 0),
(71, 'dsds', 'ssss', 328, 1, NULL, '145236', '', '', 0),
(72, 'dsds', 'ssss', 329, 1, NULL, '145236', '', '', 0),
(73, '123456', '123456', 330, 1, NULL, '12', '', '', 0),
(74, 'dsds', 'ssss', 331, 1, NULL, '145236', '', '', 0),
(75, '123456', '123456', 332, 1, NULL, '12', '', '', 0),
(76, 'dsds', '123456', 333, 1, NULL, '', '', '', 0),
(77, 'dsds', 'ssss', 334, 1, NULL, '145236', '', '', 0),
(78, 'dsds', 'ssss', 335, 1, NULL, '145236', '', '', 0),
(79, 'dsds', 'ssss', 336, 1, NULL, '145236', '', '', 0),
(80, 'ankur', '118', 302, 1, NULL, '2013', '1', '2016-03-05-12:36:41profile.png', 0),
(81, 'dsds', 'ssss', 337, 1, NULL, '145236', '', '', 0),
(82, 'dsds', 'ssss', 338, 1, NULL, '145236', '', '', 0),
(83, 'Ghaziabad', 'Hapur', 71, 1, NULL, '11111', '1', '', 0),
(84, 'Hapur', 'Hapur', 71, 5, NULL, '12345', '2', '', 0),
(85, 'Meerut', 'Meerut', 71, 3, NULL, '567', '3', '', 0),
(87, 'Noida', 'Noida', 71, 5, NULL, '4321', '4', '', 0),
(89, 'dsds', 'ssss', 339, 1, NULL, '145236', '', '', 0),
(90, 'dsds', 'ssss', 340, 1, NULL, '145236', '', '', 0),
(91, '123456', '123456', 341, 1, NULL, '12', '', '', 0),
(92, '123456', '123456', 342, 1, NULL, '12', '', '', 0),
(93, '123456', '123456', 343, 1, NULL, '145236', '', '', 0),
(94, '123456', '123456', 344, 1, NULL, '12', '', '', 0),
(95, '123456', '123456', 345, 1, NULL, '145236', '', '', 0),
(96, '123456', '123456', 346, 1, NULL, '145236', '', '', 0),
(97, '123456', '123456', 347, 1, NULL, '145236', '', '', 0),
(98, '123456', '123456', 348, 1, NULL, '12', '', '', 0),
(99, '123456', '123456', 349, 1, NULL, '12', '', '', 0),
(100, '123456', '123456', 350, 1, NULL, '145236', '', '', 0),
(101, '123456', '123456', 351, 1, NULL, '145236', '', '', 0),
(102, 'test case 2', 'test city', 353, 1, NULL, '1478523691', '', '', 0),
(103, 'city 2', 'gfgfdgfg', 354, 1, NULL, '145236', '', '', 0),
(104, 'assess', 'asasa', 355, 1, NULL, '145236', '', '', 0),
(105, 'assess', 'asasa', 356, 1, NULL, '145236', '', '', 0),
(106, '123456', '123456', 357, 1, NULL, '12', '', '', 0),
(107, 'addres', 'city ', 358, 1, NULL, '145236', '', '', 0),
(108, 'addres', 'city', 359, 1, NULL, '145236', '', '', 0),
(109, 'addres', 'city', 360, 1, NULL, '145236', '', '', 0),
(110, 'SASA', 'ASAs', 361, 1, NULL, '1452365', '', '', 0),
(111, 'SDSADSADSAD', 'sdsadsadsad', 362, 1, NULL, '5646445645', '', '', 0),
(112, 'xcxzcxzc', 'xcxzcxzc', 363, 1, NULL, '1361464546', '', '', 0),
(113, 'a', 'SA', 364, 1, NULL, '464646464', '', '', 0),
(114, 'hgfhgfhg', 'fhgfhgf', 365, 1, NULL, 'gfhgfhgfh', '', '', 0),
(115, 'fdgfdgdg', 'fdgfdgdg', 366, 1, NULL, '464444646', '', '', 0),
(116, 'dads', 'sadsadsa', 367, 1, NULL, '64464646464', '', '', 0),
(117, 'asdsadsad', 'ASDSAD', 368, 1, NULL, '46464646464', '', '', 0),
(118, 'sdsadsadsad', 'sdsadsadsad', 369, 1, NULL, '16464646446', '', '', 0),
(119, 'test address 1', 'test city', 370, 5, NULL, '64646464646', '', '', 0),
(120, 'test address 2', 'test city', 371, 6, NULL, '646546464', '', '', 0),
(124, '123456', '123456', 376, 1, NULL, '12', '1', '124profileImage.png', 1),
(126, '123456', '123456', 379, 1, NULL, '12', '1', '126profileImage.png', 1),
(127, '123456', '123456', 380, 1, NULL, '12', '1', '127profileImage.png', 1),
(128, '123456', '123456', 381, 1, NULL, '12', '1', '128profileImage.png', 1),
(130, '123456', '123456', 383, 1, NULL, '12', '1', '130profileImage.png', 1),
(131, '123456', '123456', 384, 1, NULL, '12', '1', '131profileImage.png', 1),
(132, '123456', '123456', 385, 1, NULL, '12', '1', '132profileImage.png', 1),
(134, 'address 1', 'city test', 387, 1, NULL, '', '1', '134profileImage.png', 1),
(135, 'address 1', 'city test', 388, 4, NULL, '', '1', '135profileImage.png', 1),
(136, 'address 1', 'city test', 389, 1, NULL, '5656464', '1', '136profileImage.png', 1),
(137, 'address 1', 'city test', 390, 1, NULL, '', '1', '137profileImage.png', 1),
(138, '123456', '123456', 395, 1, NULL, '12', '1', '138profileImage.png', 1),
(139, '123456', '123456', 396, 1, NULL, '12', '1', '139profileImage.png', 1),
(140, 'address 1', 'city test', 397, 1, NULL, '5656464', '1', '140profileImage.png', 1),
(141, 'address 1', 'city test', 398, 1, NULL, '5656464', '1', '141profileImage.png', 1),
(142, 'address 1', 'city test', 399, 1, NULL, '', '1', '142profileImage.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_percentage`
--

CREATE TABLE IF NOT EXISTS `admin_percentage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `percentage` varchar(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_percentage`
--

INSERT INTO `admin_percentage` (`id`, `percentage`, `created`) VALUES
(1, '45%', '2016-01-25 22:36:40');

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
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `seo_title` text NOT NULL,
  `seo_content` longtext NOT NULL,
  `headlayout` varchar(56) NOT NULL DEFAULT '0' COMMENT 'become a partner header on the top',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(150) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `city`, `slug`, `content`, `seo_title`, `seo_content`, `headlayout`, `created`, `updated`, `status`) VALUES
(1, 1, 'Los Angeles', 'los-angeles', '<div class="content-layout">\n	  <div class="banner-section angeles">\n		<div class="banner-inner angele">\n			<ul class="banner-list">\n				<h3>Terra Services in<br> LOS ANGELES</h3>\n				<li>Lawn Mowing Service </li>\n				<li>Junk Hauling Service</li>\n				<li>Security Camera Installation*</li>\n				<li>Tree Trimming Service</li>\n				<li>Holiday Light Installation*</li>\n				<li>Power Wash Cleaning Service</li>\n				<li>Firewood Delivery Service*</li>\n			</ul>\n		</div>\n	  </div>\n		<div class="content-section">\n		<div class="container">\n				<div class="page-header">\n					  <h1>LAWN SERVICE LOS ANGELES by<span> Terra</span></h1>\n					  <hr>\n					  <div class="clear"></div>\n				</div>\n				 <div class="page-button">\n						<img src="/terraappnew/img/images/service-now.png">\n						<img src="/terraappnew/img/images/aap-store-page.png">\n						<img src="/terraappnew/img/images/google-play-page.png">\n						<div class="clear"></div>\n				 </div>\n			\n				<div class="page-content">\n				<h3>HOME LIFE IN LOS ANGELES</h3>\n				<p>Los Angeles, a bustling metropolis surrounded by rolling hills and sun-kissed beaches, is America?s second-largest city and the home of fourteen million angels. With its diverse array of opportunities to celebrate life, Los Angeles is a beacon for artists, dreamers, entrepreneurs and professionals alike. NY Times attributes its booming creative economy as a magnet for new residents. Despite its mind-boggling size, think about Los Angeles as a conglomeration of smaller interconnected cities with twelve-lane freeways, widely-acclaimed boulevards, and quaint neighborhoods.  </p><br>\n				\n				<p>Home life is Los Angeles is anything but normal. For the adventure-seeker, each day offers an exciting experience ranging across concerts, landmarks and monuments, markets and bazaars, museums and galleries, tasty treats, and theme parks and attractions including Hollywood. With so many things to choose from, the City of Angels offers the best of both worlds?urban living and bucolic communities, the ideal milieu for settling down?welcome to L.A.! Terra helps Los Angeles residents enjoy more of everything the city has to offer. </p><br>\n				\n				<h3>ON DEMAND SERVICES IN LOS ANGELES</h3>\n				<p>21st century living in Los Angeles, get what you want ? when you want it! On demand services are nothing new in Los Angeles. Los Angeles is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra?s most popular on demand services in Los Angeles:</p>\n				\n				<ul class="full-width">\n					<li>Lawn mowing service </li>\n					<li>Junk Removal Service</li>\n					<li>Tree Trimming Service</li>\n					<li>Patio / Deck Cleaning Service</li>\n					<li>Weed Removal / Flower Bed Service</li>\n					<li>Handyman On Demand</li>\n				</ul>\n				\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\n				\n				<ul class="full-width">\n					<li>Security Camera Installation Service*</li>\n					<li>Holiday light Installation &amp; Removal Service* </li>\n					<li>Firewood Delivery Service*</li>\n					<li>Snow Removal Service*</li>\n					<li>Pool Cleaning Service*</li>\n				</ul>\n				\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\n				\n				<h3>MOVING TO A NEW HOUSE IN HOUSTON</h3>\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Houston. Welcome to the neighborhood, we are glad to provide all your Houston lawn service needs.</p><br>\n				\n				<h3>LAWN SERVICE HOUSTON NEIGHBORHOODS</h3>\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Houston suburban neighborhoods, including:</p><br>\n				\n				<ul class="two-blocks">\n					<li>Lawn Service Sugar Land</li>\n					<li>Lawn Service The Woodlands</li>\n					<li>Lawn Service Friendswood</li>\n					<li>Lawn Service Pearland</li>\n					<li>Lawn Service League City</li>\n					<li>Lawn Service Spring</li>\n				</ul>\n				\n				<ul class="two-blocks">\n					<li>Lawn Service Missouri City</li>\n					<li>Lawn Service South Houston</li>\n					<li>Lawn Service Baytown</li>\n					<li>Lawn Service Texas City</li>\n					<li>Lawn Service West University Place</li>\n					<li>Lawn Service Eastwood</li>\n				</ul>\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\n				\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\n				\n				</div>\n			\n			\n	   </div>\n		<div class="clear"></div>\n		</div>\n		</div>', 'nice seo title', 'greate', '0', '2015-11-14 07:20:30', '2015-11-24 20:27:42', '1'),
(11, 1, 'San Diego', 'san-diego', '<div class="content-layout">\r\n	  <div class="banner-section diago">\r\n		<div class="banner-inner diag">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in <br>san diego</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE SAN DIEGO by<span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN SAN DIEGO</h3>\r\n				<p>One of America''s most populous cities, San Diego, the nation''s eighth-largest city, is ideal for modern home life with its balance of upscale living and carefree surfer life. San Diego is home to legendary landmarks such as Balboa Park, Coronado Island and the Point Loma Submarine Base. San Diego has a mix of established technology firms such as Qualcomm and a burgeoning startup community. With its perfect weather, San Diego allows young professionals to live, work and play like it''s summer all year long.</p><br>\r\n				\r\n				<p>San Diego is a great place to start and raise a family and for those thinking of relocating to San Diego, you have many modern suburban areas to live that are within 30 minutes of downtown &amp; the beach. Take time to explore San Diego''s upscale boutiques, fine dining, landscaped parks, sandy coves, and many more attractions. Let Terra take care of your San Diego lawn service while you enjoy the city. Home life is San Diego has never been better with Terra by your side.</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN SAN DIEGO</h3>\r\n				<p>21st century living in San Diego, get what you want - when you want it! On demand services are nothing new in San Diego. San Diego is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in San Diego:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service</li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN SAN DIEGO</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Houston. Welcome to the neighborhood, we are glad to provide all your Houston lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE SAN DIEGO NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Washington DC suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Sugar Land</li>\r\n					<li>Lawn Service The Woodlands</li>\r\n					<li>Lawn Service Friendswood</li>\r\n					<li>Lawn Service Pearland</li>\r\n					<li>Lawn Service League City</li>\r\n					<li>Lawn Service Spring</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Missouri City</li>\r\n					<li>Lawn Service South Houston</li>\r\n					<li>Lawn Service Baytown</li>\r\n					<li>Lawn Service Texas City</li>\r\n					<li>Lawn Service West University Place</li>\r\n					<li>Lawn Service Eastwood</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>\r\n						', 'SEO Title for SAN DIEGO', 'SEO content for SAN DIEGO', '0', '2015-11-16 17:02:02', '2015-11-16 17:13:19', '1'),
(13, 4, 'Chicago', 'chicago', '<div class="content-layout">\r\n	  <div class="banner-section chicago">\r\n		<div class="banner-inner chicago_mini">\r\n			<ul class="banner-list"><h3>Terra Services in<br> CHICAGO</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  \r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE ARLINGTON by  <span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN CHICAGO</h3>\r\n				<p>So much can be said about the city of Chicago, a historic and glamorous city which covers more than 60,000 hectares of land. Chicago was home to the first ever skyscraper in the United States. Chicago is considered one of the earliest trading posts and is representative of the Heartland of America because it is located in the midwest of the country. Known as a popular sports town, Chicago has a distintive entertainment presence anchored by sites such as Soldier Field, Grant Park and numerous art &amp; science museums. Whether you are a recent transplant or a native Chicagoan you will find no shortage of personal and professional welcome distractions that keep you from doing lawn service responsibilities around your property. Terra is extremely happy to provide on demand services throughout the metro Chicago area.</p><br>\r\n				\r\n				<p>Many young professionals have built their careers and started families in Chicago, and Terra continues to be a smart &amp; reliable solution for households and businesses. Chicago area home owners associations allow direct Terra service requests from their respective websites. Terra is a part of the growing Chicago tech scene. Innovative on demand services by Terra in Chicago are making home life more enjoyable.</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN CHICAGO</h3>\r\n				<p>21st century living in Chicago, get what you want – when you want it! On demand services are nothing new in Chicago. Chicago is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra’s most popular on demand services in Chicago:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service </li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra’s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN CHICAGO</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you’re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Chicago. Welcome to the neighborhood, we are glad to provide all your Chicago lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE ARLINGTON NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Arlington suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Highland Park</li>\r\n					<li>Lawn Service Orland Park</li>\r\n					<li>Lawn Service Lincolnshire</li>\r\n					<li>Lawn Service Oak Brook</li>\r\n					<li>Lawn Service Elmhurst</li>\r\n					<li>Lawn Service Downers Grove</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service La Grange</li>\r\n					<li>Lawn Service Lake Forest</li>\r\n					<li>Lawn Service Northbrook</li>\r\n					<li>Lawn Service Hinsdale</li>\r\n					<li>Lawn Service Winnetka</li>\r\n					<li>Lawn Service Hyde Park</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for chicago', 'SEO content for chicago', '0', '2015-11-16 17:32:12', '2015-11-16 17:41:31', '1'),
(14, 5, 'Charlotte', 'charlotte', '<div class="content-layout">\r\n	  <div class="banner-section charlotte">\r\n		<div class="banner-inner charlott">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in<br> Charlotte</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE CHARLOTTE by <span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN Charlotte</h3>\r\n				<p>The Southern Queen City or Charlotte, North Carolina is one of the fastest growing cities in the United States. Charlotte is a regional powerhouse and one of the countries'' most important financial districts. A motley assortment of big-city career opportunities continues to attract new residents, who settle around in urban homes surrounded by mountains and walking trails for lifestyles that entwine urban living with quaint neighborhoods. If you''re a fan of the great outdoors, then Charlotte is your kind of city. Explore more of Charlotte by putting your lawn chores on autopilot with the Terra lawn service app.</p><br>\r\n				\r\n				<p>Routine home life in Charlotte could mean biking in one of the many trails, exploring the city''s architecture, art, culture and history, relishing classic Southern food, following the adventures of Carrie, Charlotte, Miranda and Samantha of ''Sex and the City'' fame, or a night out in entertainment district. For the curious minds, Discovery Place has one-of-a-kind attractions including a huge eyeball and liquid-nitrogen ice cream. Terra delivers smart &amp; reliable on demand services that allow you to enjoy more of your home life in Charlotte.</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN CHARLOTTE</h3>\r\n				<p>21st century living in Charlotte, get what you want - when you want it! On demand services are nothing new in Charlotte. Charlotte is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Charlotte:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service </li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN CHARLOTTE</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Charlotte. Welcome to the neighborhood, we are glad to provide all your Charlotte lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE CHARLOTTE NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Charlotte suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Fourth Ward</li>\r\n					<li>Lawn Service Dilworth</li>\r\n					<li>Lawn Service Wessex Square</li>\r\n					<li>Lawn Service Myers Park</li>\r\n					<li>Lawn Service Freedom Park</li>\r\n					<li>Lawn Service Provincetowne</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Cherry</li>\r\n					<li>Lawn Service Ballantyne West</li>\r\n					<li>Lawn Service Concord</li>\r\n					<li>Lawn Service Mint Hill</li>\r\n					<li>Lawn Service Mount Holly</li>\r\n					<li>Lawn Service Kings Mountain</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for charlotte', 'SEO content for charlotte', '0', '2015-11-16 17:35:31', '2015-11-16 17:37:29', '1'),
(15, 2, 'Denver', 'denver', '<div class="content-layout">\r\n	  <div class="banner-section denver">\r\n		<div class="banner-inner denve">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in<br> denver</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE DENVER by  <span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN DENVER</h3>\r\n				<p>Nestled in the Rocky Mountains, Denver, the Mile High City is for those who enjoy cosmopolitan living. Set in a stunning vista, Denver is a natural source of inspiration for any endeavor in life. Denver''s natural landmarks such as Mt Evans, unique architecture including the Denver Art Museum and United States Mint, themed museums and galleries, creative parks and gardens, and sports and outdoor activities delight its residents and visitors alike. Artists, businesspeople, professionals and sportsmen find the natural setting highly useful for productive careers. Denver has been named one of the best cities for tech entrepreneurs. </p><br>\r\n				\r\n				<p>With so many career opportunities to choose from, living in urban neighborhoods against a dramatic Rocky Mountains backdrop is one of the perks of home life in Denver. The Denver startup scene has brought national recognition to its tech scene. Technology accelerators such as Tech Stars has a significant presence in the area and is attracting a dynamic population of entrepreneurs, artists and stoners. Yes, stoners, Denver is also one of the first areas in the country to allow legal marijuana use; but don''t let that keep you from being productive. Use the Terra lawn service app for Denver lawn service when you''re taking some "down" time.  </p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN DENVER</h3>\r\n				<p>21st century living in Denver, get what you want - when you want it! On demand services are nothing new in Denver. Denver is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Denver:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service </li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN DENVER</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Denver. Welcome to the neighborhood, we are glad to provide all your Denver lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE DENVER NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Denver suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Parker</li>\r\n					<li>Lawn Service Denver</li>\r\n					<li>Lawn Service Columbine Valley</li>\r\n					<li>Lawn Service Bow Mar</li>\r\n					<li>Lawn Service Cherry Hills Village</li>\r\n					<li>Lawn Service Centennial</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Broomfield</li>\r\n					<li>Lawn Service Cherry Creek</li>\r\n					<li>Lawn Service Washington Park</li>\r\n					<li>Lawn Service Arvada</li>\r\n					<li>Lawn Service Aurora</li>\r\n					<li>Lawn Service Boulder</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title Denver', 'SEO content Denver', '0', '2015-11-16 17:43:00', '0000-00-00 00:00:00', '1'),
(16, 6, 'Austin', 'austin', '<div class="content-layout">\r\n	  <div class="banner-section austin">\r\n		<div class="banner-inner austi">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in<br> Austin</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE AUSTIN by <span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN AUSTIN</h3>\r\n				<p>Keeping it weird since 1999, Austin is considered the Silicon Valley of the South. Austin is a buzz with entrepreneurs, artists and technology companies that are building some of the best consumer products in the country. Home life in Austin is anything but weird however, with beautiful mix of arts, sports and business scenes that are comparable with NYC''s Flatiron and Chelsea areas. Most people would not guess that this thriving and eclectic tech and arts scene is also home to the state capital of Texas. Austin has a highly educated population and contributes significantly to the growing relocation of young professionals to Texas cities. The Terra app has become one of the most popular smartphone apps for many Austinites.</p><br>\r\n				\r\n				<p>Home life in Austin is also centered around quality primary and secondary schools as well as top rated universities such as the University of Texas. Many entrepreneurs and business professionals choose to raise their families in Austin area homes because of the affordability, schools systems and down home Texas lifestyle that has come to represent millions of transplants to the area. Good food and good people are just a couple of the reasons people who relocate to Austin choose to stay. On demand services by Terra are connecting Austinites with smart and reliable lawn services throughout the city. We''re still working on improving the traffic in Austin, however!</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN AUSTIN</h3>\r\n				<p>21st century living in Austin, get what you want - when you want it! On demand services are nothing new in Austin. Austin is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Austin:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service </li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN AUSTIN</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Austin. Welcome to the neighborhood, we are glad to provide all your Austin lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE AUSTIN NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Austin suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Round Rock</li>\r\n					<li>Lawn Service Lakeway</li>\r\n					<li>Lawn Service Georgetown</li>\r\n					<li>Lawn Service San Marcos</li>\r\n					<li>Lawn Service East Austin</li>\r\n					<li>Lawn Service Cedar Park</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Walnut Creek &amp; Copperfield</li>\r\n					<li>Lawn Service Cherrywood</li>\r\n					<li>Lawn Service Pflugerville</li>\r\n					<li>Lawn Service North Loop</li>\r\n					<li>Lawn Service Rosedale</li>\r\n					<li>Lawn Service Falcon Pointe</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for austin', 'SEO content for austin', '0', '2015-11-16 17:47:05', '0000-00-00 00:00:00', '1'),
(17, 6, 'Arlington', 'arlington', '<div class="content-layout">\r\n	  <div class="banner-section arlington">\r\n		<div class="banner-inner arlingt">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in<br> arlington</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  \r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE ARLINGTON by  <span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN ARLINGTON</h3>\r\n				<p>Arlington is the 3rd most populous city in the Dallas/Ft. Worth metropolitan area. Arlington is home to the world''s most valuable sports franchise, the Dallas Cowboys, who play their national football league home games at At&amp;t Stadium in Arlington. Home life in Arlington has changed a lot in the last few decades. A growing population and enticing family lifestyle have made Arlington a national destination for young professionals and business executives to relocate their families. Terra helps creative class professionals in Arlington enjoy more the city with exterior home automation services through our mobile application.</p><br>\r\n				\r\n				<p>Arlington has a UT system branch and a highly educated and diverse population. Arlington has invested $200 million dollars in road construction over the next 5 years, which does not make it ideal for traffic conditions, but does guarantee Arlington as a top tier suburban area for Dallas &amp; Fort Worth entrepreneurs and business executives. Arlington has a solid night life scene with fine dining and several entertainment districts to accommodate the visitors that go to see Cowboy Stadium. If you''re new to Arlington, let Terra deliver a better home life in Arlington with our on demand services.</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN ARLINGTON</h3>\r\n				<p>21st century living in Arlington, get what you want - when you want it! On demand services are nothing new in Arlington. Arlington is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Arlington:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service </li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN ARLINGTON</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Arlington. Welcome to the neighborhood, we are glad to provide all your Arlington lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE ARLINGTON NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Arlington suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Grand Prairie</li>\r\n					<li>Lawn Service Mansfield</li>\r\n					<li>Lawn Service Irving</li>\r\n					<li>Lawn Service Addison</li>\r\n					<li>Lawn Service Hurst</li>\r\n					<li>Lawn Service Coppell</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Cedar Hill</li>\r\n					<li>Lawn Service Grapevine</li>\r\n					<li>Lawn Service Farmers Branch</li>\r\n					<li>Lawn Service Duncanville</li>\r\n					<li>Lawn Service Burleson</li>\r\n					<li>Lawn Service Pantego</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for arlington', 'SEO content for arlington', '0', '2015-11-16 17:48:54', '0000-00-00 00:00:00', '1');
INSERT INTO `cities` (`id`, `state_id`, `city`, `slug`, `content`, `seo_title`, `seo_content`, `headlayout`, `created`, `updated`, `status`) VALUES
(18, 6, 'Dallas', 'dallas', '<div class="content-layout">\r\n	  <div class="banner-section dallas">\r\n		<div class="banner-inner dall">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in<br> dallas</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE DALLAS by <span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN DALLAS</h3>\r\n				<p>Dallas has become one of the most popular destinations for young professionals in all of the country. Dallas is home to over 20 fortune 500 companies which makes it a destination for many corporate executives to relocate to also. Home life in Dallas is anything but ordinary in. Growing communities in northern parts of the city such as Plano and Frisco offer some of the best schools in the state while semi urban cottage homes can be found in the city''s M Streets and Oak Cliff areas.</p><br>\r\n				\r\n				<p>Modern Dallas living includes popular destinations such as Trinity Groves and historic Deep Ellum corridor which offers an authentic Dallas experience. With so many great areas of Dallas to eat, work and live it is a must to have the Terra app handy to get all your weekend chores done in an instant. Enjoy more of your Dallas home life with Terra by your side. </p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN DALLAS</h3>\r\n				<p>21st century living in Dallas, get what you want - when you want it! On demand services are nothing new in Dallas. Dallas is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Dallas:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service </li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button. Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN DALLAS</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Dallas. Welcome to the neighborhood, we are glad to provide all your Dallas lawn service need.</p><br>\r\n				\r\n				<h3>LAWN SERVICE DALLAS NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Dallas suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Allen</li>\r\n					<li>Lawn Service Oak Cliff</li>\r\n					<li>Lawn Service Frisco</li>\r\n					<li>Lawn Service Plano</li>\r\n					<li>Lawn Service Lewisville</li>\r\n					<li>Lawn Service The Colony</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Richardson</li>\r\n					<li>Lawn Service Park Cities</li>\r\n					<li>Lawn Service Lakewood</li>\r\n					<li>Lawn Service Carrollton</li>\r\n					<li>Lawn Service McKinney</li>\r\n					<li>Lawn Service Garland</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for dallas', 'SEO content for dallas', '0', '2015-11-16 17:50:17', '2015-11-16 17:51:27', '1'),
(20, 3, 'Jacksonville', 'jacksonville', '<div class="content-layout">\r\n	  <div class="banner-section jacksonville">\r\n	  <div class="banner-inner jackson">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in<br> Houston</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div></div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE JACKSONVILLE by<span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN JACKSONVILLE</h3>\r\n				<p>DUVAL!! A phrase than can be heard throughout Jacksonville, the largest city in Duval County. With more than 840 square miles, Jacksonville is one of the finest, largest planned urban areas in the world. Home life in Jacksonville can be as high strung as some of its residents. Young professionals and Artists of all kind enjoy exciting outings at Jacksonville''s Atlantic Beach or the Veterans Memorial Arena to watch semi-professionals sports teams play. Despite its colossal size, the big-city charm and sweet Southern hospitality will melt your heart-world-class beaches, bistros, boutiques, bars, galleries, gardens, nature, museums, theaters or wildlife, whatever you fancy, Jacksonville has it all. Let Terra be your sponsor for a remarkable home life in Jacksonville, get on demand services for your home or business.</p><br>\r\n				\r\n				<p>Once popular for its orange groves and palm trees, the Jacksonville countryside is sprouting vineyards. Those who seek the high life, without missing out on the comforts of rustic living, modern enterprises in the Jacksonville area offer smart long-term opportunities. It is no surprise that Five Points and San Marco are often featured as one of the most sought-after destinations for enjoying home life in Jacksonville. Extend your home automation services to your lawn with the Terra lawn service app.</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN JACKSONVILLE</h3>\r\n				<p>21st century living in Jacksonville, get what you want ? when you want it! On demand services are nothing new in Jacksonville. Jacksonville is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra?s most popular on demand services in Jacksonville:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service </li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra?s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN JACKSONVILLE</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you?re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Jacksonville. Welcome to the neighborhood, we are glad to provide all your Jacksonville lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE JACKSONVILLE NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Jacksonville suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Avondale</li>\r\n					<li>Lawn Service Deerwood</li>\r\n					<li>Lawn Service Verona Walk</li>\r\n					<li>Lawn Service Brooklyn</li>\r\n					<li>Lawn Service Miramar</li>\r\n					<li>Lawn Service Pickwick Park</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Atlantic Beach</li>\r\n					<li>Lawn Service Gilmore</li>\r\n					<li>Lawn Service Southside Jacksonville</li>\r\n					<li>Lawn Service Fairfax</li>\r\n					<li>Lawn Service Hidden Hills</li>\r\n					<li>Lawn Service Greenland</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for jacksonville', 'SEO content for jacksonville', '0', '2015-11-16 17:55:01', '2015-11-16 17:55:38', '1'),
(21, 3, 'Miami', 'miami', '<div class="content-layout">\r\n	  <div class="banner-section miami">\r\n		<div class="banner-inner miam">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in<br> miami</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE MIAMI by<span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN MIAMI</h3>\r\n				<p>Miami is one of the most popular destinations in the entire world. Home, at least part time to many of the world''s most famous athletes, entrepreneurs and business leaders, home life in Miami is about as exciting as it gets in the U.S. A Miami resident''s perfect day starts by watching the sun rise at Miami Beach, having Atlantic delicacies for lunch, an afternoon stroll at Miami''s design district, and Latin dinner, followed by cocktail at one of Miami''s ritzy clubs. Watching replay board games on the street is unique to Miami living. Home life in Miami is magical-world-class beaches, warm weather and all-nighters. With such a varied collection of things to do, living in Miami feels like an endless feast for the spirit. Whether it is glamorous lifestyle or laid-back living you seek, Miami has the goods. Terra helps local Miami residents enjoy more sun time with its on demand services app.</p><br>\r\n				\r\n				<p>Join the revolution! Get the Terra lawn service app today for ios or android. Renters and homeowners alike use Terra for lawn service Miami and surrounding areas.</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN MIAMI</h3>\r\n				<p>21st century living in Miami, get what you want - when you want it! On demand services are nothing new in Miami. Miami is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Miami:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service</li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN MIAMI</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Houston. Welcome to the neighborhood, we are glad to provide all your Houston lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE MIAMI NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Houston suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Sugar Land</li>\r\n					<li>Lawn Service The Woodlands</li>\r\n					<li>Lawn Service Friendswood</li>\r\n					<li>Lawn Service Pearland</li>\r\n					<li>Lawn Service League City</li>\r\n					<li>Lawn Service Spring</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Missouri City</li>\r\n					<li>Lawn Service South Houston</li>\r\n					<li>Lawn Service Baytown</li>\r\n					<li>Lawn Service Texas City</li>\r\n					<li>Lawn Service West University Place</li>\r\n					<li>Lawn Service Eastwood</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'Seo title for miami', 'Seo content for miami', '0', '2015-11-16 17:57:08', '0000-00-00 00:00:00', '1'),
(22, 3, 'Orlando', 'orlando', '<div class="content-layout">\r\n	  <div class="banner-section diago">\r\n		<div class="banner-inner diag">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in <br> orlando</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE ORLANDO by<span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN ORLANDO</h3>\r\n				<p>Famously known as America''s favorite family getaway destination, Orlando Florida has recently become a popular relocation destination for many professionals and entrepreneurs. Orlando presents a modern fantasy-like experience to those who want to make the other Orange County their home. Besides adrenaline-pumping theme parks, the city abounds in performing arts, museums, nature reserves, manicured gardens, and sporting activities. Terra helps deliver an uber convenient home life in Orlando with push button lawn services.</p><br>\r\n				\r\n				<p>Orlando residents who enjoy an audacious way of life, exploring the rich underwater flora and fauna, biking along never-ending trails, watching sunsets from the air, or encountering mindfulness at the Museum of Art are only a small selection of things to do. Others relish the slower pace of life with stable careers at one of Orlando''s thriving industry and easygoing home life in outgoing, tree-lined environs. One of America''s biggest tourist destinations, you can spend a lifetime exploring the sites and sounds or Orlando. Let Terra be the official sponsor of your home life in Orlando. Extend your home automation services to your lawn with Terra, the perfect solution for a new generation of renters and homeowners in Orlando.</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN ORLANDO</h3>\r\n				<p>21st century living in Orlando, get what you want - when you want it! On demand services are nothing new in Orlando. Orlando is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Orlando:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service</li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN ORLANDO</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Houston. Welcome to the neighborhood, we are glad to provide all your Houston lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE ORLANDO NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Houston suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Sugar Land</li>\r\n					<li>Lawn Service The Woodlands</li>\r\n					<li>Lawn Service Friendswood</li>\r\n					<li>Lawn Service Pearland</li>\r\n					<li>Lawn Service League City</li>\r\n					<li>Lawn Service Spring</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Missouri City</li>\r\n					<li>Lawn Service South Houston</li>\r\n					<li>Lawn Service Baytown</li>\r\n					<li>Lawn Service Texas City</li>\r\n					<li>Lawn Service West University Place</li>\r\n					<li>Lawn Service Eastwood</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for orlando', 'SEO content for orlando', '0', '2015-11-16 17:58:29', '0000-00-00 00:00:00', '1'),
(23, 10, 'Washington', 'washington', '<div class="content-layout">\r\n	  <div class="banner-section washinton">\r\n		<div class="banner-inner washint">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in <br>washington d.c.</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE WASHINGTON D.C. by<span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN WASHINGTON D.C.</h3>\r\n				<p>What is not to love about our nation''s capital city. Living in Washington DC can be as exciting and as stressful as an episode of "Game of Thrones," thanks to the power players and visionaries who keep the city''s heartbeat strong. With a multitude of iconic landmarks and monuments, the city is a potent symbol of the awe-inspiring American vision. Residents of the D.C. take pride in the heady debates on all matters, art to Arctic drilling, as much as the charm of quaint living in its lush neighbourhoods.  Home life in Washing D.C. invites a culture as unique and diverse as the country itself. Some of the brightest young professionals call D.C. home, and Terra helps deliver a modern and essential experience for many of D.C.''s professionals.</p><br>\r\n				\r\n				<p>The people of Washington D.C. all possess a little bit of the savvy, gritty, entrepreneurial spirit that makes it one of the greatest cities in the world. Regardless of whether you are a jazz lover, professional, high-heeled business person or an eloquent politician, Washington DC home life will delight you. Its widely-acclaimed galleries such as the National Gallery of Art and museums, a hodgepodge of culinary delights, and attractions including Gettysburg could keep you engaged throughout the year with something new to discover each day. Let Terra extent home automation services to your Washington D.C. lawn with our essential lawn service app. </p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN WASHINGTON D.C.</h3>\r\n				<p>21st century living in Washington DC, get what you want - when you want it! On demand services are nothing new in Washington DC. Washington DC is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Washington DC:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service</li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN WASHINGTON D.C.</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Houston. Welcome to the neighborhood, we are glad to provide all your Houston lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE WASHINGTON D.C. NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Washington DC suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Sugar Land</li>\r\n					<li>Lawn Service The Woodlands</li>\r\n					<li>Lawn Service Friendswood</li>\r\n					<li>Lawn Service Pearland</li>\r\n					<li>Lawn Service League City</li>\r\n					<li>Lawn Service Spring</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Missouri City</li>\r\n					<li>Lawn Service South Houston</li>\r\n					<li>Lawn Service Baytown</li>\r\n					<li>Lawn Service Texas City</li>\r\n					<li>Lawn Service West University Place</li>\r\n					<li>Lawn Service Eastwood</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for Washington', 'SEO content for Washington', '0', '2015-11-16 18:00:11', '2015-11-24 19:52:00', '1'),
(24, 1, 'San Francisco ', 'san-francisco ', '<div class="content-layout">\r\n	  <div class="banner-section san-francisco">\r\n		<div class="banner-inner sub-banner">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in<br> SAN FRANCISCO</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container francisco">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE SAN FRANCISCO BY<span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN SAN FRANCISCO</h3>\r\n				<p>San Francisco is one of the most famous cities in the United States. San Fran is home to very diverse landscape of steep rolling hills and modern arhchitecture that includes world famous structures such as the Golden Gate Bridge. San Francisco has a very distinctive cultural personality that includes the oldest Chinatown in North America. Home life in San Francisco is anything from the norm, professionals from San Fran''s financial district and entrepreneurs alike spend time enjoying the popular entertainment scene. San Francisco residents use Terra''s on demand services for easier, smarter solutions for maintaing the beauty of their properties while the daily hustle and bustle of life in San Francisco beckons.  </p><br>\r\n				\r\n				<p>Silicon Valley, which is part of the southern sector of the San Francisco Bay Area is home to many of the worlds most innovative tech companies. Terra is happy to support the lawn service reqeusts of Silicon Valley professionals that rely on Terra''s on demand services to make life in Silicon Valley more manageable. Silicon Valley home owners associations are working with Terra to deliver more community support to neighborhoods throughout the Valley. </p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN san francisco</h3>\r\n				<p>21st century living in San Francisco, get what you want – when you want it! On demand services are nothing new in San Francisco. San Francisco is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra’s most popular on demand services in San Francisco:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service	 </li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN HOUSTON</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Houston. Welcome to the neighborhood, we are glad to provide all your Houston lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE HOUSTON NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Houston suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Sugar Land</li>\r\n					<li>Lawn Service The Woodlands</li>\r\n					<li>Lawn Service Friendswood</li>\r\n					<li>Lawn Service Pearland</li>\r\n					<li>Lawn Service League City</li>\r\n					<li>Lawn Service Spring</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Missouri City</li>\r\n					<li>Lawn Service South Houston</li>\r\n					<li>Lawn Service Baytown</li>\r\n					<li>Lawn Service Texas City</li>\r\n					<li>Lawn Service West University Place</li>\r\n					<li>Lawn Service Eastwood</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for SAN Francisco', 'SEO content for SAN Francisco', '0', '2015-11-16 17:02:02', '2015-11-24 19:42:51', '1'),
(25, 1, 'Inland Empire', 'inland-empire', '<div class="content-layout">\r\n	  <div class="banner-section inlands">\r\n		<div class="banner-inner inland">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in<br> Inland Empire</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE INLAND EMPIRE by<span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN INLAND EMPIRE</h3>\r\n				<p>Bordering Los Angeles County, the IE includes Riverside and San Bernardino Counties. Inland Empire has a rich economic and cultural history that has continued today with the migration of young professionals to the area. Startup Founders and entrepreneurs from all over the country have relocated to Inland Empire to lay claim as a new generation of pioneers. Home life in Inland Empire can include just about anything you want, including fine dining, shopping and mountain trails. Inland Empire is one of the fastest growing regions in California with bedroom communitinies sprouting all over to support the growth. Terra is happy to support the residents in the Inland Empire with on demand services.\r\n								  </p><br>\r\n				\r\n				<p>The value of the Terra lawn service App is clear for Inland Empire residents. Enjoy a smart &amp; modern solution for your lawn service needs in IE. Ask your Inland Empire home owner''s association about partnering with Terra for smarter, more secure property services.\r\n									</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN INLAND EMPIRE</h3>\r\n				<p>21st century living in Inland Empire, get what you want - when you want it! On demand services are nothing new in Inland Empire. Inland Empire is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Inland Empire:\r\n									</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service </li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN INLAND EMPIRE</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Inland Empire. Welcome to the neighborhood, we are glad to provide all your Inland Empire lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE INLAND EMPIRE NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Inland Empire suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Upland</li>\r\n					<li>Lawn Service Rancho Cucamonga</li>\r\n					<li>Lawn Service Claremonth</li>\r\n					<li>Lawn Service Riverside</li>\r\n					<li>Lawn Service Alta Loma</li>\r\n					<li>Lawn Service Ontario</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Mira Loma</li>\r\n					<li>Lawn Service Redlands</li>\r\n					<li>Lawn Service Temecula</li>\r\n					<li>Lawn Service  San Bernardino</li>\r\n					<li>Lawn Service Fontana</li>\r\n					<li>Lawn Service Corona</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for Inland Empire ', 'SEO content for Inland Empire ', '0', '2015-11-16 17:02:02', '2015-11-23 18:16:21', '1');
INSERT INTO `cities` (`id`, `state_id`, `city`, `slug`, `content`, `seo_title`, `seo_content`, `headlayout`, `created`, `updated`, `status`) VALUES
(27, 7, 'Atlanta', 'atlanta ', '<div class="content-layout">\n	  <div class="banner-section atlanta">\n		<div class="banner-inner atlant">\n			<ul class="banner-list">\n				<h3>Terra Services<br> in Atlanta</h3>\n				<li>Lawn Mowing Service </li>\n				<li>Junk Hauling Service</li>\n				<li>Security Camera Installation*</li>\n				<li>Tree Trimming Service</li>\n				<li>Holiday Light Installation*</li>\n				<li>Power Wash Cleaning Service</li>\n				<li>Firewood Delivery Service*</li>\n			</ul>\n		</div>\n	  </div>\n		<div class="content-section">\n		<div class="container">\n				<div class="page-header">\n					  <h1>LAWN SERVICE ATLANTA by <span> Terra</span></h1>\n					  <hr>\n					  <div class="clear"></div>\n				</div>\n				 <div class="page-button">\n						<img src="/terraappnew/img/images/service-now.png">\n						<img src="/terraappnew/img/images/aap-store-page.png">\n						<img src="/terraappnew/img/images/google-play-page.png">\n						<div class="clear"></div>\n				 </div>\n			\n				<div class="page-content">\n				<h3>HOME LIFE IN ATLANTA</h3>\n				<p>Also known as the ''Crown Jewel of the South,'' Atlanta''s vast and diverse economy makes it one of the top destinations for young professionals every year. From its deep rooted history in shaping the modern U.S. landscape, its vast media comglomerates and larger than life entertainment scene, ATL as it''s known offers a unique and exciting home life experience for its city dwellers. With only five million residents and so many opportunities to grow, Atlanta is a wise career destination for entrepreneurs, artists and business professionals alike. Modern - Urban lifestyle in Atlanta includes on demand services such as Terra that make the hustle and bustle of home life in Atlanta all the more productive.</p><br>\n				\n				<p>Rich in diversity and cultural history, Atlanta offers a multitude of experiences with its arts and culture, megamalls, parks and gardens, restaurants, and tours. Elegant homes with neatly trimmed lawns and lush foliage make up Atlanta''s affable neighborhoods-the just-right locale for home life. Gracious neighborhoods, eclectic restaurants, and trendy clubs add to the charm of home life in Atlanta. Whether you have recently relocated to Marietta or inhabit the neighborhoods closer to Atlanta''s tech scene, you can benefit from the on demand services offered by the Terra lawn service app.</p><br>\n				\n				<h3>ON DEMAND SERVICES IN ATLANTA</h3>\n				<p>21st century living in Atlanta, get what you want - when you want it! On demand services are nothing new in Atlanta. Atlanta is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Atlanta:</p>\n				\n				<ul class="full-width">\n					<li>Lawn mowing service </li>\n					<li>Junk Removal Service</li>\n					<li>Tree Trimming Service</li>\n					<li>Patio / Deck Cleaning Service</li>\n					<li>Weed Removal / Flower Bed Service</li>\n					<li>Handyman On Demand</li>\n				</ul>\n				\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\n				\n				<ul class="full-width">\n					<li>Security Camera Installation Service*</li>\n					<li>Holiday light Installation &amp; Removal Service* </li>\n					<li>Firewood Delivery Service*</li>\n					<li>Snow Removal Service*</li>\n					<li>Pool Cleaning Service*</li>\n				</ul>\n				\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\n				<h3>MOVING TO A NEW HOUSE IN ATLANTA</h3>\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you'' re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Atlanta. Welcome to the neighborhood, we are glad to provide all your Atlanta lawn service needs.</p><br>\n				<h3>LAWN SERVICE AUSTIN NEIGHBORHOODS</h3>\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Atlanta suburban neighborhoods, including:</p><br>\n				\n				<ul class="two-blocks">\n					<li>Lawn Service Decatur</li>\n					<li>Lawn Service Sandy Springs</li>\n					<li>Lawn Service Smyrna</li>\n					<li>Lawn Service Marietta</li>\n					<li>Lawn Service Brookhaven</li>\n					<li>Lawn Service East Point</li>\n				</ul>\n				\n				<ul class="two-blocks">\n					<li>Lawn Service Druid Hills</li>\n					<li>Lawn Service Midtown Atlanta</li>\n					<li>Lawn Service Virgina Highland</li>\n					<li>Lawn Service Chamblee</li>\n					<li>Lawn Service Emory</li>\n					<li>Lawn Service Roswell</li>\n				</ul>\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\n				\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\n				\n				</div>\n			\n			\n	   </div>\n		<div class="clear"></div>\n		</div>\n		</div>', 'SEO Title for houston', 'SEO content for houston', '0', '2015-11-16 17:52:32', '2015-11-16 17:53:22', '1'),
(32, 1, 'Orange County', 'orange-county', '<div class="content-layout">\r\n	  <div class="banner-section orange">\r\n		<div class="banner-inner orang">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in <br> orange county</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE ORANGE COUNTY by<span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN ORANGE COUNTY</h3>\r\n				<p>Weekends in Orange County mean bumper-to-bumper beachfront traffic, but like all Orange County natives you would agree that it is worth it-astonishing vistas, wild surfing and zany seafood make home life in Orange County priceless. Each beach town, Huntington, Newport or Laguna, along the Pacific Coast Highway, has its eccentricity. Situated near museums, galleries and countless urban attractions, Orange County offers the best of West Coast living. </p><br>\r\n				\r\n				<p>Orange County residents enjoy deep-sea fishing jaunts, short drives to weekly exhibitions at the Orange County Museum of Art or Laguna Art Museum, or evenings of unforgettable sunsets, romantic trysts and savory delights. Young professionals are making the most of their home life in Orange County by using Terra to get more done. Orange County is one of the most sought-after destinations for recently graduated creative class professionals. Technology entrepreneurs and Artists of all types call the O.C. home. Extend your home automation services to your lawn with Terra, proud sponsor of an extraordinary home life in Orange County.</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN ORANGE COUNTY</h3>\r\n				<p>21st century living in Orange County, get what you want - when you want it! On demand services are nothing new in Orange County. Orange County is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Orange County:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service</li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN ORANGE COUNTY</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Houston. Welcome to the neighborhood, we are glad to provide all your Houston lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE ORANGE COUNTY NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Houston suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Sugar Land</li>\r\n					<li>Lawn Service The Woodlands</li>\r\n					<li>Lawn Service Friendswood</li>\r\n					<li>Lawn Service Pearland</li>\r\n					<li>Lawn Service League City</li>\r\n					<li>Lawn Service Spring</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Missouri City</li>\r\n					<li>Lawn Service South Houston</li>\r\n					<li>Lawn Service Baytown</li>\r\n					<li>Lawn Service Texas City</li>\r\n					<li>Lawn Service West University Place</li>\r\n					<li>Lawn Service Eastwood</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for orange-county', 'SEO Content for orange-county', '0', '2015-11-23 17:31:42', '0000-00-00 00:00:00', '1'),
(33, 6, 'Fort Worth', 'fort-worth', '<div class="content-layout">\r\n	  <div class="banner-section forts">\r\n		<div class="banner-inner fort">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in<br> Houston</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE FORT WORTH by<span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN FORT WORTH</h3>\r\n				<p>Fort Worth is a unique and sprawling area in North Central Texas. Just west of Dallas, Fort Worth is home to many recently relocated young professionals. Home life in Fort Worth appears to be like your perfect mid-western suburb with its rich history and southern hospitality. Residents of Fort Worth are also treated to world renowned archicture designs and cultural icons such as the Fort Worth Stockyards. Moving to Fort Worth by the droves, young professionals are fueling a real estate boom in this Texas city. Terra is happy to provide smarter, more secure on demand services for all the residents of Fort Worth.</p><br>\r\n				\r\n				<p>Maximize the value of your time by using the Terra lawn service App in Forth Worth. Push button technology summons your landscape professional for same day or scheduled lawn service. Enjoy a secure and totally cashless lawn service experience with local Fort Worth lawn service professionals looking to make your lawn the best on the block. See how Fort Worth home owners associations are utilizing Terra on demand services to make your Fort Worth neighborhood more secure.</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN FORT WORTH</h3>\r\n				<p>21st century living in Fort Worth, get what you want - when you want it! On demand services are nothing new in Fort Worth. Fort Worth is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Fort Worth:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service </li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN FORT WORTH</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Fort Worth. Welcome to the neighborhood, we are glad to provide all your Fort Worth lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE FORT WORTH NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Fort Worth suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service West Lake</li>\r\n					<li>Lawn Service Benbrook</li>\r\n					<li>Lawn Service Willow Park</li>\r\n					<li>Lawn Service Keller</li>\r\n					<li>Lawn Service  Grapevine</li>\r\n					<li>Lawn Service South Lake</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service White Settlement</li>\r\n					<li>Lawn Service Roanoke</li>\r\n					<li>Lawn Service Haslet</li>\r\n					<li>Lawn Service Bedford</li>\r\n					<li>Lawn Service Aledo</li>\r\n					<li>Lawn Service Kennedale</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for Fort Worth', 'SEO content for Fort Worth', '0', '2015-11-23 17:52:05', '2015-11-23 18:44:05', '1'),
(34, 6, 'Houston', 'houston', '<div class="content-layout">\r\n	  <div class="banner-section houston">\r\n		<div class="banner-inner hosto">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in<br> Houston</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE HOUSTON by<span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN HOUSTON</h3>\r\n				<p>Clutch City as Houston is affectionately called by the millions of sports fan that call the city home, Houston is the largest city in the Southern United States. Home of NASA''s Johnson Space Centre, Houston, with its high-heeled entrepreneurs and laid-back town folks is all about modern southern sophistication. Originally built around the oil-and-gas industry, Houston continues to diversify it''s economy and has grown into a major U.S. metropolis on the scale of Chicago, Los Angeles and New York. Houston has been one of the fastest growing cities over the last decade. Many Houston area entrepreneurs and young professionals use on demand services by Terra to cram more life into their weekend. </p><br>\r\n				\r\n				<p>With an assortment of economic activities, Houston offers excellent long-term career outlooks for new residents. Beyond the hustle and bustle of urban goings-on, Houston has verdant, welcoming neighborhoods for a grand home life. Opportunities for leisure abound across arts and culture, bars and pubs, fashion and accessories, guided tours, museums and galleries, and parks and gardens. Let Terra be the sponsor for your modern home life in Houston. Extend home automation services to your lawn and beyond with the Terra Lawn Service App.</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN HOUSTON</h3>\r\n				<p>21st century living in Houston, get what you want - when you want it! On demand services are nothing new in Houston. Houston is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in Houston:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service </li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN HOUSTON</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in Houston. Welcome to the neighborhood, we are glad to provide all your Houston lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE HOUSTON NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in Houston suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Sugar Land</li>\r\n					<li>Lawn Service The Woodlands</li>\r\n					<li>Lawn Service Friendswood</li>\r\n					<li>Lawn Service Pearland</li>\r\n					<li>Lawn Service League City</li>\r\n					<li>Lawn Service Spring</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Missouri City</li>\r\n					<li>Lawn Service South Houston</li>\r\n					<li>Lawn Service Baytown</li>\r\n					<li>Lawn Service Texas City</li>\r\n					<li>Lawn Service West University Place</li>\r\n					<li>Lawn Service Eastwood</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for houston', 'SEO content for houston', '0', '2015-11-23 17:55:21', '0000-00-00 00:00:00', '1'),
(35, 6, 'San Antonio', 'san-antonio', '<div class="content-layout">\r\n	  <div class="banner-section antonios">\r\n		<div class="banner-inner antonio">\r\n			<ul class="banner-list">\r\n				<h3>Terra Services in<br> San Antonio</h3>\r\n				<li>Lawn Mowing Service </li>\r\n				<li>Junk Hauling Service</li>\r\n				<li>Security Camera Installation*</li>\r\n				<li>Tree Trimming Service</li>\r\n				<li>Holiday Light Installation*</li>\r\n				<li>Power Wash Cleaning Service</li>\r\n				<li>Firewood Delivery Service*</li>\r\n			</ul>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>LAWN SERVICE SAN ANTONIO by<span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n				 <div class="page-button">\r\n						<img src="/terraappnew/img/images/service-now.png">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>\r\n			\r\n				<div class="page-content">\r\n				<h3>HOME LIFE IN SAN ANTONIO</h3>\r\n				<p>San Antonio has been the fastest growing big city of the 21st century. Located "Deep in the Heart of Texas", San Antonio has a unique south west culture. Recent years have seen the growth of young professionals relocated to San Antonio to support the corporate expansion of several fortune 500 companies. Home life in San Antonio is anything but normal. Entertainment zones in the Alamo city include the Riverwalk, professional sporting events and world famous theme parks. As the third largest city in Texas, San Antonio has very diverse population and is home to several US military facilities. Terra is proud to be a part of the San Antonio community and provide on demand services entire SA population.</p><br>\r\n				\r\n				<p>Lawn service San Antonio is now more convenient and secure with the Terra app. Ask your San Antonio home owners association about on demand services by Terra. The Terra App is a smarter, more reliable solution for a new generation of homeowners. Terra is always available and perfect for routine or last minute lawn service in San Antonio.</p><br>\r\n				\r\n				<h3>ON DEMAND SERVICES IN SAN ANTONIO</h3>\r\n				<p>21st century living in San Antonio, get what you want - when you want it! On demand services are nothing new in San Antonio. San Antonio is one of the most tech inclusive cities in the world and has adopted popular on demand service apps such as ride sharing and food delivery apps in the past. The Terra lawn service app is the latest modern tool used by a new generation of homeowners to simplify lawn service chores. Terra delivers a smart &amp; dependable solution that allows you to enjoy more of your home life without hassle. View some of Terra''s most popular on demand services in San Antonio:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Lawn mowing service </li>\r\n					<li>Junk Removal Service</li>\r\n					<li>Tree Trimming Service</li>\r\n					<li>Patio / Deck Cleaning Service</li>\r\n					<li>Weed Removal / Flower Bed Service</li>\r\n					<li>Handyman On Demand</li>\r\n				</ul>\r\n				\r\n				<h3>TERRA LAWN SERVICE APP EXTRA''S</h3>\r\n				<p>Terra offers popular seasonal and promotional on demand services to make your home life as refreshing as possible all year long. Enjoy a modern and convenient experience when you choose the following service extra''s available through our lawn service app:</p><br>\r\n				\r\n				<ul class="full-width">\r\n					<li>Security Camera Installation Service*</li>\r\n					<li>Holiday light Installation &amp; Removal Service* </li>\r\n					<li>Firewood Delivery Service*</li>\r\n					<li>Snow Removal Service*</li>\r\n					<li>Pool Cleaning Service*</li>\r\n				</ul>\r\n				\r\n				<h3>LAWN SERVICE PRO''S AT YOUR BEHEST</h3>\r\n				<p>The lawn services you want, available to you at the push of a button.  Want to know how to repair a damaged lawn or when to do lawn core aeration? Terra connects you with a vetted lawn service expert within minutes of your on demand service request. Get recommendations for fall yard work and yard work tips directly through our mobile app. Don''t spend unnecessary time wandering how much does lawn service cost, we offer you up front pricing which gives you more control. Terra manages the entire process, guarantees an affordable price, and a 5 star service experience. Sit back, relax and enjoy your home life, we got this.</p><br>\r\n				\r\n				<h3>MOVING TO A NEW HOUSE IN SAN ANTONIO</h3>\r\n				<p>The first thing you do when moving to a new house is to get everything just like you like it. From organizing your furniture, getting your Wi Fi set up and getting your cat adjusted, which is no simple task. Luckily getting the exterior of your home organized is much easier. Let Terra get welcome you to your new house with a lawn service bundle you''re sure to love. Choose from several options that offer a combination of lawn mowing, hedge trimming, security camera installation and more when you move to a new house in San Antonio. Welcome to the neighborhood, we are glad to provide all your San Antonio lawn service needs.</p><br>\r\n				\r\n				<h3>LAWN SERVICE SAN ANTONIO NEIGHBORHOODS</h3>\r\n				<p>Terra is in your community providing safe &amp; reliable lawn service in San Antonio suburban neighborhoods, including:</p><br>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Kirby</li>\r\n					<li>Lawn Service New Braunfels</li>\r\n					<li>Lawn Service Cibolo</li>\r\n					<li>Lawn Service Stone Oak</li>\r\n					<li>Lawn Service Universal City</li>\r\n					<li>Lawn Service Schertz</li>\r\n				</ul>\r\n				\r\n				<ul class="two-blocks">\r\n					<li>Lawn Service Lockhart</li>\r\n					<li>Lawn Service Alamo Heights</li>\r\n					<li>Lawn Service Boerne</li>\r\n					<li>Lawn Service North East San Antonio</li>\r\n					<li>Lawn Service Olmos Park</li>\r\n					<li>Lawn Service Castle Hills</li>\r\n				</ul>\r\n				<p>Get started with Terra today, modern &amp; reliable lawn services available at the push of a button. Automate ALL your lawn service needs. Submit a new lawn service request online or download the Terra app for your IOS or Android device.</p>\r\n				\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for San Antonio', 'SEO content for San Antonio', '0', '2015-11-23 17:59:34', '2015-11-23 18:01:41', '1'),
(37, 6, 'test test', 'test test', 'test test<br>', 'test test', 'test', '0', '2016-01-29 18:24:46', '2016-01-29 18:25:25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `credit_cards`
--

CREATE TABLE IF NOT EXISTS `credit_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `credit_card_no` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvv` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expire_month_id` int(10) unsigned DEFAULT NULL,
  `expire_year` int(10) unsigned DEFAULT NULL,
  `neme_of_the_card` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `credit_cards_customer_id_credit_card_no_index` (`customer_id`,`credit_card_no`),
  KEY `credit_cards_customer_id_index` (`customer_id`),
  KEY `credit_cards_expire_month_id_index` (`expire_month_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=85 ;

--
-- Dumping data for table `credit_cards`
--

INSERT INTO `credit_cards` (`id`, `user_id`, `customer_id`, `credit_card_no`, `cvv`, `expire_month_id`, `expire_year`, `neme_of_the_card`, `is_enabled`, `created_at`) VALUES
(2, 0, 3, '1111111111111111', '411', 2, 2019, '', 1, '2015-12-14 07:00:00'),
(14, 134, NULL, '1121212121212121', '123', 12, 2021, 'visa', 1, '0000-00-00 00:00:00'),
(21, 157, NULL, '1121212121212121', '123', 11, 2024, '', 0, '0000-00-00 00:00:00'),
(22, 159, NULL, '1121212121212121', '123', 11, 2024, '', 0, '0000-00-00 00:00:00'),
(23, 161, NULL, '1121212121212121', '123', 10, 2018, '', 0, '2016-02-25 03:11:00'),
(44, 134, NULL, '1121212121212121', '123', 10, 2024, 'test', 0, '2016-02-20 00:04:57'),
(45, 134, NULL, '1121212121212121', '123', 2, 2018, 'test', 0, '2016-02-20 00:23:44'),
(50, 217, NULL, '4444444444444444', '123', 10, 2021, '', 0, '2016-02-20 05:10:00'),
(51, 71, NULL, '4444444444444444', '528', 10, 2021, '', 1, '2016-02-20 05:10:00'),
(52, 218, NULL, '787878787878', '357', 3, 2018, '', 0, '2016-02-24 04:05:00'),
(59, 227, NULL, '787878787878', '123', 9, 2023, 'test', 0, '2016-02-22 03:07:00'),
(60, 3, NULL, '4444444444444444', '123', 11, 2024, 'test', 0, '2016-02-23 15:19:39'),
(61, 9, NULL, '1121212121212121', '123', 10, 2024, 'test', 0, '2016-02-24 17:25:16'),
(62, 262, NULL, '4111111111111111', '123', 1, 1234, 'aman', 1, '2016-02-27 08:12:46'),
(63, 287, NULL, '4111111111111111', '123', 1, 1234, 'aman', 1, '2016-03-02 19:05:29'),
(64, 288, NULL, '1414141414141414', '1321', 2, 2021, 'test', 0, '2016-03-03 01:02:00'),
(66, 294, NULL, '1414141414141414', '1321', 4, 2018, 'test', 0, '2015-08-22 03:30:00'),
(67, 300, NULL, '1414141414141414', '123', 11, 2023, 'test', 0, '2015-07-19 06:50:00'),
(68, 302, NULL, '4242424242424242', '118', 11, 2013, 'bansal', 1, '2016-03-03 18:30:55'),
(69, 134, NULL, '3333444455556666', '555', 8, 2023, '234', 0, '2016-03-05 00:19:10'),
(70, 1, 4, '3333444455556666', '555', 2, 2019, 'Visa', 1, '2016-03-05 09:13:00'),
(71, 1, 4, '123456789012', '123', 11, 2021, 'Visa', 0, '2016-03-05 09:14:00'),
(72, 376, NULL, '4111111111111111', '123', 1, 1234, 'aman', 1, '2016-03-09 17:28:13'),
(73, 381, NULL, '4111111111111111', '123', 1, 1234, 'aman', 1, '2016-03-09 17:35:56'),
(74, 384, NULL, '', '', NULL, NULL, 'aman', 1, '2016-03-09 17:42:04'),
(75, 385, NULL, '', '', NULL, NULL, '', 1, '2016-03-09 17:43:55'),
(76, 387, NULL, '', '', NULL, NULL, '', 1, '2016-03-09 18:20:53'),
(77, 388, NULL, '', '', NULL, NULL, '', 1, '2016-03-10 19:10:33'),
(78, 389, NULL, '454545454', '123', 4, 2020, 'sadsadsa', 1, '2016-03-10 13:36:22'),
(79, 390, NULL, '', '', NULL, NULL, '', 1, '2016-03-10 13:46:11'),
(80, 395, NULL, '4111111111111111', '123', 1, 1234, 'aman', 1, '2016-03-10 13:56:21'),
(81, 396, NULL, '4111111111111111', '123', 1, 1234, 'aman', 1, '2016-03-10 13:57:45'),
(82, 397, NULL, '454545454', '123', 6, 2022, 'sadsadsa', 1, '2016-03-10 13:59:55'),
(83, 398, NULL, '454545454', '123', 12, 2028, 'sadsadsa', 1, '2016-03-10 14:10:39'),
(84, 399, NULL, '', '', NULL, NULL, '', 1, '2016-03-10 15:28:52');

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
  `cbs_id` int(10) unsigned NOT NULL COMMENT 'this is just for id ',
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
  `profile_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `selected_credit_card_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`),
  UNIQUE KEY `customers_stripe_id_unique` (`stripe_id`),
  KEY `customers_user_id_index` (`user_id`),
  KEY `customers_selected_credit_card_id_index` (`selected_credit_card_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=135 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `neighbourhood`, `email`, `is_email_verified`, `stripe_id`, `profile_image`, `selected_credit_card_id`) VALUES
(1, 2, '2982742c88', 'anything@something.com', 0, 'c52c44b7ae4dad33a20f59ea07a36a8339f0085c1a7034a404ec426ec94f', '', NULL),
(2, 3, 'Why me?', 'aaaa@ad.dd', 0, 'df678f0dcf19dbca8627c723ef52b7f26c5634f806ad355c228c7b584013', '', NULL),
(3, 4, 'e64d852c3d', 'nothing@something.com', 0, 'dc747a09dddb7c619711501b40e4fb46b9a6d54f08c00cc7f379239f7c0d', '', NULL),
(4, 71, 'test', 'test@gmail.com', 1, '1235465', '145454323798image.png', 2),
(29, 134, '', 'ash@gmail.com', 0, 'C_tyiPOSDdn_123', '', NULL),
(56, 161, '', 'tom@gmail.com', 0, '1455210624', '', NULL),
(58, 96, 'No comment', 'sachin@yahoo.co.in', 1, '12569854', '', 14),
(86, 217, '', 'moht@gmail.com', 0, '1455972750', '', NULL),
(87, 218, '', 'mandy@gmail.com', 0, '1456157685', '', NULL),
(96, 227, '', 'sid@gmail.com', 0, '1456164944', '', NULL),
(97, 256, '1', 'ama@gmail.com', 1, '1234', '', NULL),
(103, 262, '1', 'aamjadfsa@gmail.com', 1, '262', '', NULL),
(104, 287, '1', 'amaama@gmail.com', 1, '287', '', NULL),
(105, 288, '', 'sheraya@gmail.com', 0, '1456947250', '', NULL),
(106, 289, '', 'reenu@gmail.com', 0, '1456950264', '', NULL),
(108, 291, '', 'ponting@gmail.com', 0, '1456950509', '', NULL),
(111, 294, '', 'mical@gmail.com', 0, '1456957278', '', NULL),
(112, 295, '', 'lav@gmail.com', 0, '1456958476', '', NULL),
(113, 296, '', 'lavdd@gmail.com', 0, '1456958825', '', NULL),
(114, 297, '', 'labdd@gmail.com', 0, '1456959032', '', NULL),
(115, 298, '', 'lasdkjh@gmail.com', 0, '1456959663', '', NULL),
(116, 299, '', 'kalu@gmail.com', 0, '1456959931', '', NULL),
(117, 300, '', 'pandey@gmail.com', 0, '1456968775', '', NULL),
(118, 302, 'ankur', 'ankur1@gmail.com', 1, '302', '', NULL),
(119, 376, '1', 'amatest@gmail.com', 1, '376', '', NULL),
(120, 379, '1', 'amatesttt@gmail.com', 1, '379', '', NULL),
(121, 380, '1', 'amatestttt@gmail.com', 1, '380', '', NULL),
(122, 381, '1', 'amatsest@gmail.com', 1, '381', '', NULL),
(123, 383, '1', 'amatstest@gmail.com', 1, '383', '1.png', NULL),
(124, 384, '1', 'amatstttest@gmail.com', 1, '384', '1.png', NULL),
(125, 385, '1', 'amtatstttest@gmail.com', 1, '385', '1.png', NULL),
(126, 387, 'neighbohood address', 'g@w.com', 1, '387', '', NULL),
(127, 388, 'neighbohood address', 'b@aa.com', 1, '388', '', NULL),
(128, 389, 'neighbohood address', 'a@com.com', 1, '389', '1.png', NULL),
(129, 390, 'neighbohood address', 'a@sdsds.com', 1, '390', '', NULL),
(130, 395, '1', 'ameatetst@gmail.com', 1, '395', '', NULL),
(131, 396, '1', 'amtatest@gmail.com', 1, '396', '1.png', NULL),
(132, 397, 'neighbohood address', 'a@xx.com', 1, '397', '1.png', NULL),
(133, 398, 'neighbohood address', 'jacky@a.com', 1, '398', '1.png', NULL),
(134, 399, 'neighbohood address', 'a@bb.com', 1, '399', 'iVBORw0KGgoAAAANSUhEUgAAAMgAAACFCAYAAAAenrcsAAAAAXNSR0IArs4c6QAA\r\nABxpRE9UAAAAAgAAAAAAAABDAAAAKAAAAEMAAABCAABtl07FroMAAEAASURBVHgB\r\npL1lkF3J1qbXDo8j/MPhiZgf9kTYEXZ4ICa+z/7uvQ2SWswqZmZmlkpYYmaGbqnF\r\nzMzMzEwlKjGzGu7ys3KfrLPrqErqe+dHRu4DBVLls9/1rrUyzzcPn36UJ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_extra_services`
--

CREATE TABLE IF NOT EXISTS `customer_extra_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheduled_service_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `extra_service_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `customer_extra_services`
--

INSERT INTO `customer_extra_services` (`id`, `scheduled_service_id`, `customer_id`, `extra_service_id`) VALUES
(1, 104, 103, 1),
(2, 104, 103, 2),
(3, 104, 103, 3),
(4, 105, 103, 1),
(5, 105, 103, 2),
(6, 105, 103, 3),
(12, 124, 4, 2),
(11, 124, 4, 1),
(13, 125, 4, 1),
(14, 125, 4, 2),
(15, 126, 4, 1),
(16, 126, 4, 2),
(17, 127, 4, 3),
(18, 127, 4, 4),
(19, 128, 4, 3),
(20, 128, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `customer_property`
--

CREATE TABLE IF NOT EXISTS `customer_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `scheduled_service_id` int(11) NOT NULL,
  `house_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `street-address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_property_customer_id_index` (`customer_id`),
  KEY `customer_property_zip_code_index` (`zip_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=110 ;

--
-- Dumping data for table `customer_property`
--

INSERT INTO `customer_property` (`id`, `customer_id`, `scheduled_service_id`, `house_no`, `street-address`, `zip_code`, `zip`, `city`, `state_id`, `image_url`, `created_at`) VALUES
(2, 1, 5, '12', 'street-12', '1212', '', 'chandigarh', '12', 'sd', '0000-00-00 00:00:00'),
(3, 2, 4, '12', 'street-145', '4545', '', 'chandigarh', '12', 'sd', '0000-00-00 00:00:00'),
(4, 3, 3, '85', 'street-1845', '4545', '', 'chandigarh', '25', 'sd', '0000-00-00 00:00:00'),
(34, 4, 31, 'test', 'tests', '1212', '', 'test', '1', '', '0000-00-00 00:00:00'),
(35, 4, 32, '123', 'road-12', '1212', '', 'chandigarhs', '1', '', '0000-00-00 00:00:00'),
(36, 4, 33, 'H-132', 'L-5 new city', '1212', '', 'delhi', '', '', '2016-01-13 09:09:01'),
(37, 3, 6, '85', 'G-78', '4545', '', 'dehradun', '25', 'sd', '0000-00-00 00:00:00'),
(50, 29, 50, '', 'road-12', '', '123', 'chandigarhd', '2', '', '2016-02-08 22:39:57'),
(51, 29, 53, '', 'road-12', '', '123', 'chandigarhs', '2', '', '2016-02-08 23:54:55'),
(52, 29, 54, '', 'road-12', '', '123', 'chandigarhs', '2', '', '2016-02-08 23:19:58'),
(53, 29, 55, '', 'road-12', '', '123', 'chandigarhs', '3', '', '2016-02-09 00:45:02'),
(77, 56, 75, '', 'road-12', NULL, '123', 'delhi', '2', '', '2016-02-25 03:11:00'),
(83, 86, 80, '', 'dehradun', NULL, '123', 'delhi', '2', '', '2016-02-20 05:10:00'),
(84, 4, 81, '', 'road-12', NULL, '123', 'test', '2', '', '2016-02-20 14:46:34'),
(85, 87, 82, '', 'road-12', NULL, '7894', 'chandigarhd', '2', '', '2016-02-24 04:05:00'),
(92, 96, 89, '', 'road-12', NULL, '456', 'test', '3', '', '2016-02-22 03:07:00'),
(96, 56, 106, '', 'delhi', NULL, '524', 'delhi', '2', '', '2016-03-02 18:29:49'),
(97, 56, 107, '', 'delhi', NULL, '524', 'delhi', '2', '', '2016-03-02 18:54:50'),
(98, 56, 108, '', 'test', NULL, '524', 'test', '1', '', '2016-03-02 19:22:09'),
(99, 105, 109, '', 'dehrahun', NULL, '122', 'delhi', '3', '', '2016-03-03 01:02:00'),
(102, 56, 121, '', 'test', NULL, '123', 'Chandigarh', '2', '', '2016-03-03 01:20:24'),
(103, 56, 122, '', 'chandigarh', NULL, '1235', 'delhi', '3', '', '2016-03-03 01:02:28'),
(104, 117, 123, '', 'delhi', NULL, '1234', 'dehradubn', '2', '', '2015-07-19 06:50:00'),
(105, 4, 124, '', 'hhhh', NULL, '42342', 'rge', '1', '', '2016-03-04 18:10:42'),
(106, 4, 125, '', 'hhhh', NULL, '42342', 'rge', '1', '', '2016-03-04 18:00:45'),
(107, 4, 126, '', 'Ghaziabad', NULL, '245212', 'Hapur', '1', '', '2016-03-04 22:55:53'),
(108, 4, 127, '', 'Ghaziabad123', NULL, '12345', 'Hapur123', '1', '', '2016-03-07 03:09:00'),
(109, 4, 128, '', 'Nagola', NULL, '2324', 'Nagola', '3', '', '2016-03-05 12:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE IF NOT EXISTS `discount` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `discount_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(4) NOT NULL,
  `discount_money_value` int(10) unsigned NOT NULL,
  `created_at` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ending_time` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `discount_discount_code_unique` (`discount_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `discount_code`, `discount_type`, `is_enabled`, `discount_money_value`, `created_at`, `ending_time`) VALUES
(1, '111', 'amount', 1, 500, '01-01-2016', '03-25-2016'),
(2, '425', 'amount', 25, 100, '01-01-2016', '01-22-2016'),
(8, 'sd132', 'amount', 0, 500, '01-03-2016', '01-19-2016'),
(9, 'T12', 'In %', 0, 10, '01-01-2016', '02-22-2016'),
(11, 'asda', 'amount', 0, 500, '01-04-2016', '01-29-2016'),
(12, '444', 'In %', 0, 5, '03-04-2016', '03-25-2016'),
(13, '777', 'amount', 0, 100, '03-05-2016', '03-31-2016');

-- --------------------------------------------------------

--
-- Table structure for table `discount_coupons`
--

CREATE TABLE IF NOT EXISTS `discount_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `discount_code` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0->not sent,1->sent',
  `created` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `discount_coupons`
--

INSERT INTO `discount_coupons` (`id`, `user_id`, `discount_code`, `status`, `created`) VALUES
(1, 71, 'sd132', 1, '2016-01-20 20:12:59'),
(2, 66, '425', 1, '2016-01-20 22:07:08'),
(3, 71, '425', 1, '2016-01-20 22:07:08'),
(4, 94, '425', 1, '2016-01-20 22:07:08'),
(5, 71, '111', 1, '2016-01-27 20:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `enterprices`
--

CREATE TABLE IF NOT EXISTS `enterprices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `company_type` varchar(255) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `enterprices`
--

INSERT INTO `enterprices` (`id`, `company_name`, `company_type`, `contact_name`, `contact_email`, `contact_number`) VALUES
(1, '118', '47', '4242424242424242', '118', '1'),
(2, '118', '47', '4242424242424242', '118', '1'),
(3, '118', '47', '4242424242424242', '118', '1'),
(4, '118', '47', '4242424242424242', '118', '1'),
(5, 'gfhgfhgfh', 'Sharp Cheddar', 'gfhgfhgfhh for', 'gfhgfhg@a.com', '464464'),
(6, 'hgfhgfhg', 'Sharp Cheddar', 'fdgfdgdg', 'A@d.com', 'asdasdsad'),
(7, 'fgfgdfgfdgfdfdgfdg', 'Maytag Blue', 'ft dsfsfsf', 'fgdfg@a.com', '361646446464'),
(8, 'Riggs test', 'Provolone', 'test name', 'test@gmail.com', '446456466465'),
(9, 'test company', 'Monterrey Jack', 'name test', 'test@gmail.com', '46446464'),
(10, 'test name', 'Sharp Cheddar', 'test contact name', 'test@gmail.com', '464644'),
(11, 'test company', 'Goat Cheese', 'test name', 'testname@gmail.com', '1478523694'),
(12, 'test company', 'Gouda', 'test name', 'test@gmail.com', '4546469749749'),
(13, 'teat name', 'Goat Cheese', 'test contact name', 'test@gmail.com', '5455646446'),
(14, 'test name', 'Monterrey Jack', 'test company name', 'test12@gmail.com', '146464644564'),
(15, 'test company names ', 'Goat Cheese', 'test contact name', 'testssss@gmail.com', '64646444644'),
(16, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `extra_provided_services`
--

CREATE TABLE IF NOT EXISTS `extra_provided_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pp_service_id` int(11) NOT NULL,
  `extra_service_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `service_money_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `extra_provided_services_extra_service_name_unique` (`extra_service_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `extra_provided_services`
--

INSERT INTO `extra_provided_services` (`id`, `pp_service_id`, `extra_service_name`, `service_money_value`) VALUES
(1, 1, 'Oversized Grass Higher Than 6 Inches', 200),
(2, 1, 'Terra General Labor - 3 Hours', 123),
(3, 2, 'Terra Junk Removal Large ', 300),
(4, 2, 'Terra Junk Removal Small', 100),
(5, 3, 'Terra Leaf Raking', 400),
(6, 3, 'Terra Power Washing Large > 1500 sq/ft', 176),
(7, 4, 'Terra Power Washing Small < 1500 sq/ft', 100),
(8, 4, 'Terra Tree Trimming Large', 226),
(9, 5, 'Terra Tree Trimming Small', 100),
(10, 5, 'Terra Hedge Trimming', 300),
(11, 6, ' Weed Removal / Flower Bed Service', 300),
(18, 6, 'Flower Bed Service ', 300),
(19, 7, 'Flower Bed Service latest things', 300);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `frequency-customer`
--

INSERT INTO `frequency-customer` (`id`, `customer_id`, `frequency_id`, `is_enabled`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 12, '2015-12-14 07:00:00', '0000-00-00 00:00:00'),
(2, 56, 2, 0, '2016-02-11 17:10:00', '0000-00-00 00:00:00'),
(7, 86, 3, 0, '2016-02-20 12:52:00', '0000-00-00 00:00:00'),
(8, 4, 3, 0, '2016-02-20 14:34:00', '0000-00-00 00:00:00'),
(9, 87, 3, 0, '2016-02-22 16:14:00', '0000-00-00 00:00:00'),
(16, 96, 2, 0, '2016-02-22 18:15:00', '0000-00-00 00:00:00'),
(19, 4, 4, 0, '2016-02-26 17:53:00', '0000-00-00 00:00:00'),
(20, 56, 1, 0, '2016-03-02 18:49:00', '0000-00-00 00:00:00'),
(21, 56, 1, 0, '2016-03-02 18:50:00', '0000-00-00 00:00:00'),
(22, 56, 2, 0, '2016-03-02 19:09:00', '0000-00-00 00:00:00'),
(23, 105, 1, 0, '2016-03-02 19:34:00', '0000-00-00 00:00:00'),
(25, 111, 1, 0, '2016-03-02 22:21:00', '0000-00-00 00:00:00'),
(26, 56, 1, 0, '2016-03-03 01:24:00', '0000-00-00 00:00:00'),
(27, 56, 1, 0, '2016-03-03 01:28:00', '0000-00-00 00:00:00'),
(28, 117, 1, 0, '2016-03-03 01:32:00', '0000-00-00 00:00:00'),
(29, 4, 1, 0, '2016-03-04 18:42:00', '0000-00-00 00:00:00'),
(30, 4, 1, 0, '2016-03-04 18:45:00', '0000-00-00 00:00:00'),
(31, 4, 1, 0, '2016-03-04 22:54:00', '0000-00-00 00:00:00'),
(32, 4, 1, 0, '2016-03-05 12:23:00', '0000-00-00 00:00:00');

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

--
-- Dumping data for table `mobile_no`
--

INSERT INTO `mobile_no` (`user_id`, `mobile_no`, `created_at`) VALUES
(71, '123465789', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE IF NOT EXISTS `months` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `month_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `month_name`) VALUES
(1, 'Jan'),
(2, 'Feb'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'Aug'),
(9, 'Sep'),
(10, 'Oct'),
(11, 'Nov'),
(12, 'Dec');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `seo_title` text NOT NULL,
  `seo_content` longtext NOT NULL,
  `headlayout` varchar(56) NOT NULL DEFAULT '0' COMMENT ' headlayout become a partner header on the top',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` varchar(150) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `seo_title`, `seo_content`, `headlayout`, `created`, `updated`, `status`) VALUES
(1, 'Home', 'home', '		<header class="right-content">\r\n			<div class="banner content">\r\n				<div class="banner-content">\r\n					<div>\r\n						<h1>Automate ALL your\r\n						lawn service needs</h1>\r\n						<h4>No Lists, No Contracts, No Hassle</h4>\r\n						<a class="button" href="#">Book Lawn Service Now</a>\r\n						<div class="clear"></div>\r\n						<h2>Try Terra app features live<img src="/terraappnew/img/images/arrow.png"></h2>\r\n					</div>\r\n				\r\n				</div>\r\n				<div class="mobile-right"><a class="spinner" href="#">\r\n				<svg class="spinner_svg" viewBox="-26 -26 100 100" height="100px" width="100px">\r\n					<defs></defs>\r\n					<text font-size="14px" fill="white" y="29" x="3">START</text>\r\n					<g fill-rule="evenodd" fill="none" stroke-width="1" stroke="none" id="Page-1">\r\n						<g stroke="#FFFFFF" transform="translate(2.000000, 2.000000)" id="Group">\r\n							<circle r="36.5" cy="22.5" cx="22.5" stroke-width="4" id="Oval-1"></circle>\r\n							<circle stroke-width="1.5" r="22.5" cy="22.5" cx="22.5" id="Oval-2"></circle>\r\n							<circle stroke-width="1.5" r="22.5" cy="22.5" cx="22.5" id="Oval-3"></circle>\r\n							<circle stroke-width="1.5" r="22.5" cy="22.5" cx="22.5" id="Oval-4"></circle>\r\n						</g>\r\n					</g>\r\n				</svg>\r\n				</a></div>\r\n				<div class="clear"></div>\r\n			</div>\r\n        <div class="overlay"></div>\r\n		</header>\r\n		<div class="buttons">\r\n		<div class="container">\r\n		<a href="#"><img src="/terraappnew/img/images/app-store.png"></a>\r\n			<a href="#"><img src="/terraappnew/img/images/google-play.png" class="play"></a>\r\n\r\n		</div>\r\n			\r\n		</div>\r\n		<div class="alone">\r\n			<div class="alone-section">\r\n				<div class="alone-home">\r\n				<div class="alone-text">\r\n					<h5>You are not alone</h5>\r\n					<p>Have you ever booked lawn service online? Scrolled through a list of contractors, spent hours comparing quotes, felt a bit uneasy about giving up personal and property details for "estimates", had to coordinate payment for service yourself and then received lousy service? Who do you call for help, the contractor or the company who got paid for the referral?</p>\r\n					<p class="top-20">Not with Terra. We manage the entire process.</p>\r\n					<p>You will receive a delightful experience! </p>\r\n					<p>No cash required, No wasted time, No membership fees.</p>\r\n				</div>\r\n				</div>\r\n				<div class="four-boxes">\r\n					<div class="box1">\r\n						<div class="box1-heading">\r\n							<h1>Welcome to Utopia</h1>\r\n							<h1>Population - 734,205</h1>\r\n							<h3>and counting...</h3>\r\n						</div>	\r\n						<hr>\r\n						<p>\r\n							Book one time lawn service or \r\n							recurring weekly. You don''t have to be\r\n							home, we send receipt direct to your\r\n							inbox. Keep the lawn pro''s you love.\r\n						</p>\r\n						<h2><a href="#"><span class="works-underline">See How it Works</span> <span>&gt;&gt;</span></a></h2>\r\n					</div>\r\n					<div class="box1 box2">\r\n						<div class="box2-heading">\r\n							<h1>Recently Relocated?</h1>\r\n						</div>	\r\n						<hr>\r\n						<p>\r\n							Moving can take a toll. Let\r\n							Terra help with the transition;\r\n							Junk Removal, Security\r\n							Camera Installion &amp; lawn\r\n							service bundles... \r\n						</p>\r\n						<h2><a href="#"><span class="works-underline">Learn More</span> <span>&gt;&gt;</span></a></h2>\r\n					</div>\r\n					<div class="box1 box-3">\r\n						<div class="box2-heading">\r\n							<h1>Are you a lawn care professional?</h1>\r\n						</div>	\r\n						<hr>\r\n						<p>\r\n							If you''re all about delivering 5 star lawn service, lets talk.\r\n						</p>\r\n						<h2><a href="#"><span class="works-underline">Get Started</span> <span>&gt;&gt;</span></a></h2>\r\n					</div>\r\n					<div class="box1 box-4">\r\n						<div class="box2-heading">\r\n							<h1>Earn Free</h1>\r\n							<h1>Lawn Service!</h1>\r\n						</div>	\r\n						<hr>\r\n						<p>\r\n							Get up to $50 for every\r\n							frind you invite.\r\n						</p>\r\n						<h2><a href="#"><span class="works-underline">Login to Invite</span> <span>&gt;&gt;</span></a></h2>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		<div class="lawn-services">\r\n			<div class="lawn-section">\r\n				<h6>Lawn Service Reviews about Terra</h6>\r\n				<div class="lawn-inner">\r\n					<section id="first">\r\n						<h3>Cassidy</h3>\r\n						<p><img class="quote-first" src="/terraappnew/img/images/left-quote.png"> Smart &amp; Reliable service. I''ve used Terra in Atlanta for months now, they have never let me down. Always willing to help, I''ve had nothing but wonderful experiences, highly recommended! <img src="/terraappnew/img/images/right-quote.png"></p>\r\n					</section>\r\n					<section id="second">\r\n						<h3>Marla Z</h3>\r\n						<p><img class="quote-first" src="/terraappnew/img/images/left-quote.png"> I downloaded Terra, signed up and ordered lawn service literally in 3 minutes. Very intuitive and remarkable service. Love the text updates when my lawn service starts &amp; completes! <img src="/terraappnew/img/images/right-quote.png"></p>\r\n					</section>\r\n					<section id="first">\r\n						<h3>Todd &amp; Alexis M.</h3>\r\n						<p><img class="quote-first" src="/terraappnew/img/images/left-quote.png"> We really feel comfortable using Terra. We recently moved to Houston from Missouri and could not be happier with the lawn service each week from Terra. <img src="/terraappnew/img/images/right-quote.png"></p>\r\n					</section>\r\n					<section id="second">\r\n						<h3>Danielle C.</h3>\r\n						<p><img class="quote-first" src="/terraappnew/img/images/left-quote.png"> I tell everyone I can about Terra. I read a NextDoor review about this lawn service app and tried for myself to get junk removal service. Super easy to use and very convenient. 5 stars!<img src="/terraappnew/img/images/right-quote.png"></p>\r\n					</section>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		\r\n		<div class="featured-cities">\r\n			<div class="featured-section">\r\n				<h1>Featured Cities</h1>\r\n				<div class="col-md-12">\r\n					<div class="col-md-4">\r\n						<a href="cities/austin"><img src="/terraappnew/img/images/austin.png"></a>\r\n						<h2>Lawn Service Austin</h2>\r\n					</div>\r\n					<div class="col-md-4">\r\n						<a href="cities/atlanta"><img src="/terraappnew/img/images/atlanta.png"></a>\r\n						<h2>Lawn Service Atlanta</h2>\r\n					</div>\r\n					<div class="col-md-4">\r\n						<a href="cities/dallas"><img src="/terraappnew/img/images/dallas.png"></a>\r\n						<h2>Lawn Service Dallas/Fort Worth </h2>\r\n					</div>\r\n					<div class="col-md-4">\r\n						<a href="cities/houston"><img src="/terraappnew/img/images/houston.png"></a>\r\n						<h2>Lawn Service Houston</h2>\r\n					</div>\r\n					<div class="col-md-4">\r\n						<a href="cities/orlando"><img src="/terraappnew/img/images/orlando.png"></a>\r\n						<h2>Lawna Service Orlando</h2>\r\n					</div>\r\n					<div class="col-md-4">\r\n						<a href="cities/orange-county"><img src="/terraappnew/img/images/orange.png"></a>\r\n						<h2>Lawn Service Orange County</h2>\r\n					</div>\r\n					<div class="col-md-4 last-city">\r\n						<a href="city"><img src="/terraappnew/img/images/all-cities.png"></a>\r\n						<h2>View All Cities</h2>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>', 'homepage title', 'homepage content seo', '1', '2015-11-04 22:14:22', '2015-11-21 16:20:43', '1'),
(15, 'How it works', 'how-it-works', '<div class="container-layout"><div class="content-section" id="t-0">\r\n			<div class="work-heading">\r\n				<h3>The Most Convenient Lawn Service Experience, Ever!</h3>	\r\n				<hr>\r\n				<h5> We manage the entire process, making lawn chores completely effortless &amp; secure.</h5>	\r\n			</div>\r\n				<div class="outer-container">\r\n					<div class="container">\r\n						<div class="seconds-section">\r\n							<div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img alt="play" src="/terraappnew/img/images/60-second.png"></div>\r\n									<div class="servicess">\r\n									<h3>Book Service in 60 Seconds</h3>\r\n									<p class="m-t-23">\r\n										Schedule service online or through the app.\r\n										What could be easier?</p>\r\n										<p>Order same day lawn mowing service or trash\r\n										removal at the push of a button.\r\n									</p>\r\n									</div>\r\n									<div class="arrow"></div>\r\n								</div>\r\n							</div>\r\n							<div class="seconds-first-image"></div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class="clear"></div>\r\n				<div class="outer-container" id="m-t-100">\r\n					<div class="container">\r\n						<div class="seconds-section">\r\n							<div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img alt="play" src="/terraappnew/img/images/60-tick.png"></div>\r\n									<div class="servicess">\r\n									<h3>Never miss a beat</h3>\r\n									<p class="m-t-23">\r\n										Terra sends you status notifications direct to\r\n										your device. Know when service begins\r\n										and ends without breaking a sweat.</p>\r\n									</div>\r\n									<div class="arrow"></div>\r\n								</div>\r\n							</div>\r\n							<div class="seconds-second-image"></div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class="clear"></div>\r\n				<div class="outer-container" id="m-t-100">\r\n					<div class="container">\r\n						<div class="seconds-section">\r\n							<div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img alt="play" src="/terraappnew/img/images/60-flower.png"></div>\r\n									<div class="servicess">\r\n									<h3>Spend your time wisely</h3>\r\n									<p class="m-t-23">\r\n										Terra takes the hassle out of searching online through\r\n										endless lists of contractors, comparing quotes and\r\n										giving up mountains of personal data in the process.\r\n									</p>\r\n									</div>\r\n									<div class="arrow"></div>\r\n								</div>\r\n							</div>\r\n							<div class="seconds-third-image"></div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class="clear"></div>\r\n				<div class="outer-container clarity">\r\n					<div class="container">\r\n						<div class="p-t-73">\r\n							<div class="service w-50">\r\n								<div class="timer star"><img alt="play" src="/terraappnew/img/images/star.png"></div>\r\n									<div class="servicess service-clarity">\r\n									<h3>Clarity <br>of Service</h3>\r\n									</div>\r\n									<ul>\r\n										<li><span></span>Flat, Upfront Pricing</li>\r\n										<li><span></span>Totally Cashless Transaction</li>\r\n										<li><span></span>No Quotes with upsell schemes</li>\r\n										<li><span></span>No Contracts, No Lists, No Hassles</li>\r\n										<li><span></span>Eliminate gambling with solicitations</li>\r\n										<li><span></span>No direct interaction with contractor</li>\r\n									</ul>\r\n							</div>\r\n							<div class="service w-50">\r\n								<div class="timer star"><img alt="play" src="/terraappnew/img/images/video.png"></div>\r\n									<div class="servicess service-clarity">\r\n									<h3>Background <br>Checked Partners</h3>\r\n									</div>\r\n									<ul>\r\n										<li><span></span>No violent crimes</li>\r\n										<li><span></span>No sexual offenses</li>\r\n										<li><span></span>No property damage offenses</li>\r\n										<li><span></span>No major vehicle infractions</li>\r\n										<li><span></span>Must pass strict safety &amp; training standards</li>\r\n										<li><span></span>Ongoing reviews of all partners – multi state checks</li>\r\n									</ul>\r\n							</div>\r\n							<div class="service w-50">\r\n								<div class="timer star"><img alt="play" src="/terraappnew/img/images/bell.png"></div>\r\n									<div class="servicess service-clarity">\r\n									<h3>Real Time <br>Notifications</h3>\r\n									</div>\r\n									<ul>\r\n										<li><span></span>Alerts to signal beginning &amp; end of Terra service</li>\r\n										<li><span></span>Flexible Billing Options / Receipts Emailed</li>\r\n										<li><span></span>Anonymous ratings to ensure quality</li>\r\n										<li><span></span>Share recommendations using NextDoor</li>\r\n										<li><span></span>Chat online or submit tickets from your phone</li>\r\n										<li><span></span>Regular blog updates for lawn care maintenance</li>\r\n									</ul>\r\n							</div>\r\n							<div class="service w-50">\r\n								<div class="timer star">\r\n								<img alt="play" src="/terraappnew/img/images/home-icon.png"></div>\r\n									<div class="servicess service-clarity">\r\n									<h3>Comprehensive <br>Solutions</h3>\r\n									</div>\r\n									<ul>\r\n										<li><span></span>Terra X for value conscious clients</li>\r\n										<li><span></span>Terra Tree Service</li>\r\n										<li><span></span>Terra Power Washing Service</li>\r\n										<li><span></span>Seasonal/Holiday Lighting installation</li>\r\n										<li><span></span>Corporate Benefits Programs</li>\r\n										<li><span></span>Terra Snow Removal Service</li>\r\n									</ul>\r\n							</div>\r\n						</div>\r\n						<div class="clear"></div>\r\n						<div class="terra-links">\r\n							<a href="#"><img alt="play" src="/terraappnew/img/images/w-app-store.png"></a>\r\n							<a href="#"><img alt="play" src="/terraappnew/img/images/w-google-play.png"></a>\r\n							<a href="#"><img alt="play" src="/terraappnew/img/images/book-lawn.png"></a>\r\n						</div>\r\n					</div>	\r\n				</div>				\r\n				<div class="clear"></div>\r\n			</div></div>', 'Seo title second Pages', 'Seo content second Pages<br>', '0', '2015-11-05 17:45:39', '2015-11-20 16:36:21', '1'),
(16, 'Services', 'services', '<div class="container-layout"><div class="content-section" id="t-0"><div id="t-0" class="content-section">\r\n			<div class="work-heading">\r\n						<h3><span>Terra</span> Services | On Demand Property Services</h3>	\r\n						<hr>\r\n						<h5>Modernizing Home Life with technology</h5>	\r\n					</div>\r\n				<div class="outer-container">\r\n					<div class="container">\r\n                    \r\n                    		\r\n							<div id="border-width" class="seconds">\r\n								<a class="a-services" href="/terraappnew/lawn-moving">\r\n                                <div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/moving.png"></div>\r\n									<div class="servicess">\r\n									<h3>Lawn Mowing Services</h3>\r\n									<p class="m-t-23">\r\n										Instantly schedule routine or last\r\n										minute residential or commercial\r\n										lawn mowing service.\r\n									</p>\r\n									</div>\r\n								</div>\r\n                                </a>\r\n							</div>\r\n                            \r\n                            \r\n                            \r\n							<div id="border-width" class="seconds m-l-94">\r\n								<a class="a-services" href="/terraappnew/junk-hauling">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/delete.png"></div>\r\n									<div class="servicess">\r\n									<h3>Junk Hauling Services</h3>\r\n									<p class="m-t-23">\r\n										Deploy a team of junk removing\r\n										muscles in seconds. Move in /\r\n										Move out specials available. \r\n									</p>\r\n									</div>\r\n								</div>\r\n                                </a>\r\n							</div>\r\n                            \r\n                            \r\n                            \r\n							<div id="border-width" class="seconds">\r\n								<a class="a-services" href="/terraappnew/tree-trimming">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/trimming.png"></div>\r\n									<div class="servicess">\r\n									<h3>Tree Trimming Services</h3>\r\n									<p class="m-t-23">\r\n										The smartest way to manicure\r\n										your property, guaranteed.\r\n										Hedges  \r\n									</p>\r\n									</div>\r\n								</div>\r\n                                </a>\r\n							</div>\r\n                            \r\n                            \r\n\r\n							<div id="border-width" class="seconds m-l-94">\r\n								<a class="a-services" href="/terraappnew/power-washing">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/washing.png"></div>\r\n									<div class="servicess">\r\n									<h3>Power Washing Services</h3>\r\n									<p class="m-t-23">\r\n										Clean your backyard deck or\r\n										restaurant patio. Convenient\r\n										pressure washing services \r\n									</p>\r\n									</div>\r\n								</div>\r\n                                </a>\r\n							</div>\r\n                            \r\n                            \r\n							<div id="border-width" class="seconds">\r\n								<a class="a-services" href="/terraappnew/handyman-services">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/handyman.png"></div>\r\n									<div class="servicess">\r\n									<h3>Handyman/Labor Services</h3>\r\n									<p class="m-t-23">\r\n										From fence repair to futon\r\n										assembly, get professional\r\n										work when you need it. \r\n									</p>\r\n									</div>\r\n								</div>\r\n                                </a>\r\n							</div>\r\n                            \r\n                            \r\n							<div id="border-width" class="seconds m-l-94">\r\n								<a class="a-services" href="#">\r\n								</a><a class="a-services" href="/terraappnew/terra-extra">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/t-extra.png"></div>\r\n									<div class="servicess">\r\n									<h3>Terra Extra''s</h3>\r\n									<p class="m-t-23">\r\n										Lawn pro''s that love to get there\r\n										hands dirty, no job too big,\r\n										no job to small.\r\n									</p>\r\n									</div>\r\n								</div>\r\n                                </a>\r\n							</div>\r\n                            \r\n							<h1 class="m-t-62">Terra Home Automation Services</h1>\r\n							<div id="border-width" class="seconds m-t-0">\r\n                            <a class="a-services" href="/terraappnew/security-camera-install">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/s-camera.png"></div>\r\n									<div class="servicess">\r\n									<h3>Security Camera Services</h3>\r\n									<p class="m-t-23">\r\n										Security experts help you\r\n										protect whats important. \r\n									</p>\r\n									</div>\r\n								</div>\r\n                                </a>\r\n							</div>\r\n                            \r\n                            \r\n							<div id="border-width" class="seconds m-l-94 m-t-0">\r\n                            <a class="a-services" href="/terraappnew/smart-appliances">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/appliance.png"></div>\r\n									<div class="servicess">\r\n									<h3>Smart Appliance Services</h3>\r\n									<p class="m-t-23">\r\n										We install the most popular\r\n										smart home appliances.\r\n									</p>\r\n									</div>\r\n								</div>\r\n                                </a>\r\n							</div>\r\n                            \r\n                            \r\n							<div id="border-width" class="seconds">\r\n                            <a class="a-services" href="/terraappnew/smart-tv-Installation">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/tv.png"></div>\r\n									<div class="servicess">\r\n									<h3>TV/Projector Services</h3>\r\n									<p class="m-t-23">\r\n										Hang that new flat screen\r\n										tv, get a custom entertainment\r\n										center. \r\n									</p>\r\n									</div>\r\n								</div>\r\n                                </a>\r\n							</div>\r\n                            \r\n                            \r\n							<div id="border-width" class="seconds m-l-94">\r\n                            <a class="a-services" href="/terraappnew/lighting-fixture-lnstallation">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/lightning.png"></div>\r\n									<div class="servicess">\r\n									<h3>Lighting/Fixture Services</h3>\r\n									<p class="m-t-23">\r\n										Add a ceiling fan, replace\r\n										front door lighting or install\r\n										walkway lights.\r\n									</p>\r\n									</div>\r\n								</div>\r\n                                </a>\r\n							</div>\r\n                            \r\n                            \r\n							<h1 class="m-t-62">Terra Seasonal Lawn Services</h1>\r\n							<div id="border-width" class="seconds m-t-0">\r\n                            <a class="a-services" href="/terraappnew/holiday-lights">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/holiday.png"></div>\r\n									<div class="servicess">\r\n									<h3>Holiday Light Services</h3>\r\n									<p class="m-t-23">\r\n										Enjoy stress free holidays with\r\n										our light install and removal\r\n										service. B.Y.O.L. \r\n									</p>\r\n									</div>\r\n								</div>\r\n                                </a>\r\n							</div>\r\n                            \r\n                            \r\n							<div id="border-width" class="seconds m-l-94 m-t-0">\r\n                            <a class="a-services" href="/terraappnew/firewood-delivery">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/firewood.png"></div>\r\n									<div class="servicess">\r\n									<h3>Firewood Delivery Services</h3>\r\n									<p class="m-t-23">\r\n										Yes, there is an app for that.\r\n										Firewood delivery at the push\r\n										of a button.\r\n									</p>\r\n									</div>\r\n								</div>\r\n                                </a>\r\n							</div>\r\n							\r\n					</div>\r\n				</div>\r\n				<div class="clear"></div>\r\n				<div class="outer-container servicesss">\r\n					<div class="container">\r\n					\r\n						<div class="p-t-73">\r\n						<h1 class="upper">Real estate technology firms parter with <span>Terra</span>\r\n							to deliver modern concierge services.</h1>\r\n							<div class="real-100">\r\n							<div class="real-30">\r\n								<div class="real-images"><img src="/terraappnew/img/images/economical.png"></div>\r\n								<h1>Economical</h1>\r\n								<p>Lower your repair costs,\r\n								automatically complete\r\n								planned maintenance.</p>\r\n							</div>\r\n							<div class="real-30">\r\n								<div class="real-images"><img src="/terraappnew/img/images/efficient.png"></div>\r\n								<h1>efficient</h1>\r\n								<p>Lower your repair costs,\r\n								automatically complete\r\n								planned maintenance.</p>\r\n							</div>\r\n							<div class="real-30">\r\n								<div class="real-images"><img src="/terraappnew/img/images/seamless.png"></div>\r\n								<h1>seamless</h1>\r\n								<p>Lower your repair costs,\r\n								automatically complete\r\n								planned maintenance.</p>\r\n							</div>\r\n							</div>\r\n							<div class="service-font"><p class="italic-text">See how the Terra API will work for your firm. Contact us for a product demo.</p></div>\r\n							\r\n						</div>\r\n						<div class="clear"></div>\r\n						\r\n					</div>	\r\n				</div>				\r\n				<div class="clear"></div>\r\n			</div></div>\r\n		</div>', 'Services', 'Services content<br>', '1', '2015-11-09 17:18:45', '2015-11-23 23:05:16', '1'),
(17, 'Cities', 'city', '<div class="content-layout"><div class="banner-section cities"><div class="cities_mini"><h2> Communities Work Better with Terra</h2><hr><div class="clear"></div><h6> View on demand service options in your neighborhood </h6></div></div>', 'Cities Title', 'Cities Content<br>', '1', '2015-11-09 21:42:26', '2015-11-20 16:15:33', '1'),
(18, 'Partners', 'partners', '<div class="content-layout"><div class="banner-section partner"><div class="partnr-left-heading"><h1>Are you a Lawn Care Professional?</h1>\r\n		<hr>\r\n		<p>Make Great Money with Terra, Get Paid Automatically</p>\r\n	  </div>\r\n		<div class="banner-inner partnerrr">\r\n			<div></div>\r\n			<div class="banner-list p-list">\r\n				<div class="p-left show">1/2<br> STEP</div>\r\n				<div class="p-left hiddden">1/2 STEP</div>\r\n				<div class="p-right show">CREATE A NEW<br> ACCOUNT NOW</div>\r\n				<div class="p-right hiddden">CREATE A NEW ACCOUNT NOW</div>\r\n				<div class="clear"></div>\r\n				<div class="p-t-30">\r\n					<div class="t-blue"><input value="" name="first name" type="">\r\n					<label>First name</label></div>\r\n					<div class="t-white"><input value="" name="first name" type="">\r\n					<label>Last name</label></div>\r\n					<div class="t-red"><input value="" name="first name" type="">\r\n					<label>Business name</label></div>\r\n					<div class="t-white"><input value="" name="first name" type="">\r\n					<label>Email</label></div>\r\n					<div class="t-white"><input value="" name="first name" type="">\r\n					<label>Mobile number</label></div>\r\n					<div class="clear"></div>\r\n					<a class="btn-button" href="#">Continue <i class="fa fa-angle-right"></i></a>\r\n					<div class="t-account"><p>Already have an account? <span>Log in!</span></p></div>\r\n					<p class="t-n-c">By clicking Continue, you agree that Terra or its representatives may contact you via email, phone or SMS. You also agree to TERRA''s <a href="terms-of-service" target="_blank"><span>Terms &amp; Conditions</span></a> and <a href="terra-privacy-policy" target="_blank"><span>Privacy Policy</span></a></p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	  </div>\r\n		<div class="content-section n-p">\r\n		<div class="container">\r\n				<div class="page-content">\r\n				<h3 class="partnr">Earn More as a <span>Terra</span> Partner</h3>\r\n				<p>Terra is a modern solution for your lawn care business that connects you to the more opportunites than ever. Entrepreneurs use the Terra mobile platform to earn great money in a smart and efficient way. Eliminate the hassle of bidding on lawn jobs. Receive open jobs directly to your account without spending money on marketing and advertising. Create your own flex schedule and be your own boss.</p><br>\r\n				<div class="p-t-73 partnerr">\r\n						<h1 class="upper">See How <span>Terra</span> Works For Your Business </h1>\r\n							<div class="real-100">\r\n							<div class="real-30">\r\n								<div class="real-images"><img src="/terraappnew/img/images/appointment.png"></div>\r\n								<h1>We book your Appointments</h1><hr>\r\n								<p>Stop wasting time &amp; money chasing clients. Terra has a large network of customers ready for the 5 star lawn service you provide.</p>\r\n							</div>\r\n							<div class="real-30">\r\n								<div class="real-images"><img src="/terraappnew/img/images/recurring.png"></div>\r\n								<h1>We get you Recurring Business</h1><hr>\r\n								<p>Never worry about invoices. Terra manages the entire transaction and uses our advanced payment system to deliver your earnings on time each week.</p>\r\n							</div>\r\n							<div class="real-30">\r\n								<div class="real-images"><img src="/terraappnew/img/images/handle-payment.png"></div>\r\n								<h1>We handle payments</h1><hr>\r\n								<p>Keep your satisfied clients. Terra matches satisfied customers with you. Deliver 5 star service and you will have 1st choice to continue servicing the client.</p>\r\n							</div>\r\n							</div>\r\n							\r\n							\r\n				</div>\r\n				<div class="p-t-73 partnerr">\r\n					<p class="upper">How to get started</p>\r\n					<div class="second-60">\r\n						<div class="timer"><img src="/terraappnew/img/images/apply-online.png"></div>\r\n						<div class="servicess">\r\n						<h3>Apply Online</h3>\r\n						\r\n						</div>\r\n						<p class="m-t-23">\r\n							Tell us about you and your business.\r\n						</p>\r\n					</div>\r\n					<div class="second-60">\r\n						<div class="timer"><img src="/terraappnew/img/images/verified.png"></div>\r\n						<div class="servicess">\r\n						<h3>Get verified</h3>\r\n						\r\n						</div>\r\n						<p class="m-t-23">\r\n							Safety is the number one priority at Terra, so we require two part verification process.\r\n						</p>\r\n					</div>\r\n					<div class="second-60">\r\n						<div class="timer"><img src="/terraappnew/img/images/earning.png"></div>\r\n						<div class="servicess">\r\n						<h3>start earning</h3>\r\n						\r\n						</div>\r\n						<p class="m-t-23">\r\n							Making money doing what you love. Get Started Today!\r\n\r\n						</p>\r\n					</div>\r\n					<div class="partner-1-img"><img src="/terraappnew/img/images/1-bottom.png"></div>\r\n					<div class="partner-2-img"><img src="/terraappnew/img/images/2-bottom.png"></div>\r\n				</div>\r\n				<div class="p-t-73 partnerr p-center">\r\n					<p>Make great money, even part time.\r\n						Use the proven <span>Terra</span> app system\r\n						to grow your lawn care business.</p>\r\n					<div class="page-button">\r\n						<img src="/terraappnew/img/images/aap-store-page.png">\r\n						<img src="/terraappnew/img/images/google-play-page.png">\r\n						<div class="clear"></div>\r\n				 </div>	\r\n				</div>	\r\n				\r\n				\r\n				\r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div></div>', 'Partner seo title', 'Partner seo content<br>', '0', '2015-11-13 16:49:36', '2015-11-24 19:28:38', '1'),
(19, 'About-us', 'about-us', '<div class="content-layout">\r\n	  <div class="banner-section about-image">\r\n	  </div>\r\n		<div class="content-section about">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>On Demand Services by<span> Terra</span></h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n			\r\n				<div class="page-content">\r\n				<p>Have you ever gotten the "Don''t look at me I just work here" treatment? Some company not taking the time to personalize your experience or be accountable should your experience not be perfect, we''ve all been there! The Terra lawn service app was created for a new generation of homeowners. A generation that expects smart and reliable service options, a generation that expects affordable mobile solutions. Terra knows exactly what you want and we work overtime to deliver a seamless, cashless lawn service experience.</p><br>\r\n				\r\n				<p>A happy twenty first century lifestyle means you want it ALL; a modern, semi-urban home life without the bother of weekend chores and yardwork that come with keeping your property beautiful. We here you! Terra is the go to mobile application for booking lawn mowing service, junk removal service, security camera installation &amp; general handyman work for your property. Terra was founded in 2014 and is headquartered in Dallas, Texas.</p><br>\r\n				\r\n				<h3>MOBILE SOLUTIONS AT YOUR FINGERTIPS</h3>\r\n				<p>Terra connects your lawn service request with a vetted, qualified lawn professional within your city. We manage the entire process through our free, easy to use mobile app. Terra is available for iOS, android and lawn service requests can also be submitted via your web browser:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Fast &amp; Easy - Save time, there are no contractor lists to troll through. Submit your lawn service request with one push of a button. </li>\r\n					<li>Trustworthy - Transparent, up front pricing. No "free estimates" with upsell schemes.</li>\r\n					<li>User Control - Anonymous 5 star rating system after each completed request. Keep the lawn pro you like, report anything less than a 5 star experience.</li>\r\n					<li>Modern - We''ve eliminated the 20th century quote process. Custom requests can be made with one snap of a picture, no need to compare 10 different job bids.</li>\r\n					<li>Powerful &amp; Reliable- Text alerts when lawn pro arrives and leaves your property, easy HELP features. Leave special instructions for HQ or your lawn pro.</li>\r\n				</ul>\r\n				\r\n				<h3>Recently Relocated?</h3>\r\n				<p>Let Terra make your transition to your new home or office a fabulous experience. We offer moving-in service such as junk removal for all the extra boxes left by the moving company. Get that first professional lawn service that says "this is all mine". Worry about more important responsibilities, let Terra handle all the mundane chores and yardwork associated with moving into a new home or office.</p><br>\r\n				\r\n				<h3>Affordable Technology</h3>\r\n				<p>What happened to technology making our lives simple, easier to manage? High cost solutions don''t help! Terra delivers affordable lawn services that start at $25. No lawn job too small! Request leaf raking service or have your flower bed cleared properly at an affordable cost. We don''t fee you to death, no hidden fees on the cost, no monthly membership fees, no long term contracts. Terra gives you the highest quality lawn care, delivered on demand through your smartphone, tablet or home computer.</p><br>\r\n				\r\n				\r\n				<div class="seconds width-100">\r\n								<div class="second-60 p-t-o">\r\n									<div class="timer"><img src="/terraappnew/img/images/ying-tang.png"></div>\r\n									<div class="servicess">\r\n									<h3>Easy To Use</h3>\r\n									<p class="m-t-23">Schedule last minute or recurring lawn care at the push of a button.  Just choose your services, set it and forget it.  We send you text alerts when the job has been assigned to a partner, when the partner is on site, and when the partner leaves. No need to be at home, you have better things to do. No need to give out your cellphone, address, name and other personal information just to get quotes from random contractors. We research the best local providers and do the background checks to provide you with quality services with no hassle. </p>\r\n									</div>\r\n								</div>\r\n								<div class="second-60 p-t-o">\r\n									<div class="timer"><img src="/terraappnew/img/images/forma.png"></div>\r\n									<div class="servicess">\r\n									<h3>Who Uses Terra</h3>\r\n									<p class="m-t-23">You do. Terra is a modern solution for those who want their lawn care done at the click of a button. It''s for residents who don''t want to get stuck doing yard work when they could be spending time with their family.  Terra is for homeowners who''ve just relocated to a new city and have a lot going on.  It''s for business owners that want professional and reliable services, without all the hassle. Business and homeowners'' time is valuable and it shouldn''t be wasted on searching for lawn professionals.  Terra makes lawn services one less thing you have to worry about.  </p>\r\n									</div>\r\n								</div>\r\n								<div class="second-60 p-t-o">\r\n									<div class="timer"><img src="/terraappnew/img/images/stars.png"></div>\r\n									<div class="servicess">\r\n									<h3>5 Star Customer Service</h3>\r\n									<p class="m-t-23">We''ve been there, someone does a crappy job on your lawn and you''re stuck not knowing what to do.  You''ll never feel that way with Terra. We strive for 5 star service each and every time.  If someone doesn''t deliver, let us know through our Terra rating system.  We''ll get you a different lawn professional and make it right by you.  That''s what we''re here for.  </p>\r\n									</div>\r\n								</div>\r\n								<p class="terralife"><span>#TerraLife,</span> a modern lifestyle that allows you to live life without the hassle of mundane chores </p>\r\n							</div>\r\n				\r\n				</div>\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for about us', 'SEO Content for about us<br>', '0', '2015-11-16 18:58:16', '2015-11-20 17:19:36', '1'),
(20, 'Lawn Moving', 'lawn-moving', '<div class="container-layout">\r\n	  \r\n			<div id="t-0" class="content-section">\r\n			<div class="work-heading">\r\n						<h3>Smarter Lawn Mowing Service by <span>Terra</span></h3>	\r\n						<hr>\r\n						<h5>On Demand services that fit your property needs.</h5>	\r\n					</div>\r\n				<div class="outer-container holiday-lights-wrap">\r\n					<div class="container">\r\n                    \r\n                    <h2 class="heading-title t-account"> Lawn Mowing Service Includes mowing,</h2>\r\n                    <h2 class="heading-title t-account"> edging &amp; blower cleanup </h2>\r\n                    <div class="width-full">\r\n							<div class="w-50-v1 yards_block">\r\n                            <h2 class="yard-heading">Small Yard </h2>\r\n                            	<hr>\r\n                            <h6 class="yard-subheading">1500 sq/ft - 2200 sq/ft</h6>\r\n                            \r\n                            <div class="thumbnail">\r\n                            	<img title="Small Yard" alt="Small Yard" src="/terraappnew/img/images/small-lawn.png">\r\n							</div>\r\n                            \r\n                            <ul>\r\n                              <li>Front Yard Only - $25</li>\r\n							  <li>Front/Back Mowing - $35</li>\r\n                              <li>Overgrown Grass, Higher than 8" - $20</li>\r\n                            </ul>\r\n                            \r\n                            </div>\r\n                            <!-- End of Block 1 -->\r\n                            \r\n							<div class="w-50-v1 yards_block">\r\n                            <h2 class="yard-heading">Medium Yard </h2>\r\n                            	<hr>\r\n                            <h6 class="yard-subheading">2200 sq/ft - 2900 sq/ft </h6>\r\n                            \r\n                            <div class="thumbnail">\r\n                            	<img title="Medium Yard" alt="Medium Yard" src="/terraappnew/img/images/medium-lawn.png">\r\n                            </div>\r\n                                \r\n                            <ul>\r\n                              <li>Front Yard Only - $35</li>\r\n							  <li>Front/Back Mowing - $45</li>\r\n                              <li>Overgrown Grass, Higher than 8" - $25</li>\r\n                            </ul>\r\n                            </div>\r\n                            <!-- End of Block 2 -->\r\n							\r\n                            <div class="w-50-v1 yards_block">\r\n                            <h2 class="yard-heading">Large Yard </h2>\r\n                            	<hr>\r\n                            <h6 class="yard-subheading">2900 sq/ft - 4000 sq/ft </h6>\r\n                            \r\n                            <div class="thumbnail">\r\n                            	<img title="Large Yard" alt="Large Yard" src="/terraappnew/img/images/large-lawn.png">\r\n							</div>\r\n                            \r\n                            <ul>\r\n                              <li>Front Yard Only - $45</li>\r\n							  <li>Front/Back Mowing - $55</li>\r\n                              <li>Overgrown Grass, Higher than 8" - $30</li>\r\n                            </ul>\r\n                            </div>\r\n                            <!-- End of Block 3 -->\r\n							\r\n                            <div class="w-50-v1 yards_block">\r\n                            <h2 class="yard-heading">Extra Large </h2>\r\n                            	<hr>\r\n                            <h6 class="yard-subheading">4000 sq/ft - 5500 sq/ft </h6>\r\n\r\n                            <div class="thumbnail">\r\n                            	<img title="Extra Large Yard" alt="Extra Large Yard" src="/terraappnew/img/images/extra-large-lawn.png">\r\n							</div>\r\n                            \r\n                            <ul>\r\n                              <li>Front Yard Only - $75</li>\r\n							  <li>Overgrown Grass, Higher than 8" - $35</li>\r\n                            </ul>\r\n                            </div>\r\n                            <!-- End of Block 4 -->\r\n                            \r\n					</div>\r\n                    <p class="italic-text">Got a custom holiday light request, get your price <a href="#">here</a></p>\r\n\r\n                    <div class="clear"></div>                    \r\n					<div class="p-t-73 t-account">\r\n						<h1 class="upper">Why get anything less. <br>\r\n						Use the proven <span>Terra</span> App system <br>\r\n						for smart &amp; reliable lawn service on demand.</h1>\r\n						</div>\r\n					<div class="clear"></div>\r\n                    <ul class="holiday-lights-ul">\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/service-now.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/aap-store-page.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/google-play-page.png"> </a> </li>\r\n						</ul>\r\n					<div class="clear"></div>\r\n                    \r\n					</div>\r\n				</div>\r\n                \r\n				<div class="clear"></div>\r\n			</div>\r\n		</div>', 'SEO Title for lawn moving', 'SEO Title for lawn content<br>', '0', '2015-11-20 21:02:27', '2015-11-20 21:23:45', '1'),
(21, 'Junk Hauling', 'junk-hauling', '<div class="container-layout">\r\n	  \r\n			<div id="t-0" class="content-section">\r\n			<div class="work-heading">\r\n						<h3>Junk Hauling Service by <span>Terra</span></h3>	\r\n						<hr>\r\n						<h5>On Demand services with smarter, more transparent options.</h5>	\r\n					</div>\r\n				<div class="outer-container junk-wrap">\r\n					<div class="container">\r\n                    \r\n                    <h2 class="heading-title t-account"> FLEXING YOUR MUSCLES HAS NEVER BEEN EASIER. </h2>\r\n                    <div class="width-full">\r\n							<div class="w-50-v1 junk_block">\r\n                            <h2 class="yard-heading">Small Junk </h2>\r\n                            \r\n                            <div class="thumbnail">\r\n                            	<img title="Small Yard" alt="Small Yard" src="/terraappnew/img/images/small-junk.png">\r\n							</div>\r\n                            \r\n                            <ul>\r\n                              <li>Junk Hauling up to 60 lbs - $75</li>\r\n							  <li>Examples include: old boxes, left over trash from move in.</li>\r\n                            </ul>\r\n                            \r\n                            </div>\r\n                            <!-- End of Block 1 -->\r\n                            \r\n							<div class="w-50-v1 junk_block">\r\n                            <h2 class="yard-heading">Medium Junk </h2>\r\n                            \r\n                            <div class="thumbnail">\r\n                            	<img title="Medium Yard" alt="Medium Yard" src="/terraappnew/img/images/medium-junk.png">\r\n                            </div>\r\n                                \r\n                            <ul>\r\n                              <li>Junk Hauling up to 100 lbs- $115</li>\r\n							  <li>Examples include: large appliances, old tv''s, exercise equipment.</li>\r\n                            </ul>\r\n                            </div>\r\n                            <!-- End of Block 2 -->\r\n							\r\n                            <div class="w-50-v1 junk_block">\r\n                            <h2 class="yard-heading">Large Junk </h2>\r\n                            \r\n                            <div class="thumbnail">\r\n                            	<img title="Large Yard" alt="Large Yard" src="/terraappnew/img/images/large-junk.png">\r\n							</div>\r\n                            \r\n                            <ul>\r\n                              <li>Junk Hauling up to 200 lbs - $175</li>\r\n							  <li>Examples Include: garage clean out, old furniture sets.</li>\r\n                            </ul>\r\n                            </div>\r\n                            <!-- End of Block 3 -->\r\n							\r\n                            <div class="w-50-v1 junk_block">\r\n                            <h2 class="yard-heading">XLarge Junk </h2>\r\n\r\n                            <div class="thumbnail">\r\n                            	<img title="Extra Large Yard" alt="Extra Large Yard" src="/terraappnew/img/images/xlarge-junk.png">\r\n							</div>\r\n                            \r\n                            <ul>\r\n                              <li>Junk Hauling up to 250 lbs - $235</li>\r\n							  <li>Whoa momma, that''s a whole lotta junk!</li>\r\n                            </ul>\r\n                            </div>\r\n                            <!-- End of Block 4 -->\r\n					</div>\r\n                    <!-- End of dotted box -->\r\n                    <p class="italic-text-small right-txt"> * Junk hauling service does not include any hazardous material or liquids. </p>\r\n                    <p class="italic-text">Got a custom junk hauling request, get your price <a href="#">here</a></p>\r\n                    \r\n                    <div class="clear"></div>                    \r\n 						<div class="p-t-73 t-account">\r\n						<h1 class="upper">Why get anything less. <br>\r\n						Use the proven <span>Terra</span> App system <br>\r\n						for smart &amp; reliable lawn service on demand.</h1>\r\n						</div>\r\n                    <div class="clear"></div>\r\n                        <ul class="holiday-lights-ul">\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/service-now.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/aap-store-page.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/google-play-page.png"> </a> </li>\r\n						</ul>\r\n 					<div class="clear"></div>\r\n                    \r\n					</div>\r\n				</div>\r\n                \r\n				<div class="clear"></div>\r\n\r\n			</div>\r\n		</div>', 'SEO Title for Junk Hauling', 'SEO content for Junk Hauling<br>', '0', '2015-11-20 21:25:55', '0000-00-00 00:00:00', '1');
INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `seo_title`, `seo_content`, `headlayout`, `created`, `updated`, `status`) VALUES
(22, 'Tree Trimming', 'tree-trimming', '<div class="container-layout">\r\n	  \r\n			<div id="t-0" class="content-section">\r\n			<div class="work-heading">\r\n						<h3>Tree Trimming Solutions by <span>Terra</span></h3>	\r\n						<hr>\r\n						<h5>On Demand services that fit your property needs.</h5>	\r\n					</div>\r\n				<div class="outer-container holiday-lights-wrap">\r\n					<div class="container">\r\n                    \r\n                    <h2 class="heading-title t-account">THE DETAILS THAT MAKE YOUR PROPERTY</h2>\r\n                    <h2 class="heading-title t-account">BEAUTIFUL START WITH YOUR FRONT HEDGES.</h2>\r\n                    <div class="width-full">\r\n							<div class="w-50-v1 yards_block">\r\n                            <h2 class="yard-heading">Small Yard </h2>\r\n                            	<hr>\r\n                            <h6 class="yard-subheading">1500 sq/ft - 2200 sq/ft</h6>\r\n                            \r\n                            <div class="thumbnail">\r\n                            	<img title="Small Yard" alt="Small Yard" src="/terraappnew/img/images/small-tree-trim.png">\r\n							</div>\r\n                            \r\n                            <ul>\r\n                              <li>Front Hedges/Bushes - $45</li>\r\n							  <li>Flower bed clearing - $55</li>\r\n                              <li>ree Trimming (1 tree, up to 12 ft) - $75</li>\r\n                            </ul>\r\n                            \r\n                            </div>\r\n                            <!-- End of Block 1 -->\r\n                            \r\n							<div class="w-50-v1 yards_block">\r\n                            <h2 class="yard-heading">Medium Yard </h2>\r\n                            	<hr>\r\n                            <h6 class="yard-subheading">2200 sq/ft - 2900 sq/ft </h6>\r\n                            \r\n                            <div class="thumbnail">\r\n                            	<img title="Medium Yard" alt="Medium Yard" src="/terraappnew/img/images/medium-tree-trim.png">\r\n                            </div>\r\n                                \r\n                            <ul>\r\n                              <li>Front Hedges/Bushes - $65</li>\r\n							  <li>Flower bed clearing - $75</li>\r\n                              <li>ree Trimming (2 tree, up to 12 ft) - $125</li>\r\n                            </ul>\r\n                            </div>\r\n                            <!-- End of Block 2 -->\r\n							\r\n                            <div class="w-50-v1 yards_block">\r\n                            <h2 class="yard-heading">Large Yard </h2>\r\n                            	<hr>\r\n                            <h6 class="yard-subheading">2900 sq/ft - 4000 sq/ft </h6>\r\n                            \r\n                            <div class="thumbnail">\r\n                            	<img title="Large Yard" alt="Large Yard" src="/terraappnew/img/images/large-tree-trim.png">\r\n							</div>\r\n                            \r\n                            <ul>\r\n                              <li>Front Hedges/Bushes - $85</li>\r\n							  <li>Flower bed clearing - $95</li>\r\n                              <li>ree Trimming (3 tree, up to 12 ft) - $175</li>\r\n                            </ul>\r\n                            </div>\r\n                            <!-- End of Block 3 -->\r\n							\r\n                            <div class="w-50-v1 yards_block">\r\n                            <h2 class="yard-heading">Extra Large </h2>\r\n                            	<hr>\r\n                            <h6 class="yard-subheading">4000 sq/ft - 5500 sq/ft </h6>\r\n\r\n                            <div class="thumbnail">\r\n                            	<img title="Extra Large Yard" alt="Extra Large Yard" src="/terraappnew/img/images/extra-large-tree-trim.png">\r\n							</div>\r\n                            \r\n                            <ul>\r\n                              <li>Front Hedges/Bushes - $105</li>\r\n							  <li>Flower bed clearing - $115</li>\r\n                              <li>ree Trimming (1 tree, up to 12 ft) - $225</li>\r\n                            </ul>\r\n                            </div>\r\n                            <!-- End of Block 4 -->\r\n                            \r\n					</div>\r\n                    <p class="italic-text-small right-txt">* Tree services does not include haul off.</p>\r\n                    <p class="italic-text">Got a custom holiday light request, get your price <a href="#">here</a></p>\r\n\r\n                    <div class="clear"></div>                    \r\n					<div class="p-t-73 t-account">\r\n						<h1 class="upper">Why get anything less. <br>\r\n						Use the proven <span>Terra</span> App system <br>\r\n						for smart &amp; reliable lawn service on demand.</h1>\r\n						</div>\r\n					<div class="clear"></div>\r\n                    <ul class="holiday-lights-ul">\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/service-now.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/aap-store-page.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/google-play-page.png"> </a> </li>\r\n						</ul>\r\n					<div class="clear"></div>\r\n                    \r\n					</div>\r\n				</div>\r\n                \r\n				<div class="clear"></div>\r\n			</div>\r\n		</div>', 'SEO Title for Tree Trimming', 'SEO Content for Tree Trimming<br>', '0', '2015-11-20 21:28:52', '0000-00-00 00:00:00', '1'),
(23, 'Handyman Services', 'handyman-services', '<div id="t-0" class="content-layout">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					<div class="work-heading tr-heading">\r\n						  <h3>Handyman Services and Odd Jobs Completed by <span>Terra</span></h3>\r\n						  <h5>Smart, on demand solutions for your residential/commercial property.</h5>\r\n					</div>\r\n				 </div>\r\n					\r\n						\r\n				<div class="page-content">\r\n				 <h2 class="page-subHeader"><img alt="Handyman service" src="/terraappnew/img/images/handyman-service.png"></h2>\r\n					<div class="handyman-service">\r\n					<h3>Give us Your Oddest Jobs, we''re ready - $35/HR</h3>\r\n						 <div class="table-block height-full">\r\n							<p>General Handyman work includes</p>\r\n						 </div> <!-- block ends -->\r\n						 \r\n						 \r\n						 <div class="table-block">\r\n							<p><a href="#"><img alt="Services" src="/terraappnew/img/images/fence-staining.png"></a>Fence Staining/Repair</p>\r\n						 </div> <!-- block ends -->\r\n						 \r\n						 \r\n						 <div class="table-block">\r\n							<p><a href="#"><img alt="Services" src="/terraappnew/img/images/small-paint.png"></a>Small Paint Jobs</p>\r\n						 </div> <!-- block ends -->\r\n						 \r\n						<div class="table-block">\r\n							<p><a href="#"><img alt="Services" src="/terraappnew/img/images/labor.png"></a>Special Project Labor</p>\r\n						 </div> <!-- block ends -->\r\n						 \r\n						 \r\n						 <div class="table-block">\r\n							<p><a href="#"><img alt="Services" src="/terraappnew/img/images/deck-finishing.png"></a>Deck Finishing</p>\r\n						 </div> <!-- block ends -->\r\n						 \r\n					</div>\r\n					\r\n\r\n					\r\n						<div class="text-note">\r\n							<p>* Handyman work is completed by vetted labor <br> professionals, not intended for skilled trades.</p>\r\n							\r\n						</div><!-- text-note ends -->\r\n					 </div>\r\n				\r\n	   </div> <!-- container ends -->\r\n	</div><div class="shadow-block handyman">\r\n		<p class="italic-text">Got a custom odd job, please. <a href="#">contact us</a></p>\r\n						<div class="p-t-73 t-account">\r\n						<h1 class="upper">Why get anything less. <br>\r\n						Use the proven <span>Terra</span> App system <br>\r\n						for smart &amp; reliable lawn service on demand.</h1>\r\n						</div>\r\n                        <div class="clear"></div>\r\n                        <ul class="holiday-lights-ul">\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/service-now.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/aap-store-page.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/google-play-page.png"> </a> </li>\r\n						</ul>                \r\n						<div class="clear"></div>\r\n	</div>', 'SEO Title for Handyman Services', 'SEO content for Handyman Services<br>', '0', '2015-11-20 21:32:14', '2015-11-20 21:33:46', '1'),
(24, 'Smart Appliances', 'smart-appliances', '<div id="t-0" class="content-layout">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					<div class="work-heading tr-heading">\r\n						  <h3>Smart Appliances Installed by <span>Terra</span></h3>\r\n						  <h5>Home Automation Services delivered on demand</h5>\r\n					</div>\r\n				 </div>\r\n					\r\n						\r\n				<div class="page-content">\r\n				 <h2 class="page-subHeader"><img alt="coming-city" src="/terraappnew/img/images/smart-appliences.png"></h2>\r\n					<div class="handyman-service coming-city">\r\n						<h3>Coming to your City Soon</h3>\r\n						 \r\n						 <div class="city-subscribe">\r\n							<p>Please <a href="/">subscribe</a> if you want to receive our news and updates.</p>\r\n						 </div> <!-- city subscribe ends -->\r\n				 \r\n					</div>\r\n				</div>\r\n				\r\n	   </div> <!-- container ends -->\r\n	</div>\r\n<div class="shadow-block handyman">\r\n		 \r\n						<div class="p-t-73 t-account">\r\n						<h1 class="upper">Why get anything less. <br>\r\n						Use the proven <span>Terra</span> App system <br>\r\n						for smart &amp; reliable lawn service on demand.</h1>\r\n						</div>\r\n                        \r\n                        <div class="clear"></div>\r\n                        \r\n                        <ul class="holiday-lights-ul">\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/service-now.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/aap-store-page.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/google-play-page.png"> </a> </li>\r\n						</ul>\r\n                                                \r\n						<div class="clear"></div>\r\n					 \r\n				 \r\n	\r\n	</div>', 'SEO Title for Smart Appliances', 'SEO content for Smart Appliances<br>', '0', '2015-11-20 21:36:50', '2015-11-24 19:10:53', '1'),
(25, 'Smart TV Installation', 'smart-tv-installation', '<div id="t-0" class="content-layout">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					<div class="work-heading tr-heading">\r\n						  <h3>Smart TV Installation by <span>Terra</span></h3>\r\n						  <h5>Home Automation Services delivered on demand</h5>\r\n					</div>\r\n				 </div>\r\n					\r\n						\r\n				<div class="page-content">\r\n				 <h2 class="page-subHeader"><img alt="coming-city" src="/terraappnew/img/images/smart-tv.png"></h2>\r\n					<div class="handyman-service coming-city">\r\n						<h3>Coming to your City Soon</h3>\r\n						 \r\n						 <div class="city-subscribe">\r\n							<p>Please <a href="/">subscribe</a> if you want to receive our news and updates.</p>\r\n						 </div> <!-- city subscribe ends -->\r\n				 \r\n					</div>\r\n				</div>\r\n				\r\n	   </div> <!-- container ends -->\r\n	</div>\r\n	<div class="shadow-block handyman">\r\n		 \r\n						<div class="p-t-73 t-account">\r\n						<h1 class="upper">Why get anything less. <br>\r\n						Use the proven <span>Terra</span> App system <br>\r\n						for smart &amp; reliable lawn service on demand.</h1>\r\n						</div>\r\n                        \r\n                        <div class="clear"></div>\r\n                        \r\n                        <ul class="holiday-lights-ul">\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/service-now.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/aap-store-page.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/google-play-page.png"> </a> </li>\r\n						</ul>\r\n                                                \r\n						<div class="clear"></div>\r\n					 \r\n				 \r\n	\r\n	</div>', 'SEO Title for Smart TV Installation', 'SEO cotent for Smart TV Installation<br>', '0', '2015-11-20 21:43:34', '0000-00-00 00:00:00', '1'),
(26, 'Lighting Fixture Installation', 'lighting-fixture-lnstallation', '<div id="t-0" class="content-layout">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					<div class="work-heading tr-heading">\r\n						  <h3>Lighting Fixture Installation Services by <span>Terra</span></h3>\r\n						  <h5>Home Automation Services delivered on demand</h5>\r\n					</div>\r\n				 </div>\r\n					\r\n						\r\n				<div class="page-content">\r\n				 <h2 class="page-subHeader"><img alt="coming-city" src="/terraappnew/img/images/coming-city.png"></h2>\r\n					<div class="handyman-service coming-city">\r\n						<h3>Coming to your City Soon</h3>\r\n						 \r\n						 <div class="city-subscribe">\r\n							<p>Please <a href="/">subscribe</a> if you want to receive our news and updates.</p>\r\n						 </div> <!-- city subscribe ends -->\r\n				 \r\n					</div>\r\n				</div>\r\n				\r\n	   </div> <!-- container ends -->\r\n	</div>\r\n	<div class="shadow-block handyman">\r\n		 \r\n						<div class="p-t-73 t-account">\r\n						<h1 class="upper">Why get anything less. <br>\r\n						Use the proven <span>Terra</span> App system <br>\r\n						for smart &amp; reliable lawn service on demand.</h1>\r\n						</div>\r\n                        \r\n                        <div class="clear"></div>\r\n                        \r\n                        <ul class="holiday-lights-ul">\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/service-now.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/aap-store-page.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/google-play-page.png"> </a> </li>\r\n						</ul>\r\n                                                \r\n						<div class="clear"></div>\r\n					 \r\n				 \r\n	\r\n	</div>', 'SEO Title for Lighting Fixture Installation', 'SEO content for Lighting Fixture Installation<br>', '0', '2015-11-20 21:49:19', '0000-00-00 00:00:00', '1'),
(27, 'Holiday Lights', 'holiday-lights', '<div class="container-layout">\r\n	  \r\n			<div id="t-0" class="content-section">\r\n			<div class="work-heading">\r\n						<h3>Holiday Lights, Installation &amp; Removal by <span>Terra</span></h3>	\r\n						<hr>\r\n						<h5>On Demand services with smarter, more cheerful options.</h5>	\r\n					</div>\r\n				<div class="outer-container holiday-lights-wrap">\r\n					<div class="container">\r\n                    \r\n                    <h2 class="heading-title t-account"> CHRISTMAS LIGHTS &amp; SEASONAL</h2>\r\n                    <h2 class="heading-title t-account"> HOLIDAY LIGHTING, B.Y.O.L. </h2>\r\n                    <div class="width-full">\r\n							<div class="w-50-v1 yards_block">\r\n                            <h2 class="yard-heading">Small Yard </h2>\r\n                            	<hr>\r\n                            <h6 class="yard-subheading">1500 sq/ft - 2200 sq/ft</h6>\r\n                            \r\n                            <div class="thumbnail">\r\n                            	<img title="Small Yard" alt="Small Yard" src="/terraappnew/img/images/small-yard_blue.png">\r\n							</div>\r\n                            \r\n                            <ul>\r\n                              <li>Holiday light install &amp; removal - $165</li>\r\n							  <li>Examples include: single string for window, apt. balcony, single tree lighting.</li>\r\n                            </ul>\r\n                            \r\n                            </div>\r\n                            <!-- End of Block 1 -->\r\n                            \r\n							<div class="w-50-v1 yards_block">\r\n                            <h2 class="yard-heading">Medium Yard </h2>\r\n                            	<hr>\r\n                            <h6 class="yard-subheading">2200 sq/ft - 2900 sq/ft </h6>\r\n                            \r\n                            <div class="thumbnail">\r\n                            	<img title="Medium Yard" alt="Medium Yard" src="/terraappnew/img/images/medium-yard_blue.png">\r\n                            </div>\r\n                                \r\n                            <ul>\r\n                              <li>Holiday light install &amp; removal- $215</li>\r\n							  <li>Examples include: 1 level single family homes.</li>\r\n                            </ul>\r\n                            </div>\r\n                            <!-- End of Block 2 -->\r\n							\r\n                            <div class="w-50-v1 yards_block">\r\n                            <h2 class="yard-heading">Large Yard </h2>\r\n                            	<hr>\r\n                            <h6 class="yard-subheading">2900 sq/ft - 4000 sq/ft </h6>\r\n                            \r\n                            <div class="thumbnail">\r\n                            	<img title="Large Yard" alt="Large Yard" src="/terraappnew/img/images/large-yard_blue.png">\r\n							</div>\r\n                            \r\n                            <ul>\r\n                              <li>Holiday light install &amp; removal - $265</li>\r\n							  <li>Examples Include: 1 level single family, tree lighting.</li>\r\n                            </ul>\r\n                            </div>\r\n                            <!-- End of Block 3 -->\r\n							\r\n                            <div class="w-50-v1 yards_block">\r\n                            <h2 class="yard-heading">Extra Large Yard </h2>\r\n                            	<hr>\r\n                            <h6 class="yard-subheading">4000 sq/ft - 5500 sq/ft </h6>\r\n\r\n                            <div class="thumbnail">\r\n                            	<img title="Extra Large Yard" alt="Extra Large Yard" src="/terraappnew/img/images/extra-large-yard_blue.png">\r\n							</div>\r\n                            \r\n                            <ul>\r\n                              <li>Holiday light install &amp; removal - $375</li>\r\n							  <li>Examples include: multi level property, multiple trees lighting.</li>\r\n                            </ul>\r\n                            </div>\r\n                            <!-- End of Block 4 -->\r\n                            \r\n					</div>\r\n                    <p class="italic-text">Got a custom holiday light request, get your price <a href="#">here</a></p>\r\n					</div>\r\n				</div>\r\n                \r\n				<div class="clear"></div>\r\n				<div class="outer-container holiday-lights">\r\n					<div class="container">\r\n					\r\n                    <div class="holiday-blue-wrap">\r\n                    	<ul>\r\n                        	<li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/holiday-light-icon3.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Holiday lighting service is intended as a bring your own light (B.Y.O.L.) solution.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/holiday-light-icon2.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Contractors doe not provide extension cords, only fasteners for security of lights.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/holiday-light-icon3.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										It is highly recommended to consult with us prior to your holiday light project.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/holiday-light-icon4.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Holiday light removal service is to be scheduled at time of installation.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    \r\n						<div class="p-t-73 t-account">\r\n						<h1 class="upper">Why get anything less. <br>\r\n						Use the proven <span>Terra</span> App system <br>\r\n						for smart &amp; reliable lawn service on demand.</h1>\r\n						</div>\r\n                        \r\n                        <div class="clear"></div>\r\n                        \r\n                        <ul class="holiday-lights-ul">\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/service-now.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/aap-store-page.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/google-play-page.png"> </a> </li>\r\n						</ul>\r\n                                                \r\n						<div class="clear"></div>\r\n						\r\n					</div>	\r\n				</div>				\r\n				<div class="clear"></div>\r\n			</div>\r\n		</div>', 'SEO Title for Holiday Lights', 'SEO Title for Holiday Lights<br>', '0', '2015-11-20 21:54:37', '2015-11-20 21:55:37', '1'),
(28, 'Firewood Delivery', 'firewood-delivery', '<div id="t-0" class="content-layout">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					<div class="work-heading tr-heading">\r\n						  <h3>Firewood Delivery by <span>Terra</span></h3>\r\n						  <h5>On Demand Services for your home &amp; business.</h5>\r\n					</div>\r\n				 </div>\r\n					\r\n						\r\n				<div class="page-content">\r\n				 <h2 class="page-subHeader">QUALITY EAST TEXAS WOOD <br>DELIVERED AT THE PUSH OF A BUTTON</h2>\r\n					<div class="stack-delivery">\r\n						<div class="stack-block">\r\n							<h1>SMALL STACK</h1>\r\n							<a href="#">\r\n								<img alt="Small Stack" src="/terraappnew/img/images/small-stack.png">\r\n							</a>\r\n							<ul>\r\n								<li>Wood Delivery - $55</li>\r\n								<li>About 9 cubic feet or 30 logs</li>\r\n							</ul>\r\n						</div> <!-- block ends -->\r\n						\r\n						<div class="stack-block">\r\n							<h1>MEDIUM STACK</h1>\r\n							<a href="#">\r\n								<img alt="Small Stack" src="/terraappnew/img/images/medium-stack.png">\r\n							</a>\r\n							<ul>\r\n								<li>Wood Delivery - $145</li>\r\n								<li>1/4 Cord of wood (4ft X 4ft)</li>\r\n							</ul>\r\n						</div> <!-- block ends -->\r\n						\r\n						<div class="stack-block">\r\n							<h1>LARGE STACK</h1>\r\n							<a href="#">\r\n								<img alt="Small Stack" src="/terraappnew/img/images/larg-stack.png">\r\n							</a>\r\n							<ul>\r\n								<li>Wood Delivery - $225</li>\r\n								<li>1/2 Cord of wood (4ft X 8ft)</li>\r\n							</ul>\r\n						</div> <!-- block ends -->\r\n						\r\n						<div class="stack-block">\r\n							<h1>EXTRA LARGE STACK</h1>\r\n							<a href="#">\r\n								<img alt="Small Stack" src="/terraappnew/img/images/xtra-larg-stack.png">\r\n							</a>\r\n							<ul>\r\n								<li>Wood Delivery - $355</li>\r\n								<li>1 Chord of Wood (4ft X 16ft)</li>\r\n							</ul>\r\n						</div> <!-- block ends -->\r\n			 \r\n			 \r\n				\r\n			 \r\n					</div>\r\n					\r\n						<div class="text-note">\r\n							<p>* Wood stacking at property for Small &amp; Medium wood is $35 additional</p>\r\n							<p>* Wood stacking at property for Large &amp; XLarge wood is $70 additional</p>\r\n						\r\n						</div><!-- text-note ends -->\r\n					 </div>\r\n				\r\n	   </div> <!-- container ends -->\r\n	</div>\r\n	<div class="shadow-block">\r\n		<p class="italic-text">Got a custom holiday light request, get your price <a href="#">here</a></p>\r\n	</div>\r\n	<div class="outer-container holiday-lights firewoods">\r\n					<div class="container">\r\n					\r\n                    <div class="holiday-blue-wrap">\r\n                    	<ul>\r\n                        	<li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/holiday-light-icon3.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Firewood delivery service is for designated areas. Please verify you are in delivery zone before submitting request.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/holiday-light-icon2.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Firewood deliveries are normally coordinated when property owner is available for receipt.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/holiday-light-icon3.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Firewood is East Texas dry wood, perfect for burning.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/holiday-light-icon4.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Wood service is a seasonal Terra service and not available all year long.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    \r\n						<div class="p-t-73 t-account">\r\n						<h1 class="upper">Why get anything less. <br>\r\n						Use the proven <span>Terra</span> App system <br>\r\n						for smart &amp; reliable lawn service on demand.</h1>\r\n						</div>\r\n                        \r\n                        <div class="clear"></div>\r\n                        \r\n                        <ul class="holiday-lights-ul">\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/service-now.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/aap-store-page.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/google-play-page.png"> </a> </li>\r\n						</ul>\r\n                                                \r\n						<div class="clear"></div>\r\n						\r\n					</div>	\r\n				</div>', 'SEO Title for  Firewood Delivery', 'SEO content for Firewood Delivery<br>', '0', '2015-11-20 21:58:37', '0000-00-00 00:00:00', '1'),
(29, 'Checkout', 'checkout', '<div class="content-layout">\r\n	  <div class="banner-section cities">\r\n		<div class="cities_mini">\r\n			<h2> YOU ARE JUST A FEW STEPS AWAY</h2>\r\n            <h2> FROM LAWN SERVICE BLISS </h2>\r\n            <div class="clear"></div>\r\n			\r\n		</div>\r\n	  \r\n	  </div>\r\n		<div class="content-section margin_0">\r\n		<div class="container">\r\n\r\n				<div class="page-content">\r\n                \r\n                <div class="checkout-full">\r\n                	<div class="checkout-left">\r\n                    \r\n                    <div class="checkout-block">\r\n                    <h2>Step 1:Who You Are</h2>\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> First Name * </label>\r\n                    <input class="full-inp" name="f_name" type="text">\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> Last Name * </label>\r\n                    <input class="full-inp" name="l_name" type="text">\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> Email * </label>\r\n                    <input class="full-inp" name="email" type="email">\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> Phone * </label>\r\n                    <input class="full-inp" name="phone" type="text">\r\n                    </div>\r\n                    <!-- End of Step - 1 -->\r\n                    \r\n                    <div class="checkout-block">\r\n                    <h2>Step 2:Your Address</h2>\r\n                    \r\n                    <label class="chckout-label"> Address * </label>\r\n                    <input class="full-inp" name="address" type="text">\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> City * </label>\r\n                    <input class="full-inp" name="city" type="text">\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> State * </label>\r\n                    <select class="half-inp">\r\n                    <option> Select </option>\r\n                    <option> State 1 </option>\r\n                    <option> State 2 </option>\r\n                    </select>\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> Zip Code * </label>\r\n                    <input class="half-inp" name="name" type="text">\r\n                    <div class="clear"></div>\r\n                    </div>\r\n                    <!-- End of Step - 2 -->\r\n                    \r\n                    <div class="checkout-block">\r\n                    <h2>Step 3:Choose Your Service</h2>\r\n                    \r\n                    <label class="chckout-label lable-pad1"> Service Needed * </label>\r\n                    <input class="full-inp" name="servie_needed" type="text">\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> &nbsp; </label>\r\n                    <select class="half-inp float-lft">\r\n                    <option> 1 Lawn Tribe Professional </option>\r\n                    <option> Select 1 </option>\r\n                    <option> Select 2 </option>\r\n                    </select>\r\n                    <select class="half-inp float-rght">\r\n                    <option> 1 Hour </option>\r\n                    <option> 2 Hours </option>\r\n                    <option> 3 Hours </option>\r\n                    </select>\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> Date &amp; Time </label>\r\n                    <input placeholder="Click to Choose Date" class="half-inp" name="date_time" type="text">\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> Gift Code </label>\r\n                    <input class="full-inp" name="name" type="text">\r\n                    <div class="clear"></div>\r\n                    \r\n                    </div>\r\n                    <!-- End of Step - 3 -->\r\n                    \r\n                    <div class="checkout-block">\r\n                    <h2>Step 4:Select Extras</h2>\r\n                    \r\n                    <div class="marg-10">\r\n                      <label class="chck-bx">\r\n                      <input id="CheckboxGroup1_0" value="checkbox" name="CheckboxGroup1" type="checkbox"> Hedge Trimming-$15\r\n                      </label>\r\n\r\n                      <label class="chck-bx">\r\n                      <input id="CheckboxGroup1_1" value="checkbox" name="CheckboxGroup1" type="checkbox"> Lawn Mulching-$25\r\n                      </label>\r\n\r\n                      <label class="chck-bx">\r\n                      <input id="CheckboxGroup1_2" value="checkbox" name="CheckboxGroup1" type="checkbox"> Lead/Grass Removal-$40\r\n                      </label>\r\n\r\n                      <label class="chck-bx">\r\n                      <input id="CheckboxGroup1_3" value="checkbox" name="CheckboxGroup1" type="checkbox"> Overgrown Lawns-$50\r\n					  </label>\r\n                      \r\n                      <label class="chck-bx">\r\n                      <input id="CheckboxGroup1_3" value="checkbox" name="CheckboxGroup1" type="checkbox"> Weed Removal/Treatment-$30\r\n					  </label>\r\n					</div>\r\n                    <div class="clear"></div>\r\n                                        \r\n                    <label class="chckout-label"> Notes </label>\r\n                    <textarea placeholder="How to get through your gate, notes on your dog, special requests, how awesome you think we are... you know, the usual stuff." class="full-inp"></textarea>\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> If it takes longer than estimated what would you like us to do ? * </label>\r\n                      <label class="chck-bx2">\r\n                        <input id="RadioGroup1_0" value="radio" name="RadioGroup1" type="radio">\r\n                        Just do the best job in the time selected </label>\r\n\r\n                      <label class="chck-bx2">\r\n                        <input id="RadioGroup1_1" value="radio" name="RadioGroup1" type="radio">\r\n                        I’d prefer it done properly, I understand if it costs more</label>\r\n\r\n                    </div>\r\n                    <!-- End of Step - 4 -->\r\n                    \r\n                    <div class="checkout-block">\r\n                    <h2>Step 5:Select Frequency and Payment</h2>\r\n                    <div class="payment-options"><img alt="Payment Options" src="/terraappnew/img/images/payment-options.png"></div>\r\n                    \r\n                    <label class="chckout-label"> Frequency * </label>\r\n                    <select class="full-inp">\r\n                    <option> One Time Service </option>\r\n                    <option> State 1 </option>\r\n                    <option> State 2 </option>\r\n                    </select>\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> Payment Method </label>\r\n                    <label class="chck-bx3"><input id="RadioGroup1_0" value="radio" name="RadioGroup1" type="radio">Credit Card </label>\r\n                    <div class="clear"></div>\r\n                    \r\n                    \r\n                    <label class="chckout-label"> Card Number </label>\r\n                    <input placeholder="XXXX-XXXX-XXXX-XXXX" class="half-inp2" name="card_number" type="text">\r\n                    <div class="card-lock"><a href="#"><img src="/terraappnew/img/images/card-lock.png"></a></div>\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> Card CVC </label>\r\n                    <input placeholder="XXX" class="half-inp" name="card_cvc" type="text">\r\n                    <div class="clear"></div>\r\n                    \r\n                    <label class="chckout-label"> State * </label>\r\n                    <select class="half-inp float-lft">\r\n                    <option> Select </option>\r\n                    <option> Select 1 </option>\r\n                    <option> Select 2 </option>\r\n                    </select>\r\n                    \r\n                    <select class="half-inp float-rght">\r\n                    <option> Select </option>\r\n                    <option> Select 1 </option>\r\n                    <option> Select 2 </option>\r\n                    </select>\r\n                    <div class="clear"></div>\r\n                    \r\n                    <p class="payment-info"> Don’t worry, you won’t be billed until the day of service and you will receive an email receipt instantly. We no longer accept cash or checks. </p>\r\n                    \r\n                    <button class="book-appointment" type="submit">Book Appointment</button>\r\n                    <div class="clear"></div>\r\n                    \r\n                    <div class="your-score"> Your Final Pice is: </div>\r\n                    <div class="your-result"> $50 </div>\r\n                    </div>\r\n                    <!-- End of Step - 5 -->\r\n                    \r\n                    </div>\r\n\r\n					<!-- End of Left Part --> \r\n\r\n                	<div class="checkout-right">\r\n                    <div class="checkout-full">\r\n\r\n						<div class="timer"><img src="/terraappnew/img/images/apply-online.png"></div>\r\n\r\n						<div class="servicess"><h3>Safety First</h3></div>\r\n						<p class="m-t-23">Your personal and property safety are essential.</p>\r\n                    </div>\r\n                    \r\n                    <div class="checkout-full">\r\n						<div class="timer"><img src="/terraappnew/img/images/apply-online.png"></div>\r\n						<div class="servicess"><h3>Easy Scheduling</h3></div>\r\n						<p class="m-t-23">Select the time and date that works best for you.</p>\r\n                    </div>\r\n                    \r\n                    <div class="checkout-full">\r\n						<div class="timer"><img src="/terraappnew/img/images/apply-online.png"></div>\r\n						<div class="servicess"><h3>Quality Assured</h3></div>\r\n						<p class="m-t-23">We''ll send status updates to confirm order details.</p>\r\n                    </div>\r\n                    \r\n                    <div class="checkout-full">\r\n						<div class="timer"><img src="/terraappnew/img/images/apply-online.png"></div>\r\n						<div class="servicess"><h3>Available Support</h3></div>\r\n						<p class="m-t-23">Email, Text or Openan online chat to answer any questions you have.</p>\r\n                    </div>\r\n                    \r\n                    <div class="checkout-full">\r\n						<div class="timer"><img src="/terraappnew/img/images/apply-online.png"></div>\r\n						<div class="servicess">\r\n						<h3>Secure Transaction</h3>\r\n						\r\n						</div>\r\n						<p class="m-t-23">\r\n							Terra provides secure &amp; encrypted online checkout.\r\n						</p>\r\n                    </div>\r\n                    </div>\r\n                    \r\n					<!-- End of Right Part -->\r\n                </div>\r\n				<p class="italic-text">* Seasonal &amp; Promotional services not offered in every city, please contact us for details</p>\r\n				\r\n                \r\n				</div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title for content', 'SEO content for content<br>', '0', '2015-11-21 15:39:59', '2015-11-21 15:40:51', '1'),
(31, 'Privacy Policy', 'terra-privacy-policy', '<div class="content-layout">	 \r\n		<div class="content-section about privacy">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1><span> Terra</span> Privacy Policy </h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n			\r\n				<div class="page-content">\r\n				<p>Thank you for choosing Terra. The Terra App privacy policy (the "Privacy Policy") describes how we collect, use, and disclose information through our website, mobile applications, and other services. Please read the following to learn what information we collect from you (the "User" or "End User") and how we use that information. By accessing and using Terra, you acknowledge that you have read and understand our privacy policy. If you have any questions about our privacy policy, please email support@terra-app.com.</p><br>\r\n				\r\n				\r\n				<h3>Information Collected</h3>\r\n				<p>Account Information: When you register your account, we collect your name, valid email address, and password of your choice. You must also provide a service address and other contact information, such as a phone number, in order to facilitate service delivery. In order to make a purchase, you will need to submit your credit card or other payment information so that our service providers can process your payment.</p>\r\n				\r\n				<p>Information We Collect From Your Use of the Service: We collect information from your use of the services such as:</p>\r\n				\r\n				<ul class="full-width">\r\n					<li>Transaction Information. When you use Terra to place orders, we collect information about when and where the orders occurred, a description of the orders, the payment, billing and service information, and information about the devices and payment methods used to complete the orders. </li>\r\n					<li>Location Information. When our application is open on your mobile device, we periodically receive information about the location of the device.</li>\r\n					<li>Device Information. We collect device-specific information when you access our Services, including your hardware model, operating system and version, unique device identifiers, mobile network information, and information about the device''s interaction with our Services. We may also identify other software running on the device (but will not collect any content from such software) for anti-fraud and malware-prevention purposes.</li>\r\n					\r\n					<li>Use Information. We collect information about how you use our Services, including your access times, browser information, and Internet Protocol ("IP") addresses.</li>\r\n					<li>Information Collected by Cookies and Web Beacons. We use various technologies to collect information, and this may include sending cookies to your computer or mobile device. Cookies are small data files that are stored on your hard drive or in device memory by a website. Among other things, cookies support the integrity of our registration process, retain your preferences and account settings, and help evaluate and compile aggregated statistics about user activity. We may also collect information using web beacons. Web beacons are electronic images that may be used in our Services or emails. We may use web beacons to deliver cookies, count visits, understand usage and campaign effectiveness, and determine whether an email has been opened and acted upon.</li>\r\n				</ul>\r\n				<p>Other Information You Provide: We also collect voluntarily provided information, which may include reviews, lawn service delivery instructions, subscriptions, referrals or any other actions performed on the services.</p>\r\n				<br>\r\n				<h3>Third Party Data Tracking</h3>\r\n				<p>We may allow third parties to serve advertisements in connection with our Services and to provide analytics services. These third parties may use cookies, web beacons, and other technologies to collect information, such as your IP addresses, identifiers associated with your mobile device or applications on the device, the browsers you use to visit our Services, pages viewed, time spent on pages, links clicked, and conversion information. This information may be used by Terra and other companies to analyze and track data, determine the popularity of certain content, deliver advertising and content targeted to your interests, and better understand your usage. This policy does not apply to, and we are not responsible for, third-party cookies, web beacons, or other tracking technologies, and we encourage you to check the privacy policies of these third parties to learn more about their privacy practices. For more information about targeted advertising specifically, or to opt out of having your browser information used for these purposes, please contact www.aboutads.info/choices\r\n				</p><br>\r\n				\r\n				<h3>Use of Information</h3>\r\n				<p>We primarily use the information we collect to enable End Users to find and order property management service; to facilitate the delivery of lawn service; and to provide, maintain, and improve our company products.</p>\r\n				\r\n				<p>We may use information we collect to send you news and information about our local lawn services and to communicate with you about products, services, contests, promotions, incentives, and rewards offered by us and select partners. See your account settings for email and message preferences.</p>\r\n				\r\n				<p>We may also use information about you to track and analyze trends and usage in connection with our Services; to process and deliver contest and promotion entries and rewards; to protect our rights or property; to verify your identity; to investigate and prevent fraud or other illegal activities; and for any other purpose disclosed to you in connection with our Services.</p>\r\n				\r\n				<p>We may, or we may use third-party service providers to, process and store personal information in the United States and other countries</p>\r\n				\r\n				<br>\r\n				\r\n				<h3>Sharing of Information</h3>\r\n				<p>We share your information with third-parties and service providers to facilitate improved product offerings and delivery and to improve communication between our users and merchants. This may include sending email or text messages, tracking data, processing payments (including credit card payments, reward points), and providing customer service. We require that our third parties commit to not using such information except as necessary to provide their product or services.</p>\r\n				\r\n				<p>We do not release, sell, or expose any your personal information to third parties for marketing purposes unless otherwise stated in this Privacy Policy. However, we may disclose or share information in order to with our Partners, Affiliates, and Advertisers to better improve the Terra App product and user experience.</p>\r\n				\r\n				<p>All data and statistical information collected by Terra will be used and analyzed internally to improve our product.</p>\r\n				<br>\r\n				\r\n				\r\n				<h3>Changes to the Privacy Policy</h3>\r\n				<p>If the privacy policy changes, it will affect this privacy statement, the home page, and other places we believe that you are aware of what information we collect, use, and disclose. We may notify you through email as well.</p>\r\n				<br>\r\n				\r\n				<h3>Changes to the Privacy Policy</h3>\r\n				<p>If the privacy policy changes, it will affect this privacy statement, the home page, and other places we believe that you are aware of what information we collect, use, and disclose. We may notify you through email as well.</p>\r\n				<br>\r\n				\r\n				<h3>Security</h3>\r\n				<p>Your personal information is extremely important to us. Your information resides on a secure server that only selected personnel have access to. Credit card information is encrypted. Promotional and referral codes are random alphanumeric sequences that are encrypted. In addition to our precautions, it is important that you do not share your password with anyone. Although we try our best to protect your information, we cannot completely eliminate security risks associated with Personal Information.</p>\r\n				<br>\r\n				<p style="text-align:right;font-style:italic;">Last updated on 31 January 2015</p><p>\r\n				\r\n				\r\n			\r\n				</p></div>\r\n			\r\n			\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'Privacy Policy', '<br>', '0', '2015-11-21 18:57:35', '2015-11-24 19:13:02', '1');
INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `seo_title`, `seo_content`, `headlayout`, `created`, `updated`, `status`) VALUES
(32, 'Term & Conditions', 'terms-of-service', '<div class="content-layout">\r\n		<div class="content-section about privacy">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					  <h1>Your Acceptance of Terms of Service</h1>\r\n					  <hr>\r\n					  <div class="clear"></div>\r\n				</div>\r\n			\r\n				<div class="page-content">\r\n				<div class="small-container">\r\n				<p>The following terms of service (the “TOS”) form a binding agreement between you and Terra, a wholly-owned subsidiary of Terra App Technologies, Inc. (together with our affiliates, collectively referred to herein as “Terra”, “us”, or “we”) that governs your use of our services facilitated through our website located at <a style="color:#52c4ff;display:inline;" href="www.terra-app.com">www.terra-app.com</a> (our “Website”), mobile apps, and other online areas owned or operated by us (“Services”). The term “you” refers to the person accessing or using the Services, or the entity or organization on whose behalf such person accesses our Services. You should print or otherwise save a copy of these TOS for your records.</p><br>				\r\n				\r\n				<h3>PLEASE READ THESE TOS CAREFULLY BEFORE USING ANY OF OUR LOGISTICS SERVICES. </h3>\r\n				<p>By using the Services, you are agreeing to these TOS, as well as our Privacy Policy and additional guidelines, policies or rules applicable to specific services and/or features that are a part of, or may be from time to time made a part of, our Services, such as subscription-based services, contests or sweepstakes (collectively, the “Guidelines”). Subject to applicable law, the Guidelines are a part of these TOS and are expressly incorporated herein by this reference; provided that in the event of a conflict between any specific Guideline and these TOS, the terms of any such Guideline shall prevail over these TOS. If you do not agree to any of these TOS, you must cease use of our Services.</p>\r\n				\r\n				<p>You acknowledge that these TOS are supported by reasonable and valuable consideration, the receipt and adequacy of which are hereby acknowledged. Without limiting the generality of the foregoing, you acknowledge that such consideration includes your use of the Services and receipt of data, materials and information available at or through the Services, the possibility of our use or display of your Solicited Submissions (as defined below) and the possibility of the publicity and promotion from our use or display of your Solicited Submissions.</p>\r\n				\r\n				<p>We may update or change these TOS from time to time and recommend that you review these TOS on a regular basis. If we make a change to these TOS, the revised version of these TOS will be posted on our Website. You understand and agree that your continued use of our Services after these TOS have changed constitutes your acceptance of these TOS as revised. Without limiting the foregoing, if we make a change to these TOS that materially impacts your use of our Services, we may post notice of any such change on our Website and/or email you notice of any such change to the email address submitted in connection with your account.</p>\r\n				\r\n				<h3>MEMBER ACCOUNT</h3>\r\n				<p>When you accept these TOS and complete our sign up process, you become the Terra “Member Account” holder.</p>\r\n				<p>In order to create your Member Account you will be required to select a password. Please choose a strong password and do not reveal your password to others. You agree that you are responsible for keeping your password confidential and secure, and further understand that you are solely responsible and liable for any activities that occur under your Member Account. If you suspect or become aware of any unauthorized use of your Member Account please contact us. You further acknowledge and agree that our Services are designed and intended for personal use on an individual basis and you should not share your Member Account and/or password details with another person.</p>\r\n				\r\n				<h3>SIGN UP OBLIGATIONS</h3>\r\n				<p>Terra provides advertising and marketing services on behalf of lawn service businesses and procures ordering and lawn delivery services on your behalf. The Services constitute a technology platform that enables users of Terra’s mobile applications or websites provided as part of the Services (each, an “Application”) to arrange and schedule property management service and/or logistics services with third party providers of such services, including independent third party lawn service providers and third party logistics providers under agreement with Terra or certain of Terra’s subsidiaries (“Third Party Providers”). Unless otherwise agreed by Terra in a separate written agreement with you, the Services are made available solely for your personal, noncommercial use.</p>\r\n				\r\n				\r\n				<p>TERRA DOES NOT GUARANTEE THE SUITABILITY, SAFETY OR ABILITY OF THIRD PARTY PROVIDERS. IT IS SOLELY YOUR RESPONSIBILITY TO DETERMINE IF A THIRD PARTY PROVIDER WILL MEET YOUR NEEDS AND EXPECTATIONS. TERRA WILL NOT PARTICIPATE IN DISPUTES BETWEEN YOU AND A THIRD PARTY PROVIDER. BY USING THE SERVICES, YOU ACKNOWLEDGE THAT YOU MAY BE EXPOSED TO SITUATIONS INVOLVING THIRD PARTY PROVIDERS THAT ARE POTENTIALLY UNSAFE, OFFENSIVE, HARMFUL TO MINORS, OR OTHERWISE OBJECTIONABLE, AND THAT USE OF THIRD PARTY PROVIDERS ARRANGED OR SCHEDULED USING THE SERVICES IS AT YOUR OWN RISK AND JUDGMENT. TERRA SHALL NOT HAVE ANY LIABILITY ARISING FROM OR IN ANY WAY RELATED TO YOUR TRANSACTIONS OR RELATIONSHIP WITH THIRD PARTY PROVIDERS.</p>\r\n				<p>You are solely responsible for verifying the accuracy of service delivery addresses, and Terra shall have no liability or responsibility for any such erroneous addresses.</p>\r\n				\r\n				<h3>LEGAL AUTHORITY</h3>\r\n				<p>To use and/or register for our Services you must be: (a) of legal age to form a binding contract with us, and (b) cannot be a person barred from receiving our Services under the laws of the United States or other applicable jurisdiction, including the country in which you reside or from where you use our Services.</p>\r\n				\r\n				<h3>SUBMISSIONS AND CONTENT</h3>\r\n				<p>In these TOS, we use the word “Submissions” to mean text, messages, ideas, concepts, pitches, suggestions, treatments, formats, artwork, photographs, drawings, videos, audiovisual works,, characterizations, your and/or other persons’ names, likenesses, voices, usernames, profiles, actions, appearances, performances and/or other biographical information or material, and/or other similar materials that you submit, post, upload, embed, display, communicate or otherwise distribute (collectively, “Distribute”) on or through the Services.</p>\r\n				\r\n				<p>There are two types of Submissions: Solicited Submissions and Unsolicited Submissions. “Solicited Submissions” means those Submissions (a) that we expressly request or enable you to provide to us via any feature or activity on the Services for our review or display and possible specifically-defined consideration or compensation (collectively, “Consideration”) (such as prizes or other value in games, sweepstakes, contests and promotions); and (b) that you Distribute on or through the Services for which you do not seek Consideration (such as in our Public Forums (as defined below). “Unsolicited Submissions” are any and all Submissions that do not fall within subparagraphs (a) or (b) of this paragraph.</p>\r\n				\r\n				<p>\r\n				Our company policy does not allow us to accept or consider Unsolicited Submissions so please do not Distribute Unsolicited Submissions on or through the Services. We want to avoid the possibility of future misunderstandings when projects developed by us or under our direction might seem to others to be similar to their own creative work. We therefore ask that you not Distribute any Unsolicited Submission. In any event, you agree that any Submissions you make is not being made in confidence or trust and that no confidential or fiduciary relationship is intended or created between you and us in any way, and that you have no expectation of any review, compensation or consideration of any type (other than any stated Consideration).\r\n				</p>\r\n				\r\n				<p>Except as expressly stated in these terms of use, the provisions of these TOS apply equally to Unsolicited Submissions and Solicited Submissions. Accordingly, we, our licensees, distributors, agents, representatives and other authorized users shall be entitled to exploit and disclose all Submissions, and we shall not be liable to you or to any person claiming through you for any exploitation or disclosure of any Submission.</p>\r\n				\r\n				<p>You understand that by using the Service you may encounter Content that you may find offensive, indecent, or objectionable, and that you may expose others to Content that they may find objectionable. You acknowledge that Terra is not responsible or liable in any way for any Content provided by others and has no duty to pre-screen such Content. However, Terra reserves the right at all times (a) to determine whether Content is appropriate and in compliance with these TOS, and may pre-screen, move, refuse, modify and/or remove Content at any time, without prior notice and in its sole discretion, if such Content is found to be in violation of these TOS or is otherwise objectionable, and (b) identify any user to third parties, and/or disclose to third parties any Content or personally identifiable information, when we believe in good faith that such identification or disclosure will either (i) facilitate compliance with laws, including, for example, compliance with a court order or subpoena, or (ii) help to enforce these TOS and/or our contest, sweepstakes, promotions, and game rules, and/or protect the safety or security of any person, property, or the Services.</p>\r\n				\r\n				<p>You are responsible for backing up, to your own computer or other device, any important documents, images or other Content that you store or access via the Service. Terra does not guarantee or warrant that any Content you may store or access through the Service will not be subject to inadvertent damage, corruption or loss.</p>\r\n				\r\n				<h3>PUBLIC FORUMS AND COMMUNICATIONS</h3>\r\n				<p>“Public Forum” means an area, site or feature offered as part of any Services that offers the opportunity for users to Distribute Submissions for viewing by one or more Services’ users, including a chat area, message board or social community environment.</p>\r\n				\r\n				<p>YOU ACKNOWLEDGE THAT PUBLIC FORUMS AND FEATURES OFFERED THEREIN ARE FOR PUBLIC AND NOT PRIVATE COMMUNICATIONS, AND YOU HAVE NO EXPECTATION OF PRIVACY WITH REGARD TO ANY SUBMISSION TO A PUBLIC FORUM. We cannot guarantee the security of any information you disclose through any of these media; you make such disclosures at your own risk.</p>\r\n				\r\n				<p>Subject to applicable law, you are and shall remain solely responsible for the Submissions you Distribute on or through any Services under your username or otherwise by you in any Public Forum and for the consequences of submitting and posting same.</p>\r\n				\r\n				<p>Also, you should be skeptical about information provided by others, and you acknowledge that the use of any Submission posted in any Public Forum is at your own risk. For example, we are not responsible for, and we do not endorse, the opinions, advice or recommendations posted or sent by users in any Public Forum and we specifically disclaim any and all liability in connection therewith.</p>\r\n				\r\n				<p>We owe you no obligation, and therefore may refuse, to post, deliver, remove, modify or otherwise use or take any action with respect to Submissions you Distribute.</p>\r\n				\r\n				<p>We reserve the right to screen, refuse to post, remove, edit, store and/or review Submissions at any time and from time to time and for any or no reason including, without limitation, to ensure that the Submissions conforms to the Rules of Conduct, in our absolute and sole discretion without prior notice. If we elect to screen Submissions, there may be a delay in the posting of such content in a Public Forum to allow for a review process. If we have questions about your Submissions including, without limitation, the copyright, we may contact you for further information including, for example, to verify that you own the copyright or otherwise obtained permission to post the material.</p>\r\n				\r\n				<h3>ADDITIONAL OBLIGATIONS OR TERMS OF USE</h3>\r\n				<p>Particular components or features of our Service, provided by us and/or our licensors, may be subject to separate software or other license agreements or terms of use. You must read, accept, and agree to be bound by any such separate agreement as a condition of using these particular components or features of the Service.</p>\r\n				\r\n				<h3>NO CONVEYANCE</h3>\r\n				<p>Nothing in these TOS shall be construed to convey to you any interest, title, or license in a Member Account, email address, domain name, or similar resource used by you in connection with our Services.</p>\r\n				\r\n				<h3>NO RIGHT OF SURVIVORSHIP</h3>\r\n				<p>You agree that your Terra Member Account is non-transferable and that any rights to your Member AccountD or Content within your account terminate upon your death. Upon receipt of a copy of a death certificate your account may be terminated and all Content within your account deleted.</p>	\r\n				\r\n				<h3>NO RESALE OF SERVICE</h3>\r\n				<p>You agree that you will not reproduce, copy, duplicate, sell, resell, rent or trade the Service (or any part thereof) for any purpose.</p>\r\n				\r\n				<h3>USE OF LOCATION-BASED SERVICES</h3>\r\n				<p>Terra and its partners and licensors may provide certain features or services through the Service that rely upon device-based location information. To provide such features or services, where available, Terra and its partners and licensors may collect, use, transmit, process and maintain your location data, including the real-time geographic location of your device, and you hereby agree and consent to Terra’s and its partners’ and licensors’ collection, use, transmission, processing and maintenance of such location data to provide such services. In addition, by enabling and/or using any location-based services or features within the Service, you agree and consent to Terra App collecting, using, processing and maintaining information related to your account, and any devices registered thereunder, for purposes of providing such location-based service or feature to you. Such information may include, but is not limited to, your device ID and name, device type and real-time geographic location of your device at time of your request. You may withdraw this consent at any time by not using the location-based features on your device. When using third party services that use or provide location data as part of the Service, you are subject to and should review such third party’s terms and privacy policy on use of location data by such third party services. Any location data provided by the Service is not intended to be relied upon in situations where precise location information is needed or where erroneous, inaccurate, time-delayed or incomplete location data may lead to death, personal injury, property or environmental damage. Neither Terra nor any of its content providers guarantees the availability, accuracy, completeness, reliability, or timeliness of location data or any other data displayed by the Service.</p>	\r\n				\r\n				<h3>CREDIT CARD OR OTHER PAYMENT SERVICE AUTHORIZATION</h3>\r\n				<p>You may be asked to provide us with a credit card number from a card issuer or other payment information that we accept in order to activate and/or pay for any fees related to the Service. We may seek pre-authorization of your credit card or other payment information prior to a purchase to verify that the credit card or payment information is valid and/or has the necessary funds or credit available to cover your purchase. These pre-authorizations will reduce your available balance by the authorization amount until it is released or reconciled with the actual charge. Please contact your card issuer if you have additional questions regarding when an authorization amount will be removed from your statement.</p>\r\n				\r\n				<h3>TERMINATION BY YOU</h3>\r\n				<p>You may terminate your account and/or stop using the Service at any time. To terminate your account see your account settings. Any fees paid by you prior to your termination are nonrefundable (except as expressly permitted otherwise by these TOS). Termination of your account shall not relieve you of any obligation to pay any accrued fees or charges.</p>\r\n				\r\n				\r\n				<h3></h3>\r\n				<p></p>		\r\n				\r\n				<h3>TERMINATION BY US</h3>\r\n				<p>We may at any time, under any circumstances and without prior notice, immediately terminate or suspend all or a portion of your account and/or access to the Service. Cause for such termination shall include, but not be limited to: (a) violations of these TOS or any other policies or guidelines that are referenced herein and/or posted on the Services; (b) a request by you to cancel or terminate your account; (c) discontinuance or material modification to the Service or any part thereof; (d) a request and/or order from law enforcement, a judicial body, or other government agency; (e) provision of the Service to you becoming unlawful; (f) unexpected technical or security issues or problems; (g) your participation in fraudulent or illegal activities; or (h) failure to pay any fees owed by you in relation to the Service. Any such termination or suspension shall be made by us in our sole discretion, without any refund to you of any prepaid fees or amounts, and we will not be responsible to you or any third party for any damages that may result or arise out of such termination or suspension of your account and/or access to the Service.</p>\r\n				\r\n				<h3>EFFECTS OF TERMINATION</h3>\r\n				<p>Upon termination of your account you lose all access to the Service and any portions thereof, including, but not limited to, your Member Account. In addition, Terra may delete all information and data stored in or as a part of your account(s) including, but not limited to, data files, email, preferences and Submissions. Any individual components of the Service that you may have used subject to separate agreement will also be terminated in accordance with such separate license. Services completed shall be paid for before termination of your account. If there is any dispute with a service, you must provide reason for dispute. At no time will a refund be granted for services completed.</p>	\r\n				\r\n				<h3>LINKS</h3>\r\n				<p>Certain Content, components or features of the Service may include materials from third parties and/or hyperlinks to other websites, resources or Content. Because Terra may have no control over such third party sites and/or materials, you acknowledge and agree that Terra is not responsible for the availability of such sites or resources, and does not endorse or warrant the accuracy of any such sites or resources, and shall in no way be liable or responsible for any Content, advertising, products or materials on or available from such sites or resources. You further acknowledge and agree that Terra shall not be responsible or liable in any way for any damages you incur or allege to have incurred, either directly or indirectly, as a result of your use and/or reliance upon any such Content, advertising, products or materials on or available from such sites or resources.</p>\r\n				\r\n				<h3>DISCLAIMER OF WARRANTIES</h3>\r\n				<p>SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF CERTAIN WARRANTIES, AS SUCH, TO THE EXTENT SUCH EXCLUSIONS ARE SPECIFICALLY PROHIBITED BY APPLICABLE LAW, SOME OF THE EXCLUSIONS SET FORTH BELOW MAY NOT APPLY TO YOU.</p>\r\n				<p>YOU EXPRESSLY UNDERSTAND AND AGREE THAT YOUR USE OF THE SERVICE IS AT YOUR SOLE RISK AND THE SERVICES ARE PROVIDED ON AN “AS IS” AND “AS AVAILABLE” BASIS. TERRA AND ITS AFFILIATES, SUBSIDIARIES, OFFICERS, DIRECTORS, EMPLOYEES, AGENTS, PARTNERS AND LICENSORS EXPRESSLY DISCLAIM ALL WARRANTIES OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT. IN PARTICULAR, TERRA AND ITS AFFILIATES, SUBSIDIARIES, OFFICERS, DIRECTORS, EMPLOYEES, AGENTS, PARTNERS AND LICENSORS MAKE NO WARRANTY THAT (I) THE SERVICES WILL MEET YOUR REQUIREMENTS; (II) YOUR USE OF THE SERVICES WILL BE TIMELY, UNINTERRUPTED, SECURE OR ERROR-FREE; (III) ANY INFORMATION OBTAINED BY YOU AS A RESULT OF THE SERVICES WILL BE ACCURATE OR RELIABLE; AND (IV) ANY DEFECTS OR ERRORS IN THE VOUCHERS OR OTHER ITEMS PROVIDED TO YOU AS PART OF THE SERVICES WILL BE CORRECTED.</p>\r\n				<p>ANY MATERIAL DOWNLOADED OR OTHERWISE OBTAINED THROUGH THE USE OF THE SERVICES IS ACCESSED AT YOUR OWN DISCRETION AND RISK, AND YOU WILL BE SOLELY RESPONSIBLE FOR ANY DAMAGE TO YOUR DEVICE OR LOSS OF DATA THAT RESULTS FROM THE DOWNLOAD OF ANY SUCH MATERIAL. NO ADVICE OR INFORMATION, WHETHER ORAL OR WRITTEN, OBTAINED BY YOU FROM TERRA OR THROUGH OR FROM THE SERVICE SHALL CREATE ANY WARRANTY NOT EXPRESSLY STATED IN THESE TOS.</p>\r\n				\r\n				\r\n				<h3>LIMITATION OF LIABILITY</h3>\r\n				<p>SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR INCIDENTAL OR CONSEQUENTIAL DAMAGES, AS SUCH, TO THE EXTENT SUCH EXCLUSIONS OR LIMITATIONS ARE SPECIFICALLY PROHIBITED BY APPLICABLE LAW, SOME OF THE EXCLUSIONS OR LIMITATIONS SET FORTH BELOW MAY NOT APPLY TO YOU. YOU EXPRESSLY UNDERSTAND AND AGREE THAT TERRA AND ITS AFFILIATES, SUBSIDIARIES, OFFICERS, DIRECTORS, EMPLOYEES, AGENTS, PARTNERS AND LICENSORS SHALL NOT BE LIABLE TO YOU FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, CONSEQUENTIAL OR EXEMPLARY DAMAGES , INCLUDING, BUT NOT LIMITED TO, DAMAGES FOR LOSS OF PROFITS, GOODWILL, USE, DATA, COST OF PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES, OR OTHER INTANGIBLE LOSSES (EVEN IF TERRA HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES), RESULTING FROM: (I) THE USE OR INABILITY TO USE THE SERVICES; (II) ANY CHANGES MADE TO THE SERVICES OR ANY TEMPORARY OR PERMANENT CESSATION OF THE SERVICES OR ANY PART THEREOF; (III) THE UNAUTHORIZED ACCESS TO OR ALTERATION OF YOUR TRANSMISSIONS OR DATA; (IV) THE DELETION OF, CORRUPTION OF, OR FAILURE TO STORE AND/OR SEND OR RECEIVE YOUR TRANSMISSIONS OR DATA ON OR THROUGH THE SERVICES; (V) STATEMENTS OR CONDUCT OF ANY THIRD PARTY ON THE SERVICES; AND (VI) ANY OTHER MATTER RELATING TO THE SERVICES. IN NO EVENT WILL TERRA’S LIABILITY IN CONNECTION WITH ANY SERVICE, INCLUDING ANY VOUCHER, EXCEED THE AMOUNT PAID FOR ANY SUCH SERVICE BY YOU.</p>\r\n				\r\n				\r\n				<h3>INDEMNITY</h3>\r\n				<p>You agree to defend, indemnify and hold Terra, its affiliates, subsidiaries, directors, officers, employees, agents, partners and licensors harmless from any claim or demand, including reasonable attorneys’ fees, made by a third party, relating to or arising from: (a) any Submissions you Distribute through the Services; (b) your use of the Services; (c) any violation by you of these TOS; or (d) your violation of any rights of another. This obligation shall survive the termination or expiration of these TOS and/or your use of the Services. You acknowledge that you are responsible for all use of the Services using your account, and that these TOS apply to any and all usage of your Member Account. You agree to comply with these TOS and to defend, indemnify and hold harmless Terra from and against any and all claims and demands arising from usage of your Member Account, whether or not such usage is expressly authorized by you.</p>	\r\n				\r\n				<h3>NOTICES</h3>\r\n				<p>Terra may provide you with notices regarding the Service, including changes to these TOS, by email to your email address reflected on your account (and/or other alternate email address if provided), by regular mail, or by postings on our Website.</p>\r\n				\r\n				<h3>GOVERNING LAW</h3>\r\n				<p>Except to the extent expressly provided in the following paragraph, these TOS and the relationship between you and Terra shall be governed by the laws of the State of Texas, excluding its conflicts of law provisions.</p>\r\n				\r\n				<h3>GENERAL</h3>\r\n				<p>These TOS constitute the entire agreement between you and Terra, govern your use of the Services and completely replace any prior agreements between you and Terra in relation to the Services. You may also be subject to additional terms and conditions that may apply when you use affiliate services, third-party content, or third-party software. If any part of these TOS is held invalid or unenforceable, that portion shall be construed in a manner consistent with applicable law to reflect, as nearly as possible, the original intentions of the parties, and the remaining portions shall remain in full force and effect. The failure of Terra to exercise or enforce any right or provision of these TOS shall not constitute a waiver of such right or provision. You agree that, except as otherwise expressly provided in these TOS, there shall be no third-party beneficiaries to these TOS. You agree that any claim or cause of action arising out of or related to these TOS or the use of the Service must be filed within one (1) year after the cause of action arose or be forever barred.</p>\r\n				\r\n				\r\n				<p style="text-align:right;font-style:italic;">Last updated on 30 January 2015</p><p>\r\n				\r\n			\r\n				</p></div>				</div>						\r\n	   </div>\r\n		<div class="clear"></div>\r\n		</div>\r\n		</div>', 'SEO Title Terms & Conditions', 'content for Terms &amp; Conditions<br>', '0', '2015-11-21 19:05:21', '2015-11-24 19:13:14', '1'),
(33, 'Security camera installation', 'security-camera-install', ' <div class="content-layout" id="t-0">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					<div class="work-heading tr-heading">\r\n						  <h3>Security Camera Installation by <span>Terra</span></h3>\r\n						  <h5>On Demand Services that Secure Your Property</h5>\r\n					</div>\r\n				 </div>\r\n					\r\n						\r\n				<div class="page-content">\r\n				 <h2 class="page-subHeader"><img src="/terraappnew/img/images/smart-securty.png" alt="smart-securty"></h2>\r\n					<div class="handyman-service security-insta">\r\n					<h3>Smart Security Camera Installation Options - $75/HR</h3>\r\n						<div class="rel-block"> \r\n						 <div class="table-block height-full">\r\n							<p><span>Pricing Estimates</span></p>\r\n						 </div> <!-- block ends -->\r\n						 \r\n						 \r\n						 <div class="table-block">\r\n							<p><a href="#">Small Homes</a>1500 sq/ft - 2100 sq/ft</p>\r\n								<div class="cam-sys">\r\n									<p>2 Camera Systems </p><span>2 - 3 hours</span>\r\n								</div>\r\n						 </div> <!-- block ends -->\r\n						 \r\n						 \r\n						 <div class="table-block">\r\n							<p><a href="#">Medium Homes </a>2200 sq/ft - 2900 sq/ft</p>\r\n							<div class="cam-sys">\r\n									<p>2 Camera Systems </p><span>2 - 3 hours</span>\r\n								</div>\r\n						 </div> <!-- block ends -->\r\n						 \r\n						<div class="table-block">\r\n							<p><a href="#">Large Homes</a>2900 sq/ft - 4000 sq/ft</p>\r\n							<div class="cam-sys">\r\n									<p>2 Camera Systems </p><span>2 - 3 hours</span>\r\n								</div>\r\n						 </div> <!-- block ends -->\r\n						 \r\n						 \r\n						 <div class="table-block">\r\n							<p><a href="#">Extra Large Homes</a>4000 sq/ft - 5500 sq/ft</p>\r\n							<div class="cam-sys">\r\n									<p>2 Camera Systems </p><span>2 - 3 hours</span>\r\n								</div>\r\n						 </div> <!-- block ends -->\r\n						</div><!-- positioned case ends --> \r\n					</div>\r\n					\r\n\r\n					\r\n						<div class="text-note">\r\n							<p>* All Installation jobs are intended for exterior property.</p> <p> professionals, not intended for skilled trades.</p>\r\n							\r\n						</div><!-- text-note ends -->\r\n					 </div>\r\n				\r\n	   </div> <!-- container ends -->\r\n	</div>\r\n<div class="outer-container holiday-lights firewoods">\r\n					<div class="container">\r\n					\r\n                    <div class="holiday-blue-wrap">\r\n                    	<ul>\r\n                        	<li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/install-ico.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										All install jobs include custom wire hiding, no exposed wiring.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/date-check.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										DVR Set-Up and introduction to new system included.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/security-ico.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										A smarter, more transparent solution for your security install request.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/vetted-ico.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Vetted and certified installation professionals with residential/commercial experience.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    \r\n						<div class="p-t-73 t-account">\r\n						<h1 class="upper">Why get anything less. <br>\r\n						Use the proven <span>Terra</span> App system <br>\r\n						for smart &amp; reliable lawn service on demand.</h1>\r\n						</div>\r\n                        \r\n                        <div class="clear"></div>\r\n                        \r\n                        <ul class="holiday-lights-ul">\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/service-now.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/aap-store-page.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/google-play-page.png"> </a> </li>\r\n						</ul>\r\n                                                \r\n						<div class="clear"></div>\r\n						\r\n					</div>	\r\n				</div>	', 'Security camera installation', '<br>', '0', '2015-11-21 20:39:24', '2015-11-21 20:42:23', '1'),
(34, 'Power Washing', 'power-washing', '<div class="content-layout" id="t-0">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					<div class="work-heading tr-heading">\r\n						  <h3>Pressure Washing Service by <span>Terra</span></h3>\r\n						  <h5>On Demand Services for your home &amp; business.</h5>\r\n					</div>\r\n				 </div>\r\n					\r\n						\r\n				<div class="page-content">\r\n				 <h2 class="page-subHeader">Power wash cleaning for your deck, <br> patio or commercial grounds.</h2>\r\n					<div class="stack-delivery deck">\r\n						<div class="stack-block">\r\n							<h1>SMALL Deck <p>400 sq/ft - 800 sq/ft</p></h1>\r\n							<a href="#">\r\n								<img src="/terraappnew/img/images/small-deck.png" alt="Small Stack">\r\n							</a>\r\n							<ul>\r\n								<li>Pressure Washing Service- $145</li>\r\n								<li>Examples Include - Pool Decks, Wood Decks</li>\r\n							</ul>\r\n						</div> <!-- block ends -->\r\n						\r\n						<div class="stack-block">\r\n							<h1>MEDIUM Deck <p>900 sq/ft - 1400 sq/ft</p></h1>\r\n							<a href="#">\r\n								<img src="/terraappnew/img/images/mediam-deck.png" alt="Small Stack">\r\n							</a>\r\n							<ul>\r\n								<li>Pressure Washing Service - $325</li>\r\n								<li>Examples Include - Driveways, Restaurant Patios</li>\r\n							</ul>\r\n						</div> <!-- block ends -->\r\n						\r\n						<div class="stack-block">\r\n							<h1>LARGE Deck <p>1500 sq/ft - 2200 sq/ft</p></h1>\r\n							<a href="#">\r\n								<img src="/terraappnew/img/images/large-deck.png" alt="Small Stack">\r\n							</a>\r\n							<ul>\r\n								<li>Pressure Washing Service - $750</li>\r\n								<li>Examples Include - Store Front Lots, Houses </li>\r\n							</ul>\r\n						</div> <!-- block ends -->\r\n						\r\n						<div class="stack-block">\r\n							<h1>EXTRA LARGE Deck <p> &lt;2200 sq/ft </p></h1>\r\n							<a href="#">\r\n								<img src="/terraappnew/img/images/extralarge-deck.png" alt="Small Stack">\r\n							</a>\r\n							<ul>\r\n								<li>Pressure Washing Service - $75/HR</li>\r\n								<li>Examples Include - Downtown sidewalks,Parking garages</li>\r\n							</ul>\r\n						</div> <!-- block ends -->\r\n			 \r\n			 \r\n				\r\n			 \r\n					</div>\r\n					 \r\n					 </div>\r\n				\r\n	   </div> <!-- container ends -->\r\n	</div>\r\n	<div class="shadow-block">\r\n		<p class="italic-text">Got a custom pressure washing service request, get your price <a href="#">here</a></p>\r\n	</div>\r\n	\r\n	<div class="outer-container holiday-lights firewoods">\r\n					<div class="container">\r\n					\r\n                    <div class="holiday-blue-wrap">\r\n                    	<ul>\r\n                        	<li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/increased-value.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Increased value for residential and commercial properties.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/date-check.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Property preservation. Extended life of surface areas.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n							 \r\n							\r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/clean-house.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Beautification. Enhanced personal and client satisfaction.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/target.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Removal of unwatnted contaminates: dirt, mildew, salt &amp; mold.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    \r\n						<div class="p-t-73 t-account">\r\n						<h1 class="upper">Why get anything less. <br>\r\n						Use the proven <span>Terra</span> App system <br>\r\n						for smart &amp; reliable lawn service on demand.</h1>\r\n						</div>\r\n                        \r\n                        <div class="clear"></div>\r\n                        \r\n                        <ul class="holiday-lights-ul">\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/service-now.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/aap-store-page.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/google-play-page.png"> </a> </li>\r\n						</ul>\r\n                                                \r\n						<div class="clear"></div>\r\n						\r\n					</div>	\r\n				</div>', 'Power Washing', '<br>', '0', '2015-11-21 21:05:37', '2015-11-21 21:06:55', '1'),
(36, 'Terra Extra', 'terra-extra', '<div id="t-0" class="content-layout">\r\n		<div class="container">\r\n				<div class="page-header">\r\n					<div class="work-heading tr-heading">\r\n						  <h3>Property Service Extra''s by <span>Terra</span></h3>\r\n						  <h5>On demand solutions for your residential/commercial property.</h5>\r\n					</div>\r\n				 </div>\r\n					\r\n						\r\n				<div class="page-content">\r\n				 <h2 class="page-subHeader"><img alt="smart-securty" src="/terraappnew/img/images/terra-extra-icon.png"></h2>\r\n					<div class="handyman-service security-insta terra_extra">\r\n					<h3>PROPERTY SERVICE BUNDLES &amp; MORE!</h3>\r\n						<div class="rel-block"> \r\n						 <div class="table-block height-full">\r\n							<p><span>Terra Lawn Service Extra''s</span></p>\r\n						 </div> <!-- block ends -->\r\n						 \r\n						 \r\n						 <div class="table-block">\r\n							<p><a href="#">Small Homes</a>1500 sq/ft - 2100 sq/ft</p>\r\n								<div class="cam-sys">\r\n									<p>Move In Special - $95<br>\r\n										Lawn Mow &amp; Front Hedge Trim - $65<br>\r\n										Leaf Raking or Mulching - $35<br>\r\n										Lawn Aeration Service - $45</p>\r\n								</div>\r\n						 </div> <!-- block ends -->\r\n						 \r\n						 \r\n						 <div class="table-block">\r\n							<p><a href="#">Medium Homes </a>2200 sq/ft - 2900 sq/ft</p>\r\n							<div class="cam-sys">\r\n									<p>Move In Special - $125<br>\r\n										Lawn Mow &amp; Front Hedge Trim - $85<br>\r\n										Leaf Raking or Mulching - $55<br>\r\n										Lawn Aeration Service - $65 </p>\r\n								</div>\r\n						 </div> <!-- block ends -->\r\n						 \r\n						<div class="table-block">\r\n							<p><a href="#">Large Homes</a>2900 sq/ft - 4000 sq/ft</p>\r\n							<div class="cam-sys">\r\n									<p>Move In Special - $165<br>\r\n										Lawn Mow &amp; Front Hedge Trim - $125<br>\r\n										Leaf Raking or Mulching - $85<br>\r\n										Lawn Aeration Service - $95<br>\r\n									</p>\r\n								</div>\r\n						 </div> <!-- block ends -->\r\n						 \r\n						 \r\n						 <div class="table-block">\r\n							<p><a href="#">Extra Large Homes</a>4000 sq/ft - 5500 sq/ft</p>\r\n							<div class="cam-sys">\r\n									<p>Move In Special - $215<br>\r\n										Lawn Mow &amp; Front Hedge Trim - $165<br>\r\n										Leaf Raking or Mulching - $115<br>\r\n										Lawn Aeration Service - $125<br>\r\n									</p>\r\n								</div>\r\n						 </div> <!-- block ends -->\r\n						</div><!-- positioned case ends --> \r\n					</div>\r\n					\r\n\r\n					\r\n						<div class="text-note">\r\n							<p>* Move In Special Includes Lawn Mowing, Hedge Trimming &amp; Junk Hauling up to 100 pounds.</p>\r\n							\r\n						</div><!-- text-note ends -->\r\n					 </div>\r\n				\r\n	   </div> <!-- container ends -->\r\n	</div>\r\n	\r\n	<div class="outer-container holiday-lights firewoods">\r\n					<div class="container">\r\n					<h3 class="content-prof-head">Professional Lawn Service Extra''s Include</h3>\r\n                    <div class="holiday-blue-wrap">\r\n                    	<ul>\r\n                        	<li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/ext-phone.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Real time text alerts before and after lawn service pro conducts work.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/ext-bulb.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										A smarter, more transparent solution for routine and emergency property services.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/ext-pad.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										Easy scheduling, select the time &amp; date lawn service works for you.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                            \r\n                            <li> \r\n                            <div class="seconds">\r\n								<div class="second-60">\r\n									<div class="timer"><img src="/terraappnew/img/images/ext-contact.png"></div>\r\n									<div class="servicess">\r\n									<p class="m-t-23">\r\n										All the support you need! Reach us by text, email, phone or live chat.\r\n									</p>\r\n									</div>\r\n								</div>\r\n							</div>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    \r\n						<div class="p-t-73 t-account">\r\n						<h1 class="upper">Why get anything less. <br>\r\n						Use the proven <span>Terra</span> App system <br>\r\n						for smart &amp; reliable lawn service on demand.</h1>\r\n						</div>\r\n                        \r\n                        <div class="clear"></div>\r\n                        \r\n                        <ul class="holiday-lights-ul">\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/service-now.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/aap-store-page.png"> </a> </li>\r\n                        <li> <a href="#"> <img src="/terraappnew/img/images/google-play-page.png"> </a> </li>\r\n						</ul>\r\n                                                \r\n						<div class="clear"></div>\r\n						\r\n					</div>	\r\n				</div>', 'SEO title for Terra Extra', 'SEO Content for Terra Extra<br>', '0', '2015-11-23 22:58:36', '0000-00-00 00:00:00', '1');

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
(1, 9, 'dehradun', 'chandigarh it park sd', 'imasssges.jpeg', 'testingss', 'trigmaa');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=90 ;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `user_id`, `company_name`, `type_of_phone`, `is_18_years_old`) VALUES
(1, 5, '50642f', 'Android', 'yes'),
(2, 6, '469888', 'iOS', 'no'),
(3, 7, 'e8a05e', 'Other', 'yes'),
(4, 9, 'Trigma', 'Android', 'yes'),
(5, 234, 'trigma', 'iOS', 'yes'),
(6, 236, 'trigma', 'iOS', 'yes'),
(7, 237, 'trigma', 'iOS', 'yes'),
(8, 238, 'trigma', 'iOS', 'yes'),
(9, 239, 'trigma', 'iOS', 'yes'),
(10, 240, 'trigma', 'iOS', 'yes'),
(11, 241, 'trigma', 'iOS', 'yes'),
(12, 242, 'trigma', 'iOS', 'yes'),
(13, 243, 'trigma', 'iOS', 'yes'),
(14, 244, 'trigma', 'iOS', 'yes'),
(15, 245, 'trigma', 'iOS', 'yes'),
(16, 246, 'trigma', 'iOS', 'yes'),
(17, 247, 'trigma', 'iOS', 'yes'),
(18, 248, 'trigma', 'iOS', 'yes'),
(19, 252, '', 'iOS', 'yes'),
(20, 253, '', 'iOS', 'yes'),
(21, 284, 'trigma', 'iOS', 'yes'),
(22, 285, 'trigma', 'iOS', 'yes'),
(23, 286, 'trigma', 'iOS', 'yes'),
(24, 301, 'trigma', 'iOS', 'yes'),
(25, 303, 'ABC', 'iOS', 'yes'),
(26, 304, 'trigma', 'iOS', 'yes'),
(27, 305, 'ABC', 'iOS', 'yes'),
(28, 306, 'ABC', 'iOS', 'yes'),
(29, 307, 'ABC', 'iOS', 'yes'),
(30, 308, 'ABC', 'iOS', 'yes'),
(31, 309, 'ABC', 'iOS', 'yes'),
(32, 310, 'ABC', 'iOS', 'yes'),
(33, 311, 'ABC', 'iOS', 'yes'),
(34, 312, 'ABC', 'iOS', 'yes'),
(35, 313, 'trigma', 'iOS', 'yes'),
(36, 315, 'ABC', 'iOS', 'yes'),
(37, 316, 'ABC', 'iOS', 'yes'),
(38, 317, 'trigma', 'iOS', 'yes'),
(39, 318, 'trigma', 'iOS', 'yes'),
(40, 319, 'ABC', 'iOS', 'yes'),
(41, 322, 'trigma', 'iOS', 'yes'),
(42, 323, 'ABC', 'iOS', 'yes'),
(43, 324, 'trigma', 'iOS', 'yes'),
(44, 325, 'as', 'iOS', 'yes'),
(45, 326, 'as', 'iOS', 'yes'),
(46, 327, 'as', 'iOS', 'yes'),
(47, 328, 'ABC', 'iOS', 'yes'),
(48, 329, 'ABC', 'iOS', 'yes'),
(49, 330, 'trigma', 'iOS', 'yes'),
(50, 331, 'ABC', 'iOS', 'yes'),
(51, 332, 'trigma', 'iOS', 'yes'),
(52, 333, 'trigma', 'iOS', 'yes'),
(53, 334, 'ABC', 'iOS', 'yes'),
(54, 335, 'ABC', 'iOS', 'yes'),
(55, 336, 'ABC', 'iOS', 'yes'),
(56, 337, 'ABC', 'iOS', 'yes'),
(57, 338, 'ABC', 'iOS', 'yes'),
(58, 339, 'ABC', 'iOS', 'yes'),
(59, 340, 'ABC', 'iOS', 'yes'),
(60, 341, 'trigma', 'iOS', 'yes'),
(61, 342, 'trigma', 'iOS', 'yes'),
(62, 343, 'trigma', 'iOS', 'yes'),
(63, 344, 'trigma', 'iOS', 'yes'),
(64, 345, 'trigma', 'iOS', 'yes'),
(65, 346, 'trigma', 'iOS', 'yes'),
(66, 347, 'trigma', 'iOS', 'yes'),
(67, 348, 'trigma', 'iOS', 'yes'),
(68, 349, 'trigma', 'iOS', 'yes'),
(69, 350, 'trigma', 'iOS', 'yes'),
(70, 351, 'trigma', 'iOS', 'yes'),
(71, 353, 'trigma', 'iOS', 'yes'),
(72, 354, 'trigma', 'iOS', 'yes'),
(73, 355, 'trigma', 'iOS', 'yes'),
(74, 356, 'trigma', 'iOS', 'yes'),
(75, 357, 'trigma', 'iOS', 'yes'),
(76, 358, 'trigma', 'iOS', 'yes'),
(77, 359, 'trigma', 'iOS', 'yes'),
(78, 360, 'trigma', 'iOS', 'yes'),
(79, 361, 'trigma', 'iOS', 'yes'),
(80, 362, 'trigma', 'iOS', 'yes'),
(81, 363, 'trigma', 'iOS', 'yes'),
(82, 364, 'trigma', 'iOS', 'yes'),
(83, 365, 'trigma', 'iOS', 'yes'),
(84, 366, 'trigma', 'iOS', 'yes'),
(85, 367, 'trigma', 'iOS', 'yes'),
(86, 368, 'trigma', 'iOS', 'yes'),
(87, 369, 'trigma', 'iOS', 'yes'),
(88, 370, 'trigma', 'iOS', 'yes'),
(89, 371, 'trigma', 'iOS', 'yes');

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

--
-- Dumping data for table `partner_availablity`
--

INSERT INTO `partner_availablity` (`partner_id`, `day_id`, `time_id`) VALUES
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(9, 1, 1),
(10, 1, 1),
(11, 1, 1),
(13, 1, 2),
(13, 2, 3),
(13, 3, 4),
(13, 5, 5),
(14, 1, 2),
(14, 2, 3),
(14, 3, 4),
(15, 1, 2),
(15, 2, 3),
(15, 3, 4),
(15, 5, 5),
(16, 1, 2),
(16, 2, 3),
(16, 3, 4),
(17, 1, 1),
(17, 2, 2),
(17, 3, 3),
(17, 4, 4),
(17, 6, 5),
(18, 1, 1),
(18, 2, 2),
(18, 3, 3),
(18, 4, 4),
(18, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `partner_availablity_works`
--

CREATE TABLE IF NOT EXISTS `partner_availablity_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `times` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=285 ;

--
-- Dumping data for table `partner_availablity_works`
--

INSERT INTO `partner_availablity_works` (`id`, `partner_id`, `day_id`, `times`) VALUES
(1, 21, 1, ' 11am-1pm'),
(2, 21, 2, ''),
(3, 21, 3, ''),
(4, 21, 4, ''),
(5, 21, 5, ''),
(6, 21, 6, ''),
(7, 21, 7, ''),
(8, 22, 1, '11am-1pm'),
(9, 22, 2, '10am-1pm'),
(10, 22, 3, '9am-1pm'),
(11, 22, 4, '8am-1pm'),
(12, 22, 5, '7am-1pm'),
(13, 22, 6, '6am-1pm'),
(14, 22, 7, '5am-1pm'),
(15, 23, 2, '10am-1pm'),
(16, 23, 3, '9am-1pm'),
(17, 23, 4, '8am-1pm'),
(18, 23, 5, '7am-1pm'),
(19, 23, 6, '6am-1pm'),
(20, 23, 7, '5am-1pm'),
(21, 24, 1, '11am-1pm'),
(22, 24, 2, '10am-1pm'),
(23, 24, 3, '9am-1pm'),
(24, 24, 4, '8am-1pm'),
(25, 24, 5, '7am-1pm'),
(26, 24, 6, '6am-1pm'),
(27, 24, 7, '5am-1pm'),
(28, 26, 1, '11am-1pm'),
(29, 26, 2, '10am-1pm'),
(30, 26, 3, '9am-1pm'),
(31, 26, 4, '8am-1pm'),
(32, 26, 5, '7am-1pm'),
(33, 26, 6, '6am-1pm'),
(34, 26, 7, '5am-1pm'),
(35, 27, 1, '1 am - 3 am'),
(36, 27, 2, '2 am - 4 am'),
(37, 27, 3, '3 am - 9 am'),
(38, 28, 1, '3 pm - 8 am'),
(39, 29, 1, '3 am - 6 am'),
(40, 30, 1, '2 am - 12 am'),
(41, 31, 1, '1 am - 1 am'),
(42, 31, 2, '2 am - 3 am'),
(43, 32, 1, '6 am - 6 am'),
(44, 33, 1, '1 am - 3 am'),
(45, 34, 1, '4 am - 5 am'),
(46, 34, 2, '5 am - 5 am'),
(47, 35, 1, '11am-1pm'),
(48, 35, 2, '10am-1pm'),
(49, 35, 3, '9am-1pm'),
(50, 35, 4, '8am-1pm'),
(51, 35, 5, '7am-1pm'),
(52, 35, 6, '6am-1pm'),
(53, 35, 7, '5am-1pm'),
(54, 36, 1, '1 am - 1 pm'),
(55, 37, 1, '5 am - 8 am'),
(56, 38, 1, '11am-1pm'),
(57, 38, 2, '10am-1pm'),
(58, 38, 3, '9am-1pm'),
(59, 38, 4, '8am-1pm'),
(60, 38, 5, '7am-1pm'),
(61, 38, 6, '6am-1pm'),
(62, 38, 7, '5am-1pm'),
(63, 39, 1, '11am-1pm'),
(64, 39, 2, '10am-1pm'),
(65, 39, 3, '9am-1pm'),
(66, 39, 4, '8am-1pm'),
(67, 39, 5, '7am-1pm'),
(68, 39, 6, '6am-1pm'),
(69, 39, 7, '5am-1pm'),
(70, 40, 1, '6 am - 12 pm'),
(71, 41, 1, '11am-1pm'),
(72, 41, 2, '10am-1pm'),
(73, 41, 3, '9am-1pm'),
(74, 41, 4, '8am-1pm'),
(75, 41, 5, '7am-1pm'),
(76, 41, 6, '6am-1pm'),
(77, 41, 7, '5am-1pm'),
(78, 42, 1, '1 am - 3 am'),
(79, 43, 1, '11am-1pm'),
(80, 43, 2, '10am-1pm'),
(81, 43, 3, '9am-1pm'),
(82, 43, 4, '8am-1pm'),
(83, 43, 5, '7am-1pm'),
(84, 43, 6, '6am-1pm'),
(85, 43, 7, '5am-1pm'),
(86, 44, 1, '11am-1pm'),
(87, 44, 2, '10am-1pm'),
(88, 44, 3, '9am-1pm'),
(89, 44, 4, '8am-1pm'),
(90, 44, 5, '7am-1pm'),
(91, 44, 6, '6am-1pm'),
(92, 44, 7, '5am-1pm'),
(93, 45, 1, '11am-1pm'),
(94, 45, 2, '10am-1pm'),
(95, 45, 3, '9am-1pm'),
(96, 45, 4, '8am-1pm'),
(97, 45, 5, '7am-1pm'),
(98, 45, 6, '6am-1pm'),
(99, 45, 7, '5am-1pm'),
(100, 46, 1, '11am-1pm'),
(101, 46, 2, '10am-1pm'),
(102, 46, 3, '9am-1pm'),
(103, 46, 4, '8am-1pm'),
(104, 46, 5, '7am-1pm'),
(105, 46, 6, '6am-1pm'),
(106, 46, 7, '5am-1pm'),
(107, 47, 1, '1'),
(108, 47, 2, '2'),
(109, 48, 1, '1'),
(110, 48, 2, '2'),
(111, 49, 1, '11am-1pm'),
(112, 49, 2, '10am-1pm'),
(113, 49, 3, '9am-1pm'),
(114, 49, 4, '8am-1pm'),
(115, 49, 5, '7am-1pm'),
(116, 49, 6, '6am-1pm'),
(117, 49, 7, '5am-1pm'),
(118, 50, 1, '1'),
(119, 50, 2, '2'),
(120, 51, 1, '11am-1pm'),
(121, 51, 2, '10am-1pm'),
(122, 51, 3, '9am-1pm'),
(123, 51, 4, '8am-1pm'),
(124, 51, 5, '7am-1pm'),
(125, 51, 6, '6am-1pm'),
(126, 51, 7, '5am-1pm'),
(127, 52, 1, '11am-1pm'),
(128, 52, 2, '10am-1pm'),
(129, 52, 3, '9am-1pm'),
(130, 52, 4, '8am-1pm'),
(131, 52, 5, '7am-1pm'),
(132, 52, 6, '6am-1pm'),
(133, 52, 7, '5am-1pm'),
(134, 53, 1, '1'),
(135, 53, 2, '2'),
(136, 54, 1, '1'),
(137, 54, 2, '2'),
(138, 55, 1, '1'),
(139, 55, 2, '2'),
(140, 56, 1, '1'),
(141, 56, 2, '2'),
(142, 57, 1, '1'),
(143, 57, 2, '2'),
(144, 58, 1, '1'),
(145, 58, 2, '2'),
(146, 59, 1, '1'),
(147, 59, 2, '2'),
(148, 60, 1, '11am-1pm'),
(149, 60, 2, '10am-1pm'),
(150, 60, 3, '9am-1pm'),
(151, 60, 4, '8am-1pm'),
(152, 60, 5, '7am-1pm'),
(153, 60, 6, '6am-1pm'),
(154, 60, 7, '5am-1pm'),
(155, 61, 1, '11am-1pm'),
(156, 61, 2, '10am-1pm'),
(157, 61, 3, '9am-1pm'),
(158, 61, 4, '8am-1pm'),
(159, 61, 5, '7am-1pm'),
(160, 61, 6, '6am-1pm'),
(161, 61, 7, '5am-1pm'),
(162, 62, 1, '11am-1pm'),
(163, 62, 2, '10am-1pm'),
(164, 62, 3, '9am-1pm'),
(165, 62, 4, '8am-1pm'),
(166, 62, 5, '7am-1pm'),
(167, 62, 6, '6am-1pm'),
(168, 62, 7, '5am-1pm'),
(169, 63, 1, '11am-1pm'),
(170, 63, 2, '10am-1pm'),
(171, 63, 3, '9am-1pm'),
(172, 63, 4, '8am-1pm'),
(173, 63, 5, '7am-1pm'),
(174, 63, 6, '6am-1pm'),
(175, 63, 7, '5am-1pm'),
(176, 67, 1, '11am-1pm'),
(177, 67, 2, '10am-1pm'),
(178, 67, 3, '9am-1pm'),
(179, 67, 4, '8am-1pm'),
(180, 67, 5, '7am-1pm'),
(181, 67, 6, '6am-1pm'),
(182, 67, 7, '5am-1pm'),
(183, 68, 1, '11am-1pm'),
(184, 68, 2, '10am-1pm'),
(185, 68, 3, '9am-1pm'),
(186, 68, 4, '8am-1pm'),
(187, 68, 5, '7am-1pm'),
(188, 68, 6, '6am-1pm'),
(189, 68, 7, '5am-1pm'),
(190, 70, 1, '11am-1pm'),
(191, 70, 2, '10am-1pm'),
(192, 70, 3, '9am-1pm'),
(193, 70, 4, '8am-1pm'),
(194, 70, 5, '7am-1pm'),
(195, 70, 6, '6am-1pm'),
(196, 70, 7, '5am-1pm'),
(197, 71, 1, '3 am - 6 pm'),
(198, 71, 2, '4 am - 7 pm'),
(199, 72, 1, '4 am - 7 am'),
(200, 72, 2, '5 am - 1 pm'),
(201, 73, 1, '7 am-5 am'),
(202, 73, 2, '12 pm-9 am'),
(203, 74, 1, '7 am-5 am'),
(204, 74, 2, '12 pm-9 am'),
(205, 75, 1, '11am-1pm'),
(206, 75, 2, '10am-1pm'),
(207, 75, 3, '9am-1pm'),
(208, 75, 4, '8am-1pm'),
(209, 75, 5, '7am-1pm'),
(210, 75, 6, '6am-1pm'),
(211, 75, 7, '5am-1pm'),
(212, 76, 1, '2am-7am'),
(213, 76, 2, '5am-1pm'),
(214, 77, 1, '2am-7am'),
(215, 77, 2, '5am-1pm'),
(216, 78, 1, '11am-1pm'),
(217, 78, 2, '10am-1pm'),
(218, 78, 3, '9am-1pm'),
(219, 78, 4, '8am-1pm'),
(220, 78, 5, '7am-1pm'),
(221, 78, 6, '6am-1pm'),
(222, 78, 7, '5am-1pm'),
(223, 80, 1, '8am-11am'),
(224, 81, 1, '2am-4am'),
(225, 81, 2, '2am-5am'),
(226, 81, 3, '2am-6am'),
(227, 81, 4, '2am-7am'),
(228, 81, 5, '2am-9am'),
(229, 81, 6, '2am-10am'),
(230, 82, 1, '4am-4am'),
(231, 82, 2, '4am-5am'),
(232, 82, 3, '4am-6am'),
(233, 82, 4, '4am-6am'),
(234, 82, 5, '4am-8am'),
(235, 82, 6, '4am-8am'),
(236, 83, 1, '2am-4am'),
(237, 83, 2, '2am-4am'),
(238, 83, 3, '2am-4am'),
(239, 83, 4, '2am-4am'),
(240, 83, 5, '2am-5am'),
(241, 83, 6, '2am-5am'),
(242, 83, 7, '2am-5am'),
(243, 84, 1, '1am-2am'),
(244, 84, 2, '1am-2am'),
(245, 84, 3, '1am-2am'),
(246, 84, 4, '1am-2am'),
(247, 84, 5, '1am-2am'),
(248, 84, 6, '1am-2am'),
(249, 84, 7, '1am-2am'),
(250, 85, 1, '6am-4am'),
(251, 85, 2, '6am-7am'),
(252, 85, 3, '6am-7am'),
(253, 85, 4, '6am-7am'),
(254, 85, 5, '6am-7am'),
(255, 85, 6, '6am-7am'),
(256, 85, 7, '6am-7am'),
(257, 86, 1, '4am-7am'),
(258, 86, 2, '4am-7am'),
(259, 86, 3, '4am-7am'),
(260, 86, 4, '4am-7am'),
(261, 86, 5, '4am-7am'),
(262, 86, 6, '4am-7am'),
(263, 86, 7, '4am-7am'),
(264, 87, 1, '1am-3am'),
(265, 87, 2, '1am-8am'),
(266, 87, 3, '1am-8am'),
(267, 87, 4, '1am-8am'),
(268, 87, 5, '1am-8am'),
(269, 87, 6, '1am-8am'),
(270, 87, 7, '1am-8am'),
(271, 88, 1, '3am-3am'),
(272, 88, 2, '3am-4am'),
(273, 88, 3, '3am-5am'),
(274, 88, 4, '3am-6am'),
(275, 88, 5, '3am-6am'),
(276, 88, 6, '3am-6am'),
(277, 88, 7, '3am-10am'),
(278, 89, 1, '7am-6am'),
(279, 89, 2, '7am-9am'),
(280, 89, 3, '7am-1pm'),
(281, 89, 4, '7am-4pm'),
(282, 89, 5, '7am-8pm'),
(283, 89, 6, '7am-7pm'),
(284, 89, 7, '7am-11pm');

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
(4, 1),
(2, 3),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `partner_provided_services`
--

CREATE TABLE IF NOT EXISTS `partner_provided_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `id_3` (`id`),
  KEY `id_4` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `partner_provided_services`
--

INSERT INTO `partner_provided_services` (`id`, `service`, `job_type`) VALUES
(1, 'lawn services', 'hourly'),
(2, 'Lawn Mowing Services', 'hourly'),
(3, 'Junk Hauling Services', 'hourly'),
(4, 'Security Camera Services', 'hourly'),
(5, 'Smart Appliance Services', 'hourly'),
(6, 'Handyman/Labor Services', 'hourly'),
(7, 'Holiday Light Services', 'hourly');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=184 ;

--
-- Dumping data for table `partner_provided_service_partners`
--

INSERT INTO `partner_provided_service_partners` (`id`, `partner_id`, `pp_service_id`) VALUES
(2, 4, 4),
(31, 5, 5),
(33, 4, 3),
(34, 5, 7),
(35, 3, 7),
(40, 10, 7),
(41, 11, 5),
(42, 11, 7),
(44, 4, 2),
(58, 4, 1),
(59, 4, 6),
(60, 21, 1),
(61, 21, 2),
(62, 22, 1),
(63, 22, 2),
(64, 23, 1),
(65, 23, 2),
(66, 24, 1),
(67, 24, 2),
(68, 25, 3),
(69, 25, 5),
(70, 25, 7),
(71, 26, 1),
(72, 26, 2),
(73, 27, 6),
(74, 27, 5),
(75, 27, 5),
(76, 28, 4),
(77, 29, 3),
(78, 29, 4),
(79, 29, 6),
(80, 30, 2),
(81, 31, 5),
(82, 32, 7),
(83, 33, 3),
(84, 34, 3),
(85, 35, 1),
(86, 35, 2),
(87, 36, 5),
(88, 37, 3),
(89, 38, 1),
(90, 38, 2),
(91, 39, 1),
(92, 39, 2),
(93, 40, 5),
(94, 41, 1),
(95, 41, 2),
(96, 42, 3),
(97, 43, 1),
(98, 43, 2),
(99, 44, 1),
(100, 44, 2),
(101, 45, 1),
(102, 45, 2),
(103, 46, 1),
(104, 46, 2),
(105, 47, 1),
(106, 47, 2),
(107, 48, 1),
(108, 48, 2),
(109, 49, 1),
(110, 49, 2),
(111, 50, 1),
(112, 50, 2),
(113, 51, 1),
(114, 51, 2),
(115, 52, 1),
(116, 52, 2),
(117, 53, 1),
(118, 53, 2),
(119, 54, 1),
(120, 54, 2),
(121, 55, 1),
(122, 55, 2),
(123, 56, 1),
(124, 56, 2),
(125, 57, 1),
(126, 57, 2),
(127, 58, 1),
(128, 58, 2),
(129, 59, 1),
(130, 59, 2),
(131, 60, 1),
(132, 60, 2),
(133, 61, 1),
(134, 61, 2),
(135, 62, 1),
(136, 62, 2),
(137, 63, 1),
(138, 63, 2),
(139, 64, 1),
(140, 64, 2),
(141, 65, 1),
(142, 65, 2),
(143, 66, 1),
(144, 66, 2),
(145, 67, 1),
(146, 67, 2),
(147, 68, 1),
(148, 68, 2),
(149, 69, 1),
(150, 69, 2),
(151, 70, 1),
(152, 70, 2),
(153, 71, 5),
(154, 71, 3),
(155, 72, 5),
(156, 73, 2),
(157, 73, 6),
(158, 74, 2),
(159, 74, 6),
(160, 75, 1),
(161, 75, 2),
(162, 76, 4),
(163, 76, 7),
(164, 77, 4),
(165, 77, 7),
(166, 78, 4),
(167, 78, 7),
(168, 79, 1),
(169, 79, 5),
(170, 80, 5),
(171, 80, 1),
(172, 80, 5),
(173, 81, 6),
(174, 82, 5),
(175, 83, 2),
(176, 84, 3),
(177, 85, 7),
(178, 86, 4),
(179, 87, 5),
(180, 88, 2),
(181, 88, 5),
(182, 89, 3),
(183, 89, 5);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `partner_service_scheduling`
--

INSERT INTO `partner_service_scheduling` (`id`, `partner_id`, `scheduled_service_id`, `is_done`, `is_cancelled`, `created_at`, `updated_at`) VALUES
(5, 4, 3, 'yes', 'no', '2015-12-14 13:06:03', '2015-12-14 14:06:00'),
(6, 4, 4, 'yes', 'no', '2015-12-14 13:06:03', '2015-12-14 14:06:00'),
(8, 4, 5, 'yes', 'no', '2015-12-17 16:41:21', '2015-12-16 11:26:22'),
(17, 4, 6, 'no', 'no', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 4, 31, 'no', 'no', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 4, 33, 'yes', 'no', '2015-12-14 13:06:03', '0000-00-00 00:00:00'),
(24, 3, 75, 'no', 'no', '2016-02-25 07:00:00', '0000-00-00 00:00:00'),
(25, 4, 105, 'yes', 'no', '2016-02-01 07:00:00', '0000-00-00 00:00:00'),
(26, 9, 4, 'yes', 'no', '2016-03-01 08:56:56', '2016-03-01 08:56:56'),
(27, 9, 104, 'no', 'no', '2016-03-05 12:38:59', '2016-03-05 12:38:59');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `request_frequency`
--

INSERT INTO `request_frequency` (`id`, `request_frequency_name`, `request_frequency_value`) VALUES
(1, 'One Time Terra Lawn Service', 500),
(2, 'Weekly Terra Lawn Service', 400),
(3, 'Bi-Weekly Terra Lawn Service', 600),
(4, 'Once Monthly Terra Lawn Service', 700);

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_service`
--

CREATE TABLE IF NOT EXISTS `scheduled_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `pp_services_id` int(10) unsigned NOT NULL,
  `frequency_customer_id` int(10) unsigned DEFAULT NULL,
  `discount_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `paid_card_id` int(10) unsigned DEFAULT NULL,
  `tip` double(8,2) NOT NULL,
  `payable_money` double(8,2) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `extra_service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_done` enum('In Progress','Cancelled','Done') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'In Progress',
  `created_at` datetime NOT NULL COMMENT 'customer service date and time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `address_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1 for not apply 0 for apply',
  PRIMARY KEY (`id`),
  KEY `scheduled_service_customer_id_index` (`customer_id`),
  KEY `scheduled_service_frequency_customer_id_index` (`frequency_customer_id`),
  KEY `scheduled_service_discount_code_index` (`discount_code`),
  KEY `scheduled_service_paid_card_id_index` (`paid_card_id`),
  KEY `pp_services_id` (`pp_services_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=129 ;

--
-- Dumping data for table `scheduled_service`
--

INSERT INTO `scheduled_service` (`id`, `customer_id`, `pp_services_id`, `frequency_customer_id`, `discount_code`, `paid_card_id`, `tip`, `payable_money`, `comment`, `extra_service`, `is_done`, `created_at`, `updated_at`, `address_id`, `status`) VALUES
(3, 3, 1, 1, '111', 2, 0.00, 800.00, '', '', 'Done', '2015-12-14 00:00:00', '0000-00-00 00:00:00', 0, 0),
(4, 2, 3, 1, '111', 2, 0.00, 500.00, '', '', 'In Progress', '2015-12-15 06:08:10', '0000-00-00 00:00:00', 0, 0),
(5, 86, 6, 1, '425', 2, 0.00, 400.00, '', '', 'In Progress', '2015-12-17 00:00:00', '0000-00-00 00:00:00', 0, 1),
(6, 3, 7, 1, '111', 2, 0.00, 800.00, '', '', 'In Progress', '2015-12-17 00:00:00', '0000-00-00 00:00:00', 0, 0),
(31, 4, 2, NULL, '111', NULL, 0.00, 1500.00, '', '', 'In Progress', '2016-01-14 04:18:18', '0000-00-00 00:00:00', 0, 0),
(32, 4, 4, NULL, '', NULL, 0.00, 2000.00, '', '', 'In Progress', '2016-01-04 01:03:10', '0000-00-00 00:00:00', 0, 1),
(33, 4, 7, NULL, '111', 2, 0.00, 500.00, '', '', 'In Progress', '2016-01-13 04:32:13', '0000-00-00 00:00:00', 0, 0),
(50, 29, 5, NULL, '111', 14, 12.00, 8388.00, '', '', 'In Progress', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(51, 29, 4, NULL, '111', NULL, 12.00, 79545.00, '', '', 'In Progress', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(52, 29, 4, NULL, '111', NULL, 12.00, 79545.00, '', '', 'In Progress', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(53, 29, 4, NULL, '111', 14, 12.00, 79545.00, '', '', 'In Progress', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(54, 29, 5, NULL, '111', 14, 12.00, 8388.00, '', '', 'In Progress', '2016-02-25 04:12:00', '0000-00-00 00:00:00', 0, 0),
(55, 29, 6, NULL, '111', 14, 12.00, 66.00, '', '', 'In Progress', '2016-02-25 06:12:00', '0000-00-00 00:00:00', 0, 0),
(75, 56, 4, NULL, '111', 23, 12.00, 300.00, '', '', 'In Progress', '2016-02-25 03:11:00', '0000-00-00 00:00:00', 0, 0),
(80, 86, 3, NULL, '111', 50, 100.00, 600.00, '', '', 'In Progress', '2016-02-20 05:10:00', '0000-00-00 00:00:00', 0, 0),
(81, 4, 5, NULL, '111', NULL, 100.00, 600.00, '', '', 'In Progress', '2016-02-20 20:04:00', '0000-00-00 00:00:00', 0, 0),
(82, 87, 5, NULL, '111', 52, 100.00, 600.00, '', '', 'In Progress', '2016-02-24 04:05:00', '0000-00-00 00:00:00', 0, 0),
(89, 96, 5, 16, '111', 59, 100.00, 600.00, '', '', 'In Progress', '2016-02-22 03:07:00', '0000-00-00 00:00:00', 0, 1),
(103, 103, 1, NULL, '', 62, 0.00, 800.00, 'hello test', 'yes', 'In Progress', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1),
(104, 103, 2, NULL, '', 62, 0.00, 800.00, 'hello test', 'yes', 'In Progress', '2016-02-01 00:00:00', '0000-00-00 00:00:00', 0, 0),
(105, 103, 1, NULL, '', 62, 0.00, 800.00, 'hello test', 'yes', 'Done', '2016-01-13 04:32:13', '0000-00-00 00:00:00', 0, 1),
(106, 56, 1, 2, '111', 23, 200.00, 323.00, '', '', 'In Progress', '2016-03-03 00:18:00', '0000-00-00 00:00:00', 0, 0),
(107, 56, 1, 2, '111', 23, 200.00, 323.00, '', '', 'In Progress', '2016-03-03 00:18:00', '0000-00-00 00:00:00', 0, 0),
(108, 56, 1, 2, '111', 23, 200.00, 323.00, '', '', 'In Progress', '2016-03-03 00:39:00', '0000-00-00 00:00:00', 0, 0),
(109, 105, 1, 23, '111', 64, 200.00, 323.00, 'test', '', 'In Progress', '2016-03-03 01:02:00', '0000-00-00 00:00:00', 0, 1),
(110, 106, 2, NULL, '111', NULL, 200.00, 450.00, 'good', '', 'In Progress', '2016-03-03 01:54:00', '0000-00-00 00:00:00', 0, 1),
(113, 111, 4, 25, '111', 66, 200.00, 276.00, 'this is test ', '', 'In Progress', '2015-08-22 03:30:00', '0000-00-00 00:00:00', 0, 1),
(121, 56, 1, 2, '', 23, 0.00, 300.00, '', '', 'In Progress', '2016-03-03 06:54:00', '0000-00-00 00:00:00', 0, 0),
(122, 56, 1, 2, '', 23, 0.00, 300.00, '', '', 'In Progress', '2016-03-03 06:57:00', '0000-00-00 00:00:00', 0, 0),
(123, 117, 1, 28, '0', 67, 0.00, 300.00, 'this is test', '', 'In Progress', '2015-07-19 06:50:00', '0000-00-00 00:00:00', 0, 1),
(124, 4, 1, 8, '111', NULL, 56.00, 0.00, '', '', 'In Progress', '2016-03-05 00:00:00', '0000-00-00 00:00:00', 0, 0),
(125, 4, 1, 8, '111', 51, 200.00, 0.00, '', '', 'In Progress', '2016-03-05 00:00:00', '0000-00-00 00:00:00', 0, 0),
(126, 4, 1, 8, '111', 51, 50.00, 0.00, '', '', 'In Progress', '2016-03-06 04:05:00', '0000-00-00 00:00:00', 0, 0),
(127, 4, 2, NULL, '0', NULL, 0.00, 0.00, 'guru', '', 'In Progress', '2016-03-07 03:09:00', '0000-00-00 00:00:00', 0, 1),
(128, 4, 2, 8, '', 51, 0.00, 0.00, '', '', 'In Progress', '2016-03-05 03:26:00', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_day`
--

CREATE TABLE IF NOT EXISTS `service_day` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `day_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `service_day`
--

INSERT INTO `service_day` (`id`, `day_name`) VALUES
(1, 'mon'),
(2, 'tue'),
(3, 'wed'),
(4, 'thu'),
(5, 'Fri'),
(6, 'sat'),
(7, 'sun');

-- --------------------------------------------------------

--
-- Table structure for table `service_rating`
--

CREATE TABLE IF NOT EXISTS `service_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `pss_id` int(10) unsigned NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `service_rating_partner_id_index` (`partner_id`),
  KEY `service_rating_customer_id_index` (`customer_id`),
  KEY `service_rating_pss_id_index` (`pss_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `service_rating`
--

INSERT INTO `service_rating` (`id`, `partner_id`, `customer_id`, `pss_id`, `comment`, `rating`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 5, 'this is test', 5.00, '2015-12-14 07:00:00', '2015-12-15 07:00:00'),
(2, 4, 2, 6, 'test', 5.00, '2015-12-15 07:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service_time`
--

CREATE TABLE IF NOT EXISTS `service_time` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_time_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `service_time`
--

INSERT INTO `service_time` (`id`, `service_time_name`) VALUES
(1, '11am- 1pm'),
(2, '12am- 10pm'),
(3, '09am-10pm'),
(4, '09am-9pm'),
(5, '09am-7pm');

-- --------------------------------------------------------

--
-- Table structure for table `service_yards`
--

CREATE TABLE IF NOT EXISTS `service_yards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pp_service_id` int(11) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `yard_id` int(11) NOT NULL,
  `yards` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `service_yards`
--

INSERT INTO `service_yards` (`id`, `pp_service_id`, `amount`, `yard_id`, `yards`, `created`) VALUES
(1, 6, '500', 1, 'small', '0000-00-00 00:00:00'),
(2, 6, '600', 2, 'medium', '0000-00-00 00:00:00'),
(3, 6, '700', 3, 'large', '0000-00-00 00:00:00'),
(4, 6, '1000', 4, 'extra large', '0000-00-00 00:00:00'),
(5, 7, '500', 1, 'small', '0000-00-00 00:00:00'),
(6, 7, '600', 2, 'medium', '0000-00-00 00:00:00'),
(7, 7, '700', 3, 'large', '0000-00-00 00:00:00'),
(8, 7, '800', 4, 'extra large', '0000-00-00 00:00:00'),
(9, 3, '450', 1, 'small', '0000-00-00 00:00:00'),
(10, 3, '650', 2, 'medium', '0000-00-00 00:00:00'),
(11, 3, '700', 3, 'large', '0000-00-00 00:00:00'),
(12, 3, '700', 4, 'extra large', '0000-00-00 00:00:00'),
(13, 2, '350', 1, 'small', '0000-00-00 00:00:00'),
(14, 2, '450', 2, 'medium', '0000-00-00 00:00:00'),
(15, 2, '500', 3, 'large', '0000-00-00 00:00:00'),
(16, 2, '800', 4, 'extra large', '0000-00-00 00:00:00'),
(17, 1, '300', 1, 'small', '0000-00-00 00:00:00'),
(18, 1, '500', 2, 'medium', '0000-00-00 00:00:00'),
(19, 1, '700', 3, 'large', '0000-00-00 00:00:00'),
(20, 1, '800', 4, 'extra large', '0000-00-00 00:00:00'),
(21, 4, '250', 1, 'small', '0000-00-00 00:00:00'),
(22, 4, '400', 2, 'medium', '0000-00-00 00:00:00'),
(23, 4, '600', 3, 'large', '0000-00-00 00:00:00'),
(24, 4, '700', 4, 'extra large', '0000-00-00 00:00:00'),
(25, 5, '400', 1, 'small', '0000-00-00 00:00:00'),
(26, 5, '500', 2, 'medium', '0000-00-00 00:00:00'),
(27, 5, '650', 3, 'large', '0000-00-00 00:00:00'),
(28, 5, '800', 4, 'extra large', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `icon`, `created`) VALUES
(1, 'California', '1-california-map-ic.png', '2015-11-13 02:09:15'),
(2, 'Colorado', '2-colorado-map-ic.png', '2015-11-13 02:09:15'),
(3, 'Florida', '3-florida-map-ic.png', '2015-11-13 02:09:15'),
(4, 'Illinois', '4-illinois-map-ic.png', '2015-11-13 02:09:15'),
(5, 'North Carolina', '5-northcarolina-map-ic.png', '2015-11-13 02:09:15'),
(6, 'Texas', '6-texas-map-ic.png', '2015-11-13 02:09:15'),
(7, 'Georgia', '7-georgia-map-ic.png', '2015-11-13 02:09:15'),
(10, 'Washington', '10-washington-map-ic.png', '2015-11-13 18:20:17'),
(21, 'test test', '21-1454105235_Flag_of_Germany.png', '2016-01-29 18:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `state_list`
--

CREATE TABLE IF NOT EXISTS `state_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `state_list`
--

INSERT INTO `state_list` (`id`, `state_name`) VALUES
(1, 'AK'),
(2, 'AL'),
(3, 'AR'),
(4, 'AZ'),
(5, 'CA'),
(6, 'CO');

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
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `login_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('admin','partner','customer') COLLATE utf8_unicode_ci NOT NULL,
  `referal_code` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_referal_code_unique` (`referal_code`),
  KEY `users_login_name_index` (`login_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=400 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `login_name`, `email`, `password`, `user_type`, `referal_code`, `profile_image`, `mobile_no`, `remember_token`, `created_at`, `updated_at`, `token`) VALUES
(1, 'aman', 'Admin Tera', 'admin', 'teraapp@gmail.com', '$2y$10$4y38ezoPB5Hqu0VwDZpRnuKrDOgMcteFLnZs2JhrL/cchSFlj9.By', 'admin', 'bac83a79b7fc31bea2d8ddb7625b9ed7c6ccd542e2f6e78647512a0eb66f', '2016-03-08-8:21:17profile.png', '123456', NULL, '2016-01-15 22:01:53', '0000-00-00 00:00:00', ''),
(2, 'Abrar', 'Jahin', 'abrar', 'ab@gmail.com', '$2y$10$dCePxBNcWOajFG.WgrKNauiiRpDCJBqn7GIEUv9kRxoBp/IeS/Qea', 'customer', 'c2767ef82edcb37516b326e4bac14175221b8bc150b1fa85cb8a062a504b', '', '7417551535', 'swz0lqqwmFkBdRBLuYqfWPjqpVWg7Sj3koGJ9QjSVzXNbTA6v1dLxzMlCGlH', '2016-01-15 23:58:02', '2015-11-06 23:45:06', ''),
(3, 'Abrar', 'Janhin', 'jahin', 'test@gmail.com', '$2y$10$UWop.GZqshsD9T/V8wmDO.znhpnMRICEX79tlocTOWG/Q9sruaJdK', 'customer', '0037bc83afeaf608bfc01ec045021800eba1c7fd66272200d572ed80772e', '', '9997570614', NULL, '2016-01-15 23:58:02', '2015-11-07 02:19:34', ''),
(4, 'Abrar', 'Jahin', 'abrarjahin', 'lavkush.ramtripathi@trigma.in', '$2y$10$.987mM0f.M/XiDbz4lBd/ex/zp8moN6uaSpS9zVxzRECUd233dn2G', 'customer', '3f46d48bcd1d55055fdaefe9451a86f279e5df823c263dd622c2761d3317', '', '', NULL, '2016-01-15 23:58:02', '0000-00-00 00:00:00', ''),
(5, 'aman sharma', 'Hasin', 'pranto', 'dhimu@gmail.com', '$2y$10$DSHhCop6dqPMxoqOsGd8AuIWAUwexXt1y66s93kaITrbpl3tCks76', 'partner', 'a632462c673e81a9e490d458bffb08125f728fe4ce1d7bf7aaff87631df0', '2016-03-08-8:27:11profile.png', '12345664546', NULL, '2016-01-15 23:58:02', '0000-00-00 00:00:00', ''),
(6, 'Abrar', 'Hasin', 'hasin', 'pramodsingh302@gmail.com', '$2y$10$LMVvBycmNYExsTcTEb8xn.ouJqoHPOfCuL1o7CxMTzZqmpDLZcoAK', 'partner', '6e5e5c06a14be5b2d43618b8201b5ed55fcf7a0909b8252c4eebbefa7e05', '', '', NULL, '2016-01-15 23:58:02', '0000-00-00 00:00:00', 'a244bdb9940136069933b1221bea65bf96d7eff4bedd5909a7d1ebfa4a882f75351113a854d6f1c2cccd687216c2f6b8edae97c51b96705c96383d8f61a24009'),
(7, 'Abrar', 'Hasin', 'abrarhasin', 'partner@gmail.com', '$2y$10$vm9QZV0hhA.5hteeEXX6/O5VEKDLk8tlmUHe6icHIDgLZXfHOdkUm', 'partner', 'ceb65bfcc98f81b500bf5a973849bfb6005643e8091bec21a271fd33f0dc', '', '', NULL, '2016-01-15 23:58:02', '0000-00-00 00:00:00', ''),
(9, 'Peter', 'Trigma', 'peter', 'pramod.singh@trigma.in', '$2y$10$4y38ezoPB5Hqu0VwDZpRnuKrDOgMcteFLnZs2JhrL/cchSFlj9.By', 'partner', '', '1456266942244image.png', '7417551535', NULL, '2016-01-15 23:58:02', '0000-00-00 00:00:00', 'c0d9caa67b03aa0b0dd402e1965fef59d6391225f2682a451ed413016a9d9d8f983d2ba2bd4e3c9132df14fc9396c7da901224cd4e0823ed51da5b0d4d7e8071'),
(66, 'latripathi', 'tripathi', 'tlav', 'test@gmail.com', '$2y$10$RU5XmJx51fmy5KBN09W9Z.fOhgIGdQbtU/mjQK.8MFHVLgZQV4p6.', 'customer', '7i7DViQqG30d7vX', '', '', NULL, '2016-01-15 23:58:02', '0000-00-00 00:00:00', ''),
(71, 'Aman', 'Setia', 'aman', 'pramod.singh@trigma.in', '$2y$10$WfQ8pqSE36lyFZMPunF0ZuFg8BM5.XFj5/MacPuUptAle5I0niYmS', 'customer', '2eaadc5433cffa6ebe1eed88c47b222c', '144832804241image.png', '', NULL, '2016-01-15 23:58:02', '2016-03-05 12:04:15', 'c0d9caa67b03aa0b0dd402e1965fef59d6391225f2682a451ed413016a9d9d8f983d2ba2bd4e3c9132df14fc9396c7da901224cd4e0823ed51da5b0d4d7e8071'),
(72, 'Partner', 'Trigma', 'partner', 'partner@gmail.com', '$2y$10$6qWgLzL4lBbM00vHwvjK/uoQTneA9r/g8bCfEs.P466bzHNuAv5bW', 'partner', '4fM5y4YEOZNWNHk', '', '', NULL, '2016-01-15 23:58:02', '0000-00-00 00:00:00', ''),
(89, 'aman sharma', 'ljlkds', 'test', 'teste@gmail.com', '$2y$10$XRnO.uFOEvTG5DlZt5eKZuIeYfhnGX.weQR91GXw4gz69airrKfku', 'admin', 'ak7f2Q3IjFyaKIH', '2016-03-09-2:16:02profile.png', '12345664546', NULL, '2016-01-15 22:01:53', '0000-00-00 00:00:00', ''),
(94, 'dhimu', 'new', 'new', 'dhimu@gmail.com', '$2y$10$Xkby3BfK6fXCO5Z9nNG4semRab19SJXSON2GS0YbbQN2XlAdF/ZlK', 'customer', 'B3GmWWCsfHFlHXw', '2016-03-08-7:25:30profile.png', '9996222229', NULL, '2016-01-16 12:06:52', '0000-00-00 00:00:00', ''),
(96, 'sachins', 'singh', 'sachin', 'guru@gmail.com', '$2y$10$d/tNXJAbvbpnZ5IFB0Sas.ojNpZ1HsRhGUgTVyrq6xnK59NQPmlkC', 'customer', 'Hvm3GkxwvZJ82LG', '', '', NULL, '2016-01-23 11:32:44', '0000-00-00 00:00:00', ''),
(109, 'jack', 'lack', 'abc', 'ankur.bansal@trigma.in', '$2y$10$e157Anyb/plinzF3.0a62u1rVdyFFb3IqpX2WfoBTNYdLdTsiVjuG', 'admin', '5xBF9BPqVk9BwZF', '', '', NULL, '2016-01-27 16:38:09', '0000-00-00 00:00:00', '13f0470b26dbb59313a548cbaf922a055f5639353b4a3dfe44a1fdc351023cd4601030c194d4b4be13a6b5e46561a157fb9f91ffb2c0a1fcfdf804eef7172cda'),
(112, 'tera', 'app', 'lov', 'lov@gmail.com', '$2y$10$TBGtOrOBuk4ZmZsWt4UzU.BVBPBUXHPOq.dLuvHVDsrxOwbRPNWvG', 'customer', '41c66c874dc208579f7160ee13423b60', '', '10525252525252', NULL, '2016-02-03,19:49:22', '0000-00-00 00:00:00', ''),
(134, 'ash', 'singh', 'ash', 'ash@gmail.com', '$2y$10$mObto3rbuMIyh8a.1Cotd.uHkHfFn48pHshmDa6vlI1hVYdlvc3yC', 'customer', '1454972259', '', '12345674', NULL, '', '0000-00-00 00:00:00', ''),
(149, 'sdf', 'sdf', 'sdf', 'tom@gmail.com', '$2y$10$zIopqKiXtQn5BfDRJxH5JOLgyuofrPj.mLNS2nrrDhlGoN7Kr0tf6', 'customer', '1455127617', '', '32132', NULL, '', '0000-00-00 00:00:00', ''),
(161, 'tom', 'singh', 'tom', 'tom@gmail.com', '$2y$10$CShb/OwXBeCx5lwvOG7C0OB6EYJLwqsFZJxfXi//EhAPlzC45Gyzu', 'customer', '1455210624', '', '32132', NULL, '', '0000-00-00 00:00:00', ''),
(217, 'mohit', 'singh', 'mohit', 'moht@gmail.com', '$2y$10$X2HeDg9dGK0E6BEQG8RmIut17Ikff8sB/ViEvfBAxRbw14HtMw.ZC', 'customer', '1455972750', '', '32132', NULL, '', '0000-00-00 00:00:00', ''),
(218, 'mandy', 'singh', 'mandy', 'mandy@gmail.com', '$2y$10$5ibcy70Lhp1m08sKrvkNWOWiIVq4RzeyrhMiq4SDdfauICWsU0saS', 'customer', '1456157685', '', '7417551535', NULL, '', '0000-00-00 00:00:00', ''),
(227, 'sid', 'singh', 'sid', 'sid@gmail.com', '$2y$10$YZLnX8NWOoyxGGVOO5Opn.u76nrdxO3IKj/OTtCYVo.lYZ4RIMr5O', 'customer', '1456164943', '', '9997570614', NULL, '', '0000-00-00 00:00:00', ''),
(234, 'aman', 'aman', 'aman', 'aman@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1234', '', '123456', NULL, '2016-02-22-6:54:43', '0000-00-00 00:00:00', ''),
(236, 'aman', 'aman', 'aman', 'amann@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '12345', '', '123456', NULL, '2016-02-25-7:03:39', '0000-00-00 00:00:00', ''),
(237, 'aman', 'aman', 'aman', 'aamann@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '561140595', '', '123456', NULL, '2016-02-25-7:06:02', '0000-00-00 00:00:00', ''),
(238, 'aman', 'aman', 'aman', 'aamsann@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1016499459', '', '123456', NULL, '2016-02-25-7:06:06', '0000-00-00 00:00:00', ''),
(239, 'aman', 'aman', 'aman', 'aaman@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '405861879', '', '123456', NULL, '2016-02-25-7:49:10', '0000-00-00 00:00:00', ''),
(240, 'aman', 'aman', 'aman', '123aman@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '149066763', '', '123456', NULL, '2016-02-25-7:53:11', '0000-00-00 00:00:00', ''),
(241, 'aman', 'aman', 'aman', '1233aman@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '857626872', '', '123456', NULL, '2016-02-25-7:57:51', '0000-00-00 00:00:00', ''),
(242, 'aman', 'aman', 'aman', '111aman@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '318409931', '', '123456', NULL, '2016-02-25-8:45:53', '0000-00-00 00:00:00', ''),
(243, 'aman', 'aman', 'aman', '1111aman@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '2141753207', '', '123456', NULL, '2016-02-25-8:47:33', '0000-00-00 00:00:00', ''),
(244, 'aman', 'aman', 'aman', '11111aman@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1464470892', '', '123456', NULL, '2016-02-25-8:51:38', '0000-00-00 00:00:00', ''),
(245, 'aman', 'aman', 'aman', '111111aman@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '438704375', '', '123456', NULL, '2016-02-25-8:53:30', '0000-00-00 00:00:00', ''),
(246, 'aman', 'aman', 'aman', '1411111aman@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1637465322', '', '123456', NULL, '2016-02-25-8:55:58', '0000-00-00 00:00:00', ''),
(247, 'aman', 'aman', 'aman', '14111111aman@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '2071745838', '', '123456', NULL, '2016-02-25-8:58:17', '0000-00-00 00:00:00', ''),
(248, 'aman', 'aman', 'aman', '141111131aman@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1517743632', '', '123456', NULL, '2016-02-25-8:59:16', '0000-00-00 00:00:00', ''),
(251, 'ygyu', 'kjk', 'test', 'test@gmail.com', '$2y$10$ppZPgtTIvDaWVvLkY9jscOq6W5m.TGWV.rRC6tCorGkDIe1qqSCxi', 'customer', 'e59013a9917e8f4ac2dfbaeadc78b000', '', '', NULL, '2016-02-25,21:56:06', '0000-00-00 00:00:00', ''),
(252, '', 'aman', 'aman', 'an@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1177116230', '', '123456', NULL, '2016-02-27-12:54:07', '0000-00-00 00:00:00', ''),
(253, '', 'aman', 'aman', 'ank@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1612728332', '', '123456', NULL, '2016-02-27-12:54:18', '0000-00-00 00:00:00', ''),
(256, 'aman', 'aman', 'ama', 'ama@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '1234456987', '', '123456', NULL, '2016-02-27-12:59:32', '0000-00-00 00:00:00', ''),
(257, 'aman', 'aman', 'ama', 'aama@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '1234456987rr', '', '123456', NULL, '2016-02-27-1:08:36', '0000-00-00 00:00:00', ''),
(258, 'aman', 'aman', 'ama', 'aamaa@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '123445126987rr', '', '123456', NULL, '2016-02-27-1:09:57', '0000-00-00 00:00:00', ''),
(259, 'aman', 'aman', 'ama', 'aamada@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '1234d45126987rr', '', '123456', NULL, '2016-02-27-1:10:53', '0000-00-00 00:00:00', ''),
(260, 'aman', 'aman', 'ama', 'aamadfa@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '12f34d45126987rr', '', '123456', NULL, '2016-02-27-1:11:19', '0000-00-00 00:00:00', ''),
(261, 'aman', 'aman', 'ama', 'aamadfsa@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '12fs34d45126987rr', '', '123456', NULL, '2016-02-27-1:11:42', '0000-00-00 00:00:00', ''),
(262, 'aman', 'aman', 'ama', 'aamjadfsa@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '12fs34d4512ee6987rr', '', '123456', NULL, '2016-02-27-1:12:46', '0000-00-00 00:00:00', ''),
(284, 'aman', 'aman', 'aman', 'ama1214n@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '441803165', '', '123456', NULL, '2016-03-02-11:39:46', '0000-00-00 00:00:00', ''),
(285, 'aman', 'aman', 'aman', 'am1a1214n@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '2108844712', '', '123456', NULL, '2016-03-02-11:49:17', '0000-00-00 00:00:00', ''),
(286, 'aman', 'aman', 'aman', 'aqm1a1214n@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1080824508', '', '123456', NULL, '2016-03-02-11:50:08', '0000-00-00 00:00:00', ''),
(287, 'aman', '', '', 'amaama@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '1212121234456987', '', '123456', NULL, '2016-03-02-12:05:29', '0000-00-00 00:00:00', ''),
(288, 'sherya', 'rawat', 'sherya', 'sheraya@gmail.com', '$2y$10$pQorLD6OJKaGmpA8zsLLheRLc98ANhXO.ZKnrlG4N1r8Z.rCBRaay', 'customer', '1456947250', '', '7417551535', NULL, '', '0000-00-00 00:00:00', ''),
(289, 'reenu', 'malik', 'reenu', 'reenu@gmail.com', '$2y$10$ZcQ.KEj6FTPVHeQf6e7cW.i48LDMEK10A83QRbJBgYJtmh.VtC/bu', 'customer', '1456950264', '', '9876542980', NULL, '', '0000-00-00 00:00:00', ''),
(290, 'reenu', 'malik', 'reenu', 'reenu@gmail.com', '$2y$10$Zh.FLF4.7jWB1OZ6nW2jp.YqLHkY8xU8gav6mQWwdOK.Yn98ks482', 'customer', '1456950272', '', '9876542980', NULL, '', '0000-00-00 00:00:00', ''),
(291, 'ponting', 'singh', 'ponting', 'ponting@gmail.com', '$2y$10$iYLlQVfxoQqXFcBZGwQlmekPkq1VgTiNsaGECjzLYZir5KgsGQE/i', 'customer', '1456950509', '', '7417551535', NULL, '', '0000-00-00 00:00:00', ''),
(292, 'ponting', 'singh', 'ponting', 'ponting@gmail.com', '$2y$10$3zbmJQRLz3WodN4btBE0xePpPHUxags4bEz7LhpWbGyrEwrVXcvAa', 'customer', '1456950584', '', '7417551535', NULL, '', '0000-00-00 00:00:00', ''),
(294, 'mical', 'singh', 'mical', 'mical@gmail.com', '$2y$10$RwOiS8exo5vOrlqoLZ5J2.H/3EJwbDtSP5e0G9Fq7zcGGFkI77TqO', 'customer', '1456957278', '', '7417551535', NULL, '', '0000-00-00 00:00:00', ''),
(295, 'lavkush', 'ram', 'lavkush', 'lav@gmail.com', '$2y$10$0fsxUPXxnFhlJ/sSidXKROwce4Zz/nr9ewkvudG6gXm4Hw2EG0X8i', 'customer', '1456958476', '', '7417551535', NULL, '', '0000-00-00 00:00:00', ''),
(296, 'lav', 'ram', 'lav', 'lavdd@gmail.com', '$2y$10$3RKeTWq69E2UUA7dgtONUOH/4QVcqZaFG/pQ0Tq13sKZTvQgOdSGK', 'customer', '1456958825', '', '7417551535', NULL, '', '0000-00-00 00:00:00', ''),
(297, 'lav', 'ram', 'lav', 'labdd@gmail.com', '$2y$10$MDap87OLrPVRZ50L9nOkk.T7Ptcp9mx5vr./WL1GbCtPBVDOu7/bC', 'customer', '1456959032', '', '7417551535', NULL, '', '0000-00-00 00:00:00', ''),
(298, 'lav', 'ram', 'lav', 'lasdkjh@gmail.com', '$2y$10$Bai8RgCyjha78vrUtVyfyuT17gfA8T9HATHqx0/RhN1jou179xlxC', 'customer', '1456959663', '', '7417551535', NULL, '', '0000-00-00 00:00:00', ''),
(299, 'kalu', 'singh', 'kalu', 'kalu@gmail.com', '$2y$10$isFOg9opQvjTgYihALx3Lun2gZLPoSe8SyaJGOtIdnYFLJD8cENr6', 'customer', '1456959931', '', '7417551535', NULL, '', '0000-00-00 00:00:00', ''),
(300, 'pandey', 'singh', 'pandey', 'pandey@gmail.com', '$2y$10$yJNoNr8cmrupVrrSTJ6zKe/VHlmpzM.A8vWVH.LJcKBiLK4YM485m', 'customer', '1456968775', '', '7417551535', NULL, '', '0000-00-00 00:00:00', ''),
(301, 'aman', 'aman', 'aman', 'anman@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '382055058', '', '123456', NULL, '2016-03-03-9:06:03', '0000-00-00 00:00:00', ''),
(302, 'ankur', '', '', 'ankur1@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '1234456981233227', '', '123456', NULL, '2016-03-03-11:30:55', '0000-00-00 00:00:00', ''),
(303, 'adds adidas', 'adidas', 'adds adidas', 'dads adds', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '1544006928', '', 'sadsadsa', NULL, '2016-03-04-6:50:54', '0000-00-00 00:00:00', ''),
(304, 'aman', 'aman', 'aman', 'aman1@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1856985874', '', '123456', NULL, '2016-03-04-6:51:59', '0000-00-00 00:00:00', ''),
(305, 'gdfgfdgfdgdf', 'fgfgfgf', 'gdfgfdgfdgdf', 'fgfdgfdgfdg', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '1521274664', '', 'fdgfdgfdg', NULL, '2016-03-04-6:56:22', '0000-00-00 00:00:00', ''),
(306, 'gdfgfdgfdgdf', 'dfgfdgfdgfdg fish', 'gdfgfdgfdgdf', 'fdgfdgfdg', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '1956131667', '', 'gfdgfdg', NULL, '2016-03-04-6:58:22', '0000-00-00 00:00:00', ''),
(307, 'dads a', 'sadsadsa', 'dads a', 'sadsadsa', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '717720777', '', 'sadsads', NULL, '2016-03-04-7:07:07', '0000-00-00 00:00:00', ''),
(308, 'hkj', 'hkj hkj', 'hkj', 'lkj', 'df47be123d068c80701855ebf97e1ea45514074c', 'partner', '1929159447', '', 'khkjh', NULL, '2016-03-04-7:11:48', '0000-00-00 00:00:00', ''),
(309, 'sadsadsa', 'sadsadsa', 'sadsadsa', 'kj', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '1351793404', '', 'jhkjh', NULL, '2016-03-04-7:14:05', '0000-00-00 00:00:00', ''),
(310, 'added', 'added', 'added', 'did', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '1759183488', '', 'fdsfds', NULL, '2016-03-04-7:17:58', '0000-00-00 00:00:00', ''),
(311, 'a', 'a', 'a', 'a', '68d95820dd3c6595bc09fb4956605cdde0737032', 'partner', '2023457975', '', 'a', NULL, '2016-03-04-7:36:33', '0000-00-00 00:00:00', ''),
(312, 'mark', 'tylor', 'mark', 'mark@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1859465072', '', '1478523691', NULL, '2016-03-04-8:14:27', '0000-00-00 00:00:00', ''),
(313, 'aman', 'aman', 'aman', 'amhgjan@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1577219079', '', '123456', NULL, '2016-03-04-8:16:30', '0000-00-00 00:00:00', ''),
(314, 'c', 'c', 'c', 'c@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1639641519', '', '1234567890', NULL, '2016-03-04-8:18:06', '0000-00-00 00:00:00', ''),
(315, 'aman', 'khanna', 'aman', 'aman@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '451743274', '', '1234567891', NULL, '2016-03-04-8:21:16', '0000-00-00 00:00:00', ''),
(316, 'aman', 'khanna', 'aman', 'jack@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '324537874', '', '1234567891', NULL, '2016-03-04-8:39:16', '0000-00-00 00:00:00', ''),
(317, 'aman', 'aman', 'aman', 'kk@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1409949659', '', '123456', NULL, '2016-03-04-8:41:00', '0000-00-00 00:00:00', ''),
(318, 'aman', 'aman', 'aman', 'k1@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1108406700', '', '123456', NULL, '2016-03-04-8:41:56', '0000-00-00 00:00:00', ''),
(319, 'aman', 'khanna', 'aman', 'kw@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1948049545', '', '1478523691', NULL, '2016-03-04-8:45:34', '0000-00-00 00:00:00', ''),
(320, 'as', 'as', 'as', 'abs@agh.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1073797205', '', '1234567889', NULL, '2016-03-04-8:49:23', '0000-00-00 00:00:00', ''),
(321, 'as', 'as', 'as', 'abs@agkh.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '2077803514', '', '1234567889', NULL, '2016-03-04-8:52:38', '0000-00-00 00:00:00', ''),
(322, 'aman', 'aman', 'amanoi', 'k6@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1415333583', '', '123456', NULL, '2016-03-04-8:54:53', '0000-00-00 00:00:00', ''),
(323, 'j', 'k', 'j', 'k@h.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '695418782', '', '1234567890', NULL, '2016-03-04-9:02:49', '0000-00-00 00:00:00', ''),
(324, 'aman', 'aman', 'amanoi', 'k23@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1414092504', '', '123456', NULL, '2016-03-04-10:44:37', '0000-00-00 00:00:00', ''),
(325, 'pankaj', 's', 's', 'ss@a.com', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '1919041302', '', '147852369', NULL, '2016-03-04-10:46:07', '0000-00-00 00:00:00', ''),
(326, 'pankaj', 's', 's', 'll@a.com', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '1494816027', '', '147852369', NULL, '2016-03-04-10:47:11', '0000-00-00 00:00:00', ''),
(327, 'pankaj', 's', 's', 'pp@a.com', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '1508185999', '', '147852369', NULL, '2016-03-04-10:48:40', '0000-00-00 00:00:00', ''),
(328, 'honey', 'sharma', 'sds', 'pp1@a.com', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '983652933', '', '1452', NULL, '2016-03-04-10:57:53', '0000-00-00 00:00:00', ''),
(329, 'honey', 'sharma', 'sds', 'pp2@a.com', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '728497883', '', '1452', NULL, '2016-03-04-11:06:48', '0000-00-00 00:00:00', ''),
(330, 'aman', 'aman', 'amanoi', 'jk@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1895446952', '', '123456', NULL, '2016-03-04-11:09:47', '0000-00-00 00:00:00', ''),
(331, 'honey', 'sharma', 'sds', 'jkkl@gmail.com', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '113038437', '', '1452', NULL, '2016-03-04-11:12:06', '0000-00-00 00:00:00', ''),
(332, 'aman', 'aman', 'amanoi', 'jk123@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1211694745', '', '123456', NULL, '2016-03-04-11:12:55', '0000-00-00 00:00:00', ''),
(333, 'aman', 'aman', '', 'jk12583@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1826953583', '', '123456', NULL, '2016-03-04-11:18:05', '0000-00-00 00:00:00', ''),
(334, '', '', '', 'jk145@gmail.com', '79257b51e02b580e58bfd4010340c8edc2a0580e', 'partner', '288933115', '', '', NULL, '2016-03-04-11:52:15', '0000-00-00 00:00:00', ''),
(335, '', '', '', 'jk789@gmail.com', '79257b51e02b580e58bfd4010340c8edc2a0580e', 'partner', '2035816241', '', '', NULL, '2016-03-04-11:56:12', '0000-00-00 00:00:00', ''),
(336, '', '', '', 'jk56@gmail.com', '79257b51e02b580e58bfd4010340c8edc2a0580e', 'partner', '1448277802', '', '', NULL, '2016-03-05-12:16:00', '0000-00-00 00:00:00', ''),
(337, '', '', '', 'jass@gmail.com', '79257b51e02b580e58bfd4010340c8edc2a0580e', 'partner', '1388110777', '', '', NULL, '2016-03-05-12:46:15', '0000-00-00 00:00:00', ''),
(338, '', '', '', 'jass1@gmail.com', '79257b51e02b580e58bfd4010340c8edc2a0580e', 'partner', '1305002583', '', '', NULL, '2016-03-05-12:53:33', '0000-00-00 00:00:00', ''),
(339, '', '', '', 'naggarro@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '591798101', '', '145236', NULL, '2016-03-07-3:59:54', '0000-00-00 00:00:00', ''),
(340, 'dsfd', 'fdsfd', 'sdfds', 'naggarro1@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '223324096', '', '145236', NULL, '2016-03-07-4:06:32', '0000-00-00 00:00:00', ''),
(341, 'aman', 'aman', 'aman', 'aman@gmailf.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '104435234', '', '123456', NULL, '2016-03-07-5:14:23', '0000-00-00 00:00:00', ''),
(342, 'aman', 'aman', 'aman', 'nj@gmailf.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1796483057', '', '123456', NULL, '2016-03-07-5:15:10', '0000-00-00 00:00:00', ''),
(343, 'aman', 'aman', 'aman', 'k786@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '37387430', '', '123456', NULL, '2016-03-07-5:19:39', '0000-00-00 00:00:00', ''),
(344, 'aman', 'aman', 'aman', 'adsaman@gmailf.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '987282062', '', '123456', NULL, '2016-03-07-5:39:20', '0000-00-00 00:00:00', ''),
(345, 'aman', 'aman', 'aman', 'k1235@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '241083602', '', '123456', NULL, '2016-03-07-5:45:58', '0000-00-00 00:00:00', ''),
(346, 'aman', 'aman', 'aman', 'k1275@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '2107279445', '', '123456', NULL, '2016-03-07-5:47:05', '0000-00-00 00:00:00', ''),
(347, 'aman', 'aman', 'aman', 'k1k5@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '808177187', '', '123456', NULL, '2016-03-07-5:48:51', '0000-00-00 00:00:00', ''),
(348, 'aman', 'aman', 'aman', 'np@gmailf.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1657736625', '', '123456', NULL, '2016-03-07-5:55:10', '0000-00-00 00:00:00', ''),
(349, 'aman', 'aman', 'aman', 'nj1@gmailf.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1597918566', '', '123456', NULL, '2016-03-07-6:33:29', '0000-00-00 00:00:00', ''),
(350, 'aman', 'aman', 'aman', 'k1k8@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1952528216', '', '123456', NULL, '2016-03-07-6:36:00', '0000-00-00 00:00:00', ''),
(351, 'aman', 'aman', 'aman', 'k1k89@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1162363929', '', '123456', NULL, '2016-03-07-6:43:43', '0000-00-00 00:00:00', ''),
(352, 'aman', 'khanna', 'aman', 'testcase@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '516560943', '', '1478523691', NULL, '2016-03-07-6:49:47', '0000-00-00 00:00:00', ''),
(353, 'aman', 'khanna', 'aman', 'testcase1@a,com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1870670728', '', '147852369', NULL, '2016-03-07-6:52:09', '0000-00-00 00:00:00', ''),
(354, 'test', 'case', 'test', 'case@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1062428121', '', '1478523695', NULL, '2016-03-07-6:56:47', '0000-00-00 00:00:00', ''),
(355, 'aman', 'khanna', 'aman', 'j@k.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '565049976', '', '1478523691', NULL, '2016-03-07-7:00:24', '0000-00-00 00:00:00', ''),
(356, 'aman', 'khanna', 'aman', 'j1@k.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1400793604', '', '1478523691', NULL, '2016-03-07-7:03:50', '0000-00-00 00:00:00', ''),
(357, 'aman', 'aman', 'aman', 'amansbdjg@gmailf.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1949281320', '', '123456', NULL, '2016-03-07-7:05:52', '0000-00-00 00:00:00', ''),
(358, 'guru', 'datt', 'guru', 'guru@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1462527513', '', '4785236991', NULL, '2016-03-07-7:13:15', '0000-00-00 00:00:00', ''),
(359, 'guru', 'datt', 'guru', 'guru1@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1947426350', '', '4785236991', NULL, '2016-03-07-7:15:52', '0000-00-00 00:00:00', ''),
(360, 'guru', 'datt', 'guru', 'guru11@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '515247819', '', '4785236991', NULL, '2016-03-07-7:17:26', '0000-00-00 00:00:00', ''),
(361, 'fdsfds', 'sadsadsa', 'fdsfds', 's@a.com', '7d2a6c091e8e413ab6a8aeaf27e71919e0c8f5b8', 'partner', '20072679', '', '145236984', NULL, '2016-03-07-7:40:45', '0000-00-00 00:00:00', ''),
(362, 'ASAs', 'ASDSAD', 'ASAs', 'Q@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1681063618', '', '13313131313', NULL, '2016-03-07-10:04:13', '0000-00-00 00:00:00', ''),
(363, 'a', 'a', 'a', 'b@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1510288967', '', '251321312', NULL, '2016-03-07-10:18:32', '0000-00-00 00:00:00', ''),
(364, 'dhimu', 'xz', 'x', 'dhimu@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '133527484', '2016-03-08-7:41:31profile.png', '9996222229', NULL, '2016-03-07-10:21:28', '0000-00-00 00:00:00', ''),
(365, 'gagging', 'higher', 'gagging', 'fighting', 'ca0ae7c326f4aecf1511e67f56bd4db7e2cb7d08', 'partner', '623315965', '', 'hgfhgfhg', NULL, '2016-03-08-12:45:35', '0000-00-00 00:00:00', ''),
(366, 'Von', 'bobbin', 'Von', 'bv@a.com', 'c8f986d6e7222b12058cd612ae793e4fcfde2eda', 'partner', '8647258', '', 'fdgfdgdg', NULL, '2016-03-08-12:51:41', '0000-00-00 00:00:00', ''),
(367, 'gfhgfhgfhh', 'fdgfdgdg', 'gfhgfhgfhh', 'fg@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '959505905', '', '55454646464', NULL, '2016-03-08-4:44:18', '0000-00-00 00:00:00', ''),
(368, 'sdsad a', 'ASDSAD', 'sdsad a', 'sk@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1423849763', '', '45464646445', NULL, '2016-03-08-4:58:25', '0000-00-00 00:00:00', ''),
(369, 'dsfdsf', 'dsfdsf', 'dsfdsf', 'f@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1336354962', '', '45544646464', NULL, '2016-03-09-2:01:46', '0000-00-00 00:00:00', ''),
(370, 'test name', 'test last name', 'test name', 'test12@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1679887709', '', '646464616544', NULL, '2016-03-09-2:05:03', '0000-00-00 00:00:00', ''),
(371, 'test name', 'test last name', 'test name', 'test45@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'partner', '1750676419', '', '6466461452', NULL, '2016-03-09-2:15:38', '0000-00-00 00:00:00', ''),
(372, 'sadsadsa', '', '', 'a@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'zx', '', '64646464646', NULL, '2016-03-09-7:58:52', '0000-00-00 00:00:00', ''),
(373, '', '', '', 'kjas@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'Jj', '', '64646464646', NULL, '2016-03-09-10:18:55', '0000-00-00 00:00:00', ''),
(374, '', '', '', 'jon@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'po', '', '64646464646', NULL, '2016-03-09-10:26:52', '0000-00-00 00:00:00', ''),
(376, 'aman', '', '', 'amatest@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '1234454556987', '', '123456', NULL, '2016-03-09-10:28:13', '0000-00-00 00:00:00', ''),
(377, '', '', '', 'car@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'io', '', '64646464646', NULL, '2016-03-09-10:28:56', '0000-00-00 00:00:00', ''),
(379, 'aman', '', '', 'amatesttt@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '12344568456987', '', '123456', NULL, '2016-03-09-10:30:18', '0000-00-00 00:00:00', ''),
(380, 'aman', '', '', 'amatestttt@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '1234456845236987', '', '123456', NULL, '2016-03-09-10:35:09', '0000-00-00 00:00:00', ''),
(381, 'aman', '', '', 'amatsest@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '1234456545647856987', '', '123456', NULL, '2016-03-09-10:35:56', '0000-00-00 00:00:00', ''),
(382, '', '', '', 'khanna@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'Okay', '', '64646464646', NULL, '2016-03-09-10:37:15', '0000-00-00 00:00:00', ''),
(383, 'aman', '', '', 'amatstest@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '12344456545647856987', '', '123456', NULL, '2016-03-09-10:38:49', '0000-00-00 00:00:00', ''),
(384, 'aman', '', '', 'amatstttest@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '17856987', '', '123456', NULL, '2016-03-09-10:42:04', '0000-00-00 00:00:00', ''),
(385, '', '', '', 'amtatstttest@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '1785623987', '', '123456', NULL, '2016-03-09-10:43:55', '0000-00-00 00:00:00', ''),
(386, '', '', '', 'jasi@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'KH', '', '64646464646', NULL, '2016-03-09-10:55:34', '0000-00-00 00:00:00', ''),
(387, '', '', '', 'g@w.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'we''re', '', '64646464646', NULL, '2016-03-09-11:20:53', '0000-00-00 00:00:00', ''),
(388, '', '', '', 'b@aa.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'zxcxzc', '', '64646464646', NULL, '2016-03-10-12:10:33', '0000-00-00 00:00:00', ''),
(389, 'sadsadsa', '', '', 'a@com.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'zxssss', '', '64646464646', NULL, '2016-03-10-6:36:22', '0000-00-00 00:00:00', ''),
(390, '', '', '', 'a@sdsds.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'zxssssasasa', '', '64646464646', NULL, '2016-03-10-6:46:11', '0000-00-00 00:00:00', ''),
(395, 'aman', '', '', 'ameatetst@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '123442556987', '', '123456', NULL, '2016-03-10-6:56:21', '0000-00-00 00:00:00', ''),
(396, 'aman', '', '', 'amtatest@gmail.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', '182348456987', '', '123456', NULL, '2016-03-10-6:57:45', '0000-00-00 00:00:00', ''),
(397, 'sadsadsa', '', '', 'a@xx.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'zxaaaaaaaa', '', '64646464646', NULL, '2016-03-10-6:59:55', '0000-00-00 00:00:00', ''),
(398, 'sadsadsa', '', '', 'jacky@a.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'sss', '', '64646464646', NULL, '2016-03-10-7:10:39', '0000-00-00 00:00:00', ''),
(399, '', '', '', 'a@bb.com', '14da3da3413065484c0000e06d80b2d34d4cdb8a', 'customer', 'tkkk', '', '64646464646', NULL, '2016-03-10-8:28:52', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_referals`
--

CREATE TABLE IF NOT EXISTS `user_referals` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `refral_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_comer_user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code_used` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_referal_new_comer_user_id_unique` (`new_comer_user_id`),
  KEY `user_referal_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_referals`
--

INSERT INTO `user_referals` (`id`, `user_id`, `email`, `phone_no`, `refral_code`, `new_comer_user_id`, `created_at`, `updated_at`, `code_used`) VALUES
(1, 1, 'pramod.singh@trigma.in', '21321321', 't1QWAb', NULL, '2016-01-18 16:38:34', '0000-00-00 00:00:00', 'No'),
(2, 9, 'gurudutt.sharma@trigma.in', '', '708638', NULL, '2016-03-02 05:45:35', '2016-03-02 05:45:35', 'No'),
(3, 9, 'gurudutt.sharma@trigma.in', '', '8566629566', NULL, '2016-03-02 05:51:52', '2016-03-02 05:51:52', 'No'),
(4, 9, 'aman.khanna@trigma.co.in', '', '394218688', NULL, '2016-03-02 05:54:29', '2016-03-02 05:54:29', 'No'),
(5, 9, 'gurudutt.sharma@trigma.in', '', '537288022', NULL, '2016-03-02 06:40:54', '2016-03-02 06:40:54', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `yards`
--

CREATE TABLE IF NOT EXISTS `yards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yards` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `id_3` (`id`),
  KEY `id_4` (`id`),
  KEY `id_5` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `yards`
--

INSERT INTO `yards` (`id`, `yards`, `created`) VALUES
(1, 'small', '0000-00-00 00:00:00'),
(2, 'medium', '0000-00-00 00:00:00'),
(3, 'large ', '0000-00-00 00:00:00'),
(4, 'extra large', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `zip_codes`
--

CREATE TABLE IF NOT EXISTS `zip_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zip_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `area_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zip_codes_zip_code_unique` (`zip_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `zip_codes`
--

INSERT INTO `zip_codes` (`id`, `zip_code`, `area_name`) VALUES
(1, '1212', 'ambala'),
(2, '4545', 'chandigrah'),
(5, '7855', 'dehradun');

-- --------------------------------------------------------

--
-- Table structure for table `zip_code_partners`
--

CREATE TABLE IF NOT EXISTS `zip_code_partners` (
  `zip_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `partner_id` int(10) unsigned NOT NULL,
  KEY `zip_code_partner_zip_code_index` (`zip_code`),
  KEY `zip_code_partner_partner_id_index` (`partner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zip_code_partners`
--

INSERT INTO `zip_code_partners` (`zip_code`, `partner_id`) VALUES
('1212', 26),
('4545', 26),
('7855', 27),
('4545', 27),
('4545', 28),
('4545', 29),
('7855', 29),
('7855', 30),
('4545', 31),
('4545', 32),
('4545', 33),
('4545', 34),
('1212', 35),
('4545', 35),
('4545', 36),
('4545', 37),
('1212', 38),
('4545', 38),
('1212', 39),
('4545', 39),
('4545', 40),
('1212', 41),
('4545', 41),
('4545', 42),
('1212', 43),
('4545', 43),
('1212', 44),
('4545', 44),
('1212', 45),
('4545', 45),
('1212', 46),
('4545', 46),
('1212', 47),
('4545', 47),
('1212', 48),
('4545', 48),
('1212', 49),
('4545', 49),
('1212', 50),
('4545', 50),
('1212', 51),
('4545', 51),
('1212', 52),
('4545', 52),
('1212', 53),
('4545', 53),
('1212', 54),
('4545', 54),
('1212', 55),
('4545', 55),
('1212', 56),
('4545', 56),
('1212', 57),
('4545', 57),
('1212', 58),
('4545', 58),
('1212', 59),
('4545', 59),
('1212', 60),
('4545', 60),
('1212', 61),
('4545', 61),
('1212', 62),
('4545', 62),
('1212', 63),
('4545', 63),
('1212', 64),
('4545', 64),
('1212', 65),
('4545', 65),
('1212', 66),
('4545', 66),
('1212', 67),
('4545', 67),
('1212', 68),
('4545', 68),
('1212', 69),
('4545', 69),
('1212', 70),
('4545', 70),
('4545', 71),
('7855', 71),
('4545', 72),
('4545', 72),
('4545', 73),
('4545', 74),
('1212', 75),
('4545', 75),
('4545', 76),
('7855', 76),
('4545', 77),
('7855', 77),
('4545', 78),
('7855', 78),
('1212', 79),
('4545', 80),
('1212', 80),
('4545', 81),
('1212', 82),
('1212', 83),
('1212', 84),
('4545', 85),
('4545', 86),
('4545', 87),
('4545', 88),
('1212', 88),
('1212', 89),
('4545', 89);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `state_list` (`id`),
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
-- Constraints for table `user_referals`
--
ALTER TABLE `user_referals`
  ADD CONSTRAINT `user_referal_new_comer_user_id_foreign` FOREIGN KEY (`new_comer_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_referal_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `zip_code_partners`
--
ALTER TABLE `zip_code_partners`
  ADD CONSTRAINT `zip_code_partner_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`),
  ADD CONSTRAINT `zip_code_partner_zip_code_foreign` FOREIGN KEY (`zip_code`) REFERENCES `zip_codes` (`zip_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
