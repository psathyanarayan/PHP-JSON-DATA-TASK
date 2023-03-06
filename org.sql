-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 06, 2023 at 08:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpInternship`
--

-- --------------------------------------------------------

--
-- Table structure for table `org`
--

CREATE TABLE `org` (
  `id` bigint(20) DEFAULT 1,
  `org_ref` int(11) DEFAULT 1,
  `company_ref` int(11) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_customer_code` varchar(64) DEFAULT NULL,
  `order_item_code` varchar(64) DEFAULT NULL,
  `order_batch_name` varchar(128) DEFAULT NULL,
  `order_batch_expiry` date DEFAULT NULL,
  `order_qty` decimal(10,3) DEFAULT NULL,
  `order_rate` decimal(10,2) DEFAULT NULL,
  `order_amount` decimal(10,2) DEFAULT NULL,
  `order_disc_percent` decimal(10,3) DEFAULT NULL,
  `order_disc_amount` decimal(10,2) DEFAULT NULL,
  `order_total_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `org`
--

INSERT INTO `org` (`id`, `org_ref`, `company_ref`, `order_number`, `order_date`, `order_customer_code`, `order_item_code`, `order_batch_name`, `order_batch_expiry`, `order_qty`, `order_rate`, `order_amount`, `order_disc_percent`, `order_disc_amount`, `order_total_amount`) VALUES
(1, 1, 123, 'ord1', '2020-10-01', 'ordcus1', 'orditem1', 'ordbatch1', '2020-10-01', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 124, 'ord2', '2020-10-02', 'ordcus2', 'orditem2', 'ordbatch2', '2020-10-02', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord3', '2020-10-03', 'ordcus3', 'orditem3', 'ordbatch3', '2020-10-03', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord4', '2020-10-04', 'ordcus4', 'orditem4', 'ordbatch4', '2020-10-04', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord5', '2020-10-05', 'ordcus5', 'orditem5', 'ordbatch5', '2020-10-04', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord6', '2020-10-07', 'ordcus6', 'orditem6', 'ordbatch6', '2020-10-06', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord7', '2020-10-07', 'ordcus7', 'orditem7', 'ordbatch7', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord8', '2020-10-08', 'ordcus8', 'orditem8', 'ordbatch8', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord9', '2020-10-09', 'ordcus9', 'orditem9', 'ordbatch9', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord10', '2020-10-09', 'ordcus10', 'orditem10', 'ordbatch10', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord11', '2020-10-09', 'ordcus11', 'orditem11', 'ordbatch11', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord12', '2020-10-09', 'ordcus12', 'orditem12', 'ordbatch12', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord13', '2020-10-09', 'ordcus13', 'orditem13', 'ordbatch13', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord14', '2020-10-09', 'ordcus14', 'orditem13', 'ordbatch14', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord15', '2020-10-09', 'ordcus15', 'orditem13', 'ordbatch15', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord15', '2020-10-09', 'ordcus15', 'orditem15', 'ordbatch15', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord16', '2020-10-09', 'ordcus16', 'orditem15', 'ordbatch15', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord17', '2020-10-09', 'ordcus17', 'orditem17', 'ordbatch17', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord18', '2020-10-09', 'ordcus18', 'orditem18', 'ordbatch18', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord19', '2020-10-09', 'ordcus19', 'orditem19', 'ordbatch19', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20'),
(1, 1, 123, 'ord20', '2020-10-09', 'ordcus20', 'orditem19', 'ordbatch19', '2020-10-07', '1000.000', '10.20', '10.20', '10.300', '100.20', '10.20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
