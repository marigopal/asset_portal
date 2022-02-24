-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 10.0.21.134:3306
-- Generation Time: Feb 24, 2022 at 12:19 PM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_asset`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_uid` varchar(64) NOT NULL,
  `category_name` varchar(150) NOT NULL,
  `type` bigint(20) NOT NULL,
  `category_imagename` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_uid`, `category_name`, `type`, `category_imagename`, `is_deleted`) VALUES
('CATE_6206a7440b180', 'Laptop', 4, '', 0),
('CATE_6206a8df6ee30', 'RAM', 3, '', 0),
('CATE_620a3a9de75a8', 'Mouse', 5, '', 0),
('CATE_620b2e90874a2', 'Desktop', 4, '', 0),
('CATE_620cd7ceb1523', 'Keyboard', 5, '', 0),
('CATE_620cd7dc40fde', 'Monitor', 4, '', 0),
('CATE_62136cb819283', 'Laptop-US', 4, '', 0),
('CATE_621768311b49d', 'Laptop-Karur', 4, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `company_uid` varchar(64) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_imagename` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`company_uid`, `company_name`, `company_imagename`, `is_deleted`) VALUES
('COMP_620650781fdae', 'Pac Ind PvtLtd', '620650768bf14.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complogs`
--

CREATE TABLE `tbl_complogs` (
  `logs_uid` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL,
  `done_by` bigint(20) NOT NULL,
  `logs_type` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `asset_id` varchar(64) NOT NULL,
  `invoice_id` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_component`
--

CREATE TABLE `tbl_component` (
  `component_uid` varchar(64) NOT NULL,
  `asset_tag` varchar(100) NOT NULL,
  `assettag_number` bigint(20) NOT NULL,
  `warranty` bigint(20) NOT NULL,
  `inv_uid` varchar(64) NOT NULL,
  `category` varchar(64) NOT NULL,
  `manufacturer` varchar(64) NOT NULL,
  `model` varchar(64) NOT NULL,
  `model_no` varchar(64) NOT NULL,
  `serialno` varchar(100) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `status_id` varchar(64) NOT NULL,
  `asset_assign` varchar(64) NOT NULL,
  `assigned_user` varchar(64) NOT NULL DEFAULT '0',
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_component`
--

INSERT INTO `tbl_component` (`component_uid`, `asset_tag`, `assettag_number`, `warranty`, `inv_uid`, `category`, `manufacturer`, `model`, `model_no`, `serialno`, `remarks`, `status_id`, `asset_assign`, `assigned_user`, `is_deleted`) VALUES
('COMP_620c98a3978d9', 'DES0000001', 1, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '-', '-', '', '', '0', 1),
('COMP_620c9a711cd22', 'DES0000002', 2, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620c9aaee52cb', 'DES0000003', 3, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620c9c7767fcb', 'DES0000004', 4, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620c9c90349f5', 'DES0000005', 5, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620c9c9e8dfed', 'DES0000006', 6, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620c9d8593834', 'DES0000007', 7, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca6b3bc034', 'DES0000008', 8, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7207b2c8', 'DES0000009', 9, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca72fb0628', 'DES0000010', 10, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7377c90b', 'DES0000011', 11, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca73924064', 'DES0000012', 12, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca73ab36d5', 'DES0000013', 13, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca73c2ee93', 'DES0000014', 14, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca73da5d7a', 'DES0000015', 15, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca73f34e0e', 'DES0000016', 16, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca740afcfe', 'DES0000017', 17, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca74223271', 'DES0000018', 18, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7438f03d', 'DES0000019', 19, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7453fb89', 'DES0000020', 20, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7469d515', 'DES0000021', 21, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca74807a1c', 'DES0000022', 22, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca74ee93a8', 'DES0000023', 23, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca750e14c0', 'DES0000024', 24, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7528f476', 'DES0000025', 25, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7545f14d', 'DES0000026', 26, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca755d20a0', 'DES0000027', 27, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7573d338', 'DES0000028', 28, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca758b935e', 'DES0000029', 29, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca75a5bbfd', 'DES0000030', 30, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca75c295c1', 'DES0000031', 31, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca75d7a304', 'DES0000032', 32, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca75eecd71', 'DES0000033', 33, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca760da4bc', 'DES0000034', 34, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca76256e26', 'DES0000035', 35, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca763d359b', 'DES0000036', 36, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca76564473', 'DES0000037', 37, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca766c91ba', 'DES0000038', 38, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7683bc75', 'DES0000039', 39, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca769901f6', 'DES0000040', 40, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca76b0b559', 'DES0000041', 41, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca76c5acf3', 'DES0000042', 42, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca76e0c547', 'DES0000043', 43, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca76f6c890', 'DES0000044', 44, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca770cf598', 'DES0000045', 45, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7884d6a1', 'DES0000046', 46, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca789a137e', 'DES0000047', 47, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca78aee2d6', 'DES0000048', 48, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca78c728cb', 'DES0000049', 49, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca78dc7f3e', 'DES0000050', 50, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca78f3a953', 'DES0000051', 51, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca790e17a9', 'DES0000052', 52, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca792514aa', 'DES0000053', 53, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7939f29f', 'DES0000054', 54, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7a32473c', 'DES0000055', 55, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7a49ebe2', 'DES0000056', 56, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7a64043d', 'DES0000057', 57, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7a7a3d68', 'DES0000058', 58, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7a92221b', 'DES0000059', 59, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca7b2c4083', 'DES0000060', 60, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '0', 1),
('COMP_620ca9015863d', 'LAP0000001', 1, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca90e9613f', 'LAP0000002', 2, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca9106a292', 'LAP0000003', 3, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca911dbbf2', 'LAP0000004', 4, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca9175839e', 'LAP0000005', 5, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca918cc353', 'LAP0000006', 6, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca91a38aa9', 'LAP0000007', 7, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca91c4563f', 'LAP0000008', 8, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca91e4ae3f', 'LAP0000009', 9, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca9204219c', 'LAP0000010', 10, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca92218efa', 'LAP0000011', 11, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620cd403301fd', 'DES0000061', 61, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '99', 0),
('COMP_620cd4df54713', 'DES0000062', 62, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '109', 0),
('COMP_620cd4f36ffce', 'DES0000063', 63, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '212', 0),
('COMP_620cd4f53a1bd', 'DES0000064', 64, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '21', 0),
('COMP_620cd4f6a5871', 'DES0000065', 65, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '10', 0),
('COMP_620cd4f836ff2', 'DES0000066', 66, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '36', 0),
('COMP_620cd5de1c70d', 'DES0000067', 67, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '38', 0),
('COMP_620cd5df82d30', 'DES0000068', 68, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '157', 0),
('COMP_620cd5e18ba6f', 'DES0000069', 69, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '219', 0),
('COMP_620cd5e3a9348', 'DES0000070', 70, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '102', 0),
('COMP_620cd5e52d7bc', 'DES0000071', 71, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '136', 0),
('COMP_620cd5e723d87', 'DES0000072', 72, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '195', 0),
('COMP_620cd5e8b7d80', 'DES0000073', 73, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '208', 0),
('COMP_620cd5ea4dc49', 'DES0000074', 74, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '116', 0),
('COMP_620cd6205ebcb', 'DES0000075', 75, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '40', 0),
('COMP_620cd621d9d9a', 'DES0000076', 76, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '56', 0),
('COMP_620cd62351496', 'DES0000077', 77, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '15', 0),
('COMP_620cd624ba2ce', 'DES0000078', 78, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '31', 0),
('COMP_620cd626256bc', 'DES0000079', 79, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '133', 0),
('COMP_620cd627af51a', 'DES0000080', 80, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '221', 0),
('COMP_620cd62963d7f', 'DES0000081', 81, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '8', 0),
('COMP_620cd62adc033', 'DES0000082', 82, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '76', 0),
('COMP_620cd62c78a08', 'DES0000083', 83, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '192', 0),
('COMP_620cd62de3ddf', 'DES0000084', 84, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '72', 0),
('COMP_620cd62f61d1f', 'DES0000085', 85, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '101', 0),
('COMP_620cd6757cc33', 'DES0000086', 86, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '162', 0),
('COMP_620cd676cf509', 'DES0000087', 87, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '178', 0),
('COMP_620cd678390c9', 'DES0000088', 88, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '206', 0),
('COMP_620cd67a48bd5', 'DES0000089', 89, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '63', 0),
('COMP_620cd68a538aa', 'DES0000090', 90, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '114', 0),
('COMP_620cd68bab939', 'DES0000091', 91, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '236', 0),
('COMP_620cd68d0217b', 'DES0000092', 92, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '226', 0),
('COMP_620cd68e8b570', 'DES0000093', 93, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '27', 0),
('COMP_620cd6900f596', 'DES0000094', 94, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '50', 0),
('COMP_620cd6918cb6a', 'DES0000095', 95, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '112', 0),
('COMP_620cd694361e1', 'DES0000096', 96, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '170', 0),
('COMP_620cd69628358', 'DES0000097', 97, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '171', 0),
('COMP_620cd6979a477', 'DES0000098', 98, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '211', 0),
('COMP_620cd69908d11', 'DES0000099', 99, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '217', 0),
('COMP_620cd69a7a266', 'DES0000100', 100, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '14', 0),
('COMP_620cd69be06e5', 'DES0000101', 101, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '58', 0),
('COMP_620cd69d7ecd6', 'DES0000102', 102, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '17', 0),
('COMP_620cd6b1d6246', 'DES0000103', 103, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '199', 0),
('COMP_620cd6b3431c9', 'DES0000104', 104, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '41', 0),
('COMP_620cd6b4895b4', 'DES0000105', 105, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '52', 0),
('COMP_620cd6b5df7c4', 'DES0000106', 106, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '57', 0),
('COMP_620cd6b7307c6', 'DES0000107', 107, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '106', 0),
('COMP_620cd6b874f8c', 'DES0000108', 108, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '118', 0),
('COMP_620cd6b9c3a16', 'DES0000109', 109, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '194', 0),
('COMP_620cd6bb15c97', 'DES0000110', 110, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '242', 0),
('COMP_620cd6bc6be53', 'DES0000111', 111, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '180', 0),
('COMP_620cd6bdbbc90', 'DES0000112', 112, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '231', 0),
('COMP_620cd6bf17ce1', 'DES0000113', 113, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '20', 0),
('COMP_620cd6c05d9a4', 'DES0000114', 114, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '119', 0),
('COMP_620cd6c1b1de4', 'DES0000115', 115, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '246', 0),
('COMP_620cd6c3104be', 'DES0000116', 116, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '139', 0),
('COMP_620cd6c46befe', 'DES0000117', 117, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '145', 0),
('COMP_620cd6c5c1151', 'DES0000118', 118, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '169', 0),
('COMP_620cd6d3e145b', 'DES0000119', 119, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '185', 0),
('COMP_620cd6d55ec6d', 'DES0000120', 120, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '187', 0),
('COMP_620cd6d8a48dd', 'DES0000121', 121, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '196', 0),
('COMP_620cd6da534f0', 'DES0000122', 122, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '215', 0),
('COMP_620cd6db92767', 'DES0000123', 123, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '245', 0),
('COMP_620cd6dce6a86', 'DES0000124', 124, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '120', 0),
('COMP_620cd6de4d0fa', 'DES0000125', 125, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '156', 0),
('COMP_620cd6dfbd4c1', 'DES0000126', 126, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '48', 0),
('COMP_620cd6e112063', 'DES0000127', 127, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '210', 0),
('COMP_620cd6e2739cb', 'DES0000128', 128, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '49', 0),
('COMP_620cd6e3b3e4f', 'DES0000129', 129, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '1', 0),
('COMP_620cd6e51e9e9', 'DES0000130', 130, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '11', 0),
('COMP_620cd6e667806', 'DES0000131', 131, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '55', 0),
('COMP_620cd6e7c8efb', 'DES0000132', 132, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '80', 0),
('COMP_620cd6e9f232b', 'DES0000133', 133, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '96', 0),
('COMP_620cd6eb4d2d6', 'DES0000134', 134, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '107', 0),
('COMP_620cd6f777645', 'DES0000135', 135, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '153', 0),
('COMP_620cd6f8de3d5', 'DES0000136', 136, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '235', 0),
('COMP_620cd6fa33989', 'DES0000137', 137, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '189', 0),
('COMP_620cd6fb66fe0', 'DES0000138', 138, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '2', 0),
('COMP_620cd6fc958a5', 'DES0000139', 139, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '19', 0),
('COMP_620cd6fde0ecf', 'DES0000140', 140, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '105', 0),
('COMP_620cd7234c283', 'DES0000141', 141, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '155', 0),
('COMP_620cd724d0d2e', 'DES0000142', 142, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '12', 0),
('COMP_620cd7262f6db', 'DES0000143', 143, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '13', 0),
('COMP_620cd7279782a', 'DES0000144', 144, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '26', 0),
('COMP_620cd728cb855', 'DES0000145', 145, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '256', 0),
('COMP_620cd72a1156e', 'DES0000146', 146, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '256', 0),
('COMP_620cd72bbc8b7', 'DES0000147', 147, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '33', 0),
('COMP_620cd72d29472', 'DES0000148', 148, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '45', 0),
('COMP_620cd72e72f13', 'DES0000149', 149, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '51', 0),
('COMP_620cd72fea6bd', 'DES0000150', 150, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '54', 0),
('COMP_620cd73172224', 'DES0000151', 151, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '60', 0),
('COMP_620cd7331febd', 'DES0000152', 152, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '62', 0),
('COMP_620cd7347204e', 'DES0000153', 153, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '82', 0),
('COMP_620cd735d341c', 'DES0000154', 154, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '100', 0),
('COMP_620cd7375e1ec', 'DES0000155', 155, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '103', 0),
('COMP_620cd7394c5e3', 'DES0000156', 156, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '104', 0),
('COMP_620cd73b64f10', 'DES0000157', 157, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '110', 0),
('COMP_620cd73cbd2eb', 'DES0000158', 158, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '113', 0),
('COMP_620cd73e23a6d', 'DES0000159', 159, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '125', 0),
('COMP_620cd73f9c958', 'DES0000160', 160, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '135', 0),
('COMP_620cd74102d6f', 'DES0000161', 161, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '137', 0),
('COMP_620cd742e0b8e', 'DES0000162', 162, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '159', 0),
('COMP_620cd74477e5f', 'DES0000163', 163, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '163', 0),
('COMP_620cd745e5db0', 'DES0000164', 164, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '164', 0),
('COMP_620cd74768530', 'DES0000165', 165, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '167', 0),
('COMP_620cd74911caf', 'DES0000166', 166, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '176', 0),
('COMP_620cd74a92181', 'DES0000167', 167, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '191', 0),
('COMP_620cd77562518', 'DES0000168', 168, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '198', 0),
('COMP_620cd776b1b7a', 'DES0000169', 169, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '214', 0),
('COMP_620cd7780952a', 'DES0000170', 170, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '220', 0),
('COMP_620cd779680a4', 'DES0000171', 171, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '224', 0),
('COMP_620cd77ac244a', 'DES0000172', 172, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '228', 0),
('COMP_620cd77c846f6', 'DES0000173', 173, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', 'STS_620be5e16097b', '', '160', 0),
('COMP_620cedfd80bda', 'LAP0000142', 142, 1, 'INV_620cedfd797b9', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379850c415', 'MODLNO_620cac4b23516', 'BL61RC2', '', 'STS_620be5e16097b', '', '69', 0),
('COMP_620f401fc724e', 'LAP0000143', 143, 3, 'INV_620f401fc1504', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', 'MODLNO_620cab1377c18', '2BQD4B3', '', 'STS_620be5e16097b', '', '37', 0),
('COMP_620f401fccc7d', 'LAP0000144', 144, 3, 'INV_620f401fc1504', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', 'MODLNO_620cab1377c18', '4CQD4B3', '', 'STS_620be5e16097b', '', '260', 0),
('COMP_6214d1cbe3cdc', 'LAP0000012', 12, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6214d1521580f', '', 'GKR26BS', 'yes', '', '', '0', 0),
('COMP_6214d25b91681', 'LAP0000013', 13, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213795ecaf81', '', 'F0W1CQ1', 'yes', 'STS_620be5e16097b', '', '177', 0),
('COMP_6214d2cb678af', 'LAP0000014', 14, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62137a40cea09', '', '5PRRVP1', 'yes', 'STS_620be5e16097b', '', '181', 0),
('COMP_6214d30f9876a', 'LAP0000015', 15, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213794a611c9', '', 'CKWP4R1', 'yes', 'STS_620be5e16097b', '', '88', 0),
('COMP_6214d34548f4b', 'LAP0000016', 16, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213791a74f1e', '', 'GFHRWQ1', 'yes', 'STS_620be5e16097b', '', '30', 0),
('COMP_62150768ace19', 'LAP0000017', 17, 0, 'INV_62161a7dbbde8', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62137a4d709de', '', 'J2VCMV1', 'yes', 'STS_620be5e16097b', '', '227', 0),
('COMP_621507ba52c85', 'LAP0000018', 18, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62137955b0386', '', '11TSXW1', 'yes', 'STS_620be5e16097b', '', '129', 0),
('COMP_621507c46cfc8', 'LAP0000019', 19, 0, 'INV_62161a2b3196f', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379239e0d5', '', 'D8YQYX1', 'yes', 'STS_620be5e16097b', '', '161', 0),
('COMP_621507c678496', 'LAP0000020', 20, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213796868340', '', 'C62XRY1', 'yes', 'STS_620be5e16097b', '', '140', 0),
('COMP_621507c886c8a', 'LAP0000021', 21, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213615232570', '', 'JPP6502', 'yes', 'STS_620be5e16097b', '', '22', 0),
('COMP_621507c9dd610', 'LAP0000022', 22, 0, 'INV_621600aebc897', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213792c9c26d', '', '7GRZS02', 'yes', 'STS_620be5e16097b', '', '230', 0),
('COMP_621507cb649df', 'LAP0000023', 23, 0, 'INV_6216008a868f8', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213615232570', '', '88S8502', 'yes', 'STS_620be5e16097b', '', '141', 0),
('COMP_621507ccb071e', 'LAP0000024', 24, 0, 'INV_621600595423f', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378fc9547d', '', '5CNBG32', 'yes', 'STS_620be5e16097b', '', '68', 0),
('COMP_621507ce09814', 'LAP0000025', 25, 0, 'INV_6215ffb3779b7', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62137a37cadfc', '', '14K1912', 'yes', 'STS_620be5e16097b', '', '247', 0),
('COMP_621507cf9f6b6', 'LAP0000026', 26, 0, 'INV_6215ff48896d0', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379061aee4', '', 'B7ZPH32', 'yes', 'STS_620be5e16097b', '', '146', 0),
('COMP_621507d0f3991', 'LAP0000027', 27, 0, 'INV_6215ff1653595', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379dac4eda', '', '1TDTN32', 'yes', '', '', '0', 0),
('COMP_621507d29d876', 'LAP0000028', 28, 0, 'INV_6215febef164e', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379dac4eda', '', 'GXRRM32', 'yes', 'STS_620be5e16097b', '', '225', 0),
('COMP_621507d5c75a9', 'LAP0000029', 29, 0, 'INV_6215fe36d0549', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378fc9547d', '', 'DXNM542', 'yes', 'STS_620be5e16097b', '', '158', 0),
('COMP_621507d74f34c', 'LAP0000030', 30, 0, 'INV_6215fde6cdf01', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621361256407a', '', 'HVT1042', 'yes', 'STS_620be5e16097b', '', '111', 0),
('COMP_621507e471f8f', 'LAP0000031', 31, 0, 'INV_6215fd956ed42', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621361256407a', '', 'BGN1042', 'yes', 'STS_620be5e16097b', '', '108', 0),
('COMP_621507e5f1fde', 'LAP0000032', 32, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379111d89e', '', '66NJL72', 'yes', 'STS_620be5e16097b', '', '32', 0),
('COMP_621507e75db69', 'LAP0000033', 33, 0, 'INV_6215fd50d6a74', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379850c415', '', 'DTW1N72', 'yes', 'STS_620be5e16097b', '', '95', 0),
('COMP_621507e89d191', 'LAP0000034', 34, 0, '', 'CATE_6206a7440b180', 'MANU_620ca9c9107c8', 'MODL_6213605f19693', '', 'CND0263KMM', 'yes', 'STS_620be5e16097b', '', '126', 0),
('COMP_621507ea47955', 'LAP0000035', 35, 0, 'INV_6215fd06b0182', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213615be3166', '', 'H6TJG22', 'yes', 'STS_620be5e16097b', '', '127', 0),
('COMP_621507ebd712d', 'LAP0000036', 36, 0, 'INV_6215fcae547bf', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213615be3166', '', '48TJG22', 'yes', 'STS_620be5e16097b', '', '151', 0),
('COMP_621507ed4a4ec', 'LAP0000037', 37, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379850c415', '', '1MF6FC2', 'yes', 'STS_620be5e16097b', '', '122', 0),
('COMP_621507eeaf99f', 'LAP0000038', 38, 0, 'INV_6215fc2bf1055', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621361656df5a', '', '61VFYB2', 'yes', '', '', '0', 0),
('COMP_621507f0f35b5', 'LAP0000039', 39, 0, 'INV_6215fc2bf1055', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621361656df5a', '', '4ZTFYB2', 'yes', 'STS_620be5e16097b', '', '244', 0),
('COMP_621507f27cd67', 'LAP0000040', 40, 0, 'INV_6215fbebb5d01', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213793575f7e', '', 'FCX7LC2', 'yes', '', '', '0', 0),
('COMP_621507f40c266', 'LAP0000041', 41, 0, 'INV_6215fba0e1540', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213793575f7e', '', '2ZBNRC2', 'yes', 'STS_620be5e16097b', '', '97', 0),
('COMP_621507f56e756', 'LAP0000042', 42, 0, 'INV_6215fb5e2bd60', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213793575f7e', '', '44T7PF2', 'yes', 'STS_620be5e16097b', '', '117', 0),
('COMP_621507f73bfba', 'LAP0000043', 43, 0, 'INV_6215ef065fd57', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213612e6560e', '', '8WY9ZB2', 'yes', 'STS_620be5e16097b', '', '183', 0),
('COMP_621507f908c4d', 'LAP0000044', 44, 0, 'INV_6215eecfafc6d', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213793575f7e', '', '9SPWVF2', 'yes', 'STS_620be5e16097b', '', '213', 0),
('COMP_621507fb88c91', 'LAP0000045', 45, 0, 'INV_6215ee829ab0b', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213793575f7e', '', '1WW41G2', 'yes', 'STS_620be5e16097b', '', '87', 0),
('COMP_621507fe91695', 'LAP0000046', 46, 0, 'INV_6215ee43e0fab', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213793575f7e', '', 'D17F4H2', 'yes', 'STS_620be5e16097b', '', '237', 0),
('COMP_621508000cfb3', 'LAP0000047', 47, 0, 'INV_6215ede3e8db7', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62137997450ac', '', 'HZ1CXW1', 'yes', '', '', '0', 0),
('COMP_62150801bd4fd', 'LAP0000048', 48, 0, 'INV_6215ed6a79e0d', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621361656df5a', '', '2B0N2F2', 'yes', 'STS_620be5e16097b', '', '53', 0),
('COMP_621508036138a', 'LAP0000049', 49, 0, 'INV_6215ec4b08954', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621361656df5a', '', '4DCPMJ2', 'yes', '', '', '0', 0),
('COMP_62150804d57cd', 'LAP0000050', 50, 0, 'INV_6215ec4b08954', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621361656df5a', '', 'JWBPMJ2', 'yes', 'STS_620be5e16097b', '', '16', 0),
('COMP_62150807ccbe0', 'LAP0000051', 51, 0, 'INV_6215ec4b08954', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621361656df5a', '', 'CWBPMJ2', 'yes', 'STS_620be5e16097b', '', '74', 0),
('COMP_6215080bd06cf', 'LAP0000052', 52, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136136efa43', '', 'BF309L2', 'yes', 'STS_620be5e16097b', '', '168', 0),
('COMP_6215080d762ae', 'LAP0000053', 53, 0, 'INV_6215eacb4f741', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378c52179a', '', 'HL435Q2', 'yes', 'STS_620be5e16097b', '', '172', 0),
('COMP_6215080edcae0', 'LAP0000054', 54, 0, 'INV_6215ea103f4e8', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378b8a6501', '', 'B3S1NJ2', 'yes', 'STS_620be5e16097b', '', '179', 0),
('COMP_62150815656a2', 'LAP0000055', 55, 0, 'INV_6215ea103f4e8', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378b8a6501', '', '15S1NJ2', 'yes', 'STS_620be5e16097b', '', '34', 0),
('COMP_62150816cab8a', 'LAP0000056', 56, 0, 'INV_6215e95966fc7', 'CATE_6206a7440b180', 'MANU_620ca9c9107c8', 'MODL_621379b5aa833', '', '4CZ1370266', 'IN SERVER ROOM', '', '', '0', 0),
('COMP_621508181dc5c', 'LAP0000057', 57, 0, 'INV_6215e7f190876', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213613f30590', '', 'F3X3YR2', 'yes', 'STS_620be5e16097b', '', '197', 0),
('COMP_6215081979361', 'LAP0000058', 58, 0, 'INV_6215e84040212', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213613f30590', '', 'BFSMCQ2', 'yes', 'STS_620be5e16097b', '', '39', 0),
('COMP_6215081ac4756', 'LAP0000059', 59, 0, 'INV_6215e84040212', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213613f30590', '', 'BLCKCQ2', 'yes', 'STS_620be5e16097b', '', '92', 0),
('COMP_6215081c33bf9', 'LAP0000060', 60, 0, 'INV_6215e77296950', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213613f30590', '', '7VYS9S2', 'yes', 'STS_620be5e16097b', '', '85', 0),
('COMP_6215081d6c406', 'LAP0000061', 61, 0, 'INV_6215e6b5af1f3', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213613f30590', '', '5GSMCQ2', 'yes', 'STS_620be5e16097b', '', '67', 0),
('COMP_6215081ecbf1c', 'LAP0000062', 62, 0, 'INV_6215e5a1e78a6', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213613f30590', '', '826HCQ2', 'yes', 'STS_620be5e16097b', '', '81', 0),
('COMP_6215082032a5d', 'LAP0000063', 63, 0, 'INV_6215dfd88679e', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213613f30590', '', '3269XS2', 'yes', 'STS_620be5e16097b', '', '203', 0),
('COMP_621508219b175', 'LAP0000064', 64, 0, 'INV_6215dd9c3df09', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213613f30590', '', '503T9S2', 'yes', 'STS_620be5e16097b', '', '174', 0),
('COMP_621508259b3bb', 'LAP0000065', 65, 0, 'INV_6215dd13c95aa', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378d883e03', '', 'BPWSLQ2', 'yes', 'STS_620be5e16097b', '', '142', 0),
('COMP_62150826d6118', 'LAP0000066', 66, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378e183f20', '', '99D9SQ2', 'yes', 'STS_620be5e16097b', '', '144', 0),
('COMP_6215082854689', 'LAP0000067', 67, 0, 'INV_6215dc6c9a57e', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62137973e6183', '', 'FPYH622', 'yes', '', '', '0', 1),
('COMP_62150829aca3c', 'LAP0000068', 68, 0, 'INV_6215dc6c9a57e', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62137973e6183', '', 'HKWY022', 'yes', 'STS_620be5e16097b', '', '29', 0),
('COMP_6215082b4cc53', 'LAP0000069', 69, 0, 'INV_6215dbe1eb8c5', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62137973e6183', '', '14DR022', 'yes', 'STS_620be5e16097b', '', '239', 0),
('COMP_6215082cacf1f', 'LAP0000070', 70, 0, 'INV_6215db72a082c', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378f375f13', '', '54GKNH2', 'yes', 'STS_620be5e16097b', '', '9', 0),
('COMP_6215082f57c8a', 'LAP0000071', 71, 0, 'INV_6215db72a082c', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378f375f13', '', 'BB4QJM2', 'yes', 'STS_620be5e16097b', '', '257', 0),
('COMP_62150830d5ed0', 'LAP0000072', 72, 0, 'INV_6215db0941fb6', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378d883e03', '', '6FVRRQ2', 'yes', 'STS_620be5e16097b', '', '84', 0),
('COMP_621508323b00f', 'LAP0000073', 73, 0, 'INV_6215da5518022', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379850c415', '', '8D5L7H2', 'yes', 'STS_620be5e16097b', '', '154', 0),
('COMP_6215083398a03', 'LAP0000074', 74, 0, 'INV_6215da5518022', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379850c415', '', 'C7MF4H2', 'yes', 'STS_620be5e16097b', '', '123', 0),
('COMP_621508351e9cc', 'LAP0000075', 75, 0, 'INV_6215da5518022', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379850c415', '', 'JDFQ6H2', 'yes', '', '', '0', 0),
('COMP_6215083691b95', 'LAP0000076', 76, 0, 'INV_6215da5518022', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379850c415', '', '76VJ7H2', 'yes', 'STS_620be5e16097b', '', '188', 0),
('COMP_621508381e980', 'LAP0000077', 77, 0, 'INV_6215da06d5c1c', 'CATE_6206a7440b180', 'MANU_620ca9b8befe2', 'MODL_621379fe04b5a', '', 'K1N0CX187401057', 'yes', 'STS_620be5e16097b', '', '121', 0),
('COMP_621508398111e', 'LAP0000078', 78, 0, 'INV_6215d9019667b', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378f375f13', '', 'JDWX2M2', 'yes', 'STS_620be5e16097b', '', '130', 0),
('COMP_6215083c38b98', 'LAP0000079', 79, 0, 'INV_6215d9019667b', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378f375f13', '', 'B0BMNH2', 'yes', 'STS_620be5e16097b', '', '184', 0),
('COMP_6215083dd825a', 'LAP0000080', 80, 0, 'INV_6215d9019667b', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378f375f13', '', '4LLKNH2', 'yes', 'STS_620be5e16097b', '', '149', 0),
('COMP_62150843e3ca5', 'LAP0000081', 81, 0, 'INV_6215d9019667b', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378f375f13', '', '8Z9MNH2', 'yes', 'STS_620be5e16097b', '', '238', 0),
('COMP_6215084523801', 'LAP0000082', 82, 0, 'INV_6215d9019667b', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378f375f13', '', 'B7BMNH2', 'yes', '', '', '0', 0),
('COMP_6215084680c9d', 'LAP0000083', 83, 0, 'INV_6215d8b6d7c05', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379111d89e', '', '46NJL72', 'yes', 'STS_620be5e16097b', '', '25', 0),
('COMP_62150847d1c7c', 'LAP0000084', 84, 0, 'INV_6215d86fed2b6', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379111d89e', '', 'DTKSFC2', 'yes', 'STS_620be5e16097b', '', '64', 0),
('COMP_62150849d7d07', 'LAP0000085', 85, 0, 'INV_6215d7ff20543', 'CATE_6206a7440b180', 'MANU_620ca9c9107c8', 'MODL_6213606dbbdf7', '', '5CG6213VQK', 'yes', 'STS_620be5e16097b', '', '128', 0),
('COMP_6215084b411f7', 'LAP0000086', 86, 0, 'INV_6215d71fc4e4a', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213797bcc5c7', '', '15XGD72', 'yes', 'STS_620be5e16097b', '', '207', 0),
('COMP_6215084cc734c', 'LAP0000087', 87, 0, 'INV_6215d71fc4e4a', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213797bcc5c7', '', '9RYRD72', 'yes', 'STS_620be5e16097b', '', '73', 0),
('COMP_6215084e4c700', 'LAP0000088', 88, 0, 'INV_6215d69ca8016', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378cf4cbde', '', 'HQH55Y2', 'yes', 'STS_620be5e16097b', '', '70', 0),
('COMP_6215084fbc553', 'LAP0000089', 89, 0, 'INV_6215d60def173', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379bf861da', '', 'D41M733', 'yes', '', '', '0', 0),
('COMP_621508512c9ab', 'LAP0000090', 90, 0, 'INV_6215d60def173', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379bf861da', '', 'F41K733', 'yes', 'STS_620be5e16097b', '', '4', 0),
('COMP_621508527d1b0', 'LAP0000091', 91, 0, 'INV_6215d590c1033', 'CATE_6206a7440b180', 'MANU_620ca9c9107c8', 'MODL_6213605633057', '', '5CG01101FY', 'yes', 'STS_620be5e16097b', '', '190', 0),
('COMP_62150853e5baf', 'LAP0000092', 92, 0, 'INV_6215d48379fca', 'CATE_6206a7440b180', 'MANU_620ca9b8befe2', 'MODL_621379a9c0e40', '', 'KAN0CV02Z585417', 'yes', '', '', '0', 0),
('COMP_62150855698e1', 'LAP0000093', 93, 0, 'INV_6215d48379fca', 'CATE_6206a7440b180', 'MANU_620ca9b8befe2', 'MODL_621379a9c0e40', '', 'KAN0CV02Z501413', 'yes', '', '', '0', 0),
('COMP_62150857805a2', 'LAP0000094', 94, 0, 'INV_6215d48379fca', 'CATE_6206a7440b180', 'MANU_620ca9b8befe2', 'MODL_621379a9c0e40', '', 'KAN0CV02Z593419', 'yes', '', '', '0', 0),
('COMP_621508590766f', 'LAP0000095', 95, 0, 'INV_6215d48379fca', 'CATE_6206a7440b180', 'MANU_620ca9b8befe2', 'MODL_621379a9c0e40', '', 'KAN0CV030031418', 'yes', '', '', '0', 0),
('COMP_6215085a5dab1', 'LAP0000096', 96, 0, 'INV_6215d48379fca', 'CATE_6206a7440b180', 'MANU_620ca9b8befe2', 'MODL_621379a9c0e40', '', 'KAN0CV030055419', 'yes', '', '', '0', 0),
('COMP_6215085d3d982', 'LAP0000097', 97, 0, 'INV_6215d48379fca', 'CATE_6206a7440b180', 'MANU_620ca9b8befe2', 'MODL_621379a9c0e40', '', 'KAN0CV02Z596413', 'yes', '', '', '0', 0),
('COMP_6215085e8f3c8', 'LAP0000098', 98, 0, 'INV_6215d48379fca', 'CATE_6206a7440b180', 'MANU_620ca9b8befe2', 'MODL_621379a9c0e40', '', 'KAN0CV03004141H', 'yes', '', '', '0', 0),
('COMP_6215086978c8c', 'LAP0000099', 99, 0, 'INV_6215d48379fca', 'CATE_6206a7440b180', 'MANU_620ca9b8befe2', 'MODL_621379a9c0e40', '', 'KAN0CV02Z61841A', 'yes', '', '', '0', 0),
('COMP_6215086b2f51c', 'LAP0000100', 100, 0, 'INV_6215d43d17869', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213608516b4e', '', 'F6PSWZ2', 'yes', 'STS_620be5e16097b', '', '243', 0),
('COMP_6215086cd75ce', 'LAP0000101', 101, 0, 'INV_6215d3ecbd4ff', 'CATE_6206a7440b180', 'MANU_620ca9b8befe2', 'MODL_62137a0783a8d', '', 'L3N0CV107281138', 'yes', 'STS_620be5e16097b', '', '3', 0),
('COMP_6215086e609c1', 'LAP0000102', 102, 0, 'INV_6215d0f1e1904', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213608516b4e', '', '9LL5ZZ2', 'yes', 'STS_620be5e16097b', '', '98', 0),
('COMP_6215086fad0c7', 'LAP0000103', 103, 0, 'INV_6215d0aba87e1', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '5Z25203', 'yes', 'STS_620be5e16097b', '', '202', 0),
('COMP_6215087110d9f', 'LAP0000104', 104, 0, 'INV_6215d06523e64', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '1Z25203', 'yes', 'STS_620be5e16097b', '', '42', 0),
('COMP_6215087280202', 'LAP0000105', 105, 0, 'INV_6215d01cc25ad', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', 'F9CS103', 'yes', 'STS_620be5e16097b', '', '35', 0),
('COMP_6215087416f53', 'LAP0000106', 106, 0, 'INV_6215cfda51530', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '88R8303', 'yes', 'STS_620be5e16097b', '', '59', 0);
INSERT INTO `tbl_component` (`component_uid`, `asset_tag`, `assettag_number`, `warranty`, `inv_uid`, `category`, `manufacturer`, `model`, `model_no`, `serialno`, `remarks`, `status_id`, `asset_assign`, `assigned_user`, `is_deleted`) VALUES
('COMP_621508758b7fa', 'LAP0000107', 107, 0, 'INV_6215cf86a3f85', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '9XDF503', 'yes', 'STS_620be5e16097b', '', '165', 0),
('COMP_621508771e81b', 'LAP0000108', 108, 0, 'INV_6215ced70b51a', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621379c90f1f9', '', '482HBC3', 'yes', 'STS_620be5e16097b', '', '24', 0),
('COMP_621508788cc23', 'LAP0000109', 109, 0, 'INV_6215ce3b09d00', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136148808e7', '', 'BZ95Y93', 'yes', 'STS_620be5e16097b', '', '173', 0),
('COMP_62150879d68cc', 'LAP0000110', 110, 0, 'INV_6215ce3b09d00', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136148808e7', '', '9Z95Y93', 'yes', 'STS_620be5e16097b', '', '43', 0),
('COMP_6215087b289f7', 'LAP0000111', 111, 0, 'INV_6215ce3b09d00', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136148808e7', '', 'FZ95Y93', 'yes', 'STS_620be5e16097b', '', '218', 0),
('COMP_6215087ca1d30', 'LAP0000112', 112, 0, 'INV_6215ce3b09d00', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136148808e7', '', 'FY95Y93', 'yes', 'STS_620be5e16097b', '', '77', 0),
('COMP_6215087e47b1f', 'LAP0000113', 113, 0, 'INV_6215cdf809b54', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '5M9WN93', 'yes', 'STS_620be5e16097b', '', '89', 0),
('COMP_62150880ce798', 'LAP0000114', 114, 0, 'INV_6215cd2a7528e', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '9NQZS93', 'yes', 'STS_620be5e16097b', '', '258', 0),
('COMP_621508829e496', 'LAP0000115', 115, 0, 'INV_6215cc0d3188e', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '7HWFT93', 'yes', 'STS_620be5e16097b', '', '138', 0),
('COMP_6215088b0804a', 'LAP0000116', 116, 0, 'INV_6215cc0d3188e', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '3GWFT93', 'yes', 'STS_620be5e16097b', '', '147', 0),
('COMP_6215088ca21e7', 'LAP0000117', 117, 0, 'INV_6215cc0d3188e', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '5GWFT93', 'yes', 'STS_620be5e16097b', '', '93', 0),
('COMP_6215088e2021c', 'LAP0000118', 118, 0, 'INV_6215cc0d3188e', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '1FWFT93', 'yes', 'STS_620be5e16097b', '', '233', 0),
('COMP_6215088f7cfdd', 'LAP0000119', 119, 0, 'INV_6215cc0d3188e', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', 'HHWFT93', 'yes', 'STS_620be5e16097b', '', '143', 0),
('COMP_621508912205f', 'LAP0000120', 120, 0, 'INV_6215cb4f1d78b', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', 'GFWFT93', 'yes', 'STS_620be5e16097b', '', '131', 0),
('COMP_6215089298761', 'LAP0000121', 121, 0, 'INV_6215cb4f1d78b', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '2GWFT93', 'yes', 'STS_620be5e16097b', '', '132', 0),
('COMP_62150893f22d9', 'LAP0000122', 122, 0, 'INV_6215cb4f1d78b', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '9FWFT93', 'yes', 'STS_620be5e16097b', '', '75', 0),
('COMP_62150895721d6', 'LAP0000123', 123, 0, 'INV_6215cb4f1d78b', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', 'FFWFT93', 'yes', 'STS_620be5e16097b', '', '193', 0),
('COMP_62150896cdeac', 'LAP0000124', 124, 0, 'INV_6215cb4f1d78b', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', 'CHWFT93', 'yes', 'STS_620be5e16097b', '', '44', 0),
('COMP_621508983864f', 'LAP0000125', 125, 0, 'INV_6215cafb1c399', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', '', '4SJHV93', 'yes', 'STS_620be5e16097b', '', '201', 0),
('COMP_62150899ab1ef', 'LAP0000126', 126, 0, 'INV_6215ca99814ff', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', 'DDNJ1B3', 'yes', 'STS_620be5e16097b', '', '6', 0),
('COMP_6215089b231ba', 'LAP0000127', 127, 0, 'INV_6215ca99814ff', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', 'HGNJ1B3', 'yes', 'STS_620be5e16097b', '', '175', 0),
('COMP_6215089d4130d', 'LAP0000128', 128, 0, 'INV_6215ca0f0da59', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', '', '223T4B3', 'yes', 'STS_620be5e16097b', '', '124', 0),
('COMP_6215089eb3f26', 'LAP0000129', 129, 0, 'INV_6215ca0f0da59', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', '', '7FWS4B3', 'yes', 'STS_620be5e16097b', '', '205', 0),
('COMP_621508a0267d5', 'LAP0000130', 130, 0, 'INV_6215ca0f0da59', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', '', '6GWS4B3', 'yes', 'STS_620be5e16097b', '', '134', 0),
('COMP_621508a193a44', 'LAP0000131', 131, 0, 'INV_6215c9687de7d', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62137a1f91d8e', '', '17LZPH3', 'yes', 'STS_620be5e16097b', '', '241', 0),
('COMP_621508a306816', 'LAP0000132', 132, 0, 'INV_6215c9687de7d', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62137a1f91d8e', '', '4CLZPH3', 'yes', 'STS_620be5e16097b', '', '78', 0),
('COMP_621508a44d704', 'LAP0000133', 133, 0, 'INV_6215c9687de7d', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62137a1f91d8e', '', 'G1TYPH3', 'yes', 'STS_620be5e16097b', '', '200', 0),
('COMP_621508a57df75', 'LAP0000134', 134, 0, 'INV_6215c905eecd5', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_621378ea70dbd', '', '3TG23J3', 'yes', 'STS_620be5e16097b', '', '70', 0),
('COMP_621508a71296f', 'LAP0000135', 135, 0, 'INV_6215c8b900221', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62136112356ca', '', '25KHR93', 'yes', 'STS_620be5e16097b', '', '152', 0),
('COMP_621508a8629f8', 'LAP0000136', 136, 0, 'INV_6215c83b108bf', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_62137a1f91d8e', '', '2Y2ZPH3', 'yes', 'STS_620be5e16097b', '', '182', 0),
('COMP_621508a9b49e3', 'LAP0000137', 137, 0, 'INV_6215c78669d53', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', '', '1ZRDJG3', 'yes', 'STS_620be5e16097b', '', '150', 0),
('COMP_621508ab2d9d6', 'LAP0000138', 138, 0, 'INV_6215c78669d53', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', '', '4XTDJG3', 'yes', 'STS_620be5e16097b', '', '229', 0),
('COMP_621508b4a558a', 'LAP0000139', 139, 0, 'INV_6215c73f8300a', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', '', '3HTDJG3', 'yes', 'STS_620be5e16097b', '', '240', 0),
('COMP_621508b6433d7', 'LAP0000140', 140, 0, 'INV_6215c67d2d307', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', '', 'CPRFTG3', 'yes', 'STS_620be5e16097b', '', '91', 0),
('COMP_621508b7c4da8', 'LAP0000141', 141, 0, 'INV_6215c5d67c713', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', '', '6SK8LG3', 'yes', 'STS_620be5e16097b', '', '79', 0),
('COMP_6215b611c3000', 'LAP0000145', 145, 3, 'INV_6215b611bf328', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', '', '8V6CGG3', '', 'STS_620be5e16097b', '', '65', 0),
('COMP_6215b611caf23', 'LAP0000146', 146, 3, 'INV_6215b611bf328', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6213611b3d48a', '', 'G98VFG3', '', 'STS_620be5e16097b', '', '23', 0),
('COMP_62176ae8bce3b', 'LAP0000147', 147, 15, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_6214d1521580f', '', 'ABC14FG', 'Palaya Laptop', 'STS_621676df06944', '', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `countries_uid` bigint(20) NOT NULL,
  `countries_code` varchar(5) NOT NULL,
  `countries_name` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`countries_uid`, `countries_code`, `countries_name`, `is_deleted`) VALUES
(1, 'AD', 'Andorra', 0),
(2, 'AE', 'United Arab Emirates', 0),
(3, 'AF', 'Afghanistan', 0),
(4, 'AG', 'Antigua and Barbuda', 0),
(5, 'AI', 'Anguilla', 0),
(6, 'AL', 'Albania', 0),
(7, 'AM', 'Armenia', 0),
(8, 'AN', 'Netherlands Antilles', 0),
(9, 'AO', 'Angola', 0),
(10, 'AQ', 'Antarctica', 0),
(11, 'AR', 'Argentina', 0),
(12, 'AT', 'Austria', 0),
(13, 'AU', 'Australia', 0),
(14, 'AW', 'Aruba', 0),
(15, 'AZ', 'Azerbaijan', 0),
(16, 'BA', 'Bosnia and Herzegovina', 0),
(17, 'BB', 'Barbados', 0),
(18, 'BD', 'Bangladesh', 0),
(19, 'BE', 'Belgium', 0),
(20, 'BF', 'Burkina Faso', 0),
(21, 'BG', 'Bulgaria', 0),
(22, 'BH', 'Bahrain', 0),
(23, 'BI', 'Burundi', 0),
(24, 'BJ', 'Benin', 0),
(25, 'BM', 'Bermuda', 0),
(26, 'BN', 'Brunei Darussalam', 0),
(27, 'BO', 'Bolivia', 0),
(28, 'BR', 'Brazil', 0),
(29, 'BS', 'Bahamas', 0),
(30, 'BT', 'Bhutan', 0),
(31, 'BV', 'Bouvet Island', 0),
(32, 'BW', 'Botswana', 0),
(33, 'BY', 'Belarus', 0),
(34, 'BZ', 'Belize', 0),
(35, 'CA', 'Canada', 0),
(36, 'CC', 'Cocos (Keeling) Islands', 0),
(37, 'CD', 'Democratic Republic of the Congo', 0),
(38, 'CF', 'Central African Republic', 0),
(39, 'CG', 'Republic of Congo', 0),
(40, 'CH', 'Switzerland', 0),
(41, 'CI', 'Ivory Coast', 0),
(42, 'CK', 'Cook Islands', 0),
(43, 'CL', 'Chile', 0),
(44, 'CM', 'Cameroon', 0),
(45, 'CN', 'China', 0),
(46, 'CO', 'Colombia', 0),
(47, 'CR', 'Costa Rica', 0),
(48, 'CU', 'Cuba', 0),
(49, 'CV', 'Cape Verde', 0),
(50, 'CX', 'Christmas Island', 0),
(51, 'CY', 'Cyprus', 0),
(52, 'CZ', 'Czech Republic', 0),
(53, 'DE', 'Germany', 0),
(54, 'DJ', 'Djibouti', 0),
(55, 'DK', 'Denmark', 0),
(56, 'DM', 'Dominica', 0),
(57, 'DO', 'Dominican Republic', 0),
(58, 'DS', 'American Samoa', 0),
(59, 'DZ', 'Algeria', 0),
(60, 'EC', 'Ecuador', 0),
(61, 'EE', 'Estonia', 0),
(62, 'EG', 'Egypt', 0),
(63, 'EH', 'Western Sahara', 0),
(64, 'ER', 'Eritrea', 0),
(65, 'ES', 'Spain', 0),
(66, 'ET', 'Ethiopia', 0),
(67, 'FI', 'Finland', 0),
(68, 'FJ', 'Fiji', 0),
(69, 'FK', 'Falkland Islands (Malvinas)', 0),
(70, 'FM', 'Micronesia, Federated States of', 0),
(71, 'FO', 'Faroe Islands', 0),
(72, 'FR', 'France', 0),
(73, 'FX', 'France, Metropolitan', 0),
(74, 'GA', 'Gabon', 0),
(75, 'GB', 'United Kingdom', 0),
(76, 'GD', 'Grenada', 0),
(77, 'GE', 'Georgia', 0),
(78, 'GF', 'French Guiana', 0),
(79, 'GH', 'Ghana', 0),
(80, 'GI', 'Gibraltar', 0),
(81, 'GK', 'Guernsey', 0),
(82, 'GL', 'Greenland', 0),
(83, 'GM', 'Gambia', 0),
(84, 'GN', 'Guinea', 0),
(85, 'GP', 'Guadeloupe', 0),
(86, 'GQ', 'Equatorial Guinea', 0),
(87, 'GR', 'Greece', 0),
(88, 'GS', 'South Georgia South Sandwich Islands', 0),
(89, 'GT', 'Guatemala', 0),
(90, 'GU', 'Guam', 0),
(91, 'GW', 'Guinea-Bissau', 0),
(92, 'GY', 'Guyana', 0),
(93, 'HK', 'Hong Kong', 0),
(94, 'HM', 'Heard and Mc Donald Islands', 0),
(95, 'HN', 'Honduras', 0),
(96, 'HR', 'Croatia (Hrvatska)', 0),
(97, 'HT', 'Haiti', 0),
(98, 'HU', 'Hungary', 0),
(99, 'ID', 'Indonesia', 0),
(100, 'IE', 'Ireland', 0),
(101, 'IL', 'Israel', 0),
(102, 'IM', 'Isle of Man', 0),
(103, 'IN', 'India', 0),
(104, 'IO', 'British Indian Ocean Territory', 0),
(105, 'IQ', 'Iraq', 0),
(106, 'IR', 'Iran (Islamic Republic of)', 0),
(107, 'IS', 'Iceland', 0),
(108, 'IT', 'Italy', 0),
(109, 'JE', 'Jersey', 0),
(110, 'JM', 'Jamaica', 0),
(111, 'JO', 'Jordan', 0),
(112, 'JP', 'Japan', 0),
(113, 'KE', 'Kenya', 0),
(114, 'KG', 'Kyrgyzstan', 0),
(115, 'KH', 'Cambodia', 0),
(116, 'KI', 'Kiribati', 0),
(117, 'KM', 'Comoros', 0),
(118, 'KN', 'Saint Kitts and Nevis', 0),
(119, 'KP', 'Korea, Democratic People\'s Republic of', 0),
(120, 'KR', 'Korea, Republic of', 0),
(121, 'KW', 'Kuwait', 0),
(122, 'KY', 'Cayman Islands', 0),
(123, 'KZ', 'Kazakhstan', 0),
(124, 'LA', 'Lao People\'s Democratic Republic', 0),
(125, 'LB', 'Lebanon', 0),
(126, 'LC', 'Saint Lucia', 0),
(127, 'LI', 'Liechtenstein', 0),
(128, 'LK', 'Sri Lanka', 0),
(129, 'LR', 'Liberia', 0),
(130, 'LS', 'Lesotho', 0),
(131, 'LT', 'Lithuania', 0),
(132, 'LU', 'Luxembourg', 0),
(133, 'LV', 'Latvia', 0),
(134, 'LY', 'Libyan Arab Jamahiriya', 0),
(135, 'MA', 'Morocco', 0),
(136, 'MC', 'Monaco', 0),
(137, 'MD', 'Moldova, Republic of', 0),
(138, 'ME', 'Montenegro', 0),
(139, 'MG', 'Madagascar', 0),
(140, 'MH', 'Marshall Islands', 0),
(141, 'MK', 'North Macedonia', 0),
(142, 'ML', 'Mali', 0),
(143, 'MM', 'Myanmar', 0),
(144, 'MN', 'Mongolia', 0),
(145, 'MO', 'Macau', 0),
(146, 'MP', 'Northern Mariana Islands', 0),
(147, 'MQ', 'Martinique', 0),
(148, 'MR', 'Mauritania', 0),
(149, 'MS', 'Montserrat', 0),
(150, 'MT', 'Malta', 0),
(151, 'MU', 'Mauritius', 0),
(152, 'MV', 'Maldives', 0),
(153, 'MW', 'Malawi', 0),
(154, 'MX', 'Mexico', 0),
(155, 'MY', 'Malaysia', 0),
(156, 'MZ', 'Mozambique', 0),
(157, 'NA', 'Namibia', 0),
(158, 'NC', 'New Caledonia', 0),
(159, 'NE', 'Niger', 0),
(160, 'NF', 'Norfolk Island', 0),
(161, 'NG', 'Nigeria', 0),
(162, 'NI', 'Nicaragua', 0),
(163, 'NL', 'Netherlands', 0),
(164, 'NO', 'Norway', 0),
(165, 'NP', 'Nepal', 0),
(166, 'NR', 'Nauru', 0),
(167, 'NU', 'Niue', 0),
(168, 'NZ', 'New Zealand', 0),
(169, 'OM', 'Oman', 0),
(170, 'PA', 'Panama', 0),
(171, 'PE', 'Peru', 0),
(172, 'PF', 'French Polynesia', 0),
(173, 'PG', 'Papua New Guinea', 0),
(174, 'PH', 'Philippines', 0),
(175, 'PK', 'Pakistan', 0),
(176, 'PL', 'Poland', 0),
(177, 'PM', 'St. Pierre and Miquelon', 0),
(178, 'PN', 'Pitcairn', 0),
(179, 'PR', 'Puerto Rico', 0),
(180, 'PS', 'Palestine', 0),
(181, 'PT', 'Portugal', 0),
(182, 'PW', 'Palau', 0),
(183, 'PY', 'Paraguay', 0),
(184, 'QA', 'Qatar', 0),
(185, 'RE', 'Reunion', 0),
(186, 'RO', 'Romania', 0),
(187, 'RS', 'Serbia', 0),
(188, 'RU', 'Russian Federation', 0),
(189, 'RW', 'Rwanda', 0),
(190, 'SA', 'Saudi Arabia', 0),
(191, 'SB', 'Solomon Islands', 0),
(192, 'SC', 'Seychelles', 0),
(193, 'SD', 'Sudan', 0),
(194, 'SE', 'Sweden', 0),
(195, 'SG', 'Singapore', 0),
(196, 'SH', 'St. Helena', 0),
(197, 'SI', 'Slovenia', 0),
(198, 'SJ', 'Svalbard and Jan Mayen Islands', 0),
(199, 'SK', 'Slovakia', 0),
(200, 'SL', 'Sierra Leone', 0),
(201, 'SM', 'San Marino', 0),
(202, 'SN', 'Senegal', 0),
(203, 'SO', 'Somalia', 0),
(204, 'SR', 'Suriname', 0),
(205, 'SS', 'South Sudan', 0),
(206, 'ST', 'Sao Tome and Principe', 0),
(207, 'SV', 'El Salvador', 0),
(208, 'SY', 'Syrian Arab Republic', 0),
(209, 'SZ', 'Swaziland', 0),
(210, 'TC', 'Turks and Caicos Islands', 0),
(211, 'TD', 'Chad', 0),
(212, 'TF', 'French Southern Territories', 0),
(213, 'TG', 'Togo', 0),
(214, 'TH', 'Thailand', 0),
(215, 'TJ', 'Tajikistan', 0),
(216, 'TK', 'Tokelau', 0),
(217, 'TM', 'Turkmenistan', 0),
(218, 'TN', 'Tunisia', 0),
(219, 'TO', 'Tonga', 0),
(220, 'TP', 'East Timor', 0),
(221, 'TR', 'Turkey', 0),
(222, 'TT', 'Trinidad and Tobago', 0),
(223, 'TV', 'Tuvalu', 0),
(224, 'TW', 'Taiwan', 0),
(225, 'TY', 'Mayotte', 0),
(226, 'TZ', 'Tanzania, United Republic of', 0),
(227, 'UA', 'Ukraine', 0),
(228, 'UG', 'Uganda', 0),
(229, 'UM', 'United States minor outlying islands', 0),
(230, 'US', 'United States', 0),
(231, 'UY', 'Uruguay', 0),
(232, 'UZ', 'Uzbekistan', 0),
(233, 'VA', 'Vatican City State', 0),
(234, 'VC', 'Saint Vincent and the Grenadines', 0),
(235, 'VE', 'Venezuela', 0),
(236, 'VG', 'Virgin Islands (British)', 0),
(237, 'VI', 'Virgin Islands (U.S.)', 0),
(238, 'VN', 'Vietnam', 0),
(239, 'VU', 'Vanuatu', 0),
(240, 'WF', 'Wallis and Futuna Islands', 0),
(241, 'WS', 'Samoa', 0),
(242, 'XK', 'Kosovo', 0),
(243, 'YE', 'Yemen', 0),
(244, 'ZA', 'South Africa', 0),
(245, 'ZM', 'Zambia', 0),
(246, 'ZW', 'Zimbabwe', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `invoice_uid` varchar(64) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `supplier` varchar(64) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_no` varchar(50) NOT NULL,
  `purchase_cost` varchar(50) NOT NULL,
  `inv_filename` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_invoice`
--

INSERT INTO `tbl_invoice` (`invoice_uid`, `invoice_date`, `invoice_no`, `supplier`, `purchase_date`, `purchase_no`, `purchase_cost`, `inv_filename`, `is_deleted`) VALUES
('INV_620cedfd797b9', '2022-02-12', 'PT/650/21-22', 'SUPP_620cecdb10640', '2022-02-10', 'Pac/21-22/79', '35,400.00', '620e30f5ecaf5.pdf', 0),
('INV_620f401fc1504', '2022-02-15', 'HUB/21-22/2845', 'SUPP_62072fde6fc74', '2022-02-15', 'Pac/21-22/83', '1,16,820.00', '620f3fc31723a.pdf', 0),
('INV_6215b611bf328', '2022-02-21', 'BT/21-22/02114', 'SUPP_6215b5abafa3d', '2022-02-18', 'Pac/21-22/84', '1,53,400.00', '', 0),
('INV_6215c5d67c713', '2022-01-19', 'HUB/21-22/2558', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215c67d2d307', '2021-12-29', 'HUB/21-22/2353', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215c73f8300a', '2021-12-16', 'HUB/21-22/2211', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215c78669d53', '2021-12-09', 'HUB/21-22/2141', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215c83b108bf', '2021-11-19', 'HUB/21-22/1955', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215c8b900221', '2021-11-15', 'INV-FY2122-0710', 'SUPP_6215c884c5db6', '0000-00-00', '', '', '', 0),
('INV_6215c905eecd5', '2021-11-29', 'HUB/21-22/2047', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215c9687de7d', '2021-09-29', 'HUB/21-22/1485', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215ca0f0da59', '2021-09-15', 'HUB/21-22/1302', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215ca99814ff', '2021-07-26', 'HUB/21-22/0807', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215cafb1c399', '2021-07-26', 'HUB/21-22/0808', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215cb4f1d78b', '2021-07-13', 'HUB/21-22/0663', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215cc0d3188e', '2021-06-28', 'HUB/21-22/0510', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215cd2a7528e', '2021-06-22', 'INV-FY2122-0156', 'SUPP_6215c884c5db6', '0000-00-00', '', '', '', 0),
('INV_6215cdf809b54', '2021-04-30', 'BT/21-22/00199', 'SUPP_6215b5abafa3d', '0000-00-00', '', '', '', 0),
('INV_6215ce3b09d00', '2021-04-08', 'HUB/21-22/0038', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215ced70b51a', '2021-03-12', 'HUB/20-21/2854', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215cf86a3f85', '2020-11-27', 'HUB/20-21/1876', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215cfda51530', '2020-11-23', 'HUB/20-21/1816', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215d01cc25ad', '2020-10-12', 'HUB/20-21/1381', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215d06523e64', '2020-10-12', 'HUB/20-21/1382', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215d0aba87e1', '2020-09-15', 'HUB/20-21/1123', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215d0f1e1904', '2020-08-01', 'HUB/20-21/0703', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215d3ecbd4ff', '2020-07-04', 'HUB/20-21/0474', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215d43d17869', '2020-06-27', 'HUB/20-21/0419', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215d48379fca', '2020-06-08', 'HUB/20-21/0216', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215d590c1033', '2020-05-05', 'HUB/20-21/0015', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215d60def173', '2020-05-29', 'HUB/20-21/0140', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215d69ca8016', '2019-12-28', 'HUB/19-20/1954', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215d71fc4e4a', '2019-12-28', 'PT/472/19-20', 'SUPP_620cecdb10640', '0000-00-00', '', '', '', 0),
('INV_6215d7ff20543', '2019-08-24', 'PT/261/19-20', 'SUPP_620cecdb10640', '0000-00-00', '', '', '', 0),
('INV_6215d86fed2b6', '2019-08-08', 'JKL/11/013', 'SUPP_6215d843f0867', '0000-00-00', '', '', '', 0),
('INV_6215d8b6d7c05', '2019-08-05', 'JKL/11/012', 'SUPP_6215d843f0867', '0000-00-00', '', '', '', 0),
('INV_6215d9019667b', '2019-05-30', 'PT/095/19-20', 'SUPP_620cecdb10640', '0000-00-00', '', '', '', 0),
('INV_6215da06d5c1c', '2019-05-03', 'FABXOT2000000380', 'SUPP_6215d9d2b55ea', '0000-00-00', '', '', '', 0),
('INV_6215da5518022', '2019-05-14', 'PT/075/19-20', 'SUPP_620cecdb10640', '0000-00-00', '', '', '', 0),
('INV_6215db0941fb6', '2019-05-07', 'HUB/19-20/0213', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215db72a082c', '2019-05-06', 'PT/064/19-20', 'SUPP_620cecdb10640', '0000-00-00', '', '', '', 0),
('INV_6215dbe1eb8c5', '2019-04-29', 'PT/047/19-20', 'SUPP_620cecdb10640', '0000-00-00', '', '', '', 0),
('INV_6215dc6c9a57e', '2019-04-08', 'PT/014/19-20', 'SUPP_620cecdb10640', '0000-00-00', '', '', '', 0),
('INV_6215dd13c95aa', '2019-02-19', 'HUB/18-19/2396', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215dd9c3df09', '2019-01-07', 'HO/I/05258', 'SUPP_6215dd5ee3410', '0000-00-00', '', '', '', 0),
('INV_6215dfd88679e', '2019-01-03', 'HUB/18-19/2029', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215e5a1e78a6', '2018-12-22', 'BT/00173', 'SUPP_6215b5abafa3d', '0000-00-00', '', '', '', 0),
('INV_6215e6b5af1f3', '2018-12-13', 'HUB/18-19/1893', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215e77296950', '2018-12-11', 'HO/I/04815', 'SUPP_6215dd5ee3410', '0000-00-00', '', '', '', 0),
('INV_6215e7f190876', '2018-11-19', 'BT/00100', 'SUPP_6215b5abafa3d', '0000-00-00', '', '', '', 0),
('INV_6215e84040212', '2018-11-16', 'HUB/18-19/1693', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215e95966fc7', '2018-10-30', 'PT/2161/18-19', 'SUPP_620cecdb10640', '0000-00-00', '', '', '', 0),
('INV_6215ea103f4e8', '2018-08-10', 'HUB/18-19/0998', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215eacb4f741', '2018-06-28', 'HUB/18-19/0661', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215ec4b08954', '2018-11-30', 'IH/17-18/0994', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215ed6a79e0d', '2017-09-06', '1280', 'SUPP_6215dd5ee3410', '0000-00-00', '', '', '', 0),
('INV_6215ede3e8db7', '2017-08-24', 'PT/GST/118/17-18', 'SUPP_620cecdb10640', '0000-00-00', '', '', '', 0),
('INV_6215ee43e0fab', '2017-06-05', 'IT HUB/17-18/0457', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215ee829ab0b', '2017-04-07', 'IT HUB/17-18/0033', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215eecfafc6d', '2017-02-10', 'IT HUB/16-17/2047', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215ef065fd57', '2017-01-28', 'IT HUB/16-17/1930', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215fb5e2bd60', '2016-11-29', 'IT HUB/16-17/1611', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215fba0e1540', '2016-10-26', 'IT HUB/16-17/1386', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215fbebb5d01', '2016-07-27', 'IT HUB/16-17/0789', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215fc2bf1055', '2016-07-29', 'IT HUB/16-17/0808', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215fcae547bf', '2016-06-27', 'IT HUB/16-17/0347', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215fd06b0182', '2016-03-21', 'IT HUB/15-16/2092', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215fd50d6a74', '2016-03-21', 'IT HUB/15-16/2091', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215fd956ed42', '2015-12-30', 'IT HUB/15-16/1601', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215fde6cdf01', '2015-12-29', 'IT HUB/15-16/1593', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215fe36d0549', '2015-05-30', 'IT HUB/15-16/0302', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215febef164e', '2015-04-14', 'IT HUB/15-16/0064', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215ff1653595', '2015-03-02', '1697', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215ff48896d0', '2015-02-09', '1564', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6215ffb3779b7', '2015-02-13', 'PT/2014-2015/2545', 'SUPP_6215ff894b656', '0000-00-00', '', '', '', 0),
('INV_621600595423f', '2014-11-21', '1119', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_6216008a868f8', '2014-07-01', 'PT/2014-2015/0680', 'SUPP_6215ff894b656', '0000-00-00', '', '', '', 0),
('INV_621600aebc897', '2014-04-25', '125', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0),
('INV_62161a2b3196f', '2013-06-12', '8030088086', 'SUPP_62161a0580923', '0000-00-00', '', '', '', 0),
('INV_62161a7dbbde8', '2012-12-05', '872', 'SUPP_62072fde6fc74', '0000-00-00', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locations`
--

CREATE TABLE `tbl_locations` (
  `location_uid` varchar(64) NOT NULL,
  `location_name` varchar(100) NOT NULL,
  `manager` varchar(100) NOT NULL,
  `addressline1` varchar(150) NOT NULL,
  `addressline2` varchar(150) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `countries` varchar(64) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `location_image` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_locations`
--

INSERT INTO `tbl_locations` (`location_uid`, `location_name`, `manager`, `addressline1`, `addressline2`, `city`, `state`, `countries`, `zipcode`, `location_image`, `is_deleted`) VALUES
('LOC_620641147b4be', '', '', '', '', '', '', '', '', '6206411376d19.jpg', 1),
('LOC_620650f32690e', 'AKS Nagar', 'Sukumar S', 'AKS Nagar, Gandhi Park', 'RS Puram', 'Coimbatore', 'Tamilnadu', '103', '641005', '620650f135727.png', 0),
('LOC_620ceca517bfa', 'Singanallur', '', '', '', '', '', '0', '', '', 0),
('LOC_620f3f36b4de0', 'Chennai', '', '', '', '', '', '0', '', '', 0),
('LOC_62137a775c006', 'Karur', '', '', '', '', '', '', '', '', 0),
('LOC_62137a8925b77', 'Perundurai', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacturers`
--

CREATE TABLE `tbl_manufacturers` (
  `manufacturers_uid` varchar(64) NOT NULL,
  `manufacturers_name` varchar(150) NOT NULL,
  `manufacturers_url` varchar(150) NOT NULL,
  `manufacturers_supporturl` varchar(200) NOT NULL,
  `manufacturers_supportphone` varchar(20) NOT NULL,
  `manufacturers_supportemail` varchar(50) NOT NULL,
  `manufacturers_image` varchar(50) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_manufacturers`
--

INSERT INTO `tbl_manufacturers` (`manufacturers_uid`, `manufacturers_name`, `manufacturers_url`, `manufacturers_supporturl`, `manufacturers_supportphone`, `manufacturers_supportemail`, `manufacturers_image`, `is_deleted`) VALUES
('MANU_6206514b97ee3', 'Dell', '', '', '18004235544', 'support@dell.com', '', 1),
('MANU_62072fbf9470b', 'Dell', '', '', '', '', '', 0),
('MANU_62072fc87ec12', 'Apple', '', '', '', '', '', 0),
('MANU_620b2ed054f2b', 'Assembled', '', '', '', '', '', 0),
('MANU_620ca9b8befe2', 'Asus', '', '', '', '', '', 0),
('MANU_620ca9c9107c8', 'HP', '', '', '', '', '', 0),
('MANU_620ca9ec11f16', 'Lenovo', '', '', '', '', '', 0),
('MANU_620ca9f77e307', 'Microsoft', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modelno`
--

CREATE TABLE `tbl_modelno` (
  `modelno_uid` varchar(64) NOT NULL,
  `model_number` varchar(100) NOT NULL,
  `modelno_image` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_models`
--

CREATE TABLE `tbl_models` (
  `models_uid` varchar(64) NOT NULL,
  `models_name` varchar(100) NOT NULL,
  `models_image` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_models`
--

INSERT INTO `tbl_models` (`models_uid`, `models_name`, `models_image`, `is_deleted`) VALUES
('MODL_6213605633057', '240 G7 Notebook PC', '621469d1ed028.png', 0),
('MODL_6213605f19693', '250 G7 Notebook PC', '621469d1ed028.png', 0),
('MODL_6213606dbbdf7', 'EliteBook 840 G3', '621469d1ed028.png', 0),
('MODL_6213608516b4e', 'Latitude 3400', '621469d1ed028.png', 0),
('MODL_62136112356ca', 'Latitude 3410', '621469d1ed028.png', 0),
('MODL_6213611b3d48a', 'Latitude 3420', '621469d1ed028.png', 0),
('MODL_621361256407a', 'Latitude 3450', '621469d1ed028.png', 0),
('MODL_6213612e6560e', 'Latitude 3460', '621469d1ed028.png', 0),
('MODL_62136136efa43', 'Latitude 3480', '621469d1ed028.png', 0),
('MODL_6213613f30590', 'Latitude 3490', '621469d1ed028.png', 0),
('MODL_62136148808e7', 'Latitude 3510', '621469d1ed028.png', 0),
('MODL_6213615232570', 'Latitude 3540', '621469d1ed028.png', 0),
('MODL_6213615be3166', 'Latitude 3550', '621469d1ed028.png', 0),
('MODL_621361656df5a', 'Latitude 3560', '621469d1ed028.png', 0),
('MODL_621378b8a6501', 'Latitude 3580', '621469d1ed028.png', 0),
('MODL_621378c52179a', 'Latitude 5290', '621469d1ed028.png', 0),
('MODL_621378cf4cbde', 'Latitude 5400', '621469d1ed028.png', 0),
('MODL_621378d883e03', 'Latitude 5490', '621469d1ed028.png', 0),
('MODL_621378e183f20', 'Latitude 5491', '621469d1ed028.png', 0),
('MODL_621378ea70dbd', 'Latitude 7420', '621469d1ed028.png', 0),
('MODL_621378f375f13', 'Latitude 7480', '621469d1ed028.png', 0),
('MODL_621378fc9547d', 'Latitude E5440', '621469d1ed028.png', 0),
('MODL_621379061aee4', 'Latitude E5450', '621469d1ed028.png', 0),
('MODL_621379111d89e', 'Latitude E5470', '621469d1ed028.png', 0),
('MODL_6213791a74f1e', 'Latitude E5520', '621469d1ed028.png', 0),
('MODL_621379239e0d5', 'Latitude E5530', '621469d1ed028.png', 0),
('MODL_6213792c9c26d', 'Latitude E5540', '621469d1ed028.png', 0),
('MODL_6213793575f7e', 'Latitude E5570', '621469d1ed028.png', 0),
('MODL_6213793eac95d', 'Latitude E6330', '621469d1ed028.png', 0),
('MODL_6213794a611c9', 'Latitude E6420', '621469d1ed028.png', 0),
('MODL_62137955b0386', 'Latitude E6430', '621469d1ed028.png', 0),
('MODL_6213795ecaf81', 'Latitude E6520', '621469d1ed028.png', 0),
('MODL_6213796868340', 'Latitude E6540', '621469d1ed028.png', 0),
('MODL_62137973e6183', 'Latitude E7440', '621469d1ed028.png', 0),
('MODL_6213797bcc5c7', 'Latitude E7450', '621469d1ed028.png', 0),
('MODL_621379850c415', 'Latitude E7470', '621469d1ed028.png', 0),
('MODL_62137997450ac', 'Lattitude E6330', '621469d1ed028.png', 0),
('MODL_621379a9c0e40', 'M509DA-EJ561T', '621469d1ed028.png', 0),
('MODL_621379b5aa833', 'Mobile Wokstation 8560W', '621469d1ed028.png', 0),
('MODL_621379bf861da', 'Precision 3541', '621469d1ed028.png', 0),
('MODL_621379c90f1f9', 'Precision 3551', '621469d1ed028.png', 0),
('MODL_621379dac4eda', 'Precision M2800', '621469d1ed028.png', 0),
('MODL_621379e2be1ea', 'Surface Book 3', '621469d1ed028.png', 0),
('MODL_621379f011d60', 'Think Centre A58', '621469d1ed028.png', 0),
('MODL_621379fe04b5a', 'X505ZA_X505ZA', '621469d1ed028.png', 0),
('MODL_62137a0783a8d', 'X509DA_M509DA', '621469d1ed028.png', 0),
('MODL_62137a1f91d8e', 'Vostro 3400', '621469d1ed028.png', 0),
('MODL_62137a2f9eebd', 'Vostro 3460', '621469d1ed028.png', 0),
('MODL_62137a37cadfc', 'Vostro 3546', '621469d1ed028.png', 0),
('MODL_62137a40cea09', 'Vostro 3550', '621469d1ed028.png', 0),
('MODL_62137a4d709de', 'Vostro 3560', '621469d1ed028.png', 0),
('MODL_6214d1521580f', 'Vostro 3500', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_uid` varchar(64) NOT NULL,
  `seq_id` int(11) NOT NULL,
  `status_name` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`status_uid`, `seq_id`, `status_name`, `is_deleted`) VALUES
('STS_62074ed9870a4', 1, 'In  Store', 0),
('STS_620be5d6254e6', 2, 'Ready to Deploy', 0),
('STS_620be5e16097b', 3, 'Assigned', 0),
('STS_6216761b22bf0', 4, 'Lost/Stolen', 0),
('STS_6216762ae048f', 5, 'Broken - Not Fixable', 0),
('STS_621676c75f47b', 6, 'Out for Repair', 0),
('STS_621676df06944', 7, 'Scrab', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `supplier_uid` varchar(64) NOT NULL,
  `supplier_name` varchar(500) NOT NULL,
  `supplier_address1` varchar(100) NOT NULL,
  `supplier_address2` varchar(100) NOT NULL,
  `supplier_city` varchar(100) NOT NULL,
  `supplier_state` varchar(100) NOT NULL,
  `supplier_country` bigint(20) NOT NULL,
  `supplier_zipcode` varchar(10) NOT NULL,
  `supplier_contactname` varchar(100) NOT NULL,
  `supplier_phone` varchar(100) NOT NULL,
  `supplier_fax` varchar(100) NOT NULL,
  `supplier_email` varchar(100) NOT NULL,
  `supplier_url` varchar(100) NOT NULL,
  `supplier_notes` varchar(200) NOT NULL,
  `supplier_imagename` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`supplier_uid`, `supplier_name`, `supplier_address1`, `supplier_address2`, `supplier_city`, `supplier_state`, `supplier_country`, `supplier_zipcode`, `supplier_contactname`, `supplier_phone`, `supplier_fax`, `supplier_email`, `supplier_url`, `supplier_notes`, `supplier_imagename`, `is_deleted`) VALUES
('SUPP_6206512860a54', 'VM Syscare', 'Gandipuram', '', 'Coimbatore', 'Tamilnadu', 103, '641001', 'Dinesh', '1234567890', '', 'vmsyscare@gmail.com', '', '', '', 0),
('SUPP_62072fde6fc74', 'IT Hub', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0),
('SUPP_620cecdb10640', 'PAMSTECHNO', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0),
('SUPP_6215b5abafa3d', 'BATS Technologies', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0),
('SUPP_6215c884c5db6', 'Indsys Holdings India Pvt Ltd', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0),
('SUPP_6215d843f0867', 'J K Laptop House', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0),
('SUPP_6215d9d2b55ea', 'Shri Maruti Electronics', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0),
('SUPP_6215dd5ee3410', 'INIT Systems', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0),
('SUPP_6215ff894b656', 'Phoenix Technologies', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0),
('SUPP_62161a0580923', 'Dell India Pvt Ltd', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp`
--

CREATE TABLE `tbl_temp` (
  `id` int(11) NOT NULL,
  `desktop_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_temp`
--

INSERT INTO `tbl_temp` (`id`, `desktop_name`, `username`, `user_id`) VALUES
(1, 'DES0000061', 'lsivaraj088', 99),
(2, 'DES0000062', 'mkavinpratheep426', 109),
(3, 'DES0000063', 'Ssaravanan277', 212),
(4, 'DES0000064', 'bsinduja412', 21),
(5, 'DES0000065', 'asiva467', 10),
(6, 'DES0000066', 'dsiva416', 36),
(7, 'DES0000067', 'enaveen421', 38),
(8, 'DES0000068', 'psiva35c', 157),
(9, 'DES0000069', 'ssubash448', 219),
(10, 'DES0000070', 'mbalaji432', 102),
(11, 'DES0000071', 'npremnath430', 136),
(12, 'DES0000072', 'sjaganathan473', 195),
(13, 'DES0000073', 'srajesh111', 208),
(14, 'DES0000074', 'mnithya408', 116),
(15, 'DES0000075', 'gjayaprakash079', 40),
(16, 'DES0000076', 'jajit443', 56),
(17, 'DES0000077', 'bgokul509', 15),
(18, 'DES0000078', 'dabinav528', 31),
(19, 'DES0000079', 'nharikrishnan103', 133),
(20, 'DES0000080', 'sswathi465', 221),
(21, 'DES0000081', 'apnsathish125', 8),
(22, 'DES0000082', 'kgopu259', 76),
(23, 'DES0000083', 'shariprasad424', 192),
(24, 'DES0000084', 'kbharath44C', 72),
(25, 'DES0000085', 'lsureshkumar064', 101),
(26, 'DES0000086', 'rbalakrishnan417', 162),
(27, 'DES0000087', 'rsudha434', 178),
(28, 'DES0000088', 'spriyan517', 206),
(29, 'DES0000089', 'jrevathi422', 63),
(30, 'DES0000090', 'mnavaneethan177', 114),
(31, 'DES0000091', 'tvenkatesh526', 236),
(32, 'DES0000092', 'svinayak126', 226),
(33, 'DES0000093', 'cponnusamy179', 27),
(34, 'DES0000094', 'Gpoongodi077', 50),
(35, 'DES0000095', 'mmathan532', 112),
(36, 'DES0000096', 'rraghul489', 170),
(37, 'DES0000097', 'rragul491', 171),
(38, 'DES0000098', 'ssangeetha401', 211),
(39, 'DES0000099', 'ssiva384', 217),
(40, 'DES0000100', 'bganeshmurthy147', 14),
(41, 'DES0000101', 'jlakshmi521', 58),
(42, 'DES0000102', 'bsanthosh413', 17),
(43, 'DES0000103', 'smadasamy173', 199),
(44, 'DES0000104', 'gjeyakumar519', 41),
(45, 'DES0000105', 'gragavendhran548', 52),
(46, 'DES0000106', 'janandh537', 57),
(47, 'DES0000107', 'mgokul545', 106),
(48, 'DES0000108', 'mprakash321', 118),
(49, 'DES0000109', 'sindhuraj300', 194),
(50, 'DES0000110', 'vjeeva514', 242),
(51, 'DES0000111', 'rvijayamoorthy418', 180),
(52, 'DES0000112', 'tramesh027', 231),
(53, 'DES0000113', 'bsathish516', 20),
(54, 'DES0000114', 'mprasanth410', 119),
(55, 'DES0000115', 'vvarsha427', 246),
(56, 'DES0000116', 'pdineshbabu075', 139),
(57, 'DES0000117', 'pkeerthana488', 145),
(58, 'DES0000118', 'rpraveen269', 169),
(59, 'DES0000119', 'sarunraj327', 185),
(60, 'DES0000120', 'sbalaraman284', 187),
(61, 'DES0000121', 'skarthi459', 196),
(62, 'DES0000122', 'ssathish337', 215),
(63, 'DES0000123', 'vpoovarasan058', 245),
(64, 'DES0000124', 'mraghavendran938', 120),
(65, 'DES0000125', 'psaravanan923', 156),
(66, 'DES0000126', 'gmohana940', 48),
(67, 'DES0000127', 'sravichandrika939', 210),
(68, 'DES0000128', 'gparames11c', 49),
(69, 'DES0000129', 'aanbuselvan458', 1),
(70, 'DES0000130', 'asubhashini436', 11),
(71, 'DES0000131', 'isangeeth463', 55),
(72, 'DES0000132', 'kmahendran547', 80),
(73, 'DES0000133', 'kthirunavukarasu533', 96),
(74, 'DES0000134', 'mkalaivani076', 107),
(75, 'DES0000135', 'pramasamy433', 153),
(76, 'DES0000136', 'tudhay089', 235),
(77, 'DES0000137', 'sdiwakar002', 189),
(78, 'DES0000138', 'adaniel01c', 2),
(79, 'DES0000139', 'bsathish06c', 19),
(80, 'DES0000140', 'mgokul506', 105),
(81, 'DES0000141', 'psabari505', 155),
(82, 'DES0000142', 'avincent496', 12),
(83, 'DES0000143', 'baravinth544', 13),
(84, 'DES0000144', 'cdeepak244', 26),
(85, 'DES0000145', 'design01', 256),
(86, 'DES0000146', 'design01', 256),
(87, 'DES0000147', 'dnagarjun503', 33),
(88, 'DES0000148', 'Gkumaravel484', 45),
(89, 'DES0000149', 'gprasanna486', 51),
(90, 'DES0000150', 'imarudhan538', 54),
(91, 'DES0000151', 'jnaveena450', 60),
(92, 'DES0000152', 'jradha074', 62),
(93, 'DES0000153', 'kmanimegalai398', 82),
(94, 'DES0000154', 'lsuresh056', 100),
(95, 'DES0000155', 'mdhanush479', 103),
(96, 'DES0000156', 'mgokul37c', 104),
(97, 'DES0000157', 'mkishore273', 110),
(98, 'DES0000158', 'mmuthu323', 113),
(99, 'DES0000159', 'msasikumar047', 125),
(100, 'DES0000160', 'npremkumar285', 135),
(101, 'DES0000161', 'nyogaanand381', 137),
(102, 'DES0000162', 'rarvind429', 159),
(103, 'DES0000163', 'rkalpana070', 163),
(104, 'DES0000164', 'rkarthik128', 164),
(105, 'DES0000165', 'rmowlieswaran483', 167),
(106, 'DES0000166', 'rsasi292', 176),
(107, 'DES0000167', 'shari529', 191),
(108, 'DES0000168', 'skathirvel206', 198),
(109, 'DES0000169', 'ssathayakala546', 214),
(110, 'DES0000170', 'ssurendren36c', 220),
(111, 'DES0000171', 'svidhya520', 224),
(112, 'DES0000172', 'tlalith501', 228),
(113, 'DES0000173', 'rarvinth534', 160);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_uid` bigint(20) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_uid`, `type_name`, `is_deleted`) VALUES
(1, 'License', 0),
(2, 'Consumable', 0),
(3, 'Component', 0),
(4, 'Asset', 0),
(5, 'Accessory', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `users_uid` bigint(20) NOT NULL,
  `emp_id` varchar(64) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` bigint(20) NOT NULL,
  `is_firstlogin` int(11) NOT NULL DEFAULT '0',
  `is_admin` int(11) NOT NULL DEFAULT '0' COMMENT 'is_deleted',
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`users_uid`, `emp_id`, `firstname`, `lastname`, `username`, `mobile_no`, `email_address`, `address1`, `address2`, `city`, `country`, `is_firstlogin`, `is_admin`, `is_deleted`) VALUES
(1, '-', 'Anbuselvan Arumugam', '-', 'aanbuselvan458', '', '', '', '', '', 0, 0, 0, 0),
(2, '-', 'Daniel Amalraj', '-', 'adaniel01c', '', '', '', '', '', 0, 0, 0, 0),
(3, '-', 'EstherChristina Anthony Das', '-', 'aesther527', '', '', '', '', '', 0, 0, 0, 0),
(4, '-', 'Guru Prasanna Abale', '-', 'aguru331', '', '', '', '', '', 0, 0, 0, 0),
(5, '-', 'Kannadasan Anandan', '-', 'Akannadasan', '', '', '', '', '', 0, 0, 0, 0),
(6, '-', 'Kannan Appukkutti', '-', 'akannan039', '', '', '', '', '', 0, 0, 0, 0),
(7, '-', 'Marichelvam Arunachalam', '-', 'amarichelvam437', '', '', '', '', '', 0, 0, 0, 0),
(8, '-', 'Sathish AP. Natarajan', '-', 'apnsathish125', '', '', '', '', '', 0, 0, 0, 0),
(9, '-', 'Prakash Arumugam', '-', 'aprakash105', '', '', '', '', '', 0, 0, 0, 0),
(10, '-', 'Sivakumar Ayyasamy', '-', 'asiva467', '', '', '', '', '', 0, 0, 0, 0),
(11, '-', 'Subhashini Arumugam', '-', 'asubhashini436', '', '', '', '', '', 0, 0, 0, 0),
(12, '-', 'Vincentraj Arockiasamy', '-', 'avincent496', '', '', '', '', '', 0, 0, 0, 0),
(13, '-', 'Aravinth Balu', '-', 'baravinth544', '', '', '', '', '', 0, 0, 0, 0),
(14, '-', 'Ganeshmurthy Balasubramanian', '-', 'bganeshmurthy147', '', '', '', '', '', 0, 0, 0, 0),
(15, '-', 'Gokul Prasanth Balasundaran', '-', 'bgokul509', '', '', '', '', '', 0, 0, 0, 0),
(16, '-', 'Kamala Kannan Balachandran', '-', 'bkamal318', '', '', '', '', '', 0, 0, 0, 0),
(17, '-', 'Santhosh Balakrishnan', '-', 'bsanthosh413', '', '', '', '', '', 0, 0, 0, 0),
(18, '-', 'Sasikumar Balakrishnan', '-', 'bsasi15c', '', '', '', '', '', 0, 0, 0, 0),
(19, '-', 'Sathishkumar Balasubramanian', '-', 'bsathish06c', '', '', '', '', '', 0, 0, 0, 0),
(20, '-', 'Sathish Balachandran', '-', 'bsathish516', '', '', '', '', '', 0, 0, 0, 0),
(21, '-', 'Sinduja Balamurugan', '-', 'bsinduja412', '', '', '', '', '', 0, 0, 0, 0),
(22, '-', 'Sowmiya Balu', '-', 'bsowmiya931', '', '', '', '', '', 0, 0, 0, 0),
(23, '-', 'Tharani Tharan Balasundaram', '-', 'btharani050', '', '', '', '', '', 0, 0, 0, 0),
(24, '-', 'Thennavan Balu', '-', 'Bthennavan903', '', '', '', '', '', 0, 0, 0, 0),
(25, '-', 'Vinoth Balasubramanian', '-', 'bvinoth456', '', '', '', '', '', 0, 0, 0, 0),
(26, '-', 'Deepak Chandran', '-', 'cdeepak244', '', '', '', '', '', 0, 0, 0, 0),
(27, '-', 'Ponnusamy Chinnathambi', '-', 'cponnusamy179', '', '', '', '', '', 0, 0, 0, 0),
(28, '-', 'Pradeep Chandrasekaran', '-', 'cpradeep469', '', '', '', '', '', 0, 0, 0, 0),
(29, '-', 'Ramachandran Chinnasamy', '-', 'cramachandran115', '', '', '', '', '', 0, 0, 0, 0),
(30, '-', 'Sriram Prasath Chenniyappan', '-', 'csriram33c', '', '', '', '', '', 0, 0, 0, 0),
(31, '-', 'Abinav Duraisamy', '-', 'dabinav528', '', '', '', '', '', 0, 0, 0, 0),
(32, '-', 'Aravind Duraikannan', '-', 'daravind942', '', '', '', '', '', 0, 0, 0, 0),
(33, '-', 'Nagarjun Dhamotharan', '-', 'dnagarjun503', '', '', '', '', '', 0, 0, 0, 0),
(34, '-', 'Prakash Duraisamy', '-', 'dprakash256', '', '', '', '', '', 0, 0, 0, 0),
(35, '-', 'Shanmathi Durairaj', '-', 'dshanmathi936', '', '', '', '', '', 0, 0, 0, 0),
(36, '-', 'Sivashanker Devaraj', '-', 'dsiva416', '', '', '', '', '', 0, 0, 0, 0),
(37, '-', 'Indrakumar Elangovan', '-', 'eindrakumar946', '', '', '', '', '', 0, 0, 0, 0),
(38, '-', 'Naveenkumar Elango', '-', 'enaveen421', '', '', '', '', '', 0, 0, 0, 0),
(39, '-', 'Akiladevi Gandhi', '-', 'gakila290', '', '', '', '', '', 0, 0, 0, 0),
(40, '-', 'Jayaprakash Ganeshan', '-', 'gjayaprakash079', '', '', '', '', '', 0, 0, 0, 0),
(41, '-', 'Jeyakumar Ganesan', '-', 'gjeyakumar519', '', '', '', '', '', 0, 0, 0, 0),
(42, '-', 'Karthikeyan Ganesan', '-', 'gkarthikeyan045', '', '', '', '', '', 0, 0, 0, 0),
(43, '-', 'Kavitha Gunasekaran', '-', 'gkavitha393', '', '', '', '', '', 0, 0, 0, 0),
(44, '-', 'Kavitha Ganesan', '-', 'gkavitha438', '', '', '', '', '', 0, 0, 0, 0),
(45, '-', 'Kumaravel Gurusamy', '-', 'Gkumaravel484', '', '', '', '', '', 0, 0, 0, 0),
(46, '-', 'Manikandan Gopalakrishnan', '-', 'gmanikandan148', '', '', '', '', '', 0, 0, 0, 0),
(48, '-', 'MohanaBalaji Gopal', '-', 'gmohana940', '', '', '', '', '', 0, 0, 0, 0),
(49, '-', 'Parameswaran Gurusamy', '-', 'gparames11c', '', '', '', '', '', 0, 0, 0, 0),
(50, '-', 'Poongodi Gowrimanavalan', '-', 'Gpoongodi077', '', '', '', '', '', 0, 0, 0, 0),
(51, '-', 'Prasanna Gopala Krishna Moorthy', '-', 'gprasanna486', '', '', '', '', '', 0, 0, 0, 0),
(52, '-', 'Ragavendhran Gopal', '-', 'gragavendhran548', '', '', '', '', '', 0, 0, 0, 0),
(53, '-', 'Rakesh Gupta', '-', 'grakesh926', '', '', '', '', '', 0, 0, 0, 0),
(54, '-', 'Marudhan Iyyapan', '-', 'imarudhan538', '', '', '', '', '', 0, 0, 0, 0),
(55, '-', 'Sangeeth kumar inba kumar', '-', 'isangeeth463', '', '', '', '', '', 0, 0, 0, 0),
(56, '-', 'Ajit Kumar Jayaprakash', '-', 'jajit443', '', '', '', '', '', 0, 0, 0, 0),
(57, '-', 'Anandha Velan Jaganathan', '-', 'janandh537', '', '', '', '', '', 0, 0, 0, 0),
(58, '-', 'Mahalakshmi Jaganathan', '-', 'jlakshmi521', '', '', '', '', '', 0, 0, 0, 0),
(59, '-', 'Lakshmi Priya Jayavardhana', '-', 'jlakshmi945', '', '', '', '', '', 0, 0, 0, 0),
(60, '-', 'Naveena Jaganathan', '-', 'jnaveena450', '', '', '', '', '', 0, 0, 0, 0),
(61, '-', 'Prasana Janarthanan', '-', 'jprasana095', '', '', '', '', '', 0, 0, 0, 0),
(62, '-', 'Radhakarpagam Jayaprakash', '-', 'jradha074', '', '', '', '', '', 0, 0, 0, 0),
(63, '-', 'Revathi Jeganathan', '-', 'jrevathi422', '', '', '', '', '', 0, 0, 0, 0),
(64, '-', 'Srikanth Jayaraj', '-', 'jsrikanth250', '', '', '', '', '', 0, 0, 0, 0),
(65, '-', 'Vinod kumar Jagthap subbarao', '-', 'jsvinod102', '', '', '', '', '', 0, 0, 0, 0),
(66, '-', 'Ghuru Kumaravelu', '-', 'K.Ghuru', '', '', '', '', '', 0, 0, 0, 0),
(67, '-', 'Akilan Kanthamani', '-', 'kakilan240', '', '', '', '', '', 0, 0, 0, 0),
(68, '-', 'Arun kumar Krishnasamy', '-', 'karun029', '', '', '', '', '', 0, 0, 0, 0),
(69, '-', 'KaviKannan Rajendran', '-', 'kavikannan414', '', '', '', '', '', 0, 0, 0, 0),
(70, '-', 'Kavitha Sukumar', '-', 'Kavitha.S', '', '', '', '', '', 0, 0, 0, 0),
(71, '-', 'Balaji Kumar', '-', 'kbalaji044', '', '', '', '', '', 0, 0, 0, 0),
(72, '-', 'Bharath Kulandaisamy', '-', 'kbharath44C', '', '', '', '', '', 0, 0, 0, 0),
(73, '-', 'Bharathi Nirmal Kumar', '-', 'kbharathi329', '', '', '', '', '', 0, 0, 0, 0),
(74, '-', 'Charanraja Kolandhaisamy', '-', 'kcharan32c', '', '', '', '', '', 0, 0, 0, 0),
(75, '-', 'Ganeshprabhu Kanakaraj', '-', 'kganeshprabhu319', '', '', '', '', '', 0, 0, 0, 0),
(76, '-', 'Gopu Karupannan', '-', 'kgopu259', '', '', '', '', '', 0, 0, 0, 0),
(77, '-', 'Haripriya Kailasam', '-', 'kharipriya394', '', '', '', '', '', 0, 0, 0, 0),
(78, '-', 'kalaivani Karunakaran', '-', 'kkalaivani383', '', '', '', '', '', 0, 0, 0, 0),
(79, '-', 'Karthi keyan krishnamoorthy', '-', 'kkarthi425', '', '', '', '', '', 0, 0, 0, 0),
(80, '-', 'Mahendran Kumaravadivel', '-', 'kmahendran547', '', '', '', '', '', 0, 0, 0, 0),
(81, '-', 'Manikandan Krishnamoorthy', '-', 'kmanikandan941', '', '', '', '', '', 0, 0, 0, 0),
(82, '-', 'Manimegalai Kalaiarasu', '-', 'kmanimegalai398', '', '', '', '', '', 0, 0, 0, 0),
(83, '-', 'Manoshankar Kalimuthu', '-', 'kmanoshankar119', '', '', '', '', '', 0, 0, 0, 0),
(84, '-', 'Marimuthu Kalimuthu', '-', 'kmarimuthu055', '', '', '', '', '', 0, 0, 0, 0),
(85, '-', 'Nathiya Kannaiyan', '-', 'knathiya541', '', '', '', '', '', 0, 0, 0, 0),
(86, '-', 'Prakash Kandhasamy', '-', 'kprakash948', '', '', '', '', '', 0, 0, 0, 0),
(87, '-', 'Rajan Kandasamy', '-', 'krajan113', '', '', '', '', '', 0, 0, 0, 0),
(88, '-', 'Ramarathinam Kesavaraman', '-', 'kramarathinam109', '', '', '', '', '', 0, 0, 0, 0),
(89, '-', 'Ramasamy Krishnan', '-', 'kramasamy518', '', '', '', '', '', 0, 0, 0, 0),
(90, '-', 'Aravindh Bharathi Kumarasamy', '-', 'kravindh474', '', '', '', '', '', 0, 0, 0, 0),
(91, '-', 'Saravanakumar Krishnan', '-', 'ksaravana542', '', '', '', '', '', 0, 0, 0, 0),
(92, '-', 'Saravanan Kamatchi', '-', 'ksaravanan175', '', '', '', '', '', 0, 0, 0, 0),
(93, '-', 'Sathyanarayanan Kanagaraj', '-', 'ksathyanarayanan218', '', '', '', '', '', 0, 0, 0, 0),
(94, '-', 'Soundararajan Kandasamy', '-', 'ksoundararajan222', '', '', '', '', '', 0, 0, 0, 0),
(95, '-', 'Sriram Krishnamoorthy', '-', 'ksriram918', '', '', '', '', '', 0, 0, 0, 0),
(96, '-', 'Thirunavukarasu Kalidass', '-', 'kthirunavukarasu533', '', '', '', '', '', 0, 0, 0, 0),
(97, '-', 'Velmurugan Kannappan', '-', 'kvelmurugan007', '', '', '', '', '', 0, 0, 0, 0),
(98, '-', 'Ravindra Kumar Lakshmanan', '-', 'lravindra367', '', '', '', '', '', 0, 0, 0, 0),
(99, '-', 'Sivaraj Lakshmanan', '-', 'lsivaraj088', '', '', '', '', '', 0, 0, 0, 0),
(100, '-', 'Suresh Manikandan Lakkian', '-', 'lsuresh056', '', '', '', '', '', 0, 0, 0, 0),
(101, '-', 'Suresh kumar Loganathan', '-', 'lsureshkumar064', '', '', '', '', '', 0, 0, 0, 0),
(102, '-', 'Balaji Mohan', '-', 'mbalaji432', '', '', '', '', '', 0, 0, 0, 0),
(103, '-', 'Dhanushkaran Mohan Babu', '-', 'mdhanush479', '', '', '', '', '', 0, 0, 0, 0),
(104, '-', 'Gokulakrishnan Mahalingam', '-', 'mgokul37c', '', '', '', '', '', 0, 0, 0, 0),
(105, '-', 'Gokuldas Murugan', '-', 'mgokul506', '', '', '', '', '', 0, 0, 0, 0),
(106, '-', 'GokulPrasath Murugavel', '-', 'mgokul545', '', '', '', '', '', 0, 0, 0, 0),
(107, '-', 'Kalaivani Murugan', '-', 'mkalaivani076', '', '', '', '', '', 0, 0, 0, 0),
(108, '-', 'Kavin Muthuvelu', '-', 'mkavin181', '', '', '', '', '', 0, 0, 0, 0),
(109, '-', 'KavinPratheep Mani', '-', 'mkavinpratheep426', '', '', '', '', '', 0, 0, 0, 0),
(110, '-', 'Kishore Moorthi', '-', 'mkishore273', '', '', '', '', '', 0, 0, 0, 0),
(111, '-', 'Manoj Kumar Manickam', '-', 'mmanojkumar289', '', '', '', '', '', 0, 0, 0, 0),
(112, '-', 'Mathankumar Maheswaran', '-', 'mmathan532', '', '', '', '', '', 0, 0, 0, 0),
(113, '-', 'Muthumurugan Muthukumar', '-', 'mmuthu323', '', '', '', '', '', 0, 0, 0, 0),
(114, '-', 'Mahanavaneethan Munusamy', '-', 'mnavaneethan177', '', '', '', '', '', 0, 0, 0, 0),
(115, '-', 'Nithyashankar Mohankumar', '-', 'mnithy176', '', '', '', '', '', 0, 0, 0, 0),
(116, '-', 'Nithya Murugesan', '-', 'mnithya408', '', '', '', '', '', 0, 0, 0, 0),
(117, '-', 'Prakash Babu Marappan', '-', 'mprakash049', '', '', '', '', '', 0, 0, 0, 0),
(118, '-', 'Prakash Muthusamy', '-', 'mprakash321', '', '', '', '', '', 0, 0, 0, 0),
(119, '-', 'Prasanth Murugan', '-', 'mprasanth410', '', '', '', '', '', 0, 0, 0, 0),
(120, '-', 'Raghavendran Madhavan', '-', 'mraghavendran938', '', '', '', '', '', 0, 0, 0, 0),
(121, '-', 'Ravi Madhevan', '-', 'mravi31c', '', '', '', '', '', 0, 0, 0, 0),
(122, '-', 'Ravikumar Madhavan', '-', 'mravikumar028', '', '', '', '', '', 0, 0, 0, 0),
(123, '-', 'Roopeshkumar Murugesan', '-', 'mroopesh524', '', '', '', '', '', 0, 0, 0, 0),
(124, '-', 'Sakthivel Muthu', '-', 'msakthivel169', '', '', '', '', '', 0, 0, 0, 0),
(125, '-', 'Sasikumar Murugavel', '-', 'msasikumar047', '', '', '', '', '', 0, 0, 0, 0),
(126, '-', 'Sivakumar M. Sundaramoorthy', '-', 'mssivakumar081', '', '', '', '', '', 0, 0, 0, 0),
(127, '-', 'Suresh Manoharan', '-', 'msuresh287', '', '', '', '', '', 0, 0, 0, 0),
(128, '-', 'Tamilanbu Mahalingam', '-', 'mtamilanbu26c', '', '', '', '', '', 0, 0, 0, 0),
(129, '-', 'Vignesh Muruganandhan', '-', 'mvignesh444', '', '', '', '', '', 0, 0, 0, 0),
(130, '-', 'Vimalamani Manickam', '-', 'mvimala036', '', '', '', '', '', 0, 0, 0, 0),
(131, '-', 'Vinothkumar Murugesh', '-', 'mvinoth531', '', '', '', '', '', 0, 0, 0, 0),
(132, '-', 'DeepakRaj Narayana Moorthi', '-', 'ndeepak28c', '', '', '', '', '', 0, 0, 0, 0),
(133, '-', 'Harikrishnan Nateshan', '-', 'nharikrishnan103', '', '', '', '', '', 0, 0, 0, 0),
(134, '-', 'Masilamani Nagarajan', '-', 'nmasilamani167', '', '', '', '', '', 0, 0, 0, 0),
(135, '-', 'Premkumar Natarajan', '-', 'npremkumar285', '', '', '', '', '', 0, 0, 0, 0),
(136, '-', 'Premnath Narayanasamy', '-', 'npremnath430', '', '', '', '', '', 0, 0, 0, 0),
(137, '-', 'Yogaanandheeswaran Nagarajan', '-', 'nyogaanand381', '', '', '', '', '', 0, 0, 0, 0),
(138, '-', 'Babu Periyasamy', '-', 'pbabu083', '', '', '', '', '', 0, 0, 0, 0),
(139, '-', 'Dinesh Babu Palanisamy', '-', 'pdineshbabu075', '', '', '', '', '', 0, 0, 0, 0),
(140, '-', 'Abishak Flamy Paul Paulraj', '-', 'pflamy423', '', '', '', '', '', 0, 0, 0, 0),
(141, 'PI0498', 'Gokulakrishnan', 'Pandithurai', 'pgokul498', '9894707499', 'gokul.pandithurai@pactroninc.in', '365, Nanjappa Nagar', 'Kullampalayam', 'Gobichettipalayam', 0, 0, 0, 0),
(142, '-', 'Gopiganesh Palanisamy', '-', 'Pgopiganesh023', '', '', '', '', '', 0, 0, 0, 0),
(143, '-', 'Karthik PG', '-', 'pkarthik460', '', '', '', '', '', 0, 0, 0, 0),
(144, '-', 'Karthikeyan Periyannan', '-', 'pkarthikeyan032', '', '', '', '', '', 0, 0, 0, 0),
(145, '-', 'Keerthana Ponnusamy', '-', 'pkeerthana488', '', '', '', '', '', 0, 0, 0, 0),
(146, '-', 'Loganathan Periyasamy', '-', 'ploganathan254', '', '', '', '', '', 0, 0, 0, 0),
(147, '-', 'Malleeswaran Palanisamy', '-', 'pmalleeswaran441', '', '', '', '', '', 0, 0, 0, 0),
(148, '-', 'Nanthakumar Palanisamy', '-', 'pnantha137', '', '', '', '', '', 0, 0, 0, 0),
(149, '-', 'PooveshKumar Palanisamy', '-', 'ppoovesh34c', '', '', '', '', '', 0, 0, 0, 0),
(150, '-', 'Prakash Palanisamy', '-', 'pprakash328', '', '', '', '', '', 0, 0, 0, 0),
(151, '-', 'Praveen Paneer Selvam', '-', 'ppraveen361', '', '', '', '', '', 0, 0, 0, 0),
(152, '-', 'Raghavi Prabath', '-', 'praghavi540', '', '', '', '', '', 0, 0, 0, 0),
(153, '-', 'Ramasamy Periyasamy', '-', 'pramasamy433', '', '', '', '', '', 0, 0, 0, 0),
(154, '-', 'Ravi Paranthaman', '-', 'pravi333', '', '', '', '', '', 0, 0, 0, 0),
(155, '-', 'SabariiGanesh Praamasivaraj', '-', 'psabari505', '', '', '', '', '', 0, 0, 0, 0),
(156, '-', 'Saravanan Palanichamy', '-', 'psaravanan923', '', '', '', '', '', 0, 0, 0, 0),
(157, '-', 'Siva Poiyamozhi', '-', 'psiva35c', '', '', '', '', '', 0, 0, 0, 0),
(158, '-', 'Yaswanth Kumar Prabaharan', '-', 'pyaswanth27c', '', '', '', '', '', 0, 0, 0, 0),
(159, '-', 'Arvind Raveen babu', '-', 'rarvind429', '', '', '', '', '', 0, 0, 0, 0),
(160, '-', 'Arvinth Raman', '-', 'rarvinth534', '', '', '', '', '', 0, 0, 0, 0),
(161, '-', 'Ashok Rajasekar', '-', 'Rashok907', '', '', '', '', '', 0, 0, 0, 0),
(162, '-', 'BalaKrishnan Ravichandran', '-', 'rbalakrishnan417', '', '', '', '', '', 0, 0, 0, 0),
(163, '-', 'Kalpana Rajagopalan', '-', 'rkalpana070', '', '', '', '', '', 0, 0, 0, 0),
(164, '-', 'Karthik Rajendran', '-', 'rkarthik128', '', '', '', '', '', 0, 0, 0, 0),
(165, '-', 'Kaviyarasan Rajendran', '-', 'rkaviyarasan510', '', '', '', '', '', 0, 0, 0, 0),
(166, '-', 'Lokesh Ramasamy', '-', 'rlokesh472', '', '', '', '', '', 0, 0, 0, 0),
(167, '-', 'Mowlieswaran Rathinam', '-', 'rmowlieswaran483', '', '', '', '', '', 0, 0, 0, 0),
(168, '-', 'Prasanna Raja Ganapathy', '-', 'rprasanna932', '', '', '', '', '', 0, 0, 0, 0),
(169, '-', 'Praveen Ramakrishnan', '-', 'rpraveen269', '', '', '', '', '', 0, 0, 0, 0),
(170, '-', 'RaghulRaj Rameshkumar', '-', 'rraghul489', '', '', '', '', '', 0, 0, 0, 0),
(171, '-', 'Ragul Rajeswaran', '-', 'rragul491', '', '', '', '', '', 0, 0, 0, 0),
(172, '-', 'Ramamoorthy Rajagopal', '-', 'rramamoorthy129', '', '', '', '', '', 0, 0, 0, 0),
(173, '-', 'Ramesh Ramasamy', '-', 'rramesh094', '', '', '', '', '', 0, 0, 0, 0),
(174, '-', 'Ramya Rajkumar', '-', 'rramya301', '', '', '', '', '', 0, 0, 0, 0),
(175, '-', 'Sankar Rangasamy', '-', 'rsankar217', '', '', '', '', '', 0, 0, 0, 0),
(176, '-', 'Sasikumar rajendran', '-', 'rsasi292', '', '', '', '', '', 0, 0, 0, 0),
(177, '-', 'Sivanesan Ravi', '-', 'rsivanesan920', '', '', '', '', '', 0, 0, 0, 0),
(178, '-', 'Sudha Ramakrishnan', '-', 'rsudha434', '', '', '', '', '', 0, 0, 0, 0),
(179, '-', 'Vijay Rengaraju', '-', 'rvijay200', '', '', '', '', '', 0, 0, 0, 0),
(180, '-', 'Vijayamoorthy Rangaraj', '-', 'rvijayamoorthy418', '', '', '', '', '', 0, 0, 0, 0),
(181, '-', 'Vinod Kannan Raju', '-', 'rvinod053', '', '', '', '', '', 0, 0, 0, 0),
(182, '-', 'Abinaya Sivaraj', '-', 'sabinaya933', '', '', '', '', '', 0, 0, 0, 0),
(183, '-', 'AlaguAkshaya Senthilkumar', '-', 'sakshaya530', '', '', '', '', '', 0, 0, 0, 0),
(184, '-', 'Arun Subiramaniyam', '-', 'sarun314', '', '', '', '', '', 0, 0, 0, 0),
(185, '-', 'Arunraj Subramaniyam', '-', 'sarunraj327', '', '', '', '', '', 0, 0, 0, 0),
(186, '-', 'Arvindkumar S. Haribabu', '-', 'Sarvindkumar901', '', '', '', '', '', 0, 0, 0, 0),
(187, '-', 'Balaraman Subramaniam', '-', 'sbalaraman284', '', '', '', '', '', 0, 0, 0, 0),
(188, '-', 'Deepan chakkaravarthi Subramaniam', '-', 'sdeepan525', '', '', '', '', '', 0, 0, 0, 0),
(189, '-', 'Diwakar Srinivasan', '-', 'sdiwakar002', '', '', '', '', '', 0, 0, 0, 0),
(190, '-', 'Gunasekaran Saminathan', '-', 'sguna402', '', '', '', '', '', 0, 0, 0, 0),
(191, '-', 'Hari Prasath Sundarasamy', '-', 'shari529', '', '', '', '', '', 0, 0, 0, 0),
(192, '-', 'HariPrasad SenthilKumar', '-', 'shariprasad424', '', '', '', '', '', 0, 0, 0, 0),
(193, '-', 'Shri Hari Kamalanathan Mohanavel', '-', 'shkamal29c', '', '', '', '', '', 0, 0, 0, 0),
(194, '-', 'Indhuraj Subramani', '-', 'sindhuraj300', '', '', '', '', '', 0, 0, 0, 0),
(195, '-', 'Jaganathan SureshBabu', '-', 'sjaganathan473', '', '', '', '', '', 0, 0, 0, 0),
(196, '-', 'karthikeyan selvaraj', '-', 'skarthi459', '', '', '', '', '', 0, 0, 0, 0),
(197, '-', 'Karthik Selvendran', '-', 'skarthik403', '', '', '', '', '', 0, 0, 0, 0),
(198, '-', 'Kathirvel Shanmugam', '-', 'skathirvel206', '', '', '', '', '', 0, 0, 0, 0),
(199, '-', 'Madasamy Selvaraj', '-', 'smadasamy173', '', '', '', '', '', 0, 0, 0, 0),
(200, '-', 'Manivannan Srinivasan', '-', 'smanivannan482', '', '', '', '', '', 0, 0, 0, 0),
(201, '-', 'Meenakshi Sundaram Subramanian', '-', 'smeenakshi461', '', '', '', '', '', 0, 0, 0, 0),
(202, '-', 'Muralitharan Sathasivam', '-', 'smuralitharan507', '', '', '', '', '', 0, 0, 0, 0),
(203, '-', 'Navaneetha krishnan Sivasamy', '-', 'snavanee199', '', '', '', '', '', 0, 0, 0, 0),
(204, '-', 'Prakash subramaniam', '-', 'sprakash020', '', '', '', '', '', 0, 0, 0, 0),
(205, '-', 'Prakash Srinivasan', '-', 'sprakash539', '', '', '', '', '', 0, 0, 0, 0),
(206, '-', 'Priyankumar Santhoshkumar', '-', 'spriyan517', '', '', '', '', '', 0, 0, 0, 0),
(207, '-', 'Rajasekar Sekar', '-', 'srajasekar468', '', '', '', '', '', 0, 0, 0, 0),
(208, '-', 'Rajesh Kumar Singaravel', '-', 'srajesh111', '', '', '', '', '', 0, 0, 0, 0),
(209, '-', 'Rameshkumar Subramani', '-', 'srameshkumar080', '', '', '', '', '', 0, 0, 0, 0),
(210, '-', 'Ravichandrika Sundararajan', '-', 'sravichandrika939', '', '', '', '', '', 0, 0, 0, 0),
(211, '-', 'Sangeetha Sivanandham', '-', 'ssangeetha401', '', '', '', '', '', 0, 0, 0, 0),
(212, '-', 'Saravanan Subramaniam', '-', 'Ssaravanan277', '', '', '', '', '', 0, 0, 0, 0),
(213, '-', 'Saravanan Sankaranarayanan', '-', 'ssaravanan490', '', '', '', '', '', 0, 0, 0, 0),
(214, '-', 'Sathyakala Sivakumar', '-', 'ssathayakala546', '', '', '', '', '', 0, 0, 0, 0),
(215, '-', 'Sathishkumar Shanmugavel', '-', 'ssathish337', '', '', '', '', '', 0, 0, 0, 0),
(216, '-', 'Sharmila Sivakumar', '-', 'ssharmila406', '', '', '', '', '', 0, 0, 0, 0),
(217, '-', 'Sivaprakash Subramaniam', '-', 'ssiva384', '', '', '', '', '', 0, 0, 0, 0),
(218, '-', 'Srinivasan Sundarasamy', '-', 'ssrinivasan245', '', '', '', '', '', 0, 0, 0, 0),
(219, '-', 'Subash Subramaniam', '-', 'ssubash448', '', '', '', '', '', 0, 0, 0, 0),
(220, '-', 'Surendren Subramaniam', '-', 'ssurendren36c', '', '', '', '', '', 0, 0, 0, 0),
(221, '-', 'Swathi Selvam', '-', 'sswathi465', '', '', '', '', '', 0, 0, 0, 0),
(222, '-', 'Sukumar Shanmugam', '-', 'Sukumar.Shanmugam', '', '', '', '', '', 0, 0, 0, 0),
(223, '-', 'Devanath Sundaravarathan', '-', 'Sundardeva', '', '', '', '', '', 0, 0, 0, 0),
(224, '-', 'Vidhya Subramani', '-', 'svidhya520', '', '', '', '', '', 0, 0, 0, 0),
(225, '-', 'Vijay Shanmugasundaram', '-', 'SVijay913', '', '', '', '', '', 0, 0, 0, 0),
(226, '-', 'Vinayak Srinivasan', '-', 'svinayak126', '', '', '', '', '', 0, 0, 0, 0),
(227, '-', 'Karthikeyan Thangaraj', '-', 'tkarthikeyan156', '', '', '', '', '', 0, 0, 0, 0),
(228, '-', 'Lalithkumar Thirugnanam', '-', 'tlalith501', '', '', '', '', '', 0, 0, 0, 0),
(229, '-', 'Mythili Thangavel', '-', 'tmythili004', '', '', '', '', '', 0, 0, 0, 0),
(230, '-', 'Nimal T. Anandhan', '-', 'tnimal005', '', '', '', '', '', 0, 0, 0, 0),
(231, '-', 'Ramesh Thangavel', '-', 'tramesh027', '', '', '', '', '', 0, 0, 0, 0),
(232, '-', 'Ramesh Thangavel', '-', 'tramesh027', '', '', '', '', '', 0, 0, 0, 0),
(233, '-', 'Sakthivel Thangavel', '-', 'tsakthivel084', '', '', '', '', '', 0, 0, 0, 0),
(234, '-', 'Sivakumar Thiyagarajan', '-', 'tsiva041', '', '', '', '', '', 0, 0, 0, 0),
(235, '-', 'Udhayakumar Thangavel', '-', 'tudhay089', '', '', '', '', '', 0, 0, 0, 0),
(236, '-', 'Venkatesh Thangaraj', '-', 'tvenkatesh526', '', '', '', '', '', 0, 0, 0, 0),
(237, '-', 'vivek Thyagarajan', '-', 'tvivek925', '', '', '', '', '', 0, 0, 0, 0),
(238, '-', 'Dhanaselven ulaganathan', '-', 'udhanaselvan030', '', '', '', '', '', 0, 0, 0, 0),
(239, '-', 'Dhayalan Veerasamy', '-', 'vdhayalan504', '', '', '', '', '', 0, 0, 0, 0),
(240, '-', 'Hariharan Venkatesan', '-', 'vhari947', '', '', '', '', '', 0, 0, 0, 0),
(241, '-', 'Jeevarathinam velusamy', '-', 'vjeeva462', '', '', '', '', '', 0, 0, 0, 0),
(242, '-', 'Jeevanantham Viswanathan', '-', 'vjeeva514', '', '', '', '', '', 0, 0, 0, 0),
(243, '-', 'Karunambikai Venugopal', '-', 'vkarunambikai502', '', '', '', '', '', 0, 0, 0, 0),
(244, '-', 'Mathankumar Veerapatharan', '-', 'vmathankumar174', '', '', '', '', '', 0, 0, 0, 0),
(245, '-', 'Poovarasan Velusamy', '-', 'vpoovarasan058', '', '', '', '', '', 0, 0, 0, 0),
(246, '-', 'Varsha Vengatesan', '-', 'vvarsha427', '', '', '', '', '', 0, 0, 0, 0),
(247, '-', 'Revathi Yogeshwaran', '-', 'yrevathi446', '', '', '', '', '', 0, 0, 0, 0),
(256, '-', 'design 01', '-', 'design 01', '', '', '', '', '', 0, 0, 0, 0),
(257, 'PI0543', 'Mariappan G', 'Gopal', 'gmariappan543', '7094085503', 'marigopal@hotmail.com', '18 Kongu Nagar', 'Edayarpalayam', 'Coimbatore', 103, 0, 0, 0),
(258, '-', 'Divya', 'Vasistha', 'divya.v', '', '', '', '', '', 0, 0, 0, 0),
(259, '-', 'Indrakumar Elangovan', 'Indrakumar Elangovan', 'eindrakumar946', '', '', '', '', '', 0, 0, 0, 0),
(260, '-', 'Sumanth Kodali', 'Sumanth Kodali', 'ksumanth950', '', '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_import`
--

CREATE TABLE `tbl_users_import` (
  `users_uid` varchar(64) NOT NULL,
  `emp_id` varchar(64) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `is_admin` int(11) NOT NULL DEFAULT '0' COMMENT 'is_deleted',
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD UNIQUE KEY `category_uid` (`category_uid`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD UNIQUE KEY `company_uid` (`company_uid`);

--
-- Indexes for table `tbl_complogs`
--
ALTER TABLE `tbl_complogs`
  ADD PRIMARY KEY (`logs_uid`);

--
-- Indexes for table `tbl_component`
--
ALTER TABLE `tbl_component`
  ADD UNIQUE KEY `component_uid` (`component_uid`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`countries_uid`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD UNIQUE KEY `invoice_uid` (`invoice_uid`);

--
-- Indexes for table `tbl_locations`
--
ALTER TABLE `tbl_locations`
  ADD UNIQUE KEY `location_uid` (`location_uid`);

--
-- Indexes for table `tbl_manufacturers`
--
ALTER TABLE `tbl_manufacturers`
  ADD UNIQUE KEY `manufacturers_uid` (`manufacturers_uid`);

--
-- Indexes for table `tbl_modelno`
--
ALTER TABLE `tbl_modelno`
  ADD UNIQUE KEY `modelno_uid` (`modelno_uid`);

--
-- Indexes for table `tbl_models`
--
ALTER TABLE `tbl_models`
  ADD UNIQUE KEY `models_uid` (`models_uid`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD UNIQUE KEY `status_uid` (`status_uid`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD UNIQUE KEY `supplier_uid` (`supplier_uid`);

--
-- Indexes for table `tbl_temp`
--
ALTER TABLE `tbl_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_uid`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`users_uid`);

--
-- Indexes for table `tbl_users_import`
--
ALTER TABLE `tbl_users_import`
  ADD UNIQUE KEY `users_uid` (`users_uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_complogs`
--
ALTER TABLE `tbl_complogs`
  MODIFY `logs_uid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `countries_uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `tbl_temp`
--
ALTER TABLE `tbl_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `users_uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
