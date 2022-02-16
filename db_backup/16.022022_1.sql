-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 16, 2022 at 11:57 AM
-- Server version: 5.5.68-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE IF NOT EXISTS `tbl_category` (
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
('CATE_620cd7dc40fde', 'Monitor', 4, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE IF NOT EXISTS `tbl_company` (
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
-- Table structure for table `tbl_component`
--

CREATE TABLE IF NOT EXISTS `tbl_component` (
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
  `assigned_user` varchar(64) NOT NULL,
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
('COMP_620ca923b14c6', 'LAP0000012', 12, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca92b40d09', 'LAP0000013', 13, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca92cad475', 'LAP0000014', 14, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620ca92e39999', 'LAP0000015', 15, 3, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '-', '-', '', '', '0', 1),
('COMP_620caf0da7470', 'LAP0000016', 16, 0, '', 'CATE_6206a7440b180', 'MANU_620ca9ec11f16', 'MODL_620caa990cc11', '0', 'L912109', '', '', '', '148', 0),
('COMP_620caf5865cd1', 'LAP0000017', 17, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '88R8303', '', '', '', '59', 0),
('COMP_620caf8d9d04c', 'LAP0000018', 18, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '9XDF503', '', '', '', '165', 0),
('COMP_620cb0b8a0bd2', 'LAP0000019', 19, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620caab74a0d3', 'MODLNO_620caacfa1323', '4CLZPH3', '', '', '', '78', 0),
('COMP_620cb0f560a9e', 'LAP0000020', 20, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab1377c18', '6SK8LG3', '', '', '', '79', 0),
('COMP_620cb12d1c7c7', 'LAP0000021', 21, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620caab74a0d3', 'MODLNO_620caacfa1323', '2Y2ZPH3', '', '', '', '182', 0),
('COMP_620cb1aec8eea', 'LAP0000022', 22, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620caab74a0d3', 'MODLNO_620caacfa1323', 'G1TYPH3', '', '', '', '200', 0),
('COMP_620cb1d475920', 'LAP0000023', 23, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620caab74a0d3', 'MODLNO_620caacfa1323', '17LZPH3', '', '', '', '241', 0),
('COMP_620cb22a5f7fd', 'LAP0000024', 24, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab4400903', 'JPP6502', '', '', '', '22', 0),
('COMP_620cb267a2396', 'LAP0000025', 25, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab2489803', '8WY9ZB2', '', '', '', '183', 0),
('COMP_620cb2b5c6c11', 'LAP0000026', 26, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab61139b4', '15S1NJ2', '', '', '', '34', 0),
('COMP_620cb2e0b03dc', 'LAP0000027', 27, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab61139b4', 'B3S1NJ2', '', '', '', '179', 0),
('COMP_620cb32546b1b', 'LAP0000028', 28, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab35b8023', '7VYS9S2', '', '', '', '85', 0),
('COMP_620cb3debf763', 'LAP0000029', 29, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab35b8023', '7VYS9S2', '', '', '', '85', 0),
('COMP_620cb4085b2a9', 'LAP0000030', 30, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab35b8023', '503T9S2', '', '', '', '174', 0),
('COMP_620cb424167a8', 'LAP0000031', 31, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab35b8023', 'F3X3YR2', '', '', '', '197', 0),
('COMP_620cb4a6d344a', 'LAP0000032', 32, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620caacfa1323', 'F6PSWZ2', '', '', '', '243', 0),
('COMP_620cba23e4a1d', 'LAP0000033', 33, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', 'DDNJ1B3', '', '', '', '6', 0),
('COMP_620cba4547968', 'LAP0000034', 34, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '1Z25203', '', '', '', '42', 0),
('COMP_620cba74c0a98', 'LAP0000035', 35, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab3c839f2', '9Z95Y93', '', '', '', '43', 0),
('COMP_620cbaca7b8f0', 'LAP0000036', 36, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', 'CHWFT93', '', '', '', '44', 0),
('COMP_620cbb0f7e269', 'LAP0000037', 37, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '9FWFT93', '', '', '', '75', 0),
('COMP_620cbb2c31faf', 'LAP0000038', 38, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab3c839f2', 'FY95Y93', '', '', '', '77', 0),
('COMP_620cbc299f989', 'LAP0000039', 39, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '5M9WN93', '', '', '', '89', 0),
('COMP_620cbc581a06c', 'LAP0000040', 40, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '5GWFT93', '', '', '', '93', 0),
('COMP_620cbc8331301', 'LAP0000041', 41, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', 'GFWFT93', '', '', '', '131', 0),
('COMP_620cbca967ab3', 'LAP0000042', 42, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '2GWFT93', '', '', '', '132', 0),
('COMP_620cbcc5e3581', 'LAP0000043', 43, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '7HWFT93', '', '', '', '138', 0),
('COMP_620cbce283b4d', 'LAP0000044', 44, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '3GWFT93', '', '', '', '147', 0),
('COMP_620cbcfe19a36', 'LAP0000045', 45, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '25KHR93', '', '', '', '152', 0),
('COMP_620cbd29d672d', 'LAP0000046', 46, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab3c839f2', 'BZ95Y93', '', '', '', '173', 0),
('COMP_620cbd47bf3b1', 'LAP0000047', 47, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', 'HGNJ1B3', '', '', '', '175', 0),
('COMP_620cbd5fde9e2', 'LAP0000048', 48, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', 'FFWFT93', '', '', '', '193', 0),
('COMP_620cbd7f399aa', 'LAP0000049', 49, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '5Z25203', '', '', '', '202', 0),
('COMP_620cbd9bdec0d', 'LAP0000050', 50, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab3c839f2', 'FZ95Y93', '', '', '', '218', 0),
('COMP_620cbdc499efb', 'LAP0000051', 51, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '1FWFT93', '', '', '', '233', 0),
('COMP_620cbe65adffe', 'LAP0000052', 52, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', 'F9CS103', '', '', '', '35', 0),
('COMP_620cbf1703515', 'LAP0000053', 53, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620caab74a0d3', 'MODLNO_620cab4b55bca', '5PRRVP1', '', '', '', '181', 0),
('COMP_620cbf7033698', 'LAP0000054', 54, 0, '', 'CATE_6206a7440b180', 'MANU_620ca9c9107c8', 'MODL_620caa6905935', '0', 'CND0263KMM', '', '', '', '126', 0),
('COMP_620cbf9cf304e', 'LAP0000055', 55, 0, '', 'CATE_6206a7440b180', 'MANU_620ca9c9107c8', 'MODL_620caa6905935', '0', '4DCPMJ2', '', '', '', '190', 0),
('COMP_620cc07386a0f', 'LAP0000056', 56, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', 'HHWFT93', '', '', '', '143', 0),
('COMP_620cc0a847f31', 'LAP0000057', 57, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cabd271cb8', 'GFHRWQ1', '', '', '', '30', 0),
('COMP_620cc0e955c2e', 'LAP0000058', 58, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620caab74a0d3', 'MODLNO_620cab585453c', 'J2VCMV1', '', '', '', '227', 0),
('COMP_620cc100d794c', 'LAP0000059', 59, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620caab74a0d3', 'MODLNO_620cab2489803', '24SWMV1', '', '', '', '0', 0),
('COMP_620cc1a8e6b03', 'LAP0000060', 60, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cabe7e2439', 'D8YQYX1', '', '', '', '161', 0),
('COMP_620cc1eae9068', 'LAP0000061', 61, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab8fd4139', '54GKNH2', '', '', '', '9', 0),
('COMP_620cc204c2824', 'LAP0000062', 62, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620ca8cc30a18', '1FWFT93', '', '', '', '28', 0),
('COMP_620cc23fe6cfb', 'LAP0000063', 63, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620caba1a5022', '5CNBG32', '', '', '', '68', 0),
('COMP_620cc2636a297', 'LAP0000064', 64, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab4400903', '88S8502', '', '', '', '141', 0),
('COMP_620cc2c313fbe', 'LAP0000065', 65, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620caab74a0d3', 'MODLNO_620cc2969d494', '14K1912', '', '', '', '247', 0),
('COMP_620cc2eaeec6e', 'LAP0000066', 66, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac27c94bc', 'HKWY022', '', '', '', '29', 0),
('COMP_620cc30a7485e', 'LAP0000067', 67, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620caba1a5022', 'DXNM542', '', '', '', '158', 0),
('COMP_620cc324ee192', 'LAP0000068', 68, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac27c94bc', '14DR022', '', '', '', '239', 0),
('COMP_620cc36783f23', 'LAP0000069', 69, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab585453c', 'JWBPMJ2', '', '', '', '16', 0),
('COMP_620cc384bf7cb', 'LAP0000070', 70, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab585453c', '61VFYB2', '', '', '', '69', 0),
('COMP_620cc39fc0b9f', 'LAP0000071', 71, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab585453c', 'CWBPMJ2', '', '', '', '74', 0),
('COMP_620cc3bd88d7f', 'LAP0000072', 72, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab1b56429', 'BGN1042', '', '', '', '108', 0),
('COMP_620cc3dae8a94', 'LAP0000073', 73, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab1b56429', 'HVT1042', '', '', '', '111', 0),
('COMP_620cc3f49741a', 'LAP0000074', 74, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab4b55bca', 'H6TJG22', '', '', '', '127', 0),
('COMP_620cc4100a161', 'LAP0000075', 75, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab4b55bca', '48TJG22', '', '', '', '151', 0),
('COMP_620cc4395219b', 'LAP0000076', 76, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab585453c', '4ZTFYB2', '', '', '', '244', 0),
('COMP_620cc473a6688', 'LAP0000077', 77, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac312ae7b', '9RYRD72', '', '', '', '73', 0),
('COMP_620cc49094b81', 'LAP0000078', 78, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620caba9675f1', 'B7ZPH32', '', '', '', '146', 0),
('COMP_620cc4b8ec43f', 'LAP0000079', 79, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac312ae7b', '15XGD72', '', '', '', '207', 0),
('COMP_620cc4e015ce6', 'LAP0000080', 80, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab585453c', '2B0N2F2', '', '', '', '53', 0),
('COMP_620cc59e8e827', 'LAP0000081', 81, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac4b23516', 'JDFQ6H2', '', '', '', '23', 0),
('COMP_620cc5e8473bf', 'LAP0000082', 82, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cabd271cb8', '46NJL72', '', '', '', '25', 0),
('COMP_620cc60b05d1f', 'LAP0000083', 83, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cabd271cb8', '66NJL72', '', '', '', '32', 0),
('COMP_620cc635794ff', 'LAP0000084', 84, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab8fd4139', 'BB4QJM2', '', '', '', '47', 0),
('COMP_620cc65a6a041', 'LAP0000085', 85, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cabd271cb8', 'DTKSFC2', '', '', '', '64', 0),
('COMP_620cc6790d89a', 'LAP0000086', 86, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab8fd4139', 'B7BMNH2', '', '', '', '65', 0),
('COMP_620cc693a7d37', 'LAP0000087', 87, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cabf6762f9', '1WW41G2', '', '', '', '87', 0),
('COMP_620cc6a9ed14d', 'LAP0000088', 88, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cabf6762f9', '2ZBNRC2', '', '', '', '97', 0),
('COMP_620cc6c6dea75', 'LAP0000089', 89, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cabf6762f9', '44T7PF2', '', '', '', '117', 0),
('COMP_620cc6ec8bde4', 'LAP0000090', 90, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac4b23516', 'C7MF4H2', '', '', '', '123', 0),
('COMP_620cc70ac77d4', 'LAP0000091', 91, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab8fd4139', 'JDWX2M2', '', '', '', '130', 0),
('COMP_620cc72de1202', 'LAP0000092', 92, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab8fd4139', '4LLKNH2', '', '', '', '149', 0),
('COMP_620cc74dc1162', 'LAP0000093', 93, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac4b23516', '8D5L7H2', '', '', '', '154', 0),
('COMP_620cc7705deb5', 'LAP0000094', 94, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab8fd4139', 'B0BMNH2', '', '', '', '184', 0),
('COMP_620cc78d39053', 'LAP0000095', 95, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac4b23516', '76VJ7H2', '', '', '', '188', 0),
('COMP_620cc7b2ccced', 'LAP0000096', 96, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cabf6762f9', '9SPWVF2', '', '', '', '213', 0),
('COMP_620cc7ec29ed4', 'LAP0000097', 97, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab8fd4139', '8Z9MNH2', '', '', '', '238', 0),
('COMP_620cc82cea9fe', 'LAP0000098', 98, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab2cd5cc9', 'BF309L2', '', '', '', '168', 0),
('COMP_620cc84f41fc0', 'LAP0000099', 99, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab7f65514', 'BPWSLQ2', '', '', '', '142', 0),
('COMP_620cc87645d0b', 'LAP0000100', 100, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab35b8023', 'BFSMCQ2', '', '', '', '39', 0),
('COMP_620cc89144e27', 'LAP0000101', 101, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab35b8023', '5GSMCQ2', '', '', '', '67', 0),
('COMP_620cc8b5beb81', 'LAP0000102', 102, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab35b8023', '826HCQ2', '', '', '', '81', 0),
('COMP_620cc8cf05963', 'LAP0000103', 103, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab7f65514', '6FVRRQ2', '', '', '', '84', 0),
('COMP_620cc8f5b62fb', 'LAP0000104', 104, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab35b8023', 'BLCKCQ2', '', '', '', '92', 0),
('COMP_620cc926bd738', 'LAP0000105', 105, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab72d9f8c', 'HQH55Y2', '', '', '', '70', 0),
('COMP_620cc9409b61e', 'LAP0000106', 106, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620caacfa1323', '9LL5ZZ2', '', '', '', '98', 0),
('COMP_620cc95f64604', 'LAP0000107', 107, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab6b19598', 'HL435Q2', '', '', '', '172', 0),
('COMP_620cc97ee3e7c', 'LAP0000108', 108, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab72d9f8c', 'JCGJNV2', '', '', '', '94', 0),
('COMP_620cc9bc2368b', 'LAP0000109', 109, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac18da01f', 'F0W1CQ1', '', '', '', '177', 0),
('COMP_620cc9dc325f8', 'LAP0000110', 110, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac067eb38', 'CKWP4R1', '', '', '', '88', 0),
('COMP_620cca0a9a9d5', 'LAP0000111', 111, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cabfd519d2', 'BH967W1', '', '', '', '83', 0),
('COMP_620cca2c7acdf', 'LAP0000112', 112, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac0f5e231', '11TSXW1', '', '', '', '129', 0),
('COMP_620ccadd3e2f9', 'LAP0000113', 113, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620caa861f636', 'MODLNO_620caca1b3349', 'GXRRM32', '', '', '', '225', 0),
('COMP_620ccb002278c', 'LAP0000114', 114, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac2132fc4', 'FWBYTY1', '', '', '', '46', 0),
('COMP_620ccb1a60ee2', 'LAP0000115', 115, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac2132fc4', 'C62XRY1', '', '', '', '140', 0),
('COMP_620ccb843c84b', 'LAP0000116', 116, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac4b23516', 'DLVGQ72', '', '', '', '71', 0),
('COMP_620ccbb7122f7', 'LAP0000117', 117, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac4b23516', '9BG8VD2', '', '', '', '86', 0),
('COMP_620ccbdcb18b2', 'LAP0000118', 118, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac4b23516', 'DTW1N72', '', '', '', '95', 0),
('COMP_620ccc022ca7c', 'LAP0000119', 119, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cac4b23516', '1MF6FC2', '', '', '', '122', 0),
('COMP_620ccc2c54f06', 'LAP0000120', 120, 0, '', 'CATE_6206a7440b180', 'MANU_620ca9c9107c8', 'MODL_620caa7229eba', '0', '5CG6213VQK', '', '', '', '128', 0),
('COMP_620ccc4d36e9d', 'LAP0000121', 121, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cabf6762f9', 'D17F4H2', '', '', '', '237', 0),
('COMP_620ccc79ab387', 'LAP0000122', 122, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab35b8023', '3269XS2', '', '', '', '203', 0),
('COMP_620ccca3a311d', 'LAP0000123', 123, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab87e5120', '99D9SQ2', '', '', '', '144', 0),
('COMP_620ccce199969', 'LAP0000124', 124, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620caa861f636', 'MODLNO_620cac885113e', 'F41K733', '', '', '', '4', 0),
('COMP_620cccfac59be', 'LAP0000125', 125, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620caa861f636', 'MODLNO_620cac885113e', 'D41M733', '', '', '', '113', 0),
('COMP_620ccd38bf152', 'LAP0000126', 126, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620caa861f636', 'MODLNO_620cac957446c', '482HBC3', '', '', '', '24', 0),
('COMP_620ccd6211256', 'LAP0000127', 127, 0, '', 'CATE_6206a7440b180', 'MANU_620ca9f77e307', 'MODL_620caa905ae1f', 'MODLNO_620cacac2ab5a', '1236204457', '', '', '', '186', 0),
('COMP_620ccd81c4305', 'LAP0000128', 128, 0, '', 'CATE_6206a7440b180', 'MANU_620ca9f77e307', 'MODL_620caa905ae1f', 'MODLNO_620cacac2ab5a', '25036504857', '', '', '', '222', 0),
('COMP_620ccdb292987', 'LAP0000129', 129, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab1377c18', 'CPRFTG3', '', '', '', '91', 0),
('COMP_620ccdc7af065', 'LAP0000130', 130, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab1377c18', '223T4B3', '', '', '', '124', 0),
('COMP_620ccde0f16ca', 'LAP0000131', 131, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab1377c18', '6GWS4B3', '', '', '', '134', 0),
('COMP_620ccdf8b8406', 'LAP0000132', 132, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab1377c18', '1ZRDJG3', '', '', '', '150', 0),
('COMP_620cce15229ad', 'LAP0000133', 133, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab1377c18', '4SJHV93', '', '', '', '201', 0),
('COMP_620cce4b477b2', 'LAP0000134', 134, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab1377c18', '7FWS4B3', '', '', '', '205', 0),
('COMP_620cce6d1f286', 'LAP0000135', 135, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab1377c18', '3HTDJG3Â ', '', '', '', '240', 0),
('COMP_620ccf4ef1558', 'LAP0000136', 136, 0, '', 'CATE_6206a7440b180', 'MANU_620ca9b8befe2', 'MODL_620caaa460e51', 'MODLNO_620cacc7f2bef', 'L3N0CV107281138Â ', '', '', '', '3', 0),
('COMP_620ccf7bb2ffb', 'LAP0000137', 137, 0, '', 'CATE_6206a7440b180', 'MANU_620ca9b8befe2', 'MODL_620caaa460e51', 'MODLNO_620cacbc53674', 'K1N0CX187401057', '', '', '', '121', 0),
('COMP_620ccf996afbf', 'LAP0000138', 138, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab8fd4139', '8CXJ0G2', '', '', '', '204', 0),
('COMP_620ccfd0f034e', 'LAP0000139', 139, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cab1377c18', '4XTDJG3', '', '', '', '229', 0),
('COMP_620ccfef24126', 'LAP0000140', 140, 0, '', 'CATE_6206a7440b180', 'MANU_62072fbf9470b', 'MODL_620ca8a30cc84', 'MODLNO_620cabefd034b', '7GRZS02', '', '', '', '230', 0),
('COMP_620cd403301fd', 'DES0000061', 61, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '99', 0),
('COMP_620cd4df54713', 'DES0000062', 62, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '109', 0),
('COMP_620cd4f36ffce', 'DES0000063', 63, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '212', 0),
('COMP_620cd4f53a1bd', 'DES0000064', 64, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '21', 0),
('COMP_620cd4f6a5871', 'DES0000065', 65, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '10', 0),
('COMP_620cd4f836ff2', 'DES0000066', 66, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '36', 0),
('COMP_620cd5de1c70d', 'DES0000067', 67, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '38', 0),
('COMP_620cd5df82d30', 'DES0000068', 68, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '157', 0),
('COMP_620cd5e18ba6f', 'DES0000069', 69, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '219', 0),
('COMP_620cd5e3a9348', 'DES0000070', 70, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '102', 0),
('COMP_620cd5e52d7bc', 'DES0000071', 71, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '136', 0),
('COMP_620cd5e723d87', 'DES0000072', 72, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '195', 0),
('COMP_620cd5e8b7d80', 'DES0000073', 73, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '208', 0),
('COMP_620cd5ea4dc49', 'DES0000074', 74, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '116', 0),
('COMP_620cd6205ebcb', 'DES0000075', 75, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '40', 0),
('COMP_620cd621d9d9a', 'DES0000076', 76, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '56', 0),
('COMP_620cd62351496', 'DES0000077', 77, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '15', 0),
('COMP_620cd624ba2ce', 'DES0000078', 78, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '31', 0),
('COMP_620cd626256bc', 'DES0000079', 79, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '133', 0),
('COMP_620cd627af51a', 'DES0000080', 80, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '221', 0),
('COMP_620cd62963d7f', 'DES0000081', 81, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '8', 0),
('COMP_620cd62adc033', 'DES0000082', 82, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '76', 0),
('COMP_620cd62c78a08', 'DES0000083', 83, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '192', 0),
('COMP_620cd62de3ddf', 'DES0000084', 84, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '72', 0),
('COMP_620cd62f61d1f', 'DES0000085', 85, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '101', 0),
('COMP_620cd6757cc33', 'DES0000086', 86, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '162', 0),
('COMP_620cd676cf509', 'DES0000087', 87, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '178', 0),
('COMP_620cd678390c9', 'DES0000088', 88, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '206', 0),
('COMP_620cd67a48bd5', 'DES0000089', 89, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '63', 0),
('COMP_620cd68a538aa', 'DES0000090', 90, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '114', 0),
('COMP_620cd68bab939', 'DES0000091', 91, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '236', 0),
('COMP_620cd68d0217b', 'DES0000092', 92, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '226', 0),
('COMP_620cd68e8b570', 'DES0000093', 93, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '27', 0),
('COMP_620cd6900f596', 'DES0000094', 94, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '50', 0),
('COMP_620cd6918cb6a', 'DES0000095', 95, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '112', 0),
('COMP_620cd694361e1', 'DES0000096', 96, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '170', 0),
('COMP_620cd69628358', 'DES0000097', 97, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '171', 0),
('COMP_620cd6979a477', 'DES0000098', 98, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '211', 0),
('COMP_620cd69908d11', 'DES0000099', 99, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '217', 0),
('COMP_620cd69a7a266', 'DES0000100', 100, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '14', 0),
('COMP_620cd69be06e5', 'DES0000101', 101, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '58', 0),
('COMP_620cd69d7ecd6', 'DES0000102', 102, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '17', 0),
('COMP_620cd6b1d6246', 'DES0000103', 103, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '199', 0),
('COMP_620cd6b3431c9', 'DES0000104', 104, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '41', 0),
('COMP_620cd6b4895b4', 'DES0000105', 105, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '52', 0),
('COMP_620cd6b5df7c4', 'DES0000106', 106, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '57', 0),
('COMP_620cd6b7307c6', 'DES0000107', 107, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '106', 0),
('COMP_620cd6b874f8c', 'DES0000108', 108, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '118', 0),
('COMP_620cd6b9c3a16', 'DES0000109', 109, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '194', 0),
('COMP_620cd6bb15c97', 'DES0000110', 110, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '242', 0),
('COMP_620cd6bc6be53', 'DES0000111', 111, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '180', 0),
('COMP_620cd6bdbbc90', 'DES0000112', 112, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '231', 0),
('COMP_620cd6bf17ce1', 'DES0000113', 113, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '20', 0),
('COMP_620cd6c05d9a4', 'DES0000114', 114, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '119', 0),
('COMP_620cd6c1b1de4', 'DES0000115', 115, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '246', 0),
('COMP_620cd6c3104be', 'DES0000116', 116, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '139', 0),
('COMP_620cd6c46befe', 'DES0000117', 117, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '145', 0),
('COMP_620cd6c5c1151', 'DES0000118', 118, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '169', 0),
('COMP_620cd6d3e145b', 'DES0000119', 119, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '185', 0),
('COMP_620cd6d55ec6d', 'DES0000120', 120, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '187', 0),
('COMP_620cd6d8a48dd', 'DES0000121', 121, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '196', 0),
('COMP_620cd6da534f0', 'DES0000122', 122, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '215', 0),
('COMP_620cd6db92767', 'DES0000123', 123, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '245', 0),
('COMP_620cd6dce6a86', 'DES0000124', 124, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '120', 0),
('COMP_620cd6de4d0fa', 'DES0000125', 125, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '156', 0),
('COMP_620cd6dfbd4c1', 'DES0000126', 126, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '48', 0),
('COMP_620cd6e112063', 'DES0000127', 127, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '210', 0),
('COMP_620cd6e2739cb', 'DES0000128', 128, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '49', 0),
('COMP_620cd6e3b3e4f', 'DES0000129', 129, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '1', 0),
('COMP_620cd6e51e9e9', 'DES0000130', 130, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '11', 0),
('COMP_620cd6e667806', 'DES0000131', 131, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '55', 0),
('COMP_620cd6e7c8efb', 'DES0000132', 132, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '80', 0),
('COMP_620cd6e9f232b', 'DES0000133', 133, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '96', 0),
('COMP_620cd6eb4d2d6', 'DES0000134', 134, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '107', 0),
('COMP_620cd6f777645', 'DES0000135', 135, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '153', 0),
('COMP_620cd6f8de3d5', 'DES0000136', 136, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '235', 0),
('COMP_620cd6fa33989', 'DES0000137', 137, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '189', 0),
('COMP_620cd6fb66fe0', 'DES0000138', 138, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '2', 0),
('COMP_620cd6fc958a5', 'DES0000139', 139, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '19', 0),
('COMP_620cd6fde0ecf', 'DES0000140', 140, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '105', 0),
('COMP_620cd7234c283', 'DES0000141', 141, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '155', 0),
('COMP_620cd724d0d2e', 'DES0000142', 142, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '12', 0),
('COMP_620cd7262f6db', 'DES0000143', 143, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '13', 0),
('COMP_620cd7279782a', 'DES0000144', 144, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '26', 0),
('COMP_620cd728cb855', 'DES0000145', 145, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '256', 0),
('COMP_620cd72a1156e', 'DES0000146', 146, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '256', 0),
('COMP_620cd72bbc8b7', 'DES0000147', 147, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '33', 0),
('COMP_620cd72d29472', 'DES0000148', 148, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '45', 0),
('COMP_620cd72e72f13', 'DES0000149', 149, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '51', 0),
('COMP_620cd72fea6bd', 'DES0000150', 150, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '54', 0),
('COMP_620cd73172224', 'DES0000151', 151, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '60', 0),
('COMP_620cd7331febd', 'DES0000152', 152, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '62', 0),
('COMP_620cd7347204e', 'DES0000153', 153, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '82', 0),
('COMP_620cd735d341c', 'DES0000154', 154, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '100', 0),
('COMP_620cd7375e1ec', 'DES0000155', 155, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '103', 0),
('COMP_620cd7394c5e3', 'DES0000156', 156, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '104', 0),
('COMP_620cd73b64f10', 'DES0000157', 157, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '110', 0),
('COMP_620cd73cbd2eb', 'DES0000158', 158, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '113', 0),
('COMP_620cd73e23a6d', 'DES0000159', 159, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '125', 0),
('COMP_620cd73f9c958', 'DES0000160', 160, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '135', 0),
('COMP_620cd74102d6f', 'DES0000161', 161, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '137', 0);
INSERT INTO `tbl_component` (`component_uid`, `asset_tag`, `assettag_number`, `warranty`, `inv_uid`, `category`, `manufacturer`, `model`, `model_no`, `serialno`, `remarks`, `status_id`, `asset_assign`, `assigned_user`, `is_deleted`) VALUES
('COMP_620cd742e0b8e', 'DES0000162', 162, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '159', 0),
('COMP_620cd74477e5f', 'DES0000163', 163, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '163', 0),
('COMP_620cd745e5db0', 'DES0000164', 164, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '164', 0),
('COMP_620cd74768530', 'DES0000165', 165, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '167', 0),
('COMP_620cd74911caf', 'DES0000166', 166, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '176', 0),
('COMP_620cd74a92181', 'DES0000167', 167, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '191', 0),
('COMP_620cd77562518', 'DES0000168', 168, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '198', 0),
('COMP_620cd776b1b7a', 'DES0000169', 169, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '214', 0),
('COMP_620cd7780952a', 'DES0000170', 170, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '220', 0),
('COMP_620cd779680a4', 'DES0000171', 171, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '224', 0),
('COMP_620cd77ac244a', 'DES0000172', 172, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '228', 0),
('COMP_620cd77c846f6', 'DES0000173', 173, 0, '', 'CATE_620b2e90874a2', 'MANU_620b2ed054f2b', 'MODL_620b2ea85e235', 'MODLNO_620b2eb17b544', '', '', '', '', '160', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE IF NOT EXISTS `tbl_countries` (
  `countries_uid` bigint(20) NOT NULL,
  `countries_code` varchar(5) NOT NULL,
  `countries_name` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4;

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
(119, 'KP', 'Korea, Democratic People''s Republic of', 0),
(120, 'KR', 'Korea, Republic of', 0),
(121, 'KW', 'Kuwait', 0),
(122, 'KY', 'Cayman Islands', 0),
(123, 'KZ', 'Kazakhstan', 0),
(124, 'LA', 'Lao People''s Democratic Republic', 0),
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

CREATE TABLE IF NOT EXISTS `tbl_invoice` (
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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locations`
--

CREATE TABLE IF NOT EXISTS `tbl_locations` (
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
('LOC_620650f32690e', 'AKS Nagar', 'Sukumar S', 'AKS Nagar, Gandhi Park', 'RS Puram', 'Coimbatore', 'Tamilnadu', '103', '641005', '620650f135727.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacturers`
--

CREATE TABLE IF NOT EXISTS `tbl_manufacturers` (
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

CREATE TABLE IF NOT EXISTS `tbl_modelno` (
  `modelno_uid` varchar(64) NOT NULL,
  `model_number` varchar(100) NOT NULL,
  `modelno_image` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_modelno`
--

INSERT INTO `tbl_modelno` (`modelno_uid`, `model_number`, `modelno_image`, `is_deleted`) VALUES
('MODLNO_620b2eb17b544', 'Assembled', '', 0),
('MODLNO_620ca8cc30a18', '3410', '', 0),
('MODLNO_620caacfa1323', ' 3400', '', 0),
('MODLNO_620cab1377c18', '3420', '', 0),
('MODLNO_620cab1b56429', '3450', '', 0),
('MODLNO_620cab2489803', '3460', '', 0),
('MODLNO_620cab2cd5cc9', '3480', '', 0),
('MODLNO_620cab35b8023', '3490', '', 0),
('MODLNO_620cab3c839f2', '3510', '', 0),
('MODLNO_620cab4400903', '3540', '', 0),
('MODLNO_620cab4b55bca', '3550', '', 0),
('MODLNO_620cab585453c', '3560', '', 0),
('MODLNO_620cab61139b4', '3580', '', 0),
('MODLNO_620cab6b19598', '5290', '', 0),
('MODLNO_620cab72d9f8c', '5400', '', 0),
('MODLNO_620cab7f65514', '5490', '', 0),
('MODLNO_620cab87e5120', '5491', '', 0),
('MODLNO_620cab8fd4139', '7480', '', 0),
('MODLNO_620caba1a5022', 'E5440', '', 0),
('MODLNO_620caba9675f1', 'E5450', '', 0),
('MODLNO_620cabd271cb8', 'E5470', '', 0),
('MODLNO_620cabdc2415b', 'E5520', '', 0),
('MODLNO_620cabe7e2439', 'E5530', '', 0),
('MODLNO_620cabefd034b', 'E5540', '', 0),
('MODLNO_620cabf6762f9', 'E5570', '', 0),
('MODLNO_620cabfd519d2', 'E6330', '', 0),
('MODLNO_620cac067eb38', 'E6420', '', 0),
('MODLNO_620cac0f5e231', 'E6430', '', 0),
('MODLNO_620cac18da01f', 'E6520', '', 0),
('MODLNO_620cac2132fc4', 'E6540', '', 0),
('MODLNO_620cac27c94bc', 'E7440', '', 0),
('MODLNO_620cac312ae7b', 'E7450', '', 0),
('MODLNO_620cac4b23516', 'E7470', '', 0),
('MODLNO_620cac885113e', '3541', '', 0),
('MODLNO_620cac957446c', '3551', '', 0),
('MODLNO_620caca1b3349', 'M2800', '', 0),
('MODLNO_620cacac2ab5a', 'Surface Book 3', '', 0),
('MODLNO_620cacbc53674', 'X505ZA_X505ZA', '', 0),
('MODLNO_620cacc7f2bef', 'X509DA_M509DA', '', 0),
('MODLNO_620cc2969d494', '3546', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_models`
--

CREATE TABLE IF NOT EXISTS `tbl_models` (
  `models_uid` varchar(64) NOT NULL,
  `models_name` varchar(100) NOT NULL,
  `models_image` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_models`
--

INSERT INTO `tbl_models` (`models_uid`, `models_name`, `models_image`, `is_deleted`) VALUES
('MODL_620b2ea85e235', 'Assembled', '', 0),
('MODL_620ca8a30cc84', 'Latitude', '', 0),
('MODL_620caa6905935', '250 G7 Notebook PC', '', 0),
('MODL_620caa7229eba', 'EliteBook 840 G3', '', 0),
('MODL_620caa861f636', 'Precision', '', 0),
('MODL_620caa905ae1f', 'Surface Book 3', '', 0),
('MODL_620caa990cc11', 'ThinkCentre A58', '', 0),
('MODL_620caaa460e51', 'VivoBook', '', 0),
('MODL_620caab74a0d3', 'Vostro', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE IF NOT EXISTS `tbl_status` (
  `status_uid` varchar(64) NOT NULL,
  `seq_id` int(11) NOT NULL,
  `status_name` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`status_uid`, `seq_id`, `status_name`, `is_deleted`) VALUES
('STS_62074ed9870a4', 0, 'In  Store', 0),
('STS_620be5d6254e6', 0, 'Ready to Deploy', 0),
('STS_620be5e16097b', 0, 'Assigned', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE IF NOT EXISTS `tbl_supplier` (
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
('SUPP_62072fde6fc74', 'IT Hub', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp`
--

CREATE TABLE IF NOT EXISTS `tbl_temp` (
  `id` int(11) NOT NULL,
  `desktop_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `tbl_type` (
  `type_uid` bigint(20) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `users_uid` bigint(20) NOT NULL,
  `emp_id` varchar(64) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0' COMMENT 'is_deleted',
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`users_uid`, `emp_id`, `firstname`, `lastname`, `username`, `password`, `is_admin`, `is_deleted`) VALUES
(1, '-', 'Anbuselvan Arumugam', '-', 'aanbuselvan458', '123', 0, 0),
(2, '-', 'Daniel Amalraj', '-', 'adaniel01c', '123', 0, 0),
(3, '-', 'EstherChristina Anthony Das', '-', 'aesther527', '123', 0, 0),
(4, '-', 'Guru Prasanna Abale', '-', 'aguru331', '123', 0, 0),
(5, '-', 'Kannadasan Anandan', '-', 'Akannadasan', '123', 0, 0),
(6, '-', 'Kannan Appukkutti', '-', 'akannan039', '123', 0, 0),
(7, '-', 'Marichelvam Arunachalam', '-', 'amarichelvam437', '123', 0, 0),
(8, '-', 'Sathish AP. Natarajan', '-', 'apnsathish125', '123', 0, 0),
(9, '-', 'Prakash Arumugam', '-', 'aprakash105', '123', 0, 0),
(10, '-', 'Sivakumar Ayyasamy', '-', 'asiva467', '123', 0, 0),
(11, '-', 'Subhashini Arumugam', '-', 'asubhashini436', '123', 0, 0),
(12, '-', 'Vincentraj Arockiasamy', '-', 'avincent496', '123', 0, 0),
(13, '-', 'Aravinth Balu', '-', 'baravinth544', '123', 0, 0),
(14, '-', 'Ganeshmurthy Balasubramanian', '-', 'bganeshmurthy147', '123', 0, 0),
(15, '-', 'Gokul Prasanth Balasundaran', '-', 'bgokul509', '123', 0, 0),
(16, '-', 'Kamala Kannan Balachandran', '-', 'bkamal318', '123', 0, 0),
(17, '-', 'Santhosh Balakrishnan', '-', 'bsanthosh413', '123', 0, 0),
(18, '-', 'Sasikumar Balakrishnan', '-', 'bsasi15c', '123', 0, 0),
(19, '-', 'Sathishkumar Balasubramanian', '-', 'bsathish06c', '123', 0, 0),
(20, '-', 'Sathish Balachandran', '-', 'bsathish516', '123', 0, 0),
(21, '-', 'Sinduja Balamurugan', '-', 'bsinduja412', '123', 0, 0),
(22, '-', 'Sowmiya Balu', '-', 'bsowmiya931', '123', 0, 0),
(23, '-', 'Tharani Tharan Balasundaram', '-', 'btharani050', '123', 0, 0),
(24, '-', 'Thennavan Balu', '-', 'Bthennavan903', '123', 0, 0),
(25, '-', 'Vinoth Balasubramanian', '-', 'bvinoth456', '123', 0, 0),
(26, '-', 'Deepak Chandran', '-', 'cdeepak244', '123', 0, 0),
(27, '-', 'Ponnusamy Chinnathambi', '-', 'cponnusamy179', '123', 0, 0),
(28, '-', 'Pradeep Chandrasekaran', '-', 'cpradeep469', '123', 0, 0),
(29, '-', 'Ramachandran Chinnasamy', '-', 'cramachandran115', '123', 0, 0),
(30, '-', 'Sriram Prasath Chenniyappan', '-', 'csriram33c', '123', 0, 0),
(31, '-', 'Abinav Duraisamy', '-', 'dabinav528', '123', 0, 0),
(32, '-', 'Aravind Duraikannan', '-', 'daravind942', '123', 0, 0),
(33, '-', 'Nagarjun Dhamotharan', '-', 'dnagarjun503', '123', 0, 0),
(34, '-', 'Prakash Duraisamy', '-', 'dprakash256', '123', 0, 0),
(35, '-', 'Shanmathi Durairaj', '-', 'dshanmathi936', '123', 0, 0),
(36, '-', 'Sivashanker Devaraj', '-', 'dsiva416', '123', 0, 0),
(37, '-', 'Indrakumar Elangovan', '-', 'eindrakumar946', '123', 0, 0),
(38, '-', 'Naveenkumar Elango', '-', 'enaveen421', '123', 0, 0),
(39, '-', 'Akiladevi Gandhi', '-', 'gakila290', '123', 0, 0),
(40, '-', 'Jayaprakash Ganeshan', '-', 'gjayaprakash079', '123', 0, 0),
(41, '-', 'Jeyakumar Ganesan', '-', 'gjeyakumar519', '123', 0, 0),
(42, '-', 'Karthikeyan Ganesan', '-', 'gkarthikeyan045', '123', 0, 0),
(43, '-', 'Kavitha Gunasekaran', '-', 'gkavitha393', '123', 0, 0),
(44, '-', 'Kavitha Ganesan', '-', 'gkavitha438', '123', 0, 0),
(45, '-', 'Kumaravel Gurusamy', '-', 'Gkumaravel484', '123', 0, 0),
(46, '-', 'Manikandan Gopalakrishnan', '-', 'gmanikandan148', '123', 0, 0),
(47, 'PI0543', 'Mariappan Gopal', '-', 'gmariappan543', '123', 0, 0),
(48, '-', 'MohanaBalaji Gopal', '-', 'gmohana940', '123', 0, 0),
(49, '-', 'Parameswaran Gurusamy', '-', 'gparames11c', '123', 0, 0),
(50, '-', 'Poongodi Gowrimanavalan', '-', 'Gpoongodi077', '123', 0, 0),
(51, '-', 'Prasanna Gopala Krishna Moorthy', '-', 'gprasanna486', '123', 0, 0),
(52, '-', 'Ragavendhran Gopal', '-', 'gragavendhran548', '123', 0, 0),
(53, '-', 'Rakesh Gupta', '-', 'grakesh926', '123', 0, 0),
(54, '-', 'Marudhan Iyyapan', '-', 'imarudhan538', '123', 0, 0),
(55, '-', 'Sangeeth kumar inba kumar', '-', 'isangeeth463', '123', 0, 0),
(56, '-', 'Ajit Kumar Jayaprakash', '-', 'jajit443', '123', 0, 0),
(57, '-', 'Anandha Velan Jaganathan', '-', 'janandh537', '123', 0, 0),
(58, '-', 'Mahalakshmi Jaganathan', '-', 'jlakshmi521', '123', 0, 0),
(59, '-', 'Lakshmi Priya Jayavardhana', '-', 'jlakshmi945', '123', 0, 0),
(60, '-', 'Naveena Jaganathan', '-', 'jnaveena450', '123', 0, 0),
(61, '-', 'Prasana Janarthanan', '-', 'jprasana095', '123', 0, 0),
(62, '-', 'Radhakarpagam Jayaprakash', '-', 'jradha074', '123', 0, 0),
(63, '-', 'Revathi Jeganathan', '-', 'jrevathi422', '123', 0, 0),
(64, '-', 'Srikanth Jayaraj', '-', 'jsrikanth250', '123', 0, 0),
(65, '-', 'Vinod kumar Jagthap subbarao', '-', 'jsvinod102', '123', 0, 0),
(66, '-', 'Ghuru Kumaravelu', '-', 'K.Ghuru', '123', 0, 0),
(67, '-', 'Akilan Kanthamani', '-', 'kakilan240', '123', 0, 0),
(68, '-', 'Arun kumar Krishnasamy', '-', 'karun029', '123', 0, 0),
(69, '-', 'KaviKannan Rajendran', '-', 'kavikannan414', '123', 0, 0),
(70, '-', 'Kavitha Sukumar', '-', 'Kavitha.S', '123', 0, 0),
(71, '-', 'Balaji Kumar', '-', 'kbalaji044', '123', 0, 0),
(72, '-', 'Bharath Kulandaisamy', '-', 'kbharath44C', '123', 0, 0),
(73, '-', 'Bharathi Nirmal Kumar', '-', 'kbharathi329', '123', 0, 0),
(74, '-', 'Charanraja Kolandhaisamy', '-', 'kcharan32c', '123', 0, 0),
(75, '-', 'Ganeshprabhu Kanakaraj', '-', 'kganeshprabhu319', '123', 0, 0),
(76, '-', 'Gopu Karupannan', '-', 'kgopu259', '123', 0, 0),
(77, '-', 'Haripriya Kailasam', '-', 'kharipriya394', '123', 0, 0),
(78, '-', 'kalaivani Karunakaran', '-', 'kkalaivani383', '123', 0, 0),
(79, '-', 'Karthi keyan krishnamoorthy', '-', 'kkarthi425', '123', 0, 0),
(80, '-', 'Mahendran Kumaravadivel', '-', 'kmahendran547', '123', 0, 0),
(81, '-', 'Manikandan Krishnamoorthy', '-', 'kmanikandan941', '123', 0, 0),
(82, '-', 'Manimegalai Kalaiarasu', '-', 'kmanimegalai398', '123', 0, 0),
(83, '-', 'Manoshankar Kalimuthu', '-', 'kmanoshankar119', '123', 0, 0),
(84, '-', 'Marimuthu Kalimuthu', '-', 'kmarimuthu055', '123', 0, 0),
(85, '-', 'Nathiya Kannaiyan', '-', 'knathiya541', '123', 0, 0),
(86, '-', 'Prakash Kandhasamy', '-', 'kprakash948', '123', 0, 0),
(87, '-', 'Rajan Kandasamy', '-', 'krajan113', '123', 0, 0),
(88, '-', 'Ramarathinam Kesavaraman', '-', 'kramarathinam109', '123', 0, 0),
(89, '-', 'Ramasamy Krishnan', '-', 'kramasamy518', '123', 0, 0),
(90, '-', 'Aravindh Bharathi Kumarasamy', '-', 'kravindh474', '123', 0, 0),
(91, '-', 'Saravanakumar Krishnan', '-', 'ksaravana542', '123', 0, 0),
(92, '-', 'Saravanan Kamatchi', '-', 'ksaravanan175', '123', 0, 0),
(93, '-', 'Sathyanarayanan Kanagaraj', '-', 'ksathyanarayanan218', '123', 0, 0),
(94, '-', 'Soundararajan Kandasamy', '-', 'ksoundararajan222', '123', 0, 0),
(95, '-', 'Sriram Krishnamoorthy', '-', 'ksriram918', '123', 0, 0),
(96, '-', 'Thirunavukarasu Kalidass', '-', 'kthirunavukarasu533', '123', 0, 0),
(97, '-', 'Velmurugan Kannappan', '-', 'kvelmurugan007', '123', 0, 0),
(98, '-', 'Ravindra Kumar Lakshmanan', '-', 'lravindra367', '123', 0, 0),
(99, '-', 'Sivaraj Lakshmanan', '-', 'lsivaraj088', '123', 0, 0),
(100, '-', 'Suresh Manikandan Lakkian', '-', 'lsuresh056', '123', 0, 0),
(101, '-', 'Suresh kumar Loganathan', '-', 'lsureshkumar064', '123', 0, 0),
(102, '-', 'Balaji Mohan', '-', 'mbalaji432', '123', 0, 0),
(103, '-', 'Dhanushkaran Mohan Babu', '-', 'mdhanush479', '123', 0, 0),
(104, '-', 'Gokulakrishnan Mahalingam', '-', 'mgokul37c', '123', 0, 0),
(105, '-', 'Gokuldas Murugan', '-', 'mgokul506', '123', 0, 0),
(106, '-', 'GokulPrasath Murugavel', '-', 'mgokul545', '123', 0, 0),
(107, '-', 'Kalaivani Murugan', '-', 'mkalaivani076', '123', 0, 0),
(108, '-', 'Kavin Muthuvelu', '-', 'mkavin181', '123', 0, 0),
(109, '-', 'KavinPratheep Mani', '-', 'mkavinpratheep426', '123', 0, 0),
(110, '-', 'Kishore Moorthi', '-', 'mkishore273', '123', 0, 0),
(111, '-', 'Manoj Kumar Manickam', '-', 'mmanojkumar289', '123', 0, 0),
(112, '-', 'Mathankumar Maheswaran', '-', 'mmathan532', '123', 0, 0),
(113, '-', 'Muthumurugan Muthukumar', '-', 'mmuthu323', '123', 0, 0),
(114, '-', 'Mahanavaneethan Munusamy', '-', 'mnavaneethan177', '123', 0, 0),
(115, '-', 'Nithyashankar Mohankumar', '-', 'mnithy176', '123', 0, 0),
(116, '-', 'Nithya Murugesan', '-', 'mnithya408', '123', 0, 0),
(117, '-', 'Prakash Babu Marappan', '-', 'mprakash049', '123', 0, 0),
(118, '-', 'Prakash Muthusamy', '-', 'mprakash321', '123', 0, 0),
(119, '-', 'Prasanth Murugan', '-', 'mprasanth410', '123', 0, 0),
(120, '-', 'Raghavendran Madhavan', '-', 'mraghavendran938', '123', 0, 0),
(121, '-', 'Ravi Madhevan', '-', 'mravi31c', '123', 0, 0),
(122, '-', 'Ravikumar Madhavan', '-', 'mravikumar028', '123', 0, 0),
(123, '-', 'Roopeshkumar Murugesan', '-', 'mroopesh524', '123', 0, 0),
(124, '-', 'Sakthivel Muthu', '-', 'msakthivel169', '123', 0, 0),
(125, '-', 'Sasikumar Murugavel', '-', 'msasikumar047', '123', 0, 0),
(126, '-', 'Sivakumar M. Sundaramoorthy', '-', 'mssivakumar081', '123', 0, 0),
(127, '-', 'Suresh Manoharan', '-', 'msuresh287', '123', 0, 0),
(128, '-', 'Tamilanbu Mahalingam', '-', 'mtamilanbu26c', '123', 0, 0),
(129, '-', 'Vignesh Muruganandhan', '-', 'mvignesh444', '123', 0, 0),
(130, '-', 'Vimalamani Manickam', '-', 'mvimala036', '123', 0, 0),
(131, '-', 'Vinothkumar Murugesh', '-', 'mvinoth531', '123', 0, 0),
(132, '-', 'DeepakRaj Narayana Moorthi', '-', 'ndeepak28c', '123', 0, 0),
(133, '-', 'Harikrishnan Nateshan', '-', 'nharikrishnan103', '123', 0, 0),
(134, '-', 'Masilamani Nagarajan', '-', 'nmasilamani167', '123', 0, 0),
(135, '-', 'Premkumar Natarajan', '-', 'npremkumar285', '123', 0, 0),
(136, '-', 'Premnath Narayanasamy', '-', 'npremnath430', '123', 0, 0),
(137, '-', 'Yogaanandheeswaran Nagarajan', '-', 'nyogaanand381', '123', 0, 0),
(138, '-', 'Babu Periyasamy', '-', 'pbabu083', '123', 0, 0),
(139, '-', 'Dinesh Babu Palanisamy', '-', 'pdineshbabu075', '123', 0, 0),
(140, '-', 'Abishak Flamy Paul Paulraj', '-', 'pflamy423', '123', 0, 0),
(141, '-', 'Gokulakrishnan Pandithurai', '-', 'pgokul498', '123', 0, 0),
(142, '-', 'Gopiganesh Palanisamy', '-', 'Pgopiganesh023', '123', 0, 0),
(143, '-', 'Karthik PG', '-', 'pkarthik460', '123', 0, 0),
(144, '-', 'Karthikeyan Periyannan', '-', 'pkarthikeyan032', '123', 0, 0),
(145, '-', 'Keerthana Ponnusamy', '-', 'pkeerthana488', '123', 0, 0),
(146, '-', 'Loganathan Periyasamy', '-', 'ploganathan254', '123', 0, 0),
(147, '-', 'Malleeswaran Palanisamy', '-', 'pmalleeswaran441', '123', 0, 0),
(148, '-', 'Nanthakumar Palanisamy', '-', 'pnantha137', '123', 0, 0),
(149, '-', 'PooveshKumar Palanisamy', '-', 'ppoovesh34c', '123', 0, 0),
(150, '-', 'Prakash Palanisamy', '-', 'pprakash328', '123', 0, 0),
(151, '-', 'Praveen Paneer Selvam', '-', 'ppraveen361', '123', 0, 0),
(152, '-', 'Raghavi Prabath', '-', 'praghavi540', '123', 0, 0),
(153, '-', 'Ramasamy Periyasamy', '-', 'pramasamy433', '123', 0, 0),
(154, '-', 'Ravi Paranthaman', '-', 'pravi333', '123', 0, 0),
(155, '-', 'SabariiGanesh Praamasivaraj', '-', 'psabari505', '123', 0, 0),
(156, '-', 'Saravanan Palanichamy', '-', 'psaravanan923', '123', 0, 0),
(157, '-', 'Siva Poiyamozhi', '-', 'psiva35c', '123', 0, 0),
(158, '-', 'Yaswanth Kumar Prabaharan', '-', 'pyaswanth27c', '123', 0, 0),
(159, '-', 'Arvind Raveen babu', '-', 'rarvind429', '123', 0, 0),
(160, '-', 'Arvinth Raman', '-', 'rarvinth534', '123', 0, 0),
(161, '-', 'Ashok Rajasekar', '-', 'Rashok907', '123', 0, 0),
(162, '-', 'BalaKrishnan Ravichandran', '-', 'rbalakrishnan417', '123', 0, 0),
(163, '-', 'Kalpana Rajagopalan', '-', 'rkalpana070', '123', 0, 0),
(164, '-', 'Karthik Rajendran', '-', 'rkarthik128', '123', 0, 0),
(165, '-', 'Kaviyarasan Rajendran', '-', 'rkaviyarasan510', '123', 0, 0),
(166, '-', 'Lokesh Ramasamy', '-', 'rlokesh472', '123', 0, 0),
(167, '-', 'Mowlieswaran Rathinam', '-', 'rmowlieswaran483', '123', 0, 0),
(168, '-', 'Prasanna Raja Ganapathy', '-', 'rprasanna932', '123', 0, 0),
(169, '-', 'Praveen Ramakrishnan', '-', 'rpraveen269', '123', 0, 0),
(170, '-', 'RaghulRaj Rameshkumar', '-', 'rraghul489', '123', 0, 0),
(171, '-', 'Ragul Rajeswaran', '-', 'rragul491', '123', 0, 0),
(172, '-', 'Ramamoorthy Rajagopal', '-', 'rramamoorthy129', '123', 0, 0),
(173, '-', 'Ramesh Ramasamy', '-', 'rramesh094', '123', 0, 0),
(174, '-', 'Ramya Rajkumar', '-', 'rramya301', '123', 0, 0),
(175, '-', 'Sankar Rangasamy', '-', 'rsankar217', '123', 0, 0),
(176, '-', 'Sasikumar rajendran', '-', 'rsasi292', '123', 0, 0),
(177, '-', 'Sivanesan Ravi', '-', 'rsivanesan920', '123', 0, 0),
(178, '-', 'Sudha Ramakrishnan', '-', 'rsudha434', '123', 0, 0),
(179, '-', 'Vijay Rengaraju', '-', 'rvijay200', '123', 0, 0),
(180, '-', 'Vijayamoorthy Rangaraj', '-', 'rvijayamoorthy418', '123', 0, 0),
(181, '-', 'Vinod Kannan Raju', '-', 'rvinod053', '123', 0, 0),
(182, '-', 'Abinaya Sivaraj', '-', 'sabinaya933', '123', 0, 0),
(183, '-', 'AlaguAkshaya Senthilkumar', '-', 'sakshaya530', '123', 0, 0),
(184, '-', 'Arun Subiramaniyam', '-', 'sarun314', '123', 0, 0),
(185, '-', 'Arunraj Subramaniyam', '-', 'sarunraj327', '123', 0, 0),
(186, '-', 'Arvindkumar S. Haribabu', '-', 'Sarvindkumar901', '123', 0, 0),
(187, '-', 'Balaraman Subramaniam', '-', 'sbalaraman284', '123', 0, 0),
(188, '-', 'Deepan chakkaravarthi Subramaniam', '-', 'sdeepan525', '123', 0, 0),
(189, '-', 'Diwakar Srinivasan', '-', 'sdiwakar002', '123', 0, 0),
(190, '-', 'Gunasekaran Saminathan', '-', 'sguna402', '123', 0, 0),
(191, '-', 'Hari Prasath Sundarasamy', '-', 'shari529', '123', 0, 0),
(192, '-', 'HariPrasad SenthilKumar', '-', 'shariprasad424', '123', 0, 0),
(193, '-', 'Shri Hari Kamalanathan Mohanavel', '-', 'shkamal29c', '123', 0, 0),
(194, '-', 'Indhuraj Subramani', '-', 'sindhuraj300', '123', 0, 0),
(195, '-', 'Jaganathan SureshBabu', '-', 'sjaganathan473', '123', 0, 0),
(196, '-', 'karthikeyan selvaraj', '-', 'skarthi459', '123', 0, 0),
(197, '-', 'Karthik Selvendran', '-', 'skarthik403', '123', 0, 0),
(198, '-', 'Kathirvel Shanmugam', '-', 'skathirvel206', '123', 0, 0),
(199, '-', 'Madasamy Selvaraj', '-', 'smadasamy173', '123', 0, 0),
(200, '-', 'Manivannan Srinivasan', '-', 'smanivannan482', '123', 0, 0),
(201, '-', 'Meenakshi Sundaram Subramanian', '-', 'smeenakshi461', '123', 0, 0),
(202, '-', 'Muralitharan Sathasivam', '-', 'smuralitharan507', '123', 0, 0),
(203, '-', 'Navaneetha krishnan Sivasamy', '-', 'snavanee199', '123', 0, 0),
(204, '-', 'Prakash subramaniam', '-', 'sprakash020', '123', 0, 0),
(205, '-', 'Prakash Srinivasan', '-', 'sprakash539', '123', 0, 0),
(206, '-', 'Priyankumar Santhoshkumar', '-', 'spriyan517', '123', 0, 0),
(207, '-', 'Rajasekar Sekar', '-', 'srajasekar468', '123', 0, 0),
(208, '-', 'Rajesh Kumar Singaravel', '-', 'srajesh111', '123', 0, 0),
(209, '-', 'Rameshkumar Subramani', '-', 'srameshkumar080', '123', 0, 0),
(210, '-', 'Ravichandrika Sundararajan', '-', 'sravichandrika939', '123', 0, 0),
(211, '-', 'Sangeetha Sivanandham', '-', 'ssangeetha401', '123', 0, 0),
(212, '-', 'Saravanan Subramaniam', '-', 'Ssaravanan277', '123', 0, 0),
(213, '-', 'Saravanan Sankaranarayanan', '-', 'ssaravanan490', '123', 0, 0),
(214, '-', 'Sathyakala Sivakumar', '-', 'ssathayakala546', '123', 0, 0),
(215, '-', 'Sathishkumar Shanmugavel', '-', 'ssathish337', '123', 0, 0),
(216, '-', 'Sharmila Sivakumar', '-', 'ssharmila406', '123', 0, 0),
(217, '-', 'Sivaprakash Subramaniam', '-', 'ssiva384', '123', 0, 0),
(218, '-', 'Srinivasan Sundarasamy', '-', 'ssrinivasan245', '123', 0, 0),
(219, '-', 'Subash Subramaniam', '-', 'ssubash448', '123', 0, 0),
(220, '-', 'Surendren Subramaniam', '-', 'ssurendren36c', '123', 0, 0),
(221, '-', 'Swathi Selvam', '-', 'sswathi465', '123', 0, 0),
(222, '-', 'Sukumar Shanmugam', '-', 'Sukumar.Shanmugam', '123', 0, 0),
(223, '-', 'Devanath Sundaravarathan', '-', 'Sundardeva', '123', 0, 0),
(224, '-', 'Vidhya Subramani', '-', 'svidhya520', '123', 0, 0),
(225, '-', 'Vijay Shanmugasundaram', '-', 'SVijay913', '123', 0, 0),
(226, '-', 'Vinayak Srinivasan', '-', 'svinayak126', '123', 0, 0),
(227, '-', 'Karthikeyan Thangaraj', '-', 'tkarthikeyan156', '123', 0, 0),
(228, '-', 'Lalithkumar Thirugnanam', '-', 'tlalith501', '123', 0, 0),
(229, '-', 'Mythili Thangavel', '-', 'tmythili004', '123', 0, 0),
(230, '-', 'Nimal T. Anandhan', '-', 'tnimal005', '123', 0, 0),
(231, '-', 'Ramesh Thangavel', '-', 'tramesh027', '123', 0, 0),
(232, '-', 'Ramesh Thangavel', '-', 'tramesh027', '123', 0, 0),
(233, '-', 'Sakthivel Thangavel', '-', 'tsakthivel084', '123', 0, 0),
(234, '-', 'Sivakumar Thiyagarajan', '-', 'tsiva041', '123', 0, 0),
(235, '-', 'Udhayakumar Thangavel', '-', 'tudhay089', '123', 0, 0),
(236, '-', 'Venkatesh Thangaraj', '-', 'tvenkatesh526', '123', 0, 0),
(237, '-', 'vivek Thyagarajan', '-', 'tvivek925', '123', 0, 0),
(238, '-', 'Dhanaselven ulaganathan', '-', 'udhanaselvan030', '123', 0, 0),
(239, '-', 'Dhayalan Veerasamy', '-', 'vdhayalan504', '123', 0, 0),
(240, '-', 'Hariharan Venkatesan', '-', 'vhari947', '123', 0, 0),
(241, '-', 'Jeevarathinam velusamy', '-', 'vjeeva462', '123', 0, 0),
(242, '-', 'Jeevanantham Viswanathan', '-', 'vjeeva514', '123', 0, 0),
(243, '-', 'Karunambikai Venugopal', '-', 'vkarunambikai502', '123', 0, 0),
(244, '-', 'Mathankumar Veerapatharan', '-', 'vmathankumar174', '123', 0, 0),
(245, '-', 'Poovarasan Velusamy', '-', 'vpoovarasan058', '123', 0, 0),
(246, '-', 'Varsha Vengatesan', '-', 'vvarsha427', '123', 0, 0),
(247, '-', 'Revathi Yogeshwaran', '-', 'yrevathi446', '123', 0, 0),
(256, '-', 'design 01', '-', 'design 01', '123', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_import`
--

CREATE TABLE IF NOT EXISTS `tbl_users_import` (
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
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `countries_uid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `tbl_temp`
--
ALTER TABLE `tbl_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_uid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `users_uid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=257;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
