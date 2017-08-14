-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 14, 2017 at 06:12 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posv_2_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `debit` varchar(50) DEFAULT NULL,
  `credit` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `account_name`, `account_number`, `debit`, `credit`, `created`, `modified`) VALUES
(1, 1, 'Slaughter Fee ', '001', '1.00', '1.00', '2017-08-14 05:56:30', '2017-08-14 05:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_fees`
--

DROP TABLE IF EXISTS `accounts_fees`;
CREATE TABLE IF NOT EXISTS `accounts_fees` (
  `account_id` int(11) NOT NULL,
  `fee_id` int(11) NOT NULL,
  PRIMARY KEY (`account_id`,`fee_id`),
  KEY `fee_key` (`fee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_fees`
--

INSERT INTO `accounts_fees` (`account_id`, `fee_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `acl_phinxlog`
--

DROP TABLE IF EXISTS `acl_phinxlog`;
CREATE TABLE IF NOT EXISTS `acl_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_phinxlog`
--

INSERT INTO `acl_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20141229162641, 'CakePhpDbAcl', '2017-08-13 20:16:35', '2017-08-13 20:16:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

DROP TABLE IF EXISTS `acos`;
CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`,`rght`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 94),
(2, 1, NULL, NULL, 'Accounts', 2, 13),
(3, 2, NULL, NULL, 'index', 3, 4),
(4, 2, NULL, NULL, 'view', 5, 6),
(5, 2, NULL, NULL, 'add', 7, 8),
(6, 2, NULL, NULL, 'edit', 9, 10),
(7, 2, NULL, NULL, 'delete', 11, 12),
(8, 1, NULL, NULL, 'Error', 14, 15),
(9, 1, NULL, NULL, 'Fees', 16, 27),
(10, 9, NULL, NULL, 'index', 17, 18),
(11, 9, NULL, NULL, 'view', 19, 20),
(12, 9, NULL, NULL, 'add', 21, 22),
(13, 9, NULL, NULL, 'edit', 23, 24),
(14, 9, NULL, NULL, 'delete', 25, 26),
(15, 1, NULL, NULL, 'Groups', 28, 39),
(16, 15, NULL, NULL, 'index', 29, 30),
(17, 15, NULL, NULL, 'view', 31, 32),
(18, 15, NULL, NULL, 'add', 33, 34),
(19, 15, NULL, NULL, 'edit', 35, 36),
(20, 15, NULL, NULL, 'delete', 37, 38),
(21, 1, NULL, NULL, 'Pages', 40, 43),
(22, 21, NULL, NULL, 'display', 41, 42),
(23, 1, NULL, NULL, 'Users', 44, 59),
(24, 23, NULL, NULL, 'index', 45, 46),
(25, 23, NULL, NULL, 'view', 47, 48),
(26, 23, NULL, NULL, 'add', 49, 50),
(27, 23, NULL, NULL, 'edit', 51, 52),
(28, 23, NULL, NULL, 'delete', 53, 54),
(29, 23, NULL, NULL, 'login', 55, 56),
(30, 23, NULL, NULL, 'logout', 57, 58),
(31, 1, NULL, NULL, 'Acl', 60, 61),
(32, 1, NULL, NULL, 'Bake', 62, 63),
(33, 1, NULL, NULL, 'DebugKit', 64, 91),
(34, 33, NULL, NULL, 'Composer', 65, 68),
(35, 34, NULL, NULL, 'checkDependencies', 66, 67),
(36, 33, NULL, NULL, 'MailPreview', 69, 76),
(37, 36, NULL, NULL, 'index', 70, 71),
(38, 36, NULL, NULL, 'sent', 72, 73),
(39, 36, NULL, NULL, 'email', 74, 75),
(40, 33, NULL, NULL, 'Panels', 77, 82),
(41, 40, NULL, NULL, 'index', 78, 79),
(42, 40, NULL, NULL, 'view', 80, 81),
(43, 33, NULL, NULL, 'Requests', 83, 86),
(44, 43, NULL, NULL, 'view', 84, 85),
(45, 33, NULL, NULL, 'Toolbar', 87, 90),
(46, 45, NULL, NULL, 'clearCache', 88, 89),
(47, 1, NULL, NULL, 'Migrations', 92, 93);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

DROP TABLE IF EXISTS `aros`;
CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`,`rght`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Groups', 1, NULL, 1, 4),
(2, NULL, 'Groups', 2, NULL, 5, 8),
(3, NULL, 'Groups', 3, NULL, 9, 14),
(4, 3, 'Users', 1, NULL, 10, 11),
(5, 1, 'Users', 2, NULL, 2, 3),
(6, 2, 'Users', 3, NULL, 6, 7),
(7, 3, 'Users', 4, NULL, 12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

DROP TABLE IF EXISTS `aros_acos`;
CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aro_id` int(11) NOT NULL,
  `aco_id` int(11) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `aro_id` (`aro_id`,`aco_id`),
  KEY `aco_id` (`aco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 1, 1, '1', '1', '1', '1'),
(2, 2, 1, '-1', '-1', '-1', '-1'),
(3, 2, 2, '1', '1', '1', '1'),
(4, 2, 9, '1', '1', '1', '1'),
(5, 3, 1, '-1', '-1', '-1', '-1'),
(6, 3, 24, '1', '1', '1', '1'),
(7, 3, 25, '1', '1', '1', '1'),
(8, 3, 10, '1', '1', '1', '1'),
(9, 3, 11, '1', '1', '1', '1'),
(10, 2, 30, '1', '1', '1', '1'),
(11, 3, 30, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
CREATE TABLE IF NOT EXISTS `fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fee_name` (`fee_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `fee_name`, `created`, `modified`) VALUES
(1, 'payment1', '2017-08-14 05:58:18', '2017-08-14 05:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Admin', '2017-08-14 04:31:37', '2017-08-14 04:31:37'),
(2, 'Cashier', '2017-08-14 04:31:54', '2017-08-14 04:31:54'),
(3, 'User', '2017-08-14 04:32:03', '2017-08-14 04:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_id` int(11) DEFAULT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Middle_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fee_key` (`fee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fee_id`, `First_Name`, `Middle_Name`, `Last_Name`, `username`, `password`, `group_id`, `email`, `address`, `created`, `modified`) VALUES
(1, 1, 'user', 'user', 'user', 'user', '$2y$10$pEd.gLtReGHB6fV6zeQJke4JMFFtzhvCj29jZJLNSUI5zcwwqEaBa', 3, 'user@yahoo.com', '1231123', '2017-08-14 04:34:22', '2017-08-14 05:58:26'),
(2, NULL, 'admin', 'user', 'user', 'admin', '$2y$10$0abp4iVtvO8nsCdtKu0zh.m5bgCHEHr3svmKwdZdQSpaFcY5o4CmS', 1, 'admin@yahoo.com', '123', '2017-08-14 04:35:16', '2017-08-14 04:35:16'),
(3, NULL, 'cashier', 'cashier', 'cashier', 'cashier', '$2y$10$fzvXBCriLA0Sp/nOFUfIx.NPhi5G9bu/npNxyC.EYKM7EBHXGDdp2', 2, 'cashier@Yahoo.com', '123', '2017-08-14 05:08:57', '2017-08-14 05:08:57'),
(4, NULL, 'user1', 'user1', 'user1', 'admin2', '$2y$10$jUll/v0xXdwElrNYwxL0MeEFKl8cNHq8LxXH7iS9FCD4jhEtYUK/K', 3, 'admin2@yahoo.com', '1232132132', '2017-08-14 05:21:43', '2017-08-14 05:21:43');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
