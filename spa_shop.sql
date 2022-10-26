-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 27, 2022 at 01:54 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spa_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL COMMENT 'รหัสสินค้า',
  `p_title` mediumtext COLLATE utf8mb4_thai_520_w2 NOT NULL COMMENT 'ชื่อสินค้า',
  `p_description` mediumtext COLLATE utf8mb4_thai_520_w2 NOT NULL COMMENT 'รายละเอียดสินค้า',
  `p_price` float NOT NULL COMMENT 'ราคาสินค้า',
  `p_category` enum('กางเกงขายาว','กางเกงยีนส์','เสื้อยืด','เสื้อแขนยาว') COLLATE utf8mb4_thai_520_w2 NOT NULL COMMENT 'หมวดหมู่สินค้า',
  `p_image_path` mediumtext COLLATE utf8mb4_thai_520_w2 NOT NULL COMMENT 'รูปภาพสินค้า',
  `p_subimage_1` text COLLATE utf8mb4_thai_520_w2 NOT NULL COMMENT 'รูปภาพเพิ่มเติม 1',
  `p_subimage_2` text COLLATE utf8mb4_thai_520_w2 NOT NULL COMMENT 'รูปภาพเพิ่มเติม 2',
  `p_subimage_3` text COLLATE utf8mb4_thai_520_w2 NOT NULL COMMENT 'รูปภาพเพิ่มเติม 3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_title`, `p_description`, `p_price`, `p_category`, `p_image_path`, `p_subimage_1`, `p_subimage_2`, `p_subimage_3`) VALUES
(4, 'Crew Neck Short Sleeve', 'T-Shirt Uniqlo', 290, 'เสื้อยืด', 'https://image.uniqlo.com/UQ/ST3/WesternCommon/imagesgoods/452146/item/goods_69_452146.jpg?width=750', 'https://image.uniqlo.com/UQ/ST3/WesternCommon/imagesgoods/452146/sub/goods_452146_sub23.jpg?width=750', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/445000/sub/goods_445000_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/445000/sub/goods_445000_sub19.jpg?width=1600&impolicy=quality_75'),
(5, 'AIRism Cotton', 'T-Shirt Uniqlo', 390, 'เสื้อยืด', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/447683/item/goods_67_447683.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/447683/sub/goods_447683_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/447683/sub/goods_447683_sub28.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/447683/sub/goods_447683_sub19.jpg?width=1600&impolicy=quality_75'),
(6, 'Mini Short Sleeve', 'T-Shirt Uniqlo', 490, 'เสื้อยืด', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/455762/sub/goods_455762_sub14.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/455762/sub/goods_455762_sub17.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/455762/sub/goods_455762_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/455762/sub/goods_455762_sub19.jpg?width=1600&impolicy=quality_75'),
(7, 'Ribbed Crew Neck Half Sleeve', 'T-Shirt Uniqlo', 590, 'เสื้อยืด', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/452213/item/goods_35_452213.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/452213/sub/goods_452213_sub17.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/452213/sub/goods_452213_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/452213/sub/goods_452213_sub24.jpg?width=1600&impolicy=quality_75'),
(9, 'Ultra Light Pants', 'Cotton Like', 1490, 'กางเกงขายาว', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/441242/item/goods_32_441242.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/441242/sub/goods_441242_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/441242/sub/goods_441242_sub19.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/441242/sub/goods_441242_sub20.jpg?width=1600&impolicy=quality_75'),
(10, 'Smart Ankle Pants', '2WAY Stretch (Solid)', 990, 'กางเกงขายาว', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/434844/item/goods_06_434844.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/434844/sub/goods_434844_sub17.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/434844/sub/goods_434844_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/434844/sub/goods_434844_sub19.jpg?width=1600&impolicy=quality_75'),
(11, 'Ultra Light Pants', 'UNIQLO WOMEN PANTS', 1490, 'กางเกงขายาว', 'https://image.uniqlo.com/UQ/ST3/th/imagesgoods/445237/item/thgoods_32_445237.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/445237/sub/goods_445237_sub17.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/445237/sub/goods_445237_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/445237/sub/goods_445237_sub19.jpg?width=1600&impolicy=quality_75'),
(12, 'Smart Ankle Pants', '2WAY Stretch', 790, 'กางเกงขายาว', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/425344/item/goods_09_425344.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/425344/sub/goods_425344_sub17.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/425344/sub/goods_425344_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/425344/sub/goods_425344_sub19.jpg?width=1600&impolicy=quality_75'),
(13, 'Ultra Stretch Skinny Fit Jeans', 'UNIQLO JEANS', 1490, 'กางเกงยีนส์', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/454562/sub/goods_454562_sub14.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/454562/sub/goods_454562_sub17.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/454562/sub/goods_454562_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/454562/sub/goods_454562_sub20.jpg?width=1600&impolicy=quality_75'),
(14, 'Ultra Stretch Skinny Fit', 'UNIQLO JEANS', 990, 'กางเกงยีนส์', 'https://image.uniqlo.com/UQ/ST3/th/imagesgoods/444589/item/thgoods_57_444589.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/444589/sub/goods_444589_sub17.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/444589/sub/goods_444589_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/444589/sub/goods_444589_sub19.jpg?width=1600&impolicy=quality_75'),
(15, 'Loose Cropped Jeans', 'Damaged', 1490, 'กางเกงยีนส์', 'https://image.uniqlo.com/UQ/ST3/th/imagesgoods/448429/item/thgoods_66_448429.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/448429/sub/goods_448429_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/448429/sub/goods_448429_sub19.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/448429/sub/goods_448429_sub21.jpg?width=1600&impolicy=quality_75'),
(16, 'Peg Top High Rise Jeans', 'Damaged', 990, 'กางเกงยีนส์', 'https://image.uniqlo.com/UQ/ST3/th/imagesgoods/448430/item/thgoods_63_448430.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/448430/sub/goods_448430_sub14.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/448430/sub/goods_448430_sub15.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/448430/sub/goods_448430_sub17.jpg?width=1600&impolicy=quality_75'),
(17, 'Soft Twill Stand Collar', 'Long Sleeve Shirt', 990, 'เสื้อแขนยาว', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/441767/item/goods_69_441767.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/441767/sub/goods_441767_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/441767/sub/goods_441767_sub20.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/441767/sub/goods_441767_sub22.jpg?width=1600&impolicy=quality_75'),
(18, 'Extra Fine Cotton Broadcloth', 'Long Sleeve Shirt', 990, 'เสื้อแขนยาว', 'https://image.uniqlo.com/UQ/ST3/th/imagesgoods/456648/sub/thgoods_456648_sub14.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/th/imagesgoods/456648/sub/thgoods_456648_sub17.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/th/imagesgoods/456648/sub/thgoods_456648_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/th/imagesgoods/456648/sub/thgoods_456648_sub19.jpg?width=1600&impolicy=quality_75'),
(19, 'Premium Linen Stands Collar Striped', 'Long Sleeve Shirt', 790, 'เสื้อแขนยาว', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/446997/item/goods_66_446997.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/446997/sub/goods_446997_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/446997/sub/goods_446997_sub19.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/446997/sub/goods_446997_sub20.jpg?width=1600&impolicy=quality_75'),
(20, 'Premium Linen Stands Collar', 'Long Sleeve Shirt', 790, 'เสื้อแขนยาว', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/446996/sub/goods_446996_sub14.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/446996/sub/goods_446996_sub18.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/446996/sub/goods_446996_sub20.jpg?width=1600&impolicy=quality_75', 'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/446996/sub/goods_446996_sub24.jpg?width=1600&impolicy=quality_75');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสินค้า', AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
