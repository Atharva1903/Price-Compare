-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2025 at 01:47 PM
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
-- Table structure for table `vegetable_db`
--

CREATE TABLE `vegetable_db` (
  `Vegetable_Name` varchar(50) NOT NULL,
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
-- Dumping data for table `vegetable_db`
--

INSERT INTO `vegetable_db` (`Vegetable_Name`, `Base_Price_CropCart`, `Final_Price_CropCart`, `Base_Price_Swiggy`, `Final_Price_Swiggy`, `Base_Price_Blinkit`, `Final_Price_Blinkit`, `Base_Price_Zepto`, `Final_Price_Zepto`, `Base_Price_AmazonFresh`, `Final_Price_AmazonFresh`, `image`) VALUES
('Bitter Gourd', 60.00, 70.00, 70.00, 80.00, 65.00, 75.00, 68.00, 78.00, 75.00, 85.00, 'https://bio-basket.com/cdn/shop/files/40.png?v=1697100181'),
('Bottle Gourd', 30.00, 40.00, 40.00, 50.00, 35.00, 45.00, 38.00, 48.00, 45.00, 55.00, 'https://organicmandya.com/cdn/shop/files/BottleGourd.jpg?v=1721370697&width=1024'),
('Brinjal', 40.00, 50.00, 50.00, 60.00, 45.00, 55.00, 48.00, 58.00, 55.00, 65.00, 'https://dukaan.b-cdn.net/700x700/webp/4346879/44c94dd7-0f2e-4181-858f-730e62181254/1620717784377-f845650c-e3b0-4c88-b502-0ea3e95fe332.jpeg'),
('Broccoli', 100.00, 110.00, 110.00, 120.00, 105.00, 115.00, 108.00, 118.00, 115.00, 125.00, 'https://www.heddensofwoodtown.co.uk/wp-content/uploads/2020/05/broccoli_opt.jpg'),
('Cabbage', 30.00, 40.00, 40.00, 50.00, 35.00, 45.00, 38.00, 48.00, 45.00, 55.00, 'https://agricareassociates.com/wp-content/uploads/2019/12/p5.jpg'),
('Carrot', 40.00, 50.00, 50.00, 60.00, 45.00, 55.00, 48.00, 58.00, 55.00, 65.00, 'https://exat8rt6fi5.exactdn.com/wp-content/uploads/2022/05/carrot-01.jpg?strip=all&lossy=1&ssl=1'),
('Cauliflower', 50.00, 60.00, 60.00, 70.00, 55.00, 65.00, 58.00, 68.00, 65.00, 75.00, 'https://m.media-amazon.com/images/I/91EdPVzD99L._AC_UF1000,1000_QL80_.jpg'),
('Garlic', 165.00, 185.00, 180.00, 200.00, 170.00, 190.00, 175.00, 195.00, 190.00, 210.00, 'https://m.media-amazon.com/images/I/71vpJSiNYeL.jpg'),
('Ginger', 130.00, 140.00, 140.00, 150.00, 135.00, 145.00, 138.00, 148.00, 145.00, 155.00, 'https://www.jiomart.com/images/product/original/590003175/ginger-200-g-product-images-o590003175-p590003175-1-202410011749.jpg?im=Resize=(420,420)'),
('Ladyfinger', 70.00, 80.00, 80.00, 90.00, 75.00, 85.00, 78.00, 88.00, 85.00, 95.00, 'https://sakatavegetables.com/wp-content/uploads/2021/08/Okra.jpg'),
('Onion', 40.00, 47.00, 45.00, 50.00, 43.00, 48.00, 47.00, 52.00, 50.00, 55.00, 'https://www.jiomart.com/images/product/original/590003627/onion-red-1-kg-pack-product-images-o590003627-p590087382-1-202410141659.jpg?im=Resize=(420,420)'),
('Potato', 20.00, 28.00, 25.00, 30.00, 23.00, 28.00, 27.00, 32.00, 30.00, 35.00, 'https://m.media-amazon.com/images/I/41QKCkQ2A5L.jpg'),
('Spinach', 30.00, 40.00, 35.00, 40.00, 33.00, 38.00, 37.00, 42.00, 40.00, 45.00, 'https://gabbarfarms.com/cdn/shop/products/Spinach_1000x.jpg?v=1620713074'),
('Tomato', 30.00, 38.00, 35.00, 40.00, 33.00, 38.00, 37.00, 42.00, 40.00, 45.00, 'https://upload.wikimedia.org/wikipedia/commons/8/89/Tomato_je.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vegetable_db`
--
ALTER TABLE `vegetable_db`
  ADD PRIMARY KEY (`Vegetable_Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
