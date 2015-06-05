-- --------------------------------------------------------
-- Host:                         centvm.local
-- Server version:               5.5.43 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for multest_dev
DROP DATABASE IF EXISTS `multest_dev`;
CREATE DATABASE IF NOT EXISTS `multest_dev` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `multest_dev`;


-- Dumping structure for table multest_dev.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `text` varchar(140) NOT NULL,
  `profile_image_url` varchar(254) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- Dumping data for table multest_dev.posts: ~2 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `name`, `text`, `profile_image_url`, `created_at`, `modified_at`) VALUES
	(1, 'dog 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 'dog 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \r\nUt quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl te', 'http://placehold.it/64x64', '2015-06-04 22:02:42', '0000-00-00 00:00:00'),
	(3, 'cat 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \r\nUt quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl te', 'http://placehold.it/64x64', '2015-06-04 22:03:33', NULL),
	(4, 'cat 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \r\nUt quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl te', 'http://placehold.it/64x64', '2015-06-04 22:03:51', NULL),
	(5, 'name 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-04 22:04:02', NULL),
	(6, 'dog 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(7, 'dog 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(8, 'dog 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(9, 'dog 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(10, 'dog 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(11, 'dog 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(12, 'dog 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(13, 'dog 11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(14, 'dog 12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(15, 'dog 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(16, 'dog 14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(17, 'dog 15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(18, 'dog 16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(19, 'dog 17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(20, 'dog 18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(21, 'dog 19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(22, 'dog 20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(23, 'dog 21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(24, 'dog 22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(25, 'dog 23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(26, 'dog 24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 09:09:18', NULL),
	(27, 'dog 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(28, 'cat 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(29, 'cat 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(30, 'cat 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(31, 'cat 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(32, 'cat 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(33, 'cat 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(34, 'cat 11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(35, 'cat 12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(36, 'cat 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(37, 'cat 14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(38, 'cat 15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(39, 'cat 16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(40, 'cat 17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(41, 'cat 18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(42, 'cat 19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(43, 'cat 20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(44, 'cat 21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(45, 'cat 22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(46, 'cat 23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL),
	(47, 'cat 24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut quis odio quis justo malesuada blandit sed at felis. Nam et turpis vel nisl temp', 'http://placehold.it/64x64', '2015-06-05 10:05:14', NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
