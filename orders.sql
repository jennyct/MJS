-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2016 at 01:26 AM
-- Server version: 5.7.10-log
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inf124grp12`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zipcode` varchar(45) NOT NULL,
  `shipping` varchar(45) NOT NULL,
  `cc_number` int(11) NOT NULL,
  `cc_exp_date` varchar(45) NOT NULL,
  `cc_csc` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `quantity`, `first_name`, `last_name`, `phone_number`, `address`, `city`, `zipcode`, `shipping`, `cc_number`, `cc_exp_date`, `cc_csc`, `shoe_id`) VALUES
(1, 1, 'Jenny', 'Tang', '516', '9122 Steele Street', 'Rosemead', '91770', 'overnight', 123456, '0001-01', 234, 1),
(2, 1, 'Jenny', 'Tang', '516', '9122 Steele Street', 'Rosemead', '91770', 'overnight', 123456, '0001-01', 234, 1),
(3, 1, 'Jenny', 'Tang', '516', '9122 Steele Street', 'Rosemead', '91770', 'overnight', 123456, '0001-01', 234, 1),
(4, 1, 'Jenny', 'Tang', '516', '9122 Steele Street', 'Rosemead', '91770', 'overnight', 123456, '0001-01', 234, 1),
(5, 1, 'Jenny', 'Tang', '516', '9122 Steele Street', 'Rosemead', '91770', 'overnight', 12345, '0003-03', 123, 1),
(6, 1, 'Jenny', 'Tang', '516', '9122 Steele Street', 'Rosemead', '91770', 'overnight', 12345, '0003-03', 123, 1),
(7, 1, 'Jenny', 'Tang', '516', '9122 Steele Street', 'Rosemead', '91770', 'overnight', 12345, '0003-03', 0, 1),
(8, 1, 'Jenny', 'Tang', '516', '9122 Steele Street', 'Rosemead', '91770', 'overnight', 12345, '0003-03', 0, 1),
(9, 1, 'Jenny', 'Tang', '516', '9122 Steele Street', 'Rosemead', '91770', 'overnight', 13213, '0001-04', 321, 1),
(10, 1, 'Jenny', 'Tang', '626516626', '9122 Steele Street', 'Rosemead', '91770', 'overnight', 123, '0002-02', 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
