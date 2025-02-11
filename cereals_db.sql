-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2025 at 01:40 PM
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
-- Table structure for table `cereals_db`
--

CREATE TABLE `cereals_db` (
  `Cereal_Name` varchar(50) NOT NULL,
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
-- Dumping data for table `cereals_db`
--

INSERT INTO `cereals_db` (`Cereal_Name`, `Base_Price_CropCart`, `Final_Price_CropCart`, `Base_Price_Swiggy`, `Final_Price_Swiggy`, `Base_Price_Blinkit`, `Final_Price_Blinkit`, `Base_Price_Zepto`, `Final_Price_Zepto`, `Base_Price_AmazonFresh`, `Final_Price_AmazonFresh`, `image`) VALUES
('Barley', 50.00, 55.00, 55.00, 60.00, 53.00, 58.00, 57.00, 62.00, 60.00, 65.00, 'https://sahasa.in/wp-content/uploads/2020/12/malgalwedha-jowar_14.09.2020-e1609304604817.jpg?w=600'),
('Chickpeas', 80.00, 90.00, 90.00, 100.00, 85.00, 95.00, 88.00, 98.00, 95.00, 105.00, 'https://nutritionsource.hsph.harvard.edu/wp-content/uploads/2024/11/AdobeStock_118383793-1024x683.jpeg'),
('Maize', 30.00, 35.00, 35.00, 40.00, 33.00, 38.00, 37.00, 42.00, 40.00, 45.00, 'https://abundancewholesomefoods.co.za/wp-content/uploads/sweetcorn.jpg'),
('Masoor Dal', 100.00, 110.00, 110.00, 120.00, 105.00, 115.00, 108.00, 118.00, 115.00, 125.00, 'https://vibrantliving.in/cdn/shop/files/RedMasoorDalSplitSkinless.jpg?v=1731059680&width=2048'),
('Millet', 70.00, 80.00, 80.00, 90.00, 75.00, 85.00, 78.00, 88.00, 85.00, 95.00, 'https://vibrantliving.in/cdn/shop/files/BajraMillet_Sajjalu.png?v=1731059068&width=2048'),
('Moong Dal', 110.00, 120.00, 120.00, 130.00, 115.00, 125.00, 118.00, 128.00, 125.00, 135.00, 'https://theplantbasedschool.com/wp-content/uploads/2024/02/Mung-dal-2-1.jpg'),
('Peas', 60.00, 70.00, 70.00, 80.00, 65.00, 75.00, 68.00, 78.00, 75.00, 85.00, 'https://goodness-farm.com/wp-content/uploads/2024/06/greenpeas_40f8a6c5-d937-42f0-916e-c0d795a0ec37_600x.jpg'),
('Rice', 40.00, 45.00, 45.00, 50.00, 43.00, 48.00, 47.00, 52.00, 50.00, 55.00, 'https://www.health.com/thmb/a8GxwWgmB5KpQW8SfW6VA7UFwaI=/722x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1734160670-0157c2daf8e841d6a783b38aedc51aa8.jpg'),
('Toor Dal', 130.00, 140.00, 140.00, 150.00, 135.00, 145.00, 138.00, 148.00, 145.00, 155.00, 'https://cdn.shopaccino.com/edible-smart/products/toor-dal-min-scaled-740285_l.jpg?v=530'),
('Urad Dal', 120.00, 130.00, 130.00, 140.00, 125.00, 135.00, 128.00, 138.00, 135.00, 145.00, 'https://c.ndtvimg.com/2023-09/a9ubmmd8_urad-dal_625x300_06_September_23.jpg?im=FaceCrop,algorithm=dnn,width=1200,height=886'),
('Wheat', 25.00, 28.00, 28.00, 30.00, 27.00, 29.00, 29.00, 31.00, 30.00, 32.00, 'https://organicmandya.com/cdn/shop/files/WheatWhole_2_de1e8667-567f-47bb-98e8-9b8523c6ba86.jpg?v=1738129189&width=1000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cereals_db`
--
ALTER TABLE `cereals_db`
  ADD PRIMARY KEY (`Cereal_Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
