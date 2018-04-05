-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2018 at 05:10 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `acc_id` int(11) NOT NULL,
  `acc_username` varchar(25) NOT NULL,
  `acc_pass` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_fn` varchar(20) NOT NULL,
  `cust_mn` varchar(20) NOT NULL,
  `cust_ln` varchar(20) NOT NULL,
  `cust_add` varchar(50) NOT NULL,
  `cust_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `custorder`
--

CREATE TABLE `custorder` (
  `corder_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `cdate` date NOT NULL,
  `cstatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `orderprod_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `corder_id` int(11) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prod_category`
--

CREATE TABLE `prod_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prod_category`
--

INSERT INTO `prod_category` (`category_id`, `category_name`) VALUES
(1, 'Bath and Body'),
(2, 'Hair Care'),
(3, 'Makeup'),
(4, 'Skin care'),
(5, 'Supplements');

-- --------------------------------------------------------

--
-- Table structure for table `prod_model`
--

CREATE TABLE `prod_model` (
  `prod_id` int(11) NOT NULL,
  `prod_name` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `prod_image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prod_stock`
--

CREATE TABLE `prod_stock` (
  `stock_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `stock_no` int(11) NOT NULL,
  `UOM` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prod_type`
--

CREATE TABLE `prod_type` (
  `type_id` int(11) NOT NULL,
  `type_desc` varchar(30) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prod_type`
--

INSERT INTO `prod_type` (`type_id`, `type_desc`, `category_id`) VALUES
(1, 'Body gel', 1),
(2, 'Body moisturizer', 1),
(5, 'Deodorants', 1),
(6, 'Sun protection', 1),
(7, 'Hair coloring', 2),
(8, 'Skin cleanser', 3),
(9, 'Skin treatment', 3),
(10, 'Creams', 3),
(13, 'Lipstick', 4),
(14, 'Eyes shadow', 4),
(15, 'Beauty supplements', 5),
(16, 'Well being', 5),
(17, 'Multivitamins', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`acc_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `custorder`
--
ALTER TABLE `custorder`
  ADD PRIMARY KEY (`corder_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`orderprod_id`),
  ADD KEY `corder_id` (`corder_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `prod_category`
--
ALTER TABLE `prod_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `prod_model`
--
ALTER TABLE `prod_model`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `prod_stock`
--
ALTER TABLE `prod_stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `prod_type`
--
ALTER TABLE `prod_type`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `acc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custorder`
--
ALTER TABLE `custorder`
  MODIFY `corder_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `orderprod_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prod_category`
--
ALTER TABLE `prod_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `prod_model`
--
ALTER TABLE `prod_model`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prod_stock`
--
ALTER TABLE `prod_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prod_type`
--
ALTER TABLE `prod_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custorder`
--
ALTER TABLE `custorder`
  ADD CONSTRAINT `custorder_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_ibfk_1` FOREIGN KEY (`corder_id`) REFERENCES `custorder` (`corder_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_products_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `prod_model` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prod_model`
--
ALTER TABLE `prod_model`
  ADD CONSTRAINT `prod_model_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `prod_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prod_stock`
--
ALTER TABLE `prod_stock`
  ADD CONSTRAINT `prod_stock_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `prod_model` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prod_type`
--
ALTER TABLE `prod_type`
  ADD CONSTRAINT `prod_type_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `prod_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
