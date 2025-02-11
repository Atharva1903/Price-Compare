-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2025 at 07:14 AM
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
-- Table structure for table `products_db`
--

CREATE TABLE `products_db` (
  `Product_Name` varchar(100) NOT NULL,
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
  `Image_URL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_db`
--

INSERT INTO `products_db` (`Product_Name`, `Base_Price_CropCart`, `Final_Price_CropCart`, `Base_Price_Swiggy`, `Final_Price_Swiggy`, `Base_Price_Blinkit`, `Final_Price_Blinkit`, `Base_Price_Zepto`, `Final_Price_Zepto`, `Base_Price_AmazonFresh`, `Final_Price_AmazonFresh`, `Image_URL`) VALUES
('Apple', 120.00, 130.00, 140.00, 150.00, 135.00, 145.00, 138.00, 148.00, 145.00, 155.00, 'https://m.media-amazon.com/images/I/81AK2aQ8VvL._AC_UL320_.jpg'),
('Banana', 30.00, 37.00, 35.00, 40.00, 33.00, 38.00, 37.00, 42.00, 40.00, 45.00, 'https://m.media-amazon.com/images/I/51ebZJ+DR4L._AC_UL320_.jpg'),
('Barley', 50.00, 55.00, 55.00, 60.00, 53.00, 58.00, 57.00, 62.00, 60.00, 65.00, 'https://sahasa.in/wp-content/uploads/2020/12/malgalwedha-jowar_14.09.2020-e1609304604817.jpg?w=600'),
('Basil', 50.00, 55.00, 55.00, 60.00, 53.00, 58.00, 57.00, 62.00, 60.00, 65.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRWCdj8Jogw9WGr9ZSbvJ89-CuprNfDc-o5Q&s'),
('Bitter Gourd', 60.00, 70.00, 70.00, 80.00, 65.00, 75.00, 68.00, 78.00, 75.00, 85.00, 'https://bio-basket.com/cdn/shop/files/40.png?v=1697100181'),
('Black Pepper', 165.00, 180.00, 180.00, 200.00, 170.00, 190.00, 175.00, 195.00, 190.00, 210.00, 'https://assets.clevelandclinic.org/transform/65ddb397-7835-4b21-b30b-d123be3cb5c8/blackPepper-185067429-770x533-1_jpg'),
('Bottle Gourd', 30.00, 40.00, 40.00, 50.00, 35.00, 45.00, 38.00, 48.00, 45.00, 55.00, 'https://organicmandya.com/cdn/shop/files/BottleGourd.jpg?v=1721370697&width=1024'),
('Brinjal', 40.00, 50.00, 50.00, 60.00, 45.00, 55.00, 48.00, 58.00, 55.00, 65.00, 'https://dukaan.b-cdn.net/700x700/webp/4346879/44c94dd7-0f2e-4181-858f-730e62181254/1620717784377-f845650c-e3b0-4c88-b502-0ea3e95fe332.jpeg'),
('Broccoli', 100.00, 110.00, 110.00, 120.00, 105.00, 115.00, 108.00, 118.00, 115.00, 125.00, 'https://www.heddensofwoodtown.co.uk/wp-content/uploads/2020/05/broccoli_opt.jpg'),
('Butter', 80.00, 90.00, 90.00, 100.00, 85.00, 95.00, 88.00, 98.00, 95.00, 105.00, 'https://cdn.britannica.com/27/122027-050-EAA86783/Butter.jpg'),
('Cabbage', 30.00, 40.00, 40.00, 50.00, 35.00, 45.00, 38.00, 48.00, 45.00, 55.00, 'https://agricareassociates.com/wp-content/uploads/2019/12/p5.jpg'),
('Cardamom', 420.00, 475.00, 450.00, 500.00, 430.00, 480.00, 440.00, 490.00, 470.00, 520.00, 'https://www.wayanadgreenfresh.com/cdn/shop/products/caradom_2048x.jpg?v=1722004924'),
('Carrot', 40.00, 50.00, 50.00, 60.00, 45.00, 55.00, 48.00, 58.00, 55.00, 65.00, 'https://exat8rt6fi5.exactdn.com/wp-content/uploads/2022/05/carrot-01.jpg?strip=all&lossy=1&ssl=1'),
('Cauliflower', 50.00, 60.00, 60.00, 70.00, 55.00, 65.00, 58.00, 68.00, 65.00, 75.00, 'https://m.media-amazon.com/images/I/91EdPVzD99L._AC_UF1000,1000_QL80_.jpg'),
('Cheese', 160.00, 180.00, 180.00, 200.00, 170.00, 190.00, 175.00, 195.00, 190.00, 210.00, 'https://marias.com.au/cdn/shop/products/shredded-mozzarella-cheese.jpg?v=1584871289'),
('Chickpeas', 80.00, 90.00, 90.00, 100.00, 85.00, 95.00, 88.00, 98.00, 95.00, 105.00, 'https://nutritionsource.hsph.harvard.edu/wp-content/uploads/2024/11/AdobeStock_118383793-1024x683.jpeg'),
('Chilli', 60.00, 70.00, 70.00, 80.00, 65.00, 75.00, 68.00, 78.00, 75.00, 85.00, 'https://www.greendna.in/cdn/shop/products/green_chilli_1229x.jpg?v=1562414368'),
('Coriander', 40.00, 45.00, 45.00, 50.00, 43.00, 48.00, 47.00, 52.00, 50.00, 55.00, 'https://images.immediate.co.uk/production/volatile/sites/10/2018/02/e0f2e690-693d-4539-a203-e5868d04309a-86ece10.jpg'),
('Cumin', 130.00, 140.00, 140.00, 150.00, 135.00, 145.00, 138.00, 148.00, 145.00, 155.00, 'https://images.squarespace-cdn.com/content/v1/52bc612ae4b038e4d94a53e6/6189786f-95c0-402a-9662-aa0743dd5796/Cumin+%284%29.JPG'),
('Curd', 30.00, 35.00, 35.00, 40.00, 33.00, 38.00, 37.00, 42.00, 40.00, 45.00, 'https://enjoyinfourseason.com/wp-content/uploads/2022/05/Fourseason-PLAIN-CURD.jpg'),
('Curry Leaves', 20.00, 25.00, 25.00, 30.00, 23.00, 28.00, 27.00, 32.00, 30.00, 35.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlyhVQTGNyA75ATVKcyRz8SMk980lbJ3zOFw&s'),
('Garlic', 165.00, 185.00, 180.00, 200.00, 170.00, 190.00, 175.00, 195.00, 190.00, 210.00, 'https://m.media-amazon.com/images/I/71vpJSiNYeL.jpg'),
('Ghee', 420.00, 470.00, 450.00, 500.00, 430.00, 480.00, 440.00, 490.00, 470.00, 520.00, 'https://www.cookwithkushi.com/wp-content/uploads/2022/10/best_homemade_traditional_desi_ghee.jpg'),
('Ginger', 130.00, 140.00, 140.00, 150.00, 135.00, 145.00, 138.00, 148.00, 145.00, 155.00, 'https://www.jiomart.com/images/product/original/590003175/ginger-200-g-product-images-o590003175-p590003175-1-202410011749.jpg?im=Resize=(420,420)'),
('Grapes', 100.00, 110.00, 110.00, 120.00, 105.00, 115.00, 108.00, 118.00, 115.00, 125.00, 'https://m.media-amazon.com/images/I/61xrIAiNe9L._AC_UL320_.jpg'),
('Guava', 42.00, 50.00, 50.00, 60.00, 45.00, 55.00, 48.00, 58.00, 55.00, 65.00, 'https://m.media-amazon.com/images/I/51uE48ebbxL._AC_UL320_.jpg'),
('Ladyfinger', 70.00, 80.00, 80.00, 90.00, 75.00, 85.00, 78.00, 88.00, 85.00, 95.00, 'https://sakatavegetables.com/wp-content/uploads/2021/08/Okra.jpg'),
('Maize', 30.00, 35.00, 35.00, 40.00, 33.00, 38.00, 37.00, 42.00, 40.00, 45.00, 'https://abundancewholesomefoods.co.za/wp-content/uploads/sweetcorn.jpg'),
('Mango', 170.00, 185.00, 180.00, 200.00, 170.00, 190.00, 175.00, 195.00, 190.00, 210.00, 'https://m.media-amazon.com/images/I/51FRr8EcA8L._AC_UL320_.jpg'),
('Masoor Dal', 100.00, 110.00, 110.00, 120.00, 105.00, 115.00, 108.00, 118.00, 115.00, 125.00, 'https://vibrantliving.in/cdn/shop/files/RedMasoorDalSplitSkinless.jpg?v=1731059680&width=2048'),
('Milk', 40.00, 45.00, 45.00, 50.00, 43.00, 48.00, 47.00, 52.00, 50.00, 55.00, 'https://upload.wikimedia.org/wikipedia/commons/f/fc/004-soymilk.jpg'),
('Millet', 70.00, 80.00, 80.00, 90.00, 75.00, 85.00, 78.00, 88.00, 85.00, 95.00, 'https://vibrantliving.in/cdn/shop/files/BajraMillet_Sajjalu.png?v=1731059068&width=2048'),
('Mint', 30.00, 35.00, 35.00, 40.00, 33.00, 38.00, 37.00, 42.00, 40.00, 45.00, 'https://gardenerspath.com/wp-content/uploads/2024/03/Best-Mint-Varieties-Feature.jpg'),
('Moong Dal', 110.00, 120.00, 120.00, 130.00, 115.00, 125.00, 118.00, 128.00, 125.00, 135.00, 'https://theplantbasedschool.com/wp-content/uploads/2024/02/Mung-dal-2-1.jpg'),
('Mustard Seeds', 50.00, 62.00, 60.00, 70.00, 55.00, 65.00, 58.00, 68.00, 65.00, 75.00, 'https://image1.jdomni.in/product/31012024/6D/8C/E4/43425F270603ACE8188F75C8BE_1706683513127.jpg?fit=around|500:500'),
('Onion', 40.00, 47.00, 45.00, 50.00, 43.00, 48.00, 47.00, 52.00, 50.00, 55.00, 'https://www.jiomart.com/images/product/original/590003627/onion-red-1-kg-pack-product-images-o590003627-p590087382-1-202410141659.jpg?im=Resize=(420,420)'),
('Orange', 60.00, 70.00, 70.00, 80.00, 65.00, 75.00, 68.00, 78.00, 75.00, 85.00, 'https://m.media-amazon.com/images/I/41SN44--WKL._AC_UL320_.jpg'),
('Papaya', 30.00, 40.00, 40.00, 50.00, 35.00, 45.00, 38.00, 48.00, 45.00, 55.00, 'https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/6df726d012d112bf79fbe258cf0550be'),
('Peas', 60.00, 70.00, 70.00, 80.00, 65.00, 75.00, 68.00, 78.00, 75.00, 85.00, 'https://goodness-farm.com/wp-content/uploads/2024/06/greenpeas_40f8a6c5-d937-42f0-916e-c0d795a0ec37_600x.jpg'),
('Pineapple', 72.00, 80.00, 80.00, 90.00, 75.00, 85.00, 78.00, 88.00, 85.00, 95.00, 'https://organicmandya.com/cdn/shop/files/Pineapple.jpg?v=1721375225&width=1000'),
('Pomegranate', 148.00, 162.00, 160.00, 180.00, 150.00, 170.00, 155.00, 175.00, 170.00, 190.00, 'https://m.media-amazon.com/images/I/611a1wD9ZGL.jpg'),
('Potato', 20.00, 28.00, 25.00, 30.00, 23.00, 28.00, 27.00, 32.00, 30.00, 35.00, 'https://m.media-amazon.com/images/I/41QKCkQ2A5L.jpg'),
('Rice', 40.00, 45.00, 45.00, 50.00, 43.00, 48.00, 47.00, 52.00, 50.00, 55.00, 'https://www.health.com/thmb/a8GxwWgmB5KpQW8SfW6VA7UFwaI=/722x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1734160670-0157c2daf8e841d6a783b38aedc51aa8.jpg'),
('Spinach', 30.00, 40.00, 35.00, 40.00, 33.00, 38.00, 37.00, 42.00, 40.00, 45.00, 'https://gabbarfarms.com/cdn/shop/products/Spinach_1000x.jpg?v=1620713074'),
('Tomato', 30.00, 38.00, 35.00, 40.00, 33.00, 38.00, 37.00, 42.00, 40.00, 45.00, 'https://upload.wikimedia.org/wikipedia/commons/8/89/Tomato_je.jpg'),
('Toor Dal', 130.00, 140.00, 140.00, 150.00, 135.00, 145.00, 138.00, 148.00, 145.00, 155.00, 'https://cdn.shopaccino.com/edible-smart/products/toor-dal-min-scaled-740285_l.jpg?v=530'),
('Turmeric', 80.00, 90.00, 90.00, 100.00, 85.00, 95.00, 88.00, 98.00, 95.00, 105.00, 'https://domf5oio6qrcr.cloudfront.net/medialibrary/15065/conversions/fa246ce0-054b-4892-bf30-5eb43cd938aa-thumb.jpg'),
('Urad Dal', 120.00, 130.00, 130.00, 140.00, 125.00, 135.00, 128.00, 138.00, 135.00, 145.00, 'https://c.ndtvimg.com/2023-09/a9ubmmd8_urad-dal_625x300_06_September_23.jpg?im=FaceCrop,algorithm=dnn,width=1200,height=886'),
('Watermelon', 52.00, 60.00, 60.00, 70.00, 55.00, 65.00, 58.00, 68.00, 65.00, 75.00, 'https://m.media-amazon.com/images/I/61r5l3+Ml7L.jpg'),
('Wheat', 25.00, 28.00, 28.00, 30.00, 27.00, 29.00, 29.00, 31.00, 30.00, 32.00, 'https://organicmandya.com/cdn/shop/files/WheatWhole_2_de1e8667-567f-47bb-98e8-9b8523c6ba86.jpg?v=1738129189&width=1000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products_db`
--
ALTER TABLE `products_db`
  ADD PRIMARY KEY (`Product_Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
