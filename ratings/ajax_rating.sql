-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 05, 2012 at 03:46 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ajax_rating`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(150) NOT NULL,
  `rating` float NOT NULL,
  `total_rating` float NOT NULL,
  `total_rates` int(11) NOT NULL,
  `ip_address` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `image`, `rating`, `total_rating`, `total_rates`, `ip_address`) VALUES
(1, 'Typography Visual Inspirations', 'Typography is the art and technique of arranging type in order to make language visible. The arrangement of type involves the selection of typefaces, point size, line length, leading (line spacing), adjusting the spaces between groups of letters (tracking) and adjusting the space between pairs of letters (kerning).', 'http://i1060.photobucket.com/albums/t453/Charles6Andy/Typography.png', 3.5, 14, 4, ',127.0.0.1,127.0.0.1,127.0.0.1,127.0.0.1'),
(2, 'Pratical Guide To Your First Wordpress Plugin :- Part 1 ', 'Starting out as a simple Content Management System wordpress has turned into a fully featured solution for companies, individuals and web masters. Not only wordpress provides a GUI to manage post or add new themes. It also provides easy to use functions to write custom code to enhance the functionality or design of wordpress ', 'http://i1060.photobucket.com/albums/t453/Charles6Andy/wordpress.png', 4.9, 4.9, 1, ',127.0.0.1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
