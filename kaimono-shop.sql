-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 06:24 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kaimono-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(25, 'Men Label Decor Baseball Cap', 'Color: Black', '170.00', '200.00', 100, 'images/accessories/baseball-cap.png', '2022-05-19 11:43:33'),
(26, 'Men Minimalist Bow Tie', 'Color: Blue', '115.00', '200.00', 50, 'images/accessories/bow-tie.png', '2022-05-19 11:46:28'),
(27, 'Bear Decor Bucket Hat', 'Color: Black and Brown', '80.00', '150.00', 30, 'images/accessories/bucket-hat.png', '2022-05-19 11:50:32'),
(28, 'Flower Buckle Belt', 'Color: Brown', '50.00', '150.00', 100, 'images/accessories/buckle-belt.png', '2022-05-19 11:52:11'),
(29, 'Men Square Frame Glasses', 'Color: Black', '220.00', '300.00', 150, 'images/accessories/fashion-glasses.png', '2022-05-19 11:57:06'),
(30, '2pcs Minimalist Hair Claw', 'Color: Cream and Brown', '50.00', '100.00', 200, 'images/accessories/hair-claws.png', '2022-05-19 11:57:06'),
(31, 'Metal Frame Glasses ', 'Color: Black', '180.00', '310.00', 300, 'images/accessories/metal-glasses.png', '2022-05-19 12:00:02'),
(32, 'Men PU Buckle Belt', 'Color: Brown', '150.00', '230.00', 160, 'images/accessories/pu-belt.png', '2022-05-19 12:00:02'),
(33, 'Men PU Gloves', 'Color: Black', '310.00', '200.00', 30, 'images/accessories/pu-gloves.png', '2022-05-19 12:02:54'),
(34, 'Men Striped Bandana', 'Color: Black, White, and Brown', '110.00', '150.00', 200, 'images/accessories/stripped-bandana.png', '2022-05-19 12:02:54'),
(35, 'Men Clutch With Wristlet', 'Color: Brown', '305.00', '410.00', 300, 'images/bags/bag-wristlet.png', '2022-05-19 12:41:42'),
(36, 'Metal Decor Fuzzy Circle Bag', 'Color: Pink', '180.00', '270.00', 100, 'images/bags/circle-bag.png', '2022-05-19 12:41:42'),
(37, 'Glitter Chain Clutch Bag', 'Color: Gold', '520.00', '650.00', 20, 'images/bags/clutch-bag.png', '2022-05-19 12:46:40'),
(38, 'Crocodile Embossed Coin Purse', 'Color: Black', '115.00', '150.00', 119, 'images/bags/coin-purse.png', '2022-05-19 12:46:40'),
(39, 'Men Crossbody With Bag Charm', 'Color: Black', '650.00', '910.00', 10, 'images/bags/crossbody-bag.png', '2022-05-19 12:51:09'),
(40, 'Men Letter Detail Briefcase', 'Color: Black', '650.00', '800.00', 20, 'images/bags/detail-briefcase.png', '2022-05-19 12:51:09'),
(41, 'Buckle & Knot Backpack', 'Color: White and Pink', '590.00', '730.00', 54, 'images/bags/functional-backpack.png', '2022-05-19 12:54:54'),
(42, 'Sequin Decor Clutch Bag', 'Color: Silver', '510.00', '670.00', 32, 'images/bags/sequin-bag.png', '2022-05-19 12:54:54'),
(43, 'Men Minimalist Flap Square Bag', 'Color: Black', '515.00', '645.00', 245, 'images/bags/square-bag.png', '2022-05-19 12:58:30'),
(44, 'Men Letter Graphic Tote Bag', 'Color: Brown', '610.00', '740.00', 43, 'images/bags/tote-bag.png', '2022-05-19 12:58:30'),
(45, 'Backless Tie Back A-line Dress', 'Color: Black', '485.00', '750.00', 25, 'images/dresses/backless-dress.png', '2022-05-19 13:04:43'),
(46, 'Zipper Back Glitter Cami Dress', 'Color: Brown', '980.00', '750.00', 186, 'images/dresses/cami-dress.png', '2022-05-19 13:04:43'),
(47, 'Floral-Print Belted Dress', 'Color: Brown', '480.00', '680.00', 674, 'images/dresses/floral-dress.png', '2022-05-19 13:21:39'),
(48, 'Fake Button Jacquard Dress', 'Color: White', '755.00', '900.00', 452, 'images/dresses/jacquard-dress.png', '2022-05-19 13:21:39'),
(49, 'Ruched Sleeve A-line Dress', 'Color: Red', '650.00', '820.00', 4, 'images/dresses/puff-dress.png', '2022-05-19 13:24:55'),
(50, 'Single Breasted Shirt Dress', 'Color: Brown', '500.00', '720.00', 10, 'images/dresses/shirt-dress.png', '2022-05-19 13:24:55'),
(51, 'Cut Out Puff Sleeve Dress', 'Color: Pink', '680.00', '970.00', 12, 'images/dresses/sleeve-dress.png', '2022-05-19 13:27:44'),
(52, 'Square Neck Smock Dress', 'Color: Red', '440.00', '605.00', 23, 'images/dresses/smock-dress.png', '2022-05-19 13:27:44'),
(53, 'Notched Sleeve Tunic Dress', 'Color: Green', '650.00', '970.00', 7, 'images/dresses/tunic-dress.png', '2022-05-19 13:34:53'),
(54, 'Minimalist Beaded Bracelet', 'Color: White', '110.00', '150.00', 143, 'images/jewelries/beaded-bracelet.png', '2022-05-19 13:42:17'),
(55, 'Men Geometric Charm Necklace', 'Color: Silver', '110.00', '150.00', 56, 'images/jewelries/charm-necklace.png', '2022-05-19 13:42:17'),
(56, 'Faux Pearl Decor Necklace', 'Color: White', '50.00', '110.00', 138, 'images/jewelries/decor-necklace.png', '2022-05-19 13:46:17'),
(57, 'Men 18k Gold Decor Ring', 'Color: Gold', '160.00', '250.00', 342, 'images/jewelries/decor-ring.png', '2022-05-19 13:46:17'),
(58, 'Men Star Drop Earrings', 'Color: White', '110.00', '190.00', 452, 'images/jewelries/drop-earrings.png', '2022-05-19 13:49:08'),
(59, 'Faux Pearl Flower Stud Earrings', 'Color: White', '50.00', '110.00', 321, 'images/jewelries/flower-earrings.png', '2022-05-19 13:49:08'),
(60, 'Square Pointer Quartz Watch', 'Color: Brown', '310.00', '535.00', 45, 'images/jewelries/quartz-watch.png', '2022-05-19 13:52:01'),
(61, 'Vintage Pointer Quartz Watch', 'Color: Brown', '255.00', '460.00', 78, 'images/jewelries/vintage-watch.png', '2022-05-19 13:52:01'),
(62, 'Figure Zip Up Lined Hoodie', 'Color: Black', '310.00', '560.00', 793, 'images/new-arrival/drawstring-hoodie.png', '2022-05-19 13:56:35'),
(63, 'Confetti Heart Sleeve Blouse', 'Color: Violet', '235.00', '470.00', 890, 'images/new-arrival/hem-blouse.png', '2022-05-19 13:56:35'),
(64, 'Plaid Print Slant Pocket Pants', 'Color: Brown and Yellow', '460.00', '600.00', 521, 'images/new-arrival/pocket-pants.png', '2022-05-19 14:00:09'),
(65, 'Men Blazer & Tailored Pants', 'Color: Black', '740.00', '990.00', 893, 'images/new-arrival/single-button.png', '2022-05-19 14:00:09'),
(66, 'Men Cable Contrast Sweater', 'Color: Black', '215.00', '325.00', 259, 'images/new-arrival/sweater-vest.png', '2022-05-19 14:03:38'),
(67, 'Men Tree & Drawstring Trunks', 'Color: Black', '120.00', '205.00', 348, 'images/new-arrival/swim-trunks.png', '2022-05-19 14:03:38'),
(68, 'Draped Bishop Sleeve Jumpsuit', 'Color: Green', '745.00', '910.00', 231, 'images/new-arrival/wide-leg.png', '2022-05-19 14:06:42'),
(69, 'Striped & Drawstring Shorts', 'Color: Brown, Blue, and White', '205.00', '325.00', 218, 'images/new-arrival/without-tee.png', '2022-05-19 14:06:42'),
(70, 'Men Minimalist Canvas Loafers', 'Color: Brown and Black', '805.00', '980.00', 43, 'images/shoes/canvas-loafers.png', '2022-05-19 14:11:50'),
(71, 'Men Lace-up Casual Sandals', 'Color: White', '650.00', '890.00', 31, 'images/shoes/casual-sandals.png', '2022-05-19 14:11:50'),
(72, 'Side-Zip Combat Boots', 'Color: Black', '850.00', '990.00', 5, 'images/shoes/combat-boots.png', '2022-05-19 14:15:19'),
(73, 'Men Lace-Up Boots', 'Color: Yellow', '835.00', '910.00', 9, 'images/shoes/design-boots.png', '2022-05-19 14:15:19'),
(74, 'Geometric Graphic Flats', 'Color: Brown', '350.00', '480.00', 12, 'images/shoes/detail-flats.png', '2022-05-19 14:18:12'),
(75, 'Two-Tone Espadrille Flats', 'Color: Brown', '830.00', '975.00', 23, 'images/shoes/espadrille-flats.png', '2022-05-19 14:18:12'),
(76, 'Square Toe Heeled Pumps', 'Color: Black', '735.00', '950.00', 11, 'images/shoes/mary-jane-pumps.png', '2022-05-19 14:21:00'),
(77, 'Men High Top Shoes', 'Color: White, Gray, and Yellow', '805.00', '995.00', 101, 'images/shoes/skate-shoes.png', '2022-05-19 14:21:00'),
(78, 'Floral Tie Back Dress', 'Color: White', '350.00', '715.00', 65, 'images/summer-collection/back-dress.png', '2022-05-19 14:54:06'),
(79, 'Breasted Blouse & Shorts Set', 'Color: Pink', '565.00', '780.00', 88, 'images/summer-collection/breasted-solid.png', '2022-05-19 14:54:06'),
(80, '2 In 1 Galaxy Mesh Skirt', 'Color: Black', '425.00', '605.00', 612, 'images/summer-collection/galaxy-skirt.png', '2022-05-19 14:56:54'),
(81, 'Floral Top & Skirt Set', 'Color: Red', '780.00', '915.00', 736, 'images/summer-collection/knot-straps.png', '2022-05-19 14:56:54'),
(82, 'Shirred Waist Pants', 'Color: Red', '540.00', '775.00', 922, 'images/summer-collection/leg-pants.png', '2022-05-19 15:00:29'),
(83, 'Crop Top & Pants Set', 'Color: Violet', '815.00', '995.00', 999, 'images/summer-collection/pants-set.png', '2022-05-19 15:00:29'),
(84, 'Sleeve Crop Top & Shorts', 'Color: White', '755.00', '995.00', 985, 'images/summer-collection/sleeve-ruffle.png', '2022-05-19 15:03:11'),
(85, 'Off Shoulder Top & Skirt Set', 'Color: Violet', '655.00', '890.00', 548, 'images/summer-collection/thigh-skirt.png', '2022-05-19 15:03:11'),
(86, 'Tie Back Bandana Cami Top', 'Color: White', '290.00', '415.00', 328, 'images/tops/cami-top.png', '2022-05-19 15:08:32'),
(87, 'Men Patched Corduroy Shirt', 'Color: Cream and White', '455.00', '765.00', 641, 'images/tops/corduroy-shirt.png', '2022-05-19 15:08:32'),
(88, 'Puff Sleeve Cutout Detail Top', 'Color: Black', '290.00', '425.00', 157, 'images/tops/cutout-top.png', '2022-05-19 15:11:42'),
(89, 'Floral Dolman Sleeve Blouse', 'Color: White', '255.00', '365.00', 473, 'images/tops/dolman-blouse.png', '2022-05-19 15:11:42'),
(90, 'Men Moon Hooded Tank Top', 'Color: Black and White', '445.00', '640.00', 233, 'images/tops/drawstring-top.png', '2022-05-19 15:16:55'),
(91, 'Figure & Slogan Shoulder Top', 'Color: Brown', '230.00', '345.00', 89, 'images/tops/drop-teedro.png', '2022-05-19 15:16:55'),
(92, 'Men Vertical & Floral Polo Shirt', 'Color: White, Black, Green, Yellow, and Brown', '540.00', '770.00', 329, 'images/tops/floral-polo.png', '2022-05-19 15:19:18'),
(93, 'Floral Embroidery Button Top', 'Color: Pink', '545.00', '780.00', 763, 'images/tops/floral-top.png', '2022-05-19 15:19:18'),
(94, 'Men Hooded Rib-knit Tee', 'Color: White and Gray', '430.00', '680.00', 544, 'images/tops/hooded-tee.png', '2022-05-19 15:21:56'),
(95, 'Criss Cross Rib-knit Top', 'Color: Green', '210.00', '280.00', 276, 'images/tops/knit-top.png', '2022-05-19 15:21:56'),
(96, 'Letter & Car Print Oversized Tee', 'Color: Brown', '355.00', '490.00', 37, 'images/tops/oversized-tee.png', '2022-05-19 15:24:24'),
(97, 'Men Solid Lapel Collar Polo Shirt', 'Color: Sky Blue', '490.00', '660.00', 75, 'images/tops/polo-shirt.png', '2022-05-19 15:24:24'),
(98, 'All-over Print Blouse', 'Color: Brown', '360.00', '535.00', 66, 'images/tops/print-blouse.png', '2022-05-19 15:27:11'),
(99, 'Men Single Breasted Satin Shirt', 'Color: Black', '485.00', '690.00', 31, 'images/tops/satin-shirt.png', '2022-05-19 15:27:11'),
(100, 'Men Checker Shoulder Tee', 'Color: White, Black, and Gray', '235.00', '460.00', 679, 'images/tops/shoulder-tee.png', '2022-05-19 15:30:15'),
(101, 'Men Letter Striped Tee', 'Color: White, Black, and Violet', '365.00', '545.00', 98, 'images/tops/striped-tee.png', '2022-05-19 15:30:15'),
(102, 'Waffle Knit Tank Top', 'Color: Brown', '280.00', '395.00', 325, 'images/tops/tank-top.png', '2022-05-19 15:32:44'),
(103, 'Men Graphic Polo Shirt', 'Color: Pink and Black', '555.00', '685.00', 980, 'images/tops/trim-polo.png', '2022-05-19 15:32:44'),
(104, 'Twist Front Slit Hem Dress', 'Color: Black and White\r\n', '565.00', '780.00', 234, 'images/dresses/front-slit.png', '2022-05-22 20:19:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
