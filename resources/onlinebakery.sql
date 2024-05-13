-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2024 at 12:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinebakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`id`, `full_name`, `username`, `password`) VALUES
(4, 'Administrator', 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `Contacts`
--

CREATE TABLE `Contacts` (
  `id` int(100) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Contacts`
--

INSERT INTO `Contacts` (`id`, `name`, `mail_id`, `phone`) VALUES
(73, 'Khushi P Gowda', 'khushigowda603@gmail.com', '7338234541'),
(89, 'Mohana S', 's.mohana26062001@gmail.com', '9945189256'),
(97, 'Neha S Shetti', 'nehalasa@gmail.com', '8105633841');

-- --------------------------------------------------------

--
-- Table structure for table `Flavors`
--

CREATE TABLE `Flavors` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Flavors`
--

INSERT INTO `Flavors` (`id`, `title`, `price`, `image_name`, `product_id`, `featured`, `active`) VALUES
(3, 'Turtle Bread', 95.00, 'turtle-bread.jpg', 4, 'Yes', 'Yes'),
(4, 'Boba', 160.00, 'SHAKES.jpg', 5, 'Yes', 'Yes'),
(5, 'Chocolate Truffle Cake', 550.00, 'chocolate-truffle-cake.jpeg', 1, 'Yes', 'Yes'),
(7, 'Red Velvet Cake', 540.00, 'red-velvet-cake.jpg', 1, 'Yes', 'Yes'),
(8, 'Sprinkle Donut', 60.00, 'sprinkle-donut.jpg', 2, 'Yes', 'Yes'),
(9, 'Rainbow Cake', 570.00, 'rainbow-cake.jpg', 1, 'Yes', 'Yes'),
(10, 'Raspberry Cupcake', 80.00, 'raspberry-cupcake.jpg', 3, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `Order`
--

CREATE TABLE `Order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Order`
--

INSERT INTO `Order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Raspberry Cupcake', 80.00, 1, 80.00, '2021-09-04 01:35:34', 'Delivered', 'Martha Woods', '78540001200', 'marthagmail.com', '478 Avenue Street'),
(2, 'Raspberry Cupcake', 80.00, 2, 160.00, '2021-11-30 04:07:17', 'Delivered', 'Thomas Gilchrist', '7410001450', 'thom@gmail.com', '1277 Sunburst Drive'),
(3, 'Turtle Bread', 95.00, 1, 95.00, '2021-07-20 06:10:37', 'Delivered', 'Charlie', '7458965550', 'charlie@gmail.com', '3140 Bartlett Avenue'),
(4, 'Boba', 160.00, 4, 640.00, '2021-07-20 07:11:06', 'Delivered', 'Jonathan Caudill', '7410256996', 'jonathan@gmail.com', '1959 Limer Street'),
(5, 'Turtle Bread', 95.00, 4, 380.00, '2021-07-20 07:06:06', 'Cancelled', 'Carlos Grayson', '7401456980', 'carlos@gmail.com', '2969 Hartland Avenue'),
(7, 'Red Velvet Cake', 540.00, 1, 540.00, '2022-01-20 06:40:57', 'Ordered', 'Vernon Vargas', '7414744440', 'venno@gmail.com', '1234 Hazelwood Avenue'),
(8, 'Sprinkle Donut', 60.00, 2, 120.00, '2022-01-20 06:40:21', 'On Delivery', 'Claudia Hedley', '7451114400', 'hedley@gmail.com', '1119 Kinney Street'),
(9, 'Rainbow Cake', 570.00, 4, 2280.00, '2021-11-30 03:52:43', 'Delivered', 'Kelly Dillard', '7896547800', 'kelly@gmail.com', '308 Post Avenue');

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(1, 'Cakes', 'CAKE.jpg', 'Yes', 'Yes'),
(2, 'Donuts', 'DONUT.jpg', 'Yes', 'Yes'),
(3, 'Cupcakes', 'CUPCAKE.jpg', 'Yes', 'Yes'),
(4, 'Bread', 'BREAD.jpg', 'Yes', 'Yes'),
(5, 'Beverages', 'SHAKES.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `Shipper`
--

CREATE TABLE `Shipper` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `Shipper`
--

INSERT INTO `Shipper` (`id`, `name`, `city`, `phone`) VALUES
(1, 'Harry Styles', 'Bangalore', '8105633841'),
(2, 'Jake Peralta', 'Pune', '9945189256'),
(3, 'Jughead Jones', 'Kolkata', '8026722976'),
(4, 'Sheldon Cooper', 'Jaipur', '7338234541');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Contacts`
--
ALTER TABLE `Contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Flavors`
--
ALTER TABLE `Flavors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Order`
--
ALTER TABLE `Order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Shipper`
--
ALTER TABLE `Shipper`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Contacts`
--
ALTER TABLE `Contacts`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `Flavors`
--
ALTER TABLE `Flavors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Order`
--
ALTER TABLE `Order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Shipper`
--
ALTER TABLE `Shipper`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
