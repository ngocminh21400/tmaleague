-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 16, 2018 at 10:32 AM
-- Server version: 5.5.56-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sgtn_18244028_euro2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `bet`
--

CREATE TABLE IF NOT EXISTS `bet` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT '0',
  `match_id` int(11) unsigned DEFAULT '0',
  `option` tinyint(4) DEFAULT '0',
  `money` bigint(20) DEFAULT '0',
  `is_active` bit(1) DEFAULT b'1',
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bet`
--

INSERT INTO `bet` (`id`, `user_id`, `match_id`, `option`, `money`, `is_active`, `created_time`) VALUES
(1, 10, 5, 2, 500, b'0', '2018-06-15 04:43:27'),
(2, 20, 5, 2, 300, b'0', '2018-06-15 01:45:20'),
(3, 14, 5, 2, 100, b'0', '2018-06-15 08:45:05'),
(4, 7, 5, 1, 49, b'0', '2018-06-15 09:01:34'),
(5, 17, 5, 2, 100, b'0', '2018-06-15 09:02:07'),
(6, 16, 5, 2, 500, b'0', '2018-06-15 09:02:13'),
(8, 18, 5, 2, 100, b'0', '2018-06-15 09:08:51'),
(9, 21, 5, 2, 150, b'0', '2018-06-15 09:11:22'),
(10, 19, 5, 1, 99, b'0', '2018-06-15 09:12:15'),
(11, 19, 6, 2, 99, b'0', '2018-06-15 09:15:10'),
(12, 22, 5, 2, 100, b'0', '2018-06-15 09:23:16'),
(13, 22, 6, 2, 100, b'0', '2018-06-15 09:23:26'),
(14, 22, 7, 2, 100, b'0', '2018-06-15 09:23:34'),
(15, 7, 7, 2, 152, b'0', '2018-06-15 10:06:50'),
(16, 20, 7, 1, 400, b'0', '2018-06-15 10:51:25'),
(17, 12, 5, 2, 500, b'0', '2018-06-15 10:01:37'),
(18, 13, 5, 2, 500, b'0', '2018-06-15 10:02:55'),
(19, 23, 5, 2, 500, b'0', '2018-06-15 10:54:11'),
(20, 16, 7, 2, 1000, b'0', '2018-06-15 13:58:46'),
(21, 12, 6, 1, 1000, b'0', '2018-06-15 13:59:26'),
(22, 13, 6, 1, 1000, b'0', '2018-06-15 14:01:03'),
(24, 23, 6, 1, 1000, b'0', '2018-06-15 14:13:39'),
(25, 17, 7, 2, 300, b'0', '2018-06-15 14:25:18'),
(26, 6, 6, 1, 200, b'0', '2018-06-15 09:58:19'),
(27, 6, 7, 2, 300, b'0', '2018-06-15 14:27:00'),
(28, 7, 6, 1, 53, b'0', '2018-06-15 14:46:52'),
(30, 10, 6, 2, 200, b'0', '2018-06-15 14:51:07'),
(32, 18, 7, 1, 100, b'0', '2018-06-15 08:01:08'),
(33, 19, 7, 1, 99, b'0', '2018-06-15 17:31:05'),
(34, 19, 8, 1, 101, b'1', '2018-06-15 17:07:47'),
(35, 10, 7, 2, 600, b'0', '2018-06-15 17:29:16'),
(37, 1, 7, 1, 10, b'0', '2018-06-15 17:55:02'),
(38, 22, 8, 1, 101, b'1', '2018-06-15 22:38:10'),
(39, 22, 9, 1, 100, b'1', '2018-06-15 22:38:36'),
(40, 22, 10, 2, 100, b'1', '2018-06-15 22:38:50'),
(41, 21, 8, 1, 100, b'1', '2018-06-16 05:35:46'),
(42, 21, 9, 1, 50, b'1', '2018-06-16 05:36:18'),
(43, 21, 10, 1, 50, b'1', '2018-06-16 05:36:33'),
(44, 10, 8, 1, 305, b'1', '2018-06-16 02:54:16'),
(45, 12, 8, 1, 500, b'1', '2018-06-16 09:11:02'),
(46, 13, 8, 1, 500, b'1', '2018-06-16 09:11:55'),
(47, 17, 8, 1, 400, b'1', '2018-06-16 02:43:16'),
(48, 17, 9, 1, 200, b'1', '2018-06-16 09:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE IF NOT EXISTS `campaign` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`id`, `name`, `description`, `image`) VALUES
(1, 'World Cup 2018', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `match`
--

CREATE TABLE IF NOT EXISTS `match` (
  `id` int(11) unsigned NOT NULL,
  `campaign_id` int(10) unsigned DEFAULT NULL,
  `team_1` varchar(50) DEFAULT NULL,
  `team_2` varchar(50) DEFAULT NULL,
  `team_1_score` tinyint(4) DEFAULT NULL,
  `team_2_score` tinyint(4) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `result` tinyint(4) DEFAULT NULL,
  `match_date` timestamp NULL DEFAULT NULL,
  `description` text,
  `created_by` int(10) unsigned DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match`
--

INSERT INTO `match` (`id`, `campaign_id`, `team_1`, `team_2`, `team_1_score`, `team_2_score`, `rate`, `result`, `match_date`, `description`, `created_by`, `created_time`, `modified_time`) VALUES
(5, NULL, 'Egypt', 'Uruquay', 0, 1, -0.5, 2, '2018-06-15 11:45:16', 'Uruquay chap 1/2 trai', NULL, '2018-06-15 07:51:41', NULL),
(6, NULL, 'Marocco', 'Iran', 0, 1, -0.5, 2, '2018-06-15 15:00:53', 'Iran chap Morocco 1/2 trai', NULL, '2018-06-15 08:49:52', NULL),
(7, NULL, 'Portugal', 'Spain', 3, 3, 0.5, 2, '2018-06-15 18:00:21', 'Portugal chap Spain 1/2 trai', NULL, '2018-06-15 08:51:23', NULL),
(8, NULL, 'France', 'Australia', NULL, NULL, 1.5, NULL, '2018-06-16 10:00:57', 'France chap 1-1/2 trai (1 trai ruoi) ', NULL, '2018-06-15 09:46:40', NULL),
(9, NULL, 'Argentina', 'Iceland', NULL, NULL, 1.5, NULL, '2018-06-16 13:00:56', 'Argentina chap 1-1/2 trai (1 trai ruoi)', NULL, '2018-06-15 09:48:41', NULL),
(10, NULL, 'Peru', 'Denmark', NULL, NULL, -0.5, NULL, '2018-06-16 16:00:44', 'Denmark chap 0.5 trai', NULL, '2018-06-15 09:51:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1401873449),
('m131114_141544_add_user', 1401873454);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `create_time`, `update_time`, `full_name`, `money`) VALUES
(1, 1, '2014-06-04 18:17:34', '2014-06-11 04:05:05', 'Administrator', 490),
(3, 3, '2018-06-14 03:49:22', '2018-06-15 01:23:48', 'Don Nguyen', 500),
(4, 4, '2018-06-14 04:33:26', NULL, 'Don Nguyen 2', 500),
(5, 5, '2018-06-14 04:56:40', '2018-06-15 01:23:40', 'Son Nguyen Truong', 500),
(6, 6, '2018-06-14 18:47:05', '2018-06-15 00:42:41', 'Le Tien Trung', 600),
(7, 7, '2018-06-14 18:48:53', '2018-06-15 01:04:56', 'Dat Le', 550),
(8, 8, '2018-06-14 21:44:02', NULL, 'Thanh Ho', 500),
(10, 10, '2018-06-15 00:46:21', NULL, 'Van Cong Duy', 1495),
(11, 11, '2018-06-15 00:49:21', NULL, 'Huynh Thi Hong', 500),
(12, 12, '2018-06-15 00:54:39', '2018-06-16 01:58:37', 'Truong Thanh Toai', 0),
(13, 13, '2018-06-15 00:55:46', '2018-06-16 01:58:49', 'Truong Thanh Toai 1', 0),
(14, 14, '2018-06-15 00:59:57', NULL, 'Tran Ly Nhan', 600),
(15, 15, '2018-06-15 01:08:55', NULL, 'Nguyen Cuu Quoc Phong', 500),
(16, 16, '2018-06-15 01:21:41', NULL, 'Nguy?n Thanh Tùng', 2000),
(17, 17, '2018-06-15 01:23:28', NULL, 'Dang Tran Tuan', 300),
(18, 18, '2018-06-15 01:30:46', NULL, 'Dang Minh Nhat', 500),
(19, 19, '2018-06-15 01:32:44', NULL, 'Hoang Ngoc An', 300),
(20, 20, '2018-06-15 01:36:32', NULL, 'Linh 94', 400),
(21, 21, '2018-06-15 01:39:44', NULL, 'Do Ngoc Luyen', 450),
(22, 22, '2018-06-15 02:05:45', NULL, 'Thai Pham Van Hiep', 499),
(23, 23, '2018-06-15 03:52:10', NULL, 'Tran Xuan Binh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `can_admin` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `create_time`, `update_time`, `can_admin`) VALUES
(1, 'Admin', '2014-06-04 18:17:34', NULL, 1),
(2, 'User', '2014-06-04 18:17:34', NULL, 0),
(3, 'Guest', '2014-06-04 18:17:34', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `new_email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `ban_time` timestamp NULL DEFAULT NULL,
  `ban_reason` varchar(255) DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `login_ip` varchar(45) DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role_id`, `email`, `new_email`, `username`, `password`, `status`, `auth_key`, `api_key`, `create_time`, `update_time`, `ban_time`, `ban_reason`, `registration_ip`, `login_ip`, `login_time`) VALUES
(1, 1, 'admin@localhost.com', NULL, 'admin', '$2y$13$Ywpzb5y/anrwCtwyJYikLub8X9SfObxQJXZgMJs2HDs/5yI1LwJhi', 1, 'KSQVZx_QRLt7Jic-WL2uzQl6tNlHyrE9', '1UneDlwyKNYl8VL2uFD2B6LqHtbXydN8', '2014-06-04 18:17:34', '2016-06-05 07:21:36', NULL, NULL, NULL, '10.250.194.131', '2018-06-16 01:55:26'),
(2, 2, 'demo@localhost.com', NULL, 'demo', '$2y$13$BMXGoquhph6.YvhEV8nVye3MzM/4lx.z0.OY0UwhypuIQTR1uvUqe', 1, 'mX2t9ZBulMzPV9I3tyxXh7EVKjtJk6_u', 'sCxWJ9oSziMovuFGZIM1XJlCwfDNSeg9', '2014-06-06 01:53:22', '2016-06-05 07:21:52', NULL, NULL, '127.0.0.1', '127.0.0.1', '2014-06-06 02:19:52'),
(3, 1, 'ntdon@tma.com.vn', NULL, 'ntdon', '$2y$13$Ywpzb5y/anrwCtwyJYikLub8X9SfObxQJXZgMJs2HDs/5yI1LwJhi', 1, '6m8kN25r7r4eSz20rnrX0m5BHirE_kxi', 'xJ1SA1P2StXD0yanZMAT_BAU2TbzBJED', '2018-06-14 03:49:22', '2018-06-15 01:23:48', NULL, NULL, NULL, '10.250.193.114', '2018-06-15 20:21:04'),
(4, 2, 'ntdon2@tma.com.vn', NULL, 'ntdon2', '$2y$13$a7ikCb.W.zjddY0CiO.DFe8/cKLeJY6cQ64MnObVhhD./VuaJuiw.', 1, 'QbzZI0MYhHyCpB0MXbfI6nNX1AK7YmfF', 'FIKUlB0HwHGfBDeO9qz_7gaUZrHqi4lR', '2018-06-14 04:33:26', NULL, NULL, NULL, NULL, '10.250.193.114', '2018-06-15 02:37:24'),
(5, 1, 'nguyentruongson@tma.com.vn', NULL, 'sonnt', '$2y$13$X..tCJ1fm7tKclkyreLQBu7Ur99aqcSwhykLAvNudP5TQd1IWHtWy', 1, 'noDmopMLhdv1ATVT_-K6UB09H7wvED2t', 'RkIseQPk907nYOI7sSjdKaF-l7sHtOVr', '2018-06-14 04:56:40', '2018-06-15 01:23:40', NULL, NULL, NULL, NULL, NULL),
(6, 2, 'lttrung@tma.com.vn', NULL, 'lttrung', '$2y$13$5JQ3xeC2877RchqL1cjEjuVtvQERJExDt1yqLxp6F8p2GZ5tjGDEO', 1, 'bmrjL5UyFH3rPM1z_wxEInd2hqzjYP_E', 'FIEq64pRDvpEDGclnV_UzXKZLqLgMa4p', '2018-06-14 18:47:05', '2018-06-15 00:42:41', NULL, NULL, NULL, '172.16.32.183', '2018-06-15 09:56:39'),
(7, 2, 'ltdat@tma.com.vn', NULL, 'ltdat', '$2y$13$v1cmM3q2J7lMTldL0m2h4ef8rBXCe5kCSBrdPxfjwxENzXHbUQtCG', 1, '9TjW1Hgz_L9abQPeZEdzln-VwAfRBY3u', 'qZqVDTxiwj7lNSal5QCC2zxvjZGN-njz', '2018-06-14 18:48:53', '2018-06-15 01:04:56', NULL, NULL, NULL, '10.250.194.131', '2018-06-15 10:37:25'),
(8, 2, 'hnthanh@tma.com.vn', NULL, 'hnthanh', '$2y$13$hbMs3QNR2plz3ivKFSHNDu2VtH8QXUl4ADP8eRRstudHQm54WG8Ta', 1, 'ZMNR-uMcz9XILzheiaClDFo2DZUw4PUO', 'zvSyaPCQPFKwlpnOopAVpusSVTyZTPl9', '2018-06-14 21:44:02', NULL, NULL, NULL, NULL, '172.17.0.52', '2018-06-15 02:23:26'),
(10, 2, 'vcduy@tma.com.vn', NULL, 'vcduy', '$2y$13$k0eQO/cJaV0n3toU04ciKuHXKFljxswARIFMH3G.7.KKGZzer6sZ.', 1, '3G_Mpjbxf2uCH6f2b46nxbUj6YEj9P6D', 'zhRmRb2Nk4dnCubLoRtdZaWDifyGTv1x', '2018-06-15 00:46:21', NULL, NULL, NULL, NULL, '192.168.10.150', '2018-06-15 00:54:23'),
(11, 2, 'hthong@tma.com.vn', NULL, 'hthong', '$2y$13$rlKMhhu8Zln3uC8bNekkGOgq/oBc08g9jR82RqtETCFAnRU0fe.DO', 1, 'j9YhDEKhc-c40ZFPnC5zMjdEt5Nyiz94', 'CXkKPzfbvy2_6TQGjB4SiE7MmHZsnC-V', '2018-06-15 00:49:21', NULL, NULL, NULL, NULL, '10.250.193.15', '2018-06-15 00:50:31'),
(12, 2, 'tttoai@tma.com.vn', NULL, 'tttoai', '$2y$13$t.tCj7JsN.pHt7/MAuAk3uQkMbMT7J.hLgf0iEu6rlj2ooSUBSgtO', 1, 'WZORRX-4Kzdvj6J-g5HZjWIK86hR3UJF', 'x7zMmPHRyRssfZ4vhixM-qY8ajlaIYTW', '2018-06-15 00:54:39', '2018-06-16 01:58:37', NULL, NULL, NULL, '192.168.31.18', '2018-06-16 00:46:19'),
(13, 2, 'toai.truong@tma.com.vn', NULL, 'toai_truong', '$2y$13$sjjNCR8qU0hVXBNiIyTWJOc7re38ylb8n86fiU250Q.ALgqJnJr8K', 1, 'IsCwM5920vsKzRrJ0sogAi0YSE1z17Gq', 'zTnlsJFddNrUv95HpkCJZ9fzUBZw1R0x', '2018-06-15 00:55:46', '2018-06-16 01:58:49', NULL, NULL, NULL, '192.168.31.18', '2018-06-16 02:11:39'),
(14, 2, 'tlnhan@tma.com.vn', NULL, 'tlnhan', '$2y$13$KQyiUAjWTrIt.MCjMHRXEO/ha2ZEH5g/b2KSQfyeUHDroL8sQqAmW', 1, 'RZTs112dfahtpH_RM5idKtmqUBgMH0dT', 'vrWHqo6BYTYF_hc_zJmX4UYZSBAa9oix', '2018-06-15 00:59:57', NULL, NULL, NULL, NULL, '10.250.193.211', '2018-06-15 01:09:48'),
(15, 2, 'ncqphong@tma.com.vn', NULL, 'ncqphong', '$2y$13$/pg8dOjFxX/9y8NtkRia1OiL42bwr.4EIzy72O2ti/kR1T6VxYeWW', 1, '5wBJBRY9Lm-cOklJmvqTSHtwEVaaUfiy', '2cMb_wc11aJ82fzTySBjm4VJh0HXUQ-W', '2018-06-15 01:08:55', NULL, NULL, NULL, NULL, '10.250.193.107', '2018-06-16 02:00:18'),
(16, 2, 'nttung@tma.com.vn', NULL, 'nttung', '$2y$13$ltJkZMD7mAf9AdBrmXpKYukwhFLgWTUmj5XFvzouwt.3IMfh/7.GG', 1, 'Ya20EEk3_X-XSg1SojYlBVoqDT3Sp8bt', '8o-DsR9-rIGWWw7J4l6kEzQ7AGF-jYh5', '2018-06-15 01:21:41', NULL, NULL, NULL, NULL, '10.250.194.131', '2018-06-15 06:57:53'),
(17, 2, 'dttuan@tma.com.vn', NULL, 'dttuan', '$2y$13$nrkgKxYHTl/03.qihNMeA.DKwJdNk2JKHkA9yVLezFlB6fryaGTru', 1, 'qxrBpepDw9vyDmqZPe-kWwVqxibot7OL', 'gE1H48tqRCypcFWfrRpQB1tZxt6WxVlB', '2018-06-15 01:23:28', NULL, NULL, NULL, NULL, '10.250.193.40', '2018-06-16 02:40:34'),
(18, 2, 'dmnhat@tma.com.vn', NULL, 'dmnhat', '$2y$13$EzeX6pI08ucapsrqOjOslOmGZKY2HE1UvhVK9qCJ46vwrC/wKDGya', 1, 'Hb6rsLGXkQsKl-5WpjjuSYLhKDGLPSCe', 'gHMpN-ZNeZ3lu0pvoxao_FEF8ZOYoI15', '2018-06-15 01:30:46', NULL, NULL, NULL, NULL, '10.250.193.73', '2018-06-15 02:06:06'),
(19, 2, 'hnan@tma.com.vn', NULL, 'hnan', '$2y$13$313fgR3nMqjO7X6gzvXfROAfUcRaEUgvkZ58pMMfFhKZ3zlRT2T1.', 1, 'KruEb-JoPHKCzIjdyhOwYpOech8AbuNT', 'uswiRNuYivMy015ZWfd_bMMUZzwijMOF', '2018-06-15 01:32:44', NULL, NULL, NULL, NULL, '192.168.10.150', '2018-06-15 17:30:52'),
(20, 2, 'lvlinh@tma.com.vn', NULL, 'lvlinh', '$2y$13$nrJsrXz3Sn7RfrWfSV8dQu9fM42YEgHxp1bEW1P7VTqq3ypVHBO5.', 1, 'craJTM2fVISL8hUeD1_yuQbcFLvsmdOk', 'rBDZ3YAbEFj2O19oq4Z36Gj37ndKKbeb', '2018-06-15 01:36:32', NULL, NULL, NULL, NULL, '10.250.193.21', '2018-06-15 01:43:05'),
(21, 2, 'dnluyen@tma.com.vn', NULL, 'dnluyen', '$2y$13$6hyE8fqRzEy.Cn8VmB.YSeEdxTZH9BBl11qUTbyz3Esr1mveK40FW', 1, 'y6QY0Z_UHJ0ssZAhwxLgP9IX9G9NUQPA', 'oFDqXcZewT5yXtouv9jFZu6qcvoLLsg8', '2018-06-15 01:39:44', NULL, NULL, NULL, NULL, '10.250.193.83', '2018-06-15 22:30:37'),
(22, 2, 'tpvhiep@tma.com.vn', NULL, 'tpvhiep', '$2y$13$QHgz0bn6FYSBbc7e6Zzf0.3yYUfC1rvbw0csVqxDqIDIzhRlACfu6', 1, '0y2VlSgCNZ2F4H_s2BTFFNKYzAILydVj', 'CbMB--VIMh0Kx5y3xJNkJBtXdYf7-_qr', '2018-06-15 02:05:45', NULL, NULL, NULL, NULL, '172.16.32.229', '2018-06-15 15:30:45'),
(23, 2, 'txbinh@tma.com.vn', NULL, 'txbinh', '$2y$13$pmg2GlKJe8PUrNwrpAKpYu3514Imyvj6rPKhB4KgaMA2HYMzDN6Aa', 1, '7dO37ik0lBEwG6LR96ungb7flDzU2v8e', '-k4hcYE9zHDHNbxtvNZRsLyXb0GGSTpo', '2018-06-15 03:52:10', NULL, NULL, NULL, NULL, '10.250.193.91', '2018-06-16 00:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `userkey`
--

CREATE TABLE IF NOT EXISTS `userkey` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `type` tinyint(4) NOT NULL,
  `key` varchar(255) NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `consume_time` timestamp NULL DEFAULT NULL,
  `expire_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userkey`
--

INSERT INTO `userkey` (`id`, `user_id`, `type`, `key`, `create_time`, `consume_time`, `expire_time`) VALUES
(1, 2, 1, 'ToLB9LOW4FKq-yHNlF8qF3Fh7BxD0YrM', '2014-06-06 01:58:44', NULL, NULL),
(2, 1, 2, 'dQUAsDInj-6TLB7PrtDaPy1auQ7o2ILq', '2014-06-11 04:04:27', NULL, '2014-06-11 04:49:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bet`
--
ALTER TABLE `bet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_match_id` (`user_id`,`match_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `FK_bet_match` (`match_id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_user_id` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email` (`email`),
  ADD UNIQUE KEY `user_username` (`username`),
  ADD KEY `user_role_id` (`role_id`);

--
-- Indexes for table `userkey`
--
ALTER TABLE `userkey`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userkey_key` (`key`),
  ADD KEY `userkey_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bet`
--
ALTER TABLE `bet`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `match`
--
ALTER TABLE `match`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `userkey`
--
ALTER TABLE `userkey`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bet`
--
ALTER TABLE `bet`
  ADD CONSTRAINT `FK_bet_match` FOREIGN KEY (`match_id`) REFERENCES `match` (`id`),
  ADD CONSTRAINT `FK_bet_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `match`
--
ALTER TABLE `match`
  ADD CONSTRAINT `FK_match_campaign` FOREIGN KEY (`campaign_id`) REFERENCES `campaign` (`id`),
  ADD CONSTRAINT `FK_match_user` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `userkey`
--
ALTER TABLE `userkey`
  ADD CONSTRAINT `userkey_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
