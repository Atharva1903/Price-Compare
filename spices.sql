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
-- Table structure for table `spices`
--

CREATE TABLE `spices` (
  `Spices_Name` varchar(50) DEFAULT NULL,
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
-- Dumping data for table `spices`
--

INSERT INTO `spices` (`Spices_Name`, `Base_Price_CropCart`, `Final_Price_CropCart`, `Base_Price_Swiggy`, `Final_Price_Swiggy`, `Base_Price_Blinkit`, `Final_Price_Blinkit`, `Base_Price_Zepto`, `Final_Price_Zepto`, `Base_Price_AmazonFresh`, `Final_Price_AmazonFresh`, `image`) VALUES
('Coriander', 40.00, 45.00, 45.00, 50.00, 43.00, 48.00, 47.00, 52.00, 50.00, 55.00, 'https://images.immediate.co.uk/production/volatile/sites/10/2018/02/e0f2e690-693d-4539-a203-e5868d04309a-86ece10.jpg'),
('Mint', 30.00, 35.00, 35.00, 40.00, 33.00, 38.00, 37.00, 42.00, 40.00, 45.00, 'https://gardenerspath.com/wp-content/uploads/2024/03/Best-Mint-Varieties-Feature.jpg'),
('Basil', 50.00, 55.00, 55.00, 60.00, 53.00, 58.00, 57.00, 62.00, 60.00, 65.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRWCdj8Jogw9WGr9ZSbvJ89-CuprNfDc-o5Q&s'),
('Curry Leaves', 20.00, 25.00, 25.00, 30.00, 23.00, 28.00, 27.00, 32.00, 30.00, 35.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlyhVQTGNyA75ATVKcyRz8SMk980lbJ3zOFw&s'),
('Turmeric', 80.00, 90.00, 90.00, 100.00, 85.00, 95.00, 88.00, 98.00, 95.00, 105.00, 'https://domf5oio6qrcr.cloudfront.net/medialibrary/15065/conversions/fa246ce0-054b-4892-bf30-5eb43cd938aa-thumb.jpg'),
('Chilli', 60.00, 70.00, 70.00, 80.00, 65.00, 75.00, 68.00, 78.00, 75.00, 85.00, 'https://www.greendna.in/cdn/shop/products/green_chilli_1229x.jpg?v=1562414368'),
('Black Pepper', 165.00, 180.00, 180.00, 200.00, 170.00, 190.00, 175.00, 195.00, 190.00, 210.00, 'https://assets.clevelandclinic.org/transform/65ddb397-7835-4b21-b30b-d123be3cb5c8/blackPepper-185067429-770x533-1_jpg'),
('Cumin', 130.00, 140.00, 140.00, 150.00, 135.00, 145.00, 138.00, 148.00, 145.00, 155.00, 'https://images.squarespace-cdn.com/content/v1/52bc612ae4b038e4d94a53e6/6189786f-95c0-402a-9662-aa0743dd5796/Cumin+%284%29.JPG'),
('Cardamom', 420.00, 475.00, 450.00, 500.00, 430.00, 480.00, 440.00, 490.00, 470.00, 520.00, 'https://www.wayanadgreenfresh.com/cdn/shop/products/caradom_2048x.jpg?v=1722004924'),
('Mustard Seeds', 50.00, 62.00, 60.00, 70.00, 55.00, 65.00, 58.00, 68.00, 65.00, 75.00, 'https://image1.jdomni.in/product/31012024/6D/8C/E4/43425F270603ACE8188F75C8BE_1706683513127.jpg?fit=around|500:500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `spices`
--
ALTER TABLE `spices`
  ADD UNIQUE KEY `Spices_Name` (`Spices_Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
