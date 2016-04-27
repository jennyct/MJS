-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 27, 2016 at 11:59 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `inf124grp12`
--

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `id` varchar(2) DEFAULT NULL,
  `name` varchar(28) DEFAULT NULL,
  `price` varchar(5) DEFAULT NULL,
  `color` varchar(12) DEFAULT NULL,
  `material` varchar(20) DEFAULT NULL,
  `folder_name` varchar(15) DEFAULT NULL,
  `description` varchar(158) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoes`
--

INSERT INTO `shoes` (`id`, `name`, `price`, `color`, `material`, `folder_name`, `description`) VALUES
('id', 'name', 'price', 'color', 'material', 'folder_name', 'description'),
('1', 'UA Curry Two Elite', '130', 'Black/Gold', 'Synthetic Leather', 'curry', 'Precision fit. Responsive cushioning. Maximum control - The Curry 2 is all the hype.'),
('2', 'Nike Flyknit Lunar 3', '120', 'Multi Color', 'Nike Flyknit', 'lunar', 'The third iteration of this running staple is a triple threat of comfort, strength, and support. Everything you need to break the tape well ahead of the pack.'),
('3', 'Adidas Original Superstar', '80', 'White/Black', 'Leather', 'adidas_original', 'The adidas Originals Superstar debuted in 1969 as a pro basketball shoe, but has now become a street-wear staple.'),
('4', 'Adidas Samba', '70', 'Black', 'Leather', 'samba', 'Famous for over five decades, the adidas Originals Samba celebrates with its vintage construction that always in style.'),
('5', 'Damn! Daniels', '11700', 'White', 'Canvas', 'vans', 'Damnnnnnnnnnnnnnn Daniel'),
('6', 'Converse All Star High', '50', 'White', 'Canvas', 'converse', 'The original performance basketball sneaker.'),
('7', 'AdiPower Weightlifting Shoes', '179', 'Black/Red', 'Lightweight Polymer', 'adidas_weight', 'Your feet form your foundation, and the adiPower Weightlifting training shoe provides plenty of support to help you get the barbell up and over.'),
('8', 'Yeezy Boost 350', '900', 'Pirate Black', 'Adidas Primeknit', 'yeezy', 'I FEEL LIKE PABLO'),
('9', 'New Balance 530', '325', 'Redwood', 'Synthetic/Mesh Upper', 'new_balance', 'One of the most popular running models of the ''90s, the New Balance 530 is making a comeback in both original and new colors.'),
('10', 'Adidas Ultra Boost', '180', 'Black', 'Adidas Primeknit', 'ultraboost', 'Take your run to a whole new level with the out-of-this-world cushioning and response of the adidas Ultra Boost.');
