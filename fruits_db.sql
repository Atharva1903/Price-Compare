-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2025 at 01:33 PM
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
-- Table structure for table `fruits_db`
--

CREATE TABLE `fruits_db` (
  `Fruit_Name` varchar(50) NOT NULL,
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
-- Dumping data for table `fruits_db`
--

INSERT INTO `fruits_db` (`Fruit_Name`, `Base_Price_CropCart`, `Final_Price_CropCart`, `Base_Price_Swiggy`, `Final_Price_Swiggy`, `Base_Price_Blinkit`, `Final_Price_Blinkit`, `Base_Price_Zepto`, `Final_Price_Zepto`, `Base_Price_AmazonFresh`, `Final_Price_AmazonFresh`, `image`) VALUES
('Papaya', 30.00, 40.00, 40.00, 50.00, 35.00, 45.00, 38.00, 48.00, 45.00, 55.00, 'https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/6df726d012d112bf79fbe258cf0550be'),
('Orange', 60.00, 70.00, 70.00, 80.00, 65.00, 75.00, 68.00, 78.00, 75.00, 85.00, 'https://m.media-amazon.com/images/I/41SN44--WKL._AC_UL320_.jpg'),
('Banana', 30.00, 37.00, 35.00, 40.00, 33.00, 38.00, 37.00, 42.00, 40.00, 45.00, 'https://m.media-amazon.com/images/I/51ebZJ+DR4L._AC_UL320_.jpg'),
('Mango', 170.00, 185.00, 180.00, 200.00, 170.00, 190.00, 175.00, 195.00, 190.00, 210.00, 'https://m.media-amazon.com/images/I/51FRr8EcA8L._AC_UL320_.jpg'),
('Guava', 42.00, 50.00, 50.00, 60.00, 45.00, 55.00, 48.00, 58.00, 55.00, 65.00, 'https://m.media-amazon.com/images/I/51uE48ebbxL._AC_UL320_.jpg'),
('Pomegranate', 148.00, 162.00, 160.00, 180.00, 150.00, 170.00, 155.00, 175.00, 170.00, 190.00, 'https://m.media-amazon.com/images/I/611a1wD9ZGL.jpg'),
('Watermelon', 52.00, 60.00, 60.00, 70.00, 55.00, 65.00, 58.00, 68.00, 65.00, 75.00, 'https://m.media-amazon.com/images/I/61r5l3+Ml7L.jpg'),
('Grapes', 100.00, 110.00, 110.00, 120.00, 105.00, 115.00, 108.00, 118.00, 115.00, 125.00, 'https://m.media-amazon.com/images/I/61xrIAiNe9L._AC_UL320_.jpg'),
('Apple', 120.00, 130.00, 140.00, 150.00, 135.00, 145.00, 138.00, 148.00, 145.00, 155.00, 'https://m.media-amazon.com/images/I/81AK2aQ8VvL._AC_UL320_.jpg'),
('Pineapple', 72.00, 80.00, 80.00, 90.00, 75.00, 85.00, 78.00, 88.00, 85.00, 95.00, 'https://organicmandya.com/cdn/shop/files/Pineapple.jpg?v=1721375225&width=1000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fruits_db`
--
ALTER TABLE `fruits_db`
  ADD PRIMARY KEY (`Fruit_Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
