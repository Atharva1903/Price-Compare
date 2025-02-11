-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2025 at 01:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `price`
--

-- --------------------------------------------------------

--
-- Table structure for table `dairy_products`
--

CREATE TABLE `dairy_products` (
  `DairyProduct_Name` varchar(50) DEFAULT NULL,
  `Base_Price_CropCart` decimal(10,2) DEFAULT NULL,
  `Final_Price_CropCart` decimal(10,2) DEFAULT NULL,
  `Base_Price_Swiggy` decimal(10,2) DEFAULT NULL,
  `Final_Price_Swiggy` decimal(10,2) DEFAULT NULL,
  `Base_Price_Blinkit` decimal(10,2) DEFAULT NULL,
  `Final_Price_Blinkit` decimal(10,2) DEFAULT NULL,
  `Base_Price_Zepto` decimal(10,2) DEFAULT NULL,
  `Final_Price_Zepto` decimal(10,2) DEFAULT NULL,
  `Base_Price_AmazonFresh` decimal(10,2) DEFAULT NULL,
  `Final_Price_AmazonFresh` decimal(10,2) DEFAULT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dairy_products`
--

INSERT INTO `dairy_products` (`DairyProduct_Name`, `Base_Price_CropCart`, `Final_Price_CropCart`, `Base_Price_Swiggy`, `Final_Price_Swiggy`, `Base_Price_Blinkit`, `Final_Price_Blinkit`, `Base_Price_Zepto`, `Final_Price_Zepto`, `Base_Price_AmazonFresh`, `Final_Price_AmazonFresh`, `image`) VALUES
('Milk', 40.00, 45.00, 45.00, 50.00, 43.00, 48.00, 47.00, 52.00, 50.00, 55.00, 'https://upload.wikimedia.org/wikipedia/commons/f/fc/004-soymilk.jpg'),
('Curd', 30.00, 35.00, 35.00, 40.00, 33.00, 38.00, 37.00, 42.00, 40.00, 45.00, 'https://enjoyinfourseason.com/wp-content/uploads/2022/05/Fourseason-PLAIN-CURD.jpg'),
('Butter', 80.00, 90.00, 90.00, 100.00, 85.00, 95.00, 88.00, 98.00, 95.00, 105.00, 'https://cdn.britannica.com/27/122027-050-EAA86783/Butter.jpg'),
('Ghee', 420.00, 470.00, 450.00, 500.00, 430.00, 480.00, 440.00, 490.00, 470.00, 520.00, 'https://www.cookwithkushi.com/wp-content/uploads/2022/10/best_homemade_traditional_desi_ghee.jpg'),
('Cheese', 160.00, 180.00, 180.00, 200.00, 170.00, 190.00, 175.00, 195.00, 190.00, 210.00, 'https://marias.com.au/cdn/shop/products/shredded-mozzarella-cheese.jpg?v=1584871289');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dairy_products`
--
ALTER TABLE `dairy_products`
  ADD UNIQUE KEY `DairyProduct_Name` (`DairyProduct_Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
