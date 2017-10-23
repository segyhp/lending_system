-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2016 at 03:25 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lend_system_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `acquisition` int(11) NOT NULL,
  `asset_number` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `serial_number` varchar(256) NOT NULL,
  `location` varchar(256) NOT NULL,
  `remark` varchar(256) NOT NULL,
  `available` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `modified_at` int(11) NOT NULL,
  `inventory_categories_id` int(11) NOT NULL,
  `inventory_types_id` int(11) NOT NULL,
  `inventory_status_id` int(11) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `acquisition`, `asset_number`, `description`, `serial_number`, `location`, `remark`, `available`, `created_at`, `modified_at`, `inventory_categories_id`, `inventory_types_id`, `inventory_status_id`, `flag`) VALUES
(1, 1249059600, 'ME3200147-0000', 'Xerox DocuCentre-III 2007 ST', '130604', 'EIN - Sales', 'Copy Machine', 1, 1472779026, 1472779026, 1, 21, 2, 1),
(2, 1267376400, 'ME3200148-0000', 'LifeSize Express with Micpod', 'CZ64370272904', 'EIN - Sales', 'video conference system', 1, 1472779026, 1472779026, 1, 43, 2, 1),
(3, 1267376400, 'ME3200149-0000', 'Apple iMAC10,1', 'W80111865PC', 'EIN - Support', 'testing', 1, 1472779026, 1472779026, 1, 25, 2, 1),
(4, 1267376400, 'ME3200150-0000', 'Mac book Pro 13"', 'W8950BHA66E', 'EIN - Support', 'design pc', 2, 1472779026, 1472779026, 1, 21, 2, 1),
(5, 1267376400, 'ME3200151-0000', 'Lenovo ThinkPad X200', 'R909WRM', 'EIN - Sales', 'workstation', 2, 1472779026, 1472779026, 1, 21, 2, 1),
(6, 1267376400, 'ME3200152-0000', 'Lenovo ThinkPad X200', 'R909WR7', 'EIN - IS Storage', 'backup', 1, 1472779026, 1472779026, 1, 21, 2, 1),
(7, 1267376400, 'ME3200153-0000', 'Lenovo ThinkPad X200', 'R909WPP', 'EIN - Support', 'testing', 2, 1472779027, 1472779027, 1, 21, 2, 1),
(8, 1267376400, 'ME3200154-0000', 'Lenovo ThinkPad X200', 'R909WT7', 'EIN - Support', 'testing', 2, 1472779027, 1472779027, 1, 21, 2, 1),
(9, 1267376400, 'ME3200155-0000', 'Lenovo ThinkPad X200', 'R909WR2', 'EIN - Support', 'testing', 2, 1472779027, 1472779027, 1, 21, 2, 1),
(10, 1267376400, 'ME3200156-0000', 'Lenovo ThinkPad X200', 'R909WBC', 'EIN - Sales', 'testing', 2, 1472779027, 1472779027, 1, 21, 2, 1),
(11, 1267376400, 'ME3200157-0000', 'Lenovo ThinkPad X200', 'R909WRX', 'EIN - Sales', 'testing', 2, 1472779027, 1472779027, 1, 21, 2, 1),
(12, 1267376400, 'ME3200159-0000', 'Lenovo ThinkPad X200', 'R909WRY', 'EIN - IS Storage', 'backup', 1, 1472779027, 1472779027, 1, 7, 2, 1),
(13, 1267376400, 'ME3200160-0000', 'Lenovo ThinkPad X200', 'R909WBR', 'JKT - Warehouse', 'warehouse workstaion', 1, 1472779027, 1472779027, 1, 21, 2, 1),
(14, 1267376400, 'ME3200161-0000', 'Lenovo ThinkCentre A58', 'R8LRVMZ', 'ESS - Jakarta', 'ESC workstation', 1, 1472779027, 1472779027, 1, 25, 2, 1),
(15, 1267376400, 'ME3200162-0000', 'Lenovo ThinkCentre A58', 'R8LRVEF', 'ESC - Jember', 'ESC workstation', 1, 1472779027, 1472779027, 1, 25, 2, 1),
(16, 1267376400, 'ME3200163-0000', 'Lenovo ThinkCentre A58', 'R8LRVEC', 'ESS - Jakarta', 'workstation', 1, 1472779027, 1472779027, 1, 25, 2, 1),
(17, 1267376400, 'ME3200165-0000', 'Lenovo ThinkCentre A58', 'R8LRVAV', 'ESC - Jember', 'ESC workstation', 1, 1472779027, 1472779027, 1, 25, 2, 1),
(18, 1267376400, 'ME3200167-0000', 'Cisco Catalyst 2960-24 TCL', 'FOC1404Z25Z', 'EIN - IS Storage', 'backup', 1, 1472779027, 1472779027, 1, 20, 2, 1),
(19, 1267376400, 'ME3200168-0000', 'Cisco Catalyst 2960-24 TCL', 'FOC1403V878', 'EIN - server', 'EIN - Network', 1, 1472779027, 1472779027, 1, 20, 2, 1),
(20, 1267376400, 'ME3200169-0000', 'Cisco Catalyst 2960-24 TCL', 'FOC1409V8P5', 'ESS - Jakarta', 'ESC Network', 1, 1472779027, 1472779027, 1, 20, 2, 1),
(21, 1267376400, 'ME3200170-0000', 'Cisco Catalyst 2960-24 TCL', 'FOC1404Z24E', 'EIN - IS Storage', 'backup', 1, 1472779027, 1472779027, 1, 20, 2, 1),
(22, 1262278800, 'SW3500026-0000', 'Software JP1', '0', 'EIN - IS Storage', 'server', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(23, 1267376400, 'SW3500027-0000', 'Adobe CS4 Design for Windows', '0', 'EIN - IS Locker', 'EIN - Application', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(24, 1267376400, 'SW3500028-0000', 'Adobe CS4 Design for Mac', '90094936', 'EIN - IS Locker', 'EIN - Application', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(25, 1267376400, 'SW3500029-0000', 'License Delphi 2010 Professional', '201032685154820', 'EIN - IS Locker', 'EIN - Application', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(26, 1267376400, 'SW3500030-0000', 'License Autocad LT 2010', '35347339934', 'EIN - IS Locker', 'EIN - Application', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(27, 1267376400, 'SW3500031-0000', 'License Microsoft Product: Select item', '353-47340330', 'EIN - IS Locker', 'EIN - Application', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(28, 1267376400, 'SW3500032-0000', 'License Adobe Photoshop, illustrator, and Corel Dr', '90094266''', 'EIN - IS Locker', 'EIN - Application', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(29, 1267376400, 'SW3500033-0000', 'License Winpro 7 Singl OLP NL array(Getgenuine)', '60126905''', 'EIN - IS Locker', 'EIN - Application', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(30, 1393606800, 'SW3500034-0000', 'Airport ExtrWatchout Versi 5.2 License Keys', '0', 'EIN - IS Storage', 'testing', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(31, 1393606800, 'SW3500035-0000', 'Delphi XE5 Enterprise', '0', 'EIN - IS Locker', 'EIN - Application', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(32, 1406826000, 'SW3500036-0000', '3 units License windows server 2012 std R2', '0', 'EIN - IS Locker', 'server', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(33, 1417366800, 'SW3500037-0000', 'license for Adobe Creative Cloud 4 units', '0', 'EIN - IS Locker', 'EIN - Application', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(34, 1417366800, 'SW3500038-0000', 'license for Adobe Creator 15 units', '0', 'EIN - IS Locker', 'EIN - Application', 1, 1472779027, 1472779027, 1, 34, 2, 1),
(35, 1285866000, 'ME3800001-0000', 'Lenovo ThinkCenter M58', 'R89VD92', 'EIN - Support', 'workstation', 2, 1472779027, 1472779027, 1, 25, 2, 1),
(36, 1285866000, 'ME3800003-0000', 'Lenovo ThinkCenter M58', 'R89VB53', 'JKT - Warehouse', 'warehouse workstaion', 1, 1472779028, 1472779028, 1, 25, 2, 1),
(37, 1285866000, 'ME3800005-0000', 'Lenovo ThinkCenter M58', 'R89VB48', 'EIN - Support', 'workstation', 2, 1472779028, 1472779028, 1, 25, 2, 1),
(38, 1293814800, 'ME3800010-0000', 'Lenovo Ideapad S10-3', 'QB02314066', 'EIN - IS Storage', 'testing', 1, 1472779028, 1472779028, 1, 21, 2, 1),
(39, 1298912400, 'ME3800017-0000', 'Lenovo ThinkPad X201', 'R95NH71', 'EIN - Support', 'workstation', 2, 1472779028, 1472779028, 1, 21, 2, 1),
(40, 1298912400, 'ME3800018-0000', 'Lenovo ThinkPad X201', 'R95NH6P', 'EIN - Support', 'testing', 2, 1472779028, 1472779028, 1, 21, 2, 1),
(41, 1298912400, 'ME3800019-0000', 'Lenovo ThinkPad X201', 'R95NH78', 'EIN - Support', 'testing', 2, 1472779028, 1472779028, 1, 21, 2, 1),
(42, 1298912400, 'ME3800020-0000', 'Lenovo ThinkPad X201', 'R95NH87', 'EIN - Sales', 'testing', 2, 1472779028, 1472779028, 1, 21, 2, 1),
(43, 1298912400, 'ME3800021-0000', 'Lenovo ThinkPad X201', 'R95NH7F', 'ESS - Surabaya', 'testing', 2, 1472779028, 1472779028, 1, 21, 2, 1),
(44, 1298912400, 'ME3800022-0000', 'Lenovo ThinkPad X201', 'R95NH7P', 'EIN - Sales', 'testing', 2, 1472779028, 1472779028, 1, 21, 2, 1),
(45, 1298912400, 'ME3800023-0000', 'Lenovo ThinkPad X201', 'R95NH80', 'EIN - Support', 'workstation', 2, 1472779028, 1472779028, 1, 21, 2, 1),
(46, 1298912400, 'ME3800024-0000', 'Lenovo ThinkPad X201', 'R95NH7E', 'EIN - Support', 'testing', 2, 1472779028, 1472779028, 1, 21, 2, 1),
(47, 1298912400, 'ME3800025-0000', 'Lenovo ThinkPad X201', 'R95NH6D', 'EIN - IS Storage', 'backup', 1, 1472779028, 1472779028, 1, 21, 2, 1),
(48, 1298912400, 'ME3800026-0000', 'Lenovo ThinkPad X201', 'R9BA508', 'EIN - Support', 'evaluation', 2, 1472779028, 1472779028, 1, 21, 2, 1),
(49, 1306861200, 'ME3800028-0000', 'Lenovo ThinkCentre A70', 'S5CGWNB', 'EIN - Sales', 'testing', 2, 1472779028, 1472779028, 1, 25, 2, 1),
(50, 1306861200, 'ME3800029-0000', 'Lenovo ThinkCentre A70', 'S5CGTYE', 'ESS - Jakarta', 'ESC workstation', 2, 1472779028, 1472779028, 1, 25, 2, 1),
(51, 1306861200, 'ME3800030-0000', 'Lenovo ThinkCentre A70', 'S5CGWLX', 'EIN - IS Storage', 'exhibition', 1, 1472779028, 1472779028, 1, 25, 2, 1),
(52, 1306861200, 'ME3800031-0000', 'Lenovo ThinkCentre A70', 'S5CGWYC', 'EIN - IS Storage', 'exhibition', 1, 1472779028, 1472779028, 1, 25, 2, 1),
(53, 1306861200, 'ME3800032-0000', 'Lenovo ThinkCentre A70', 'S5CGWMK', 'ESC - Jember', 'ESC workstation', 1, 1472779028, 1472779028, 1, 25, 2, 1),
(54, 1306861200, 'ME3800033-0000', 'Sony Vaio VSB19GG/B', '27519670-7003060', 'EIN - Support', 'evaluation', 2, 1472779028, 1472779028, 1, 21, 2, 1),
(55, 1325350800, 'ME3800034-0000', 'Zotac Box SD-ID 12', 'G120616005092', 'EIN - IS Storage', 'Exibition', 1, 1472779028, 1472779028, 1, 25, 2, 1),
(56, 1325350800, 'ME3800035-0000', 'Zotac Box SD-ID 12', 'G120616005097', 'EIN - IS Storage', 'Exibition', 1, 1472779028, 1472779028, 1, 25, 2, 1),
(57, 1325350800, 'ME3800036-0000', 'Zotac Box SD-ID 12', 'G120616005098', 'EIN - IS Storage', 'Exibition', 1, 1472779028, 1472779028, 1, 25, 2, 1),
(58, 1325350800, 'ME3800037-0000', 'Zotac Box SD-ID 12', 'G120616005083', 'EIN - IS Storage', 'Exibition', 1, 1472779028, 1472779028, 1, 25, 2, 1),
(59, 1325350800, 'ME3800039-0000', 'Mac Book Pro MD313', 'C02GGV2LDV13', 'EIN - IS Locker', 'testing', 1, 1472779028, 1472779028, 1, 21, 2, 1),
(60, 1267376400, 'ME3800040-0000', 'Fujitsu Lifebook SH771', 'R2201553', 'EIN - IS Storage', 'backup - ex Pak Riswin Li', 1, 1472779028, 1472779028, 1, 21, 2, 1),
(61, 1267376400, 'ME3800041-0000', 'Fujitsu Lifebook SH771', 'R2201549', 'EIN - IS Storage', 'backup - ex Bu Maya Sari', 1, 1472779028, 1472779028, 1, 21, 2, 1),
(62, 1267376400, 'ME3800042-0000', 'Fujitsu Lifebook SH771', 'R2201538', 'EIN - IS Storage', 'backup - ex Pak Chris', 1, 1472779028, 1472779028, 1, 21, 2, 1),
(63, 1267376400, 'ME3800043-0000', 'Fujitsu Lifebook SH771', 'R2201554', 'EIN - IS Storage', 'backup - ex Pak Joster', 1, 1472779029, 1472779029, 1, 21, 2, 1),
(64, 1267376400, 'ME3800044-0000', 'Fujitsu Lifebook SH771', 'R2201548', 'EIN - Support', 'ex Bu Erien - HR Locker', 1, 1472779029, 1472779029, 1, 21, 2, 1),
(65, 1267376400, 'ME3800045-0000', 'Fujitsu Lifebook SH771', 'R2201537', 'EIN - Support', 'testing', 2, 1472779029, 1472779029, 1, 21, 2, 1),
(66, 1267376400, 'ME3800046-0000', 'Fujitsu Lifebook SH771', 'R2201556', 'EIN - IS Storage', 'backup - ex Pak Andryanto', 1, 1472779029, 1472779029, 1, 21, 2, 1),
(67, 1267376400, 'ME3800047-0000', 'Fujitsu Lifebook SH771', 'R2201550', 'EIN - Support', 'File Screening - backup', 2, 1472779029, 1472779029, 1, 21, 2, 1),
(68, 1267376400, 'ME3800048-0000', 'Fujitsu Lifebook SH771', 'R2201527', 'EIN - IS Storage', 'backup - Bu Wida', 1, 1472779029, 1472779029, 1, 21, 2, 1),
(69, 1267376400, 'ME3800053-0000', 'Fujitsu Lifebook SH771', 'R2201555', 'EIN - Support', 'backup', 1, 1472779029, 1472779029, 1, 21, 1, 1),
(70, 1341075600, 'ME3800054-0000', ' Lenovo Ideapad S110', 'UB00628341', 'EIN - IS Storage', 'demo', 1, 1472779029, 1472779029, 1, 21, 2, 1),
(71, 1341075600, 'ME3800055-0000', ' Lenovo Ideapad S110', 'UB00629022', 'EIN - IS Storage', 'demo', 1, 1472779029, 1472779029, 1, 21, 2, 1),
(72, 1341075600, 'ME3800056-0000', 'Shuttle X50V2', 'X50V2L0202B26F00281', 'EIN - Sales', 'workstation', 2, 1472779029, 1472779029, 1, 25, 2, 1),
(73, 1341075600, 'ME3800057-0000', 'Shuttle X50V2', 'X50V2L0202B26F00286', 'ESC - Palembang', 'ESC workstation', 1, 1472779029, 1472779029, 1, 25, 2, 1),
(74, 1341075600, 'ME3800058-0000', 'Shuttle X50V2', 'X50V2P1602C22F00010', 'EIN - Sales', 'workstation', 2, 1472779029, 1472779029, 1, 25, 2, 1),
(75, 1341075600, 'ME3800059-0000', 'Shuttle X50V2', 'X50V2P1602C22F00012', 'EIN - IS Storage', 'exhibition', 1, 1472779029, 1472779029, 1, 25, 2, 1),
(76, 1341075600, 'ME3800060-0000', 'Shuttle X50V2', 'X50V2P1602C22F00015', 'EIN - IS Storage', 'exhibition', 1, 1472779029, 1472779029, 1, 25, 2, 1),
(77, 1341075600, 'ME3800061-0000', 'Shuttle X50V2', 'X50V2P1602C22F00026', 'EIN - IS Storage', 'exhibition', 1, 1472779029, 1472779029, 1, 25, 2, 1),
(78, 1341075600, 'ME3800062-0000', 'Shuttle X50V2', 'X50V2P1602C22F00003', 'ESC - Mangga Dua Mall', 'Toko L Series', 2, 1472779029, 1472779029, 1, 25, 2, 1),
(79, 1341075600, 'ME3800063-0000', 'Shuttle X50V2', 'X50V2P1602C22F00006', 'EIN - Sales', 'workstation', 2, 1472779029, 1472779029, 1, 25, 2, 1),
(80, 1364749200, 'ME3800064-0000', 'UPS Liebert GXT3 6 KV RT230', '1305701171BW273', 'EIN - server', 'UPS', 1, 1472779029, 1472779029, 1, 40, 2, 1),
(81, 1383238800, 'ME3800065-0000', 'Vaio SVP13218 PGB', '4-466-248-31''', 'EIN - Support', 'workstation', 2, 1472779029, 1472779029, 1, 21, 2, 1),
(82, 1393606800, 'ME3800066-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGAE', 'EIN - Sales', 'workstation', 2, 1472779029, 1472779029, 1, 21, 2, 1),
(83, 1393606800, 'ME3800067-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGAM', 'EIN - Support', 'workstation', 2, 1472779029, 1472779029, 1, 21, 2, 1),
(84, 1393606800, 'ME3800068-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGAN', 'EIN - Support', 'workstation', 2, 1472779029, 1472779029, 1, 21, 2, 1),
(85, 1393606800, 'ME3800069-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGAY', 'EIN - Support', 'workstation', 2, 1472779029, 1472779029, 1, 21, 2, 1),
(86, 1393606800, 'ME3800070-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGAT', 'EIN - IS Storage', 'VI demo', 1, 1472779029, 1472779029, 1, 21, 2, 1),
(87, 1393606800, 'ME3800071-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGBB''', 'EIN - Sales', 'workstation Lenovo Service Center', 2, 1472779029, 1472779029, 1, 21, 2, 1),
(88, 1393606800, 'ME3800072-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGBH''', 'EIN - Support', 'workstation', 2, 1472779029, 1472779029, 1, 21, 2, 1),
(89, 1393606800, 'ME3800073-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGBK', 'EIN - Support', 'workstation', 2, 1472779029, 1472779029, 1, 21, 2, 1),
(90, 1393606800, 'ME3800074-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGBP', 'EIN - Support', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(91, 1393606800, 'ME3800075-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGBX', 'EIN - Support', 'exhibition', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(92, 1393606800, 'ME3800076-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGCG', 'EIN - Support', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(93, 1393606800, 'ME3800077-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGCK', 'EIN - Support', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(94, 1393606800, 'ME3800078-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGCL', 'EIN - Support', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(95, 1393606800, 'ME3800079-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGCM', 'EIN - Support', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(96, 1393606800, 'ME3800080-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6P06N', 'EIN - Sales', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(97, 1393606800, 'ME3800081-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB8NMG3', 'EIN - Sales', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(98, 1393606800, 'ME3800082-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB8NMH0', 'EIN - Support', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(99, 1393606800, 'ME3800083-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB8NMH4', 'EIN - Support', 'testing', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(100, 1393606800, 'ME3800084-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB8NMH8', 'EIN - Support', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(101, 1393606800, 'ME3800085-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB6GGCC', 'EIN - Support', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(102, 1393606800, 'ME3800086-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB8NML1', 'EIN - Sales', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(103, 1393606800, 'ME3800087-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB8NML2', 'EIN - Support', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(104, 1393606800, 'ME3800088-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB8NML7', 'EIN - Support', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(105, 1393606800, 'ME3800089-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB8NMK0', 'EIN - Support', 'PC Tax', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(106, 1393606800, 'ME3800090-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB8NMK6', 'EIN - Sales', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(107, 1393606800, 'ME3800091-0000', 'Lenovo Thinkpad T430 KZA + Docking Port', 'PB8NMM8', 'EIN - Support', 'workstation', 2, 1472779030, 1472779030, 1, 21, 2, 1),
(108, 1393606800, 'ME3800092-0000', 'Machine Document Center IV 4070 ST', '128685', 'EIN - Support', 'Copy Machine', 1, 1472779030, 1472779030, 1, 7, 2, 1),
(109, 1406826000, 'ME3800093-0000', 'server X3650 M4', '06BYNAT', 'EIN - server', 'server', 1, 1472779030, 1472779030, 1, 26, 2, 1),
(110, 1406826000, 'ME3800094-0000', 'Cisco Switch  C2960X Catalyst 48GigE', '06BYVBM', 'EIN - server', 'server', 1, 1472779030, 1472779030, 1, 26, 2, 1),
(111, 1406826000, 'ME3800095-0000', 'server X3550 M4', '06BYVBN', 'EIN - server', 'server', 1, 1472779030, 1472779030, 1, 26, 2, 1),
(112, 1406826000, 'ME3800096-0000', 'Rack NetBay S2 42U', 'MM22792', 'EIN - server', 'EIN - Network', 1, 1472779030, 1472779030, 1, 32, 2, 1),
(113, 1406826000, 'ME3800097-0000', 'KVM Switch', 'MM67304', 'EIN - server', 'Monitoring and Configuration Tools', 1, 1472779030, 1472779030, 1, 12, 2, 1),
(114, 1406826000, 'ME3800098-0000', 'Qnap NAS server', 'Q13B108084', 'EIN - server', 'backupserver', 1, 1472779030, 1472779030, 1, 19, 2, 1),
(115, 1406826000, 'ME3800099-0000', 'UPS Emerson', '12006792132040267', 'EIN - server', 'UPS', 1, 1472779030, 1472779030, 1, 40, 2, 1),
(116, 1417366800, 'ME3800100-0000', 'iMac ME089ID/A', 'C02NT13BF8J5', 'EIN - Support', 'workstation', 2, 1472779031, 1472779031, 1, 25, 2, 1),
(117, 1362070800, 'ME3800101-0000', 'QNAP Storage TS-451 with 8TB', 'Q14AI09453', 'EIN - server', 'File Sharing', 1, 1472779031, 1472779031, 1, 19, 2, 1),
(118, 1441040400, 'ME3800102-0000', 'Cisco Switch  C2960X Catalyst 48GigE', 'FOC1917S6JH', 'EIN - server', 'EIN - Network', 1, 1472779031, 1472779031, 1, 20, 2, 1),
(119, 1443632400, 'ME3800104-0000', 'Lenovo ThinkStation P500-09ID', 'PC07XWQY', 'EIN - IS Storage', 'VI demo', 1, 1472779031, 1472779031, 1, 25, 2, 1),
(120, 1443632400, 'ME3800105-0000', 'Lenovo ThinkPad X1 - KID', 'R90H8LUN', 'EIN - Support', 'exhibition', 2, 1472779031, 1472779031, 1, 21, 2, 1),
(121, 1443632400, 'ME3800106-0000', 'Watchout Datatone V. 6 Key', '0', 'EIN - IS Storage', 'testing', 1, 1472779031, 1472779031, 1, 41, 2, 1),
(122, 1456765200, 'ME3800107-0000', 'PABX KX - NS 1000 CSI', '3LACH001855', 'EIN - server', 'EIN - Network', 1, 1472779031, 1472779031, 1, 23, 2, 1),
(123, 1462035600, 'ME3800108-0000', 'Lifesize Express 220-10x-Phone with Mobile Rack', 'HK6B11099A025', 'EIN - Sales', 'video conference system', 1, 1472779031, 1472779031, 1, 43, 2, 1),
(124, 1072890000, 'ME5600008-0000', 'PABX KX - NCV200', '7LBVB001439', 'EIN - server', 'Broken', 1, 1472779031, 1472779031, 2, 23, 1, 1),
(125, 1072890000, 'ME5600010-0000', 'PABX TDA600', '7HAVD007616', 'EIN - server', 'EIN - Network', 1, 1472779031, 1472779031, 2, 23, 2, 1),
(126, 1238518800, 'ME5600075-0000', 'Fortunarack', '0', 'EIN - GA Storage', 'EIN - Network', 1, 1472779031, 1472779031, 2, 31, 2, 1),
(127, 1264957200, 'ME5600084-0000', 'Printer Epson LQ-300+', 'DCAY157794', 'EIN - Sales', 'Printer Sharing', 2, 1472779031, 1472779031, 2, 29, 2, 1),
(128, 1267376400, 'ME5600085-0000', 'Mac book Pro 13', 'W8002NVQ66D', 'EIN - Sales', 'testing', 2, 1472779031, 1472779031, 2, 21, 2, 1),
(129, 1267376400, 'ME5600086-0000', 'Wakatobi Mini 963 Zyrex', 'WKM02K5419', 'EIN - IS Storage', 'testing', 1, 1472779031, 1472779031, 2, 21, 2, 1),
(130, 1267376400, 'ME5600088-0000', 'Lenovo ThinkPad X200', 'R909WB8', 'EIN - Sales', 'testing', 2, 1472779031, 1472779031, 2, 21, 2, 1),
(131, 1267376400, 'ME5600089-0000', 'Lenovo ThinkPad X200', 'R909WR6', 'EIN - Sales', 'testing', 2, 1472779031, 1472779031, 2, 21, 2, 1),
(132, 1267376400, 'ME5600092-0000', 'Lenovo ThinkCentre A58', 'R8LRTKX', 'ESC - Madiun', 'ESC workstation', 1, 1472779031, 1472779031, 2, 25, 2, 1),
(133, 1280595600, 'ME5600096-0000', 'Zebex Barcode Scanner', 'B051H329199', 'ESC - Makassar', 'ESC Tools', 1, 1472779031, 1472779031, 2, 4, 2, 1),
(134, 1280595600, 'ME5600097-0000', 'ZEBEX Z-3051HS', 'B051H329198', 'ESC - Medan', 'ESC Tools', 1, 1472779031, 1472779031, 2, 4, 2, 1),
(135, 1280595600, 'ME5600098-0000', 'Zebex Barcode Scanner', 'B051H329191', 'ESC - Yogyakarta', 'ESC Tools', 1, 1472779031, 1472779031, 2, 4, 2, 1),
(136, 1280595600, 'ME5600099-0000', 'ZEBEX Z-3051HS', 'B051H329196', 'ESS - Surabaya', 'ESC Tools', 1, 1472779031, 1472779031, 2, 4, 2, 1),
(137, 1280595600, 'ME5600100-0000', 'Zebex Barcode Scanner', 'U01H023775', 'EIN - Support', 'ASAP Tools', 2, 1472779031, 1472779031, 2, 4, 2, 1),
(138, 1285866000, 'ME5600101-0000', 'Lenovo ThinkCentre M58', 'R89VD66', 'EIN - Sales', 'workstation', 2, 1472779031, 1472779031, 2, 25, 2, 1),
(139, 1285866000, 'ME5600103-0000', 'Lenovo ThinkCentre M58', 'R89VD67', 'ESS - Surabaya', 'workstation', 2, 1472779031, 1472779031, 2, 25, 2, 1),
(140, 1285866000, 'ME5600106-0000', 'Lenovo ThinkCentre M58', 'R89VD63', 'EIN - Sales', 'workstation', 2, 1472779031, 1472779031, 2, 25, 2, 1),
(141, 1285866000, 'ME5600107-0000', 'Lenovo ThinkCentre M58', 'R89VE59', 'ESC - Samarinda', 'ESC workstation', 1, 1472779031, 1472779031, 2, 25, 2, 1),
(142, 1285866000, 'ME5600108-0000', 'Lenovo ThinkCentre M58', 'R89VD01', 'ESC - Mangga Dua Mall', 'Toko L Series', 1, 1472779031, 1472779031, 2, 25, 2, 1),
(143, 1293814800, 'ME5600109-0000', 'Lenovo Ideapad S10-3', 'QB02012768', 'ESS - Jakarta', 'testing', 1, 1472779031, 1472779031, 2, 21, 2, 1),
(144, 1293814800, 'ME5600111-0000', 'Lenovo Ideapad S10-3', 'QB02313041', 'ESC - Mangga Dua Mall', 'testing', 1, 1472779031, 1472779031, 2, 21, 2, 1),
(145, 1293814800, 'ME5600116-0000', 'Lenovo Ideapad S10-3', 'QB02313039', 'EIN - IS Storage', 'demo', 1, 1472779032, 1472779032, 2, 21, 2, 1),
(146, 1293814800, 'ME5600117-0000', 'Lenovo Ideapad S10-3', 'QB02314213', 'EIN - IS Storage', 'demo', 1, 1472779032, 1472779032, 2, 21, 2, 1),
(147, 1293814800, 'ME5600121-0000', 'Lenovo Ideapad S10-3', 'QB02313816', 'EIN - IS Storage', 'demo', 1, 1472779032, 1472779032, 2, 21, 2, 1),
(148, 1293814800, 'ME5600124-0000', 'Lenovo Ideapad S10-3', 'QB02313945', 'EIN - IS Storage', 'demo', 1, 1472779032, 1472779032, 2, 21, 2, 1),
(149, 1293814800, 'ME5600126-0000', 'Lenovo Ideapad S10-3', 'QB02312636', 'EIN - IS Storage', 'demo', 1, 1472779032, 1472779032, 2, 21, 2, 1),
(150, 1293814800, 'ME5600127-0000', 'Lenovo Ideapad S10-3', 'QB02561738', 'EIN - Support', 'evaluation', 2, 1472779032, 1472779032, 2, 21, 2, 1),
(151, 0, 'ME5600130-0000', 'TP-Link TD-W8901G', 'B0487AB72CC', 'ESS - Semarang', 'ESC Network', 1, 1472779032, 1472779032, 2, 18, 2, 1),
(152, 0, 'ME5600133-0000', 'Media Player Buffalo link theatre L', '49797400407964', 'EIN - IS Storage', 'exhibition', 1, 1472779032, 1472779032, 2, 17, 2, 1),
(153, 0, 'ME5600134-0000', 'Network USB Print server TP-Link TL-PS110U', '107PA200111', 'EIN - IS Storage', 'testing', 1, 1472779032, 1472779032, 2, 28, 2, 1),
(154, 1306861200, 'ME5600135-0000', 'Lenovo ThinkCentre A70', 'S5CGWMM', 'EIN - Support', 'workstation', 2, 1472779032, 1472779032, 2, 25, 2, 1),
(155, 1306861200, 'ME5600136-0000', 'Lenovo ThinkCentre A70', 'S5CGWZA', 'EIN - IS Storage', 'exhibition', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(156, 1306861200, 'ME5600137-0000', 'Lenovo ThinkCentre A70', 'S5CGWZK', 'EIN - IS Storage', 'exhibition', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(157, 1306861200, 'ME5600138-0000', 'Lenovo ThinkCentre A70', 'S5CGYLE', 'EIN - IS Storage', 'exhibition', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(158, 1306861200, 'ME5600139-0000', 'Lenovo ThinkCentre A70', 'S5CGWXK', 'EIN - Support', 'workstation', 2, 1472779032, 1472779032, 2, 25, 2, 1),
(159, 1325350800, 'ME5600140-0000', 'Zotac ZBox SD-ID 12', 'G120616005081', 'EIN - IS Storage', 'exhibition', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(160, 1325350800, 'ME5600143-0000', 'Zotac ZBox SD-ID 12', 'G120616005088', 'ESS - Semarang', 'testing', 2, 1472779032, 1472779032, 2, 25, 2, 1),
(161, 1325350800, 'ME5600144-0000', 'Zotac ZBox SD-ID 12', 'G120616005078', 'ESC - Mangga Dua Mall', 'ESC workstation', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(162, 1325350800, 'ME5600145-0000', 'Zotac ZBox SD-ID 12', 'G120616005099', 'ESC - Mangga Dua Mall', 'ESC workstation', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(163, 1325350800, 'ME5600146-0000', 'Zotac ZBox SD-ID 12', 'G120616005079', 'EIN - IS Storage', 'Exibition', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(164, 1325350800, 'ME5600147-0000', 'Zotac ZBox SD-ID 12', 'G120616005080', 'EIN - IS Storage', 'exhibition', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(165, 1325350800, 'ME5600148-0000', 'Zotac ZBox SD-ID 12', 'G120616005095', 'ESS - Serpong', 'ESC workstation', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(166, 1325350800, 'ME5600149-0000', 'Zotac ZBox SD-ID 12', 'G120616005086', 'ESC - Mangga Dua Mall', 'Toko L Series', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(167, 1325350800, 'ME5600150-0000', 'Zotac ZBox SD-ID 12', 'G120616005076', 'EIN - IS Storage', 'Exibition', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(168, 1325350800, 'ME5600152-0000', 'Zotac ZBox SD-ID 12', 'G120616005084', 'ESS - Serpong', 'Toko L Series', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(169, 1325350800, 'ME5600153-0000', 'Zotac ZBox SD-ID 12', 'G120616005091', 'EIN - IS Storage', 'Exibition', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(170, 1325350800, 'ME5600155-0000', 'Zotac ZBox SD-ID 12', 'G120616005077', 'EIN - IS Storage', 'Exibition', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(171, 1325350800, 'ME5600156-0000', 'Zotac ZBox SD-ID 12', 'G120616005089', 'EIN - IS Storage', 'Exibition', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(172, 1325350800, 'ME5600157-0000', 'Zotac ZBox SD-ID 12', 'G120616005087', 'EIN - IS Storage', 'Exibition', 1, 1472779032, 1472779032, 2, 25, 2, 1),
(173, 1267376400, 'ME5600161-0000', 'Lenovo ThinkEdge E120', 'LR3WE8X', 'EIN - Support', 'testing', 2, 1472779032, 1472779032, 2, 21, 2, 1),
(174, 1267376400, 'ME5600162-0000', 'Lenovo ThinkEdge E120', 'LR3WE7W', 'EIN - Support', 'evaluation - tax PC', 2, 1472779032, 1472779032, 2, 21, 2, 1),
(175, 1267376400, 'ME5600165-0000', 'Lenovo ThinkEdge E120', 'LR3WE8T', 'EIN - Sales', 'testing', 2, 1472779032, 1472779032, 2, 21, 2, 1),
(176, 1333213200, 'ME5600166-0000', 'Airport Extreem Base Station 802.11n', 'C86GX1B7DM72', 'EIN - Support', 'testing', 2, 1472779033, 1472779033, 2, 2, 2, 1),
(177, 1333213200, 'ME5600170-0000', 'Sunix USB Adapter To RS-232', 'UTX1111059', 'EIN - IS Storage', 'testing', 1, 1472779033, 1472779033, 2, 6, 2, 1),
(178, 1333213200, 'ME5600171-0000', 'Sunix USB Adapter To RS-232', 'UTX1111058', 'EIN - IS Storage', 'testing', 1, 1472779033, 1472779033, 2, 6, 2, 1),
(179, 1333213200, 'ME5600172-0000', 'Sunix USB Adapter To RS-232', 'UTX1111069', 'EIN - IS Storage', 'testing', 2, 1472779033, 1472779033, 2, 6, 2, 1),
(180, 1333213200, 'ME5600173-0000', 'Sunix USB Adapter To RS-232', 'UTX1111050', 'EIN - IS Storage', 'testing', 1, 1472779033, 1472779033, 2, 6, 2, 1),
(181, 1333213200, 'ME5600174-0000', 'Sunix USB Adapter To RS-232', 'UTX1111054', 'EIN - Sales', 'testing', 2, 1472779033, 1472779033, 2, 6, 2, 1),
(182, 1333213200, 'ME5600175-0000', 'Sunix USB Adapter To RS-232', 'UTX1111056', 'EIN - Support', 'testing', 2, 1472779033, 1472779033, 2, 6, 2, 1),
(183, 1333213200, 'ME5600176-0000', 'Sunix USB Adapter To RS-232', 'UTX1111052', 'EIN - IS Storage', 'testing', 1, 1472779033, 1472779033, 2, 6, 2, 1),
(184, 1333213200, 'ME5600177-0000', 'Sunix USB Adapter To RS-232', 'UTX1111053', 'EIN - Sales', 'testing', 2, 1472779033, 1472779033, 2, 6, 2, 1),
(185, 1338483600, 'ME5600178-0000', 'D-Link  DES-10008A', 'Q90K1BC005967', 'ESS - Jakarta', 'ESC Network', 1, 1472779033, 1472779033, 2, 20, 2, 1),
(186, 1338483600, 'ME5600179-0000', 'D-Link  DES-10008A', 'Q90K1BC005962', 'EIN - IS Storage', 'demo', 1, 1472779033, 1472779033, 2, 20, 2, 1),
(187, 1338483600, 'ME5600181-0000', 'D-Link  DES-10008A', 'QB201B8019517', 'EIN - IS Storage', 'testing', 1, 1472779033, 1472779033, 2, 20, 2, 1),
(188, 1338483600, 'ME5600182-0000', 'D-Link  DES-10008A', 'QB201B8019518', 'EIN - GA Storage', 'West Side Network', 1, 1472779033, 1472779033, 2, 20, 2, 1),
(189, 1338483600, 'ME5600183-0000', 'D-Link  DES-10008A', 'Q90K1BC005961', 'ESC - Samarinda', 'ESC Network', 1, 1472779033, 1472779033, 2, 20, 2, 1),
(190, 1338483600, 'ME5600184-0000', 'D-Link  DES-10008A', 'QB201B4026577', 'ESS - Serpong', 'ESC Network', 1, 1472779033, 1472779033, 2, 20, 2, 1),
(191, 1338483600, 'ME5600185-0000', 'D-Link  DES-10008A', 'QB201B3008354', 'ESC - Makassar', 'ESC Network', 1, 1472779033, 1472779033, 2, 20, 2, 1),
(192, 1338483600, 'ME5600186-0000', 'D-Link  DES-10008A', 'QB201A5037302', 'EIN - IS Storage', 'testing', 1, 1472779033, 1472779033, 2, 20, 2, 1),
(193, 1338483600, 'ME5600187-0000', 'D-Link  DES-10008A', 'QB201B6010984', 'EIN - IS Storage', 'testing', 1, 1472779033, 1472779033, 2, 20, 2, 1),
(194, 1338483600, 'ME5600188-0000', 'D-Link  DES-10008A', 'QB201B8019512', 'EIN - Support', 'testing', 1, 1472779033, 1472779033, 2, 20, 2, 1),
(195, 1338483600, 'ME5600189-0000', 'D-Link  DES-10008A', 'QB201B8019514', 'ESS - Semarang', 'ESC Network', 1, 1472779033, 1472779033, 2, 20, 2, 1),
(196, 1338483600, 'ME5600194-0000', 'D-Link Cloud Router', 'R3FJ1C3001582', 'ESC - Surabaya', 'ESC Network', 1, 1472779033, 1472779033, 2, 3, 2, 1),
(197, 1338483600, 'ME5600197-0000', 'D-Link Cloud Router', 'R3FJ1C3001585', 'ESS - Jakarta', 'ESC Network', 1, 1472779033, 1472779033, 2, 3, 2, 1),
(198, 1338483600, 'ME5600198-0000', 'D-Link Cloud Router', 'R3FJ1C3001587', 'ESC - Samarinda', 'ESC Network', 1, 1472779033, 1472779033, 2, 3, 2, 1),
(199, 1338483600, 'ME5600200-0000', 'D-Link Cloud Router', 'R3FJ1C3001584', 'ESC - Yogyakarta', 'ESC Network', 1, 1472779033, 1472779033, 2, 3, 2, 1),
(200, 1338483600, 'ME5600203-0000', 'D-Link Cloud Router', 'R3FJ1C3001588', 'ESC - Makassar', 'ESC Network', 1, 1472779033, 1472779033, 2, 3, 2, 1),
(201, 1338483600, 'ME5600204-0000', 'LCD Lenovo D186WA', 'V178997', 'EIN - IS Storage', 'exhibition', 1, 1472779033, 1472779033, 2, 14, 2, 1),
(202, 1338483600, 'ME5600205-0000', 'LCD Lenovo D186WA', 'V1R8355', 'EIN - IS Storage', 'exhibition', 1, 1472779033, 1472779033, 2, 14, 2, 1),
(203, 1338483600, 'ME5600206-0000', 'LCD Lenovo D186WA', 'V1R8375', 'EIN - IS Storage', 'exhibition', 1, 1472779033, 1472779033, 2, 14, 2, 1),
(204, 1338483600, 'ME5600207-0000', 'LCD Lenovo D186WA', 'V1HH431', 'EIN - IS Storage', 'exhibition', 1, 1472779033, 1472779033, 2, 14, 2, 1),
(205, 1338483600, 'ME5600208-0000', 'LCD Lenovo D186WA', 'V178882', 'EIN - IS Storage', 'exhibition', 1, 1472779033, 1472779033, 2, 14, 2, 1),
(206, 1338483600, 'ME5600209-0000', 'LCD Lenovo D186WA', 'V1HH434', 'EIN - IS Storage', 'exhibition', 1, 1472779033, 1472779033, 2, 14, 2, 1),
(207, 1338483600, 'ME5600210-0000', 'LCD Lenovo D186WA', 'V1HH366', 'EIN - IS Storage', 'exhibition', 1, 1472779033, 1472779033, 2, 14, 2, 1),
(208, 1338483600, 'ME5600211-0000', 'D-Link  DES-10008A', 'QB201133008353', 'ESC - Palembang', 'ESC Network', 1, 1472779033, 1472779033, 2, 20, 2, 1),
(209, 1338483600, 'ME5600212-0000', 'LCD HP LV1561X', 'CNC211PV6F', 'EIN - IS Storage', 'exhibition', 1, 1472779034, 1472779034, 2, 14, 2, 1),
(210, 1338483600, 'ME5600213-0000', 'LCD HP LV1561X', 'CNC211PVYD', 'EIN - IS Storage', 'exhibition', 1, 1472779034, 1472779034, 2, 14, 2, 1),
(211, 1338483600, 'ME5600214-0000', 'LCD HP LV1561X', 'CNC206QPM0', 'EIN - Sales', 'workstation', 2, 1472779034, 1472779034, 2, 14, 2, 1),
(212, 1338483600, 'ME5600215-0000', 'LCD HP LV1561X', 'CNC206QQVW', 'EIN - IS Storage', 'exhibition', 1, 1472779034, 1472779034, 2, 14, 2, 1),
(213, 1338483600, 'ME5600217-0000', 'LCD HP LV1561X', 'CNC206QPP8', 'EIN - Support', 'workstation', 2, 1472779034, 1472779034, 2, 14, 2, 1),
(214, 1338483600, 'ME5600218-0000', 'LCD HP LV1561X', 'CNC211PV7T', 'EIN - Sales', 'workstation', 2, 1472779034, 1472779034, 2, 14, 2, 1),
(215, 1338483600, 'ME5600219-0000', 'LCD HP LV1561X', 'CNC211PW19', 'EIN - IS Storage', 'exhibition', 1, 1472779034, 1472779034, 2, 14, 2, 1),
(216, 1338483600, 'ME5600220-0000', 'LCD HP LV1561X', 'CNC206QPP1', 'EIN - Support', 'workstation', 2, 1472779034, 1472779034, 2, 14, 2, 1),
(217, 1338483600, 'ME5600221-0000', 'LG-Flatron W1953SV', '1021NPT4E944', 'EIN - IS Storage', 'exhibition', 1, 1472779034, 1472779034, 2, 14, 2, 1),
(218, 1338483600, 'ME5600222-0000', 'LG-Flatron W1953SV', '104INYDA4362', 'EIN - IS Storage', 'exhibition', 1, 1472779034, 1472779034, 2, 14, 2, 1),
(219, 1338483600, 'ME5600223-0000', 'LG-Flatron W1953SV', '104INNG8V615', 'EIN - IS Storage', 'exhibition', 1, 1472779034, 1472779034, 2, 14, 2, 1),
(220, 1338483600, 'ME5600224-0000', 'LG-Flatron W1953SV', '104INLVA4368', 'EIN - Sales', 'workstation', 2, 1472779034, 1472779034, 2, 14, 2, 1),
(221, 1338483600, 'ME5600226-0000', 'Panasonic KX-TEB308SN', '1ICCQ003273', 'EIN - IS Storage', 'ESC Network', 1, 1472779034, 1472779034, 2, 23, 2, 1),
(222, 1338483600, 'ME5600227-0000', 'Panasonic KX-TEB308SN', '1ICCQ003367', 'ESC - Mangga Dua Mall', 'ESC - Network', 1, 1472779034, 1472779034, 2, 23, 2, 1),
(223, 1338483600, 'ME5600228-0000', 'Panasonic KX-TEB308SN', '1ICCQ003389', 'ESC - Mangga Dua Mall', 'ESC Network', 1, 1472779034, 1472779034, 2, 23, 2, 1),
(224, 1338483600, 'ME5600229-0000', 'Panasonic KX-TEB308SN', '1ICCQ003450', 'ESC - Samarinda', 'ESC Network', 1, 1472779034, 1472779034, 2, 23, 2, 1),
(225, 1338483600, 'ME5600230-0000', 'Network TP-Link TD-W8951ND', '90F65293A285', 'ESS - Surabaya', 'ESC Network', 1, 1472779034, 1472779034, 2, 18, 2, 1),
(226, 1338483600, 'ME5600231-0000', 'Zebex Barcode Scanner', 'C151H340413', 'EIN - IS Storage', 'testing', 1, 1472779034, 1472779034, 2, 4, 2, 1),
(227, 1338483600, 'ME5600232-0000', 'Zebex Barcode Scanner', 'C151H340412', 'EIN - Support', 'GA tools', 1, 1472779034, 1472779034, 2, 4, 2, 1),
(228, 1338483600, 'ME5600233-0000', 'Zebex Barcode Scanner', 'C151H340408', 'EIN - IS Storage', 'testing', 1, 1472779034, 1472779034, 2, 4, 2, 1),
(229, 1338483600, 'ME5600234-0000', 'Zebex Barcode Scanner', 'C151H340411', 'EIN - IS Storage', 'testing', 1, 1472779034, 1472779034, 2, 4, 2, 1),
(230, 1341075600, 'ME5600235-0000', ' Lenovo Ideapad S100', 'UB00120951', 'ESC - Pontianak', 'on site', 1, 1472779034, 1472779034, 2, 21, 2, 1),
(231, 1341075600, 'ME5600236-0000', ' Lenovo Ideapad S100', 'UB00120746', 'ESC - Medan', 'on site', 1, 1472779034, 1472779034, 2, 21, 2, 1),
(232, 1341075600, 'ME5600237-0000', ' Lenovo Ideapad S100', 'UB00120823', 'ESC - Surabaya', 'on site', 1, 1472779034, 1472779034, 2, 21, 2, 1),
(233, 1341075600, 'ME5600238-0000', ' Lenovo Ideapad S100', 'UB00121099', 'ESC - Yogyakarta', 'on site', 1, 1472779034, 1472779034, 2, 21, 2, 1),
(234, 1341075600, 'ME5600239-0000', ' Lenovo Ideapad S100', 'UB00120843', 'EIN - IS Storage', 'demo', 1, 1472779034, 1472779034, 2, 21, 2, 1),
(235, 1341075600, 'ME5600240-0000', ' Lenovo Ideapad S100', 'UB00121084', 'EIN - IS Storage', 'demo', 1, 1472779034, 1472779034, 2, 21, 2, 1),
(236, 1341075600, 'ME5600241-0000', ' Lenovo Ideapad S100', 'UB00121122', 'EIN - IS Storage', 'demo', 1, 1472779034, 1472779034, 2, 21, 2, 1),
(237, 1341075600, 'ME5600242-0000', ' Lenovo Ideapad S100', 'UB00120598', 'ESS - Semarang', 'on site', 1, 1472779034, 1472779034, 2, 21, 2, 1),
(238, 1341075600, 'ME5600244-0000', ' Lenovo Ideapad S100', 'UB00629089', 'EIN - IS Storage', 'demo', 1, 1472779034, 1472779034, 2, 21, 2, 1),
(239, 1341075600, 'ME5600245-0000', ' Lenovo Ideapad S100', 'UB00629209', 'EIN - IS Storage', 'demo', 1, 1472779035, 1472779035, 2, 21, 2, 1),
(240, 1341075600, 'ME5600246-0000', 'Shuttle X50V2', 'X50V2L0202B26F00162', 'ESC - Bandung', 'ESC workstation', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(241, 1341075600, 'ME5600247-0000', 'Shuttle X50V2', 'X50V2L0202B26F00287', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(242, 1341075600, 'ME5600248-0000', 'Shuttle X50V2', 'X50V2L0202B26F00066', 'ESC - Mangga Dua Mall', 'ESC workstation', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(243, 1341075600, 'ME5600249-0000', 'Shuttle X50V2', 'X50V2L0202B26F00172', 'ESC - Mangga Dua Mall', 'ESC workstation', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(244, 1341075600, 'ME5600250-0000', 'Shuttle X50V2', 'X50V2L0202B26F00255', 'ESC - Mangga Dua Mall', 'ESC workstation', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(245, 1341075600, 'ME5600251-0000', 'Shuttle X50V2', 'X50V2L0202B26F00265', 'ESC - Mangga Dua Mall', 'ESC workstation', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(246, 1341075600, 'ME5600252-0000', 'Shuttle X50V2', 'X50V2L0202B26F00138', 'ESC - Medan', 'ESC workstation', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(247, 1341075600, 'ME5600253-0000', 'Shuttle X50V2', 'X50V2L0202B26F00274', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(248, 1341075600, 'ME5600254-0000', 'Shuttle X50V2', 'X50V2L0202B26F00288', 'ESC - Medan', 'ESC workstation', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(249, 1341075600, 'ME5600255-0000', 'Shuttle X50V2', 'X50V2L0202B26F00177', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(250, 1341075600, 'ME5600256-0000', 'Shuttle X50V2', 'X50V2L0202B26F00014', 'ESC - Pontianak', 'ESC workstation', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(251, 1341075600, 'ME5600257-0000', 'Shuttle X50V2', 'X50V2L0202B26F00004', 'ESC - Pontianak', 'ESC workstation', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(252, 1341075600, 'ME5600258-0000', 'Shuttle X50V2', 'X50V2L0202B26F00178', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(253, 1341075600, 'ME5600259-0000', 'Shuttle X50V2', 'X50V2L0202B26F00235', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(254, 1341075600, 'ME5600260-0000', 'Shuttle X50V2', 'X50V2L0202B26F00272', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(255, 1341075600, 'ME5600261-0000', 'Shuttle X50V2', 'X50V2L0202B26F00189', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(256, 1341075600, 'ME5600262-0000', 'Shuttle X50V2', 'X50V2L0202B26F00267', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(257, 1341075600, 'ME5600263-0000', 'Shuttle X50V2', 'X50V2P1602C22F00020', 'EIN - Support', 'workstation', 2, 1472779035, 1472779035, 2, 25, 2, 1),
(258, 1341075600, 'ME5600264-0000', 'Shuttle X50V2', 'X50V2P1602C22F00022', 'EIN - Sales', 'workstation', 2, 1472779035, 1472779035, 2, 25, 2, 1),
(259, 1341075600, 'ME5600265-0000', 'Shuttle X50V2', 'X50V2P1602C22F00025', 'EIN - Support', 'Standalone PC for Scan', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(260, 1341075600, 'ME5600267-0000', 'Shuttle X50V2', 'X50V2L0202B26F00045', 'JKT - Warehouse', 'warehouse workstaion', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(261, 1341075600, 'ME5600268-0000', 'Shuttle X50V2', 'X50V2L0202B26F00144', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(262, 1341075600, 'ME5600269-0000', 'Shuttle X50V2', 'X50V2L0202B26F00169', 'EIN - Sales', 'workstation', 2, 1472779035, 1472779035, 2, 25, 2, 1),
(263, 1341075600, 'ME5600270-0000', 'Shuttle X50V2', 'X50V2L0202B26F00278', 'ESC - Samarinda', 'ESC workstation', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(264, 1341075600, 'ME5600271-0000', 'Shuttle X50V2', 'X50V2P1602C22F00004', 'EIN - Sales', 'workstation', 2, 1472779035, 1472779035, 2, 25, 2, 1),
(265, 1341075600, 'ME5600273-0000', 'Shuttle X50V2', 'X50V2L0402B26F00322', 'ESC - Mangga Dua Mall', 'Toko L Series', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(266, 1341075600, 'ME5600274-0000', 'Shuttle X50V2', 'X50V2L0202B26F00059', 'EIN - Sales', 'workstation', 2, 1472779035, 1472779035, 2, 25, 2, 1),
(267, 1341075600, 'ME5600275-0000', 'Shuttle X50V2', 'X50V2P1602C22F00013', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(268, 1341075600, 'ME5600276-0000', 'Shuttle X50V2', 'X50V2P1602C22F00017', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(269, 1341075600, 'ME5600277-0000', 'Shuttle X50V2', 'X50V2P1602C22F00008', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(270, 1341075600, 'ME5600279-0000', 'Shuttle X50V2', 'X50V2L0402B26F00093', 'EIN - IS Storage', 'exhibition', 1, 1472779035, 1472779035, 2, 25, 2, 1),
(271, 1341075600, 'ME5600280-0000', 'Shuttle X50V2', 'X50V2L0402B26F00163', 'EIN - Sales', 'workstation', 2, 1472779036, 1472779036, 2, 25, 2, 1),
(272, 1341075600, 'ME5600281-0000', 'Shuttle X50V2', 'X50V2L0202B26F00165', 'EIN - IS Storage', 'exhibition', 1, 1472779036, 1472779036, 2, 25, 2, 1),
(273, 1341075600, 'ME5600282-0000', 'Shuttle X50V2', 'X50V2L0202B26F00177', 'ESS - Semarang', 'ESC workstation', 1, 1472779036, 1472779036, 2, 25, 2, 1),
(274, 1341075600, 'ME5600283-0000', 'Shuttle X50V2', 'X50V2P1602C22F00023', 'ESS - Surabaya', 'ESC workstation', 1, 1472779036, 1472779036, 2, 25, 2, 1),
(275, 1341075600, 'ME5600284-0000', 'Shuttle X50V2', 'X50V2P1602C22F00001', 'EIN - IS Storage', 'exhibition', 1, 1472779036, 1472779036, 2, 25, 2, 1),
(276, 1341075600, 'ME5600285-0000', 'Shuttle X50V2', 'X50V2P1602C22F00014', 'EIN - Support', 'workstation', 1, 1472779036, 1472779036, 2, 25, 2, 1),
(277, 1341075600, 'ME5600286-0000', 'Shuttle X50V2', 'X50V2P1602C22F00018', 'EIN - Sales', 'workstation', 2, 1472779036, 1472779036, 2, 25, 2, 1),
(278, 1341075600, 'ME5600287-0000', 'Shuttle X50V2', 'X50V2P1602C22F00019', 'EIN - IS Storage', 'exhibition', 1, 1472779036, 1472779036, 2, 25, 2, 1),
(279, 1341075600, 'ME5600288-0000', 'Shuttle X50V2', 'X50V2L0202B26F00227', 'EIN - IS Storage', 'exhibition', 1, 1472779036, 1472779036, 2, 25, 2, 1),
(280, 1341075600, 'ME5600289-0000', 'Shuttle X50V2', 'X50V2P1602C22F00016', 'EIN - Support', 'workstation', 2, 1472779036, 1472779036, 2, 25, 2, 1),
(281, 1343754000, 'ME5600290-0000', 'Tablet Tablet Advan Vandroid', 'T2I7WC129091', 'EIN - IS Storage', 'ESC Tools', 1, 1472779036, 1472779036, 2, 37, 2, 1),
(282, 1343754000, 'ME5600291-0000', 'Tablet Tablet iPad 2 Wifi', 'DLXGCDG6DKNV', 'EIN - Support', 'demo', 2, 1472779036, 1472779036, 2, 37, 2, 1),
(283, 1349024400, 'ME5600292-0000', 'Zebex Barcode Scanner', 'D151H319300', 'EIN - IS Storage', 'testing', 1, 1472779036, 1472779036, 2, 4, 2, 1),
(284, 1349024400, 'ME5600293-0000', 'Zebex Barcode Scanner', 'D151H319301', 'EIN - IS Storage', 'testing', 1, 1472779036, 1472779036, 2, 4, 2, 1),
(285, 1349024400, 'ME5600294-0000', 'Zebex Barcode Scanner', 'D151H319302', 'EIN - Sales', 'ASAP Tools', 1, 1472779036, 1472779036, 2, 4, 2, 1),
(286, 1349024400, 'ME5600295-0000', 'Zebex Barcode Scanner', 'D151H319303', 'EIN - IS Storage', 'testing', 1, 1472779036, 1472779036, 2, 4, 2, 1),
(287, 1349024400, 'ME5600296-0000', 'Zebex Barcode Scanner', 'D151H319298', 'EIN - IS Storage', 'testing', 1, 1472779036, 1472779036, 2, 4, 2, 1),
(288, 1349024400, 'ME5600297-0000', 'Zebex Barcode Scanner', 'D151H319299', 'EIN - IS Storage', 'testing', 1, 1472779036, 1472779036, 2, 4, 2, 1),
(289, 1333213200, 'ME5600298-0000', 'Fujitsu Lifebook SH782', 'R3100834', 'EIN - IS Storage', 'backup', 1, 1472779036, 1472779036, 2, 21, 2, 1),
(290, 1367341200, 'ME5600302-0000', 'CHRONOS USB-VGA Adapter', '1011TRIF059645', 'EIN - IS Storage', 'testing', 1, 1472779036, 1472779036, 2, 6, 2, 1),
(291, 1367341200, 'ME5600303-0000', 'CHRONOS USB-VGA Adapter', '1011TRIF059749', 'EIN - IS Storage', 'testing', 1, 1472779036, 1472779036, 2, 6, 2, 1),
(292, 1367341200, 'ME5600304-0000', 'CHRONOS USB-VGA Adapter', '1105TRIF027821', 'EIN - IS Storage', 'testing', 1, 1472779036, 1472779036, 2, 6, 2, 1),
(293, 1367341200, 'ME5600305-0000', 'CHRONOS USB-VGA Adapter', '1010TRIF056791', 'EIN - IS Storage', 'testing', 1, 1472779036, 1472779036, 2, 6, 2, 1),
(294, 1367341200, 'ME5600306-0000', 'CHRONOS USB-VGA Adapter', '1010TRIF056927', 'EIN - IS Storage', 'testing', 1, 1472779036, 1472779036, 2, 6, 2, 1),
(295, 1367341200, 'ME5600307-0000', 'CHRONOS USB-VGA Adapter', '1011TRIF059599', 'EIN - IS Storage', 'testing', 1, 1472779036, 1472779036, 2, 6, 2, 1),
(296, 1367341200, 'ME5600308-0000', 'CHRONOS USB-VGA Adapter', '1010TRIF056856', 'EIN - IS Storage', 'testing', 1, 1472779036, 1472779036, 2, 6, 2, 1),
(297, 1367341200, 'ME5600309-0000', 'CHRONOS USB-VGA Adapter', '1011TRIF059582', 'EIN - IS Storage', 'testing', 1, 1472779037, 1472779037, 2, 6, 2, 1),
(298, 1367341200, 'ME5600310-0000', 'CHRONOS USB-VGA Adapter', '1010TRIF056920', 'EIN - IS Storage', 'testing', 1, 1472779037, 1472779037, 2, 6, 2, 1),
(299, 1367341200, 'ME5600311-0000', 'CHRONOS USB-VGA Adapter', '1010TRIF056903', 'EIN - IS Storage', 'testing', 1, 1472779037, 1472779037, 2, 6, 2, 1),
(300, 1367341200, 'ME5600312-0000', 'CHRONOS USB-VGA Adapter', '1010TRIF056915', 'EIN - IS Storage', 'testing', 1, 1472779037, 1472779037, 2, 6, 2, 1),
(301, 1367341200, 'ME5600313-0000', 'CHRONOS USB-VGA Adapter', '1010TRIF056952', 'EIN - IS Storage', 'testing', 1, 1472779037, 1472779037, 2, 6, 2, 1),
(302, 1367341200, 'ME5600314-0000', 'CHRONOS USB-VGA Adapter', '1011TRIF059589', 'EIN - IS Storage', 'testing', 1, 1472779037, 1472779037, 2, 6, 2, 1),
(303, 1367341200, 'ME5600315-0000', 'CHRONOS USB-VGA Adapter', '1011TRIF059572', 'EIN - IS Storage', 'testing', 1, 1472779037, 1472779037, 2, 6, 2, 1),
(304, 1367341200, 'ME5600316-0000', 'CHRONOS USB-VGA Adapter', '1010TRIF056891', 'EIN - IS Storage', 'testing', 1, 1472779037, 1472779037, 2, 6, 2, 1),
(305, 1367341200, 'ME5600317-0000', 'CHRONOS USB-VGA Adapter', '1010TRIF056895', 'EIN - IS Storage', 'testing', 1, 1472779037, 1472779037, 2, 6, 2, 1),
(306, 1367341200, 'ME5600318-0000', 'CHRONOS USB-VGA Adapter', '1011TRIF059575', 'EIN - IS Storage', 'testing', 1, 1472779037, 1472779037, 2, 6, 2, 1),
(307, 1367341200, 'ME5600319-0000', 'CHRONOS USB-VGA Adapter', '1010TRIF056923', 'EIN - IS Storage', 'testing', 1, 1472779037, 1472779037, 2, 6, 2, 1),
(308, 1367341200, 'ME5600320-0000', 'Lenovo USB Portable DVD Burner', '11S43N3265ZVJ5FR00030E', 'EIN - Support', 'IS Tools', 1, 1472779037, 1472779037, 2, 22, 2, 1),
(309, 1367341200, 'ME5600321-0000', 'Lenovo USB Portable DVD Burner', '11S43N3265ZVJ5ZM000L4U', 'EIN - Support', 'IS Tools', 1, 1472779037, 1472779037, 2, 22, 2, 1),
(310, 1367341200, 'ME5600323-0000', 'Lenovo USB Portable DVD Burner', '11S43N3265ZVJ5ZM000L5H', 'EIN - Support', 'IS Tools', 1, 1472779037, 1472779037, 2, 22, 2, 1),
(311, 1367341200, 'ME5600324-0000', 'Lenovo USB Portable DVD Burner', '11S43N3265ZVJ5ZM000L50', 'EIN - Support', 'IS Tools', 1, 1472779037, 1472779037, 2, 22, 2, 1),
(312, 1367341200, 'ME5600325-0000', 'Lenovo USB Portable DVD Burner', '11S43N3265ZVJ5ZM000L4Y', 'EIN - Support', 'IS Tools', 1, 1472779037, 1472779037, 2, 22, 2, 1),
(313, 1367341200, 'ME5600326-0000', 'Lenovo USB Portable DVD Burner', '11S43N3265ZVJ5ZM000L53', 'EIN - Support', 'IS Tools', 1, 1472779037, 1472779037, 2, 22, 2, 1),
(314, 1367341200, 'ME5600327-0000', 'Lenovo USB Portable DVD Burner', '11S43N3265ZVJ5ZM000L54', 'EIN - Support', 'IS Tools', 1, 1472779037, 1472779037, 2, 22, 2, 1),
(315, 1367341200, 'ME5600328-0000', 'Ureach DVD Duplicator', '0', 'EIN - Support', 'Duplicator', 1, 1472779038, 1472779038, 2, 8, 2, 1),
(316, 1367341200, 'ME5600330-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302969', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(317, 1367341200, 'ME5600331-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302970', 'EIN - Support', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(318, 1367341200, 'ME5600332-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302971', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(319, 1367341200, 'ME5600333-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302972', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(320, 1367341200, 'ME5600334-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302973', 'EIN - Support', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(321, 1367341200, 'ME5600335-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302974', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(322, 1367341200, 'ME5600336-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302975', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(323, 1367341200, 'ME5600337-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302976', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(324, 1367341200, 'ME5600338-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302977', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(325, 1367341200, 'ME5600339-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302978', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(326, 1367341200, 'ME5600340-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302979', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(327, 1367341200, 'ME5600341-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302980', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(328, 1367341200, 'ME5600342-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302981', 'EIN - Support', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(329, 1367341200, 'ME5600343-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302982', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(330, 1367341200, 'ME5600344-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302983', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(331, 1367341200, 'ME5600345-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302984', 'EIN - Support', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(332, 1367341200, 'ME5600346-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302985', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(333, 1367341200, 'ME5600347-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302986', 'EIN - Support', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(334, 1367341200, 'ME5600348-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302987', 'EIN - Support', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1);
INSERT INTO `inventories` (`id`, `acquisition`, `asset_number`, `description`, `serial_number`, `location`, `remark`, `available`, `created_at`, `modified_at`, `inventory_categories_id`, `inventory_types_id`, `inventory_status_id`, `flag`) VALUES
(335, 1367341200, 'ME5600350-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302989', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(336, 1367341200, 'ME5600351-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302990', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(337, 1367341200, 'ME5600352-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302991', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(338, 1367341200, 'ME5600353-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302992', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(339, 1367341200, 'ME5600354-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302993', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(340, 1367341200, 'ME5600355-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302994', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(341, 1367341200, 'ME5600356-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302995', 'EIN - Sales', 'backup', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(342, 1367341200, 'ME5600357-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302996', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(343, 1367341200, 'ME5600358-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302997', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(344, 1367341200, 'ME5600359-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302998', 'EIN - Sales', 'workstation', 2, 1472779038, 1472779038, 2, 21, 2, 1),
(345, 1367341200, 'ME5600360-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3302999', 'EIN - Sales', 'workstation', 2, 1472779039, 1472779039, 2, 21, 2, 1),
(346, 1367341200, 'ME5600361-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3303000', 'EIN - Sales', 'workstation', 2, 1472779039, 1472779039, 2, 21, 2, 1),
(347, 1367341200, 'ME5600362-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3303001', 'EIN - Support', 'workstation', 2, 1472779039, 1472779039, 2, 21, 2, 1),
(348, 1367341200, 'ME5600363-0000', 'Fujitu Lifebook U772 Ultrabook', 'R3303002', 'EIN - Sales', 'workstation', 2, 1472779039, 1472779039, 2, 21, 2, 1),
(349, 1367341200, 'ME5600366-0000', 'D-Link  DES-10008A', 'QB201B8019513', 'EIN - GA Storage', 'West Side Network', 1, 1472779039, 1472779039, 2, 20, 2, 1),
(350, 1367341200, 'ME5600367-0000', 'Network Network Switch TP-Link TL-SG1048 48 port', '12666600153', 'EIN - GA Storage', 'West Side Network', 1, 1472779039, 1472779039, 2, 20, 2, 1),
(351, 1367341200, 'ME5600368-0000', 'Network Network Switch TP-Link TL-SG1048 48 port', '12666600154', 'EIN - server', 'EIN - Network', 1, 1472779039, 1472779039, 2, 20, 2, 1),
(352, 1367341200, 'ME5600369-0000', 'Network Network Switch TP-Link TL-SG1048 48 port', '12666600155', 'EIN - server', 'EIN - Network', 1, 1472779039, 1472779039, 2, 20, 2, 1),
(353, 1367341200, 'ME5600370-0000', 'Network Network Switch TP-Link TL-SG1048 48 port', '12261000010', 'EIN - IS Storage', 'backup', 1, 1472779039, 1472779039, 2, 20, 2, 1),
(354, 1367341200, 'ME5600372-0000', 'Network Network TP-LINK USB Print server TL-PS11', '11B94301931''', 'EIN - IS Storage', 'testing', 1, 1472779039, 1472779039, 2, 28, 2, 1),
(355, 1367341200, 'ME5600373-0000', 'LCD Lenovo D186WA', 'V1HH364', 'EIN - IS Storage', 'exhibition', 1, 1472779039, 1472779039, 2, 14, 2, 1),
(356, 1367341200, 'ME5600375-0000', 'Mikrotik RB450G', '33B602043DEF', 'EIN - server', 'EIN Network', 1, 1472779039, 1472779039, 2, 33, 2, 1),
(357, 1367341200, 'ME5600376-0000', 'VGA Switch VGA Switch 4 port HD15-4', '0', 'EIN - IS Storage', 'testing', 1, 1472779039, 1472779039, 2, 44, 2, 1),
(358, 1367341200, 'ME5600377-0000', 'D-Link Cloud Router', 'R3FJ1C3001581', 'ESS - Semarang', 'ESC Network', 1, 1472779039, 1472779039, 2, 3, 2, 1),
(359, 1367341200, 'SW5600378-0000', 'Software License Winpro 7 Singl OLP NL array(get genuine)', '0', 'EIN - IS Locker', 'EIN - Application', 1, 1472779039, 1472779039, 2, 34, 2, 1),
(360, 1367341200, 'SW5600379-0000', 'Software AutoCAD LT 2010 License', '35347340330', 'EIN - IS Locker', 'EIN - Application', 1, 1472779039, 1472779039, 2, 34, 2, 1),
(361, 1367341200, 'ME5600380-0000', 'Printer Printer L210/RAEK075618', 'RAEK075618', 'EIN - Sales', 'workstation', 2, 1472779039, 1472779039, 2, 29, 2, 1),
(362, 1367341200, 'ME5600381-0000', 'Printer Epson SP1390', 'NLRY020903', 'EIN - Support', 'Printer Sharing', 1, 1472779039, 1472779039, 2, 29, 2, 1),
(363, 1367341200, 'ME5600382-0000', 'Printer Printer L355/S46K002009', 'S46K002009', 'EIN - Support', 'Printer Sharing', 1, 1472779039, 1472779039, 2, 29, 2, 1),
(364, 1367341200, 'ME5600383-0000', 'Printer Printer LX-50/PGTY000244', 'PGTY000244', 'ESC - Mangga Dua Mall', 'Toko L Series', 1, 1472779039, 1472779039, 2, 29, 2, 1),
(365, 1367341200, 'ME5600384-0000', 'Printer Printer L550/S4RY002400', 'S4RY002400', 'EIN - Sales', 'Printer Sharing', 1, 1472779039, 1472779039, 2, 29, 2, 1),
(366, 1367341200, 'ME5600385-0000', 'Printer Printer L355/S46K008093', 'S46K008093', 'EIN - Support', 'Printer Sharing', 1, 1472779039, 1472779039, 2, 29, 2, 1),
(367, 1367341200, 'ME5600386-0000', 'Printer Printer L550/S4RY003257', 'S4RY003257', 'EIN - Support', 'Printer Sharing', 1, 1472779039, 1472779039, 2, 29, 2, 1),
(368, 1388509200, 'ME5600387-0000', 'Ruckus ZoneFlex 7363', '911403001886', 'EIN - Support', 'EIN - Network', 1, 1472779039, 1472779039, 2, 1, 2, 1),
(369, 1388509200, 'ME5600388-0000', 'Ruckus ZoneFlex 7363', '911403001666', 'EIN - Sales', 'EIN - Network', 1, 1472779039, 1472779039, 2, 1, 2, 1),
(370, 1388509200, 'ME5600389-0000', 'Ruckus ZoneFlex 7363', '911403001730', 'EIN - Support', 'EIN - Network', 1, 1472779039, 1472779039, 2, 1, 2, 1),
(371, 1388509200, 'ME5600390-0000', 'Ruckus ZoneFlex 7363', '911403001764', 'EIN - Sales', 'EIN - Network', 1, 1472779039, 1472779039, 2, 1, 2, 1),
(372, 1388509200, 'ME5600391-0000', 'Ruckus ZoneDirector 1106', '161323000245', 'EIN - server', 'EIN - Network', 1, 1472779039, 1472779039, 2, 1, 2, 1),
(373, 1393606800, 'ME5600392-0000', 'Display Port To VGA', '0', 'EIN - IS Storage', 'testing', 1, 1472779040, 1472779040, 2, 6, 2, 1),
(374, 1393606800, 'ME5600393-0000', 'Display Port To VGA', '0', 'EIN - IS Storage', 'testing', 1, 1472779040, 1472779040, 2, 6, 2, 1),
(375, 1393606800, 'ME5600394-0000', 'Display Port To VGA', '0', 'EIN - IS Storage', 'testing', 1, 1472779040, 1472779040, 2, 6, 2, 1),
(376, 1393606800, 'ME5600395-0000', 'Display Port To VGA', '0', 'EIN - IS Storage', 'testing', 1, 1472779040, 1472779040, 2, 6, 2, 1),
(377, 1393606800, 'ME5600396-0000', 'Display Port To VGA', '0', 'EIN - IS Storage', 'testing', 1, 1472779040, 1472779040, 2, 6, 2, 1),
(378, 1393606800, 'ME5600397-0000', 'Display Port To VGA', '0', 'EIN - IS Storage', 'testing', 1, 1472779040, 1472779040, 2, 6, 2, 1),
(379, 1393606800, 'ME5600398-0000', 'Epson Printer L550 array(GA)', 'S4RY005301', 'EIN - Support', 'Printer Sharing', 1, 1472779040, 1472779040, 2, 29, 2, 1),
(380, 1393606800, 'ME5600399-0000', 'Sharkoon Quick Port XT Duo', '10131082010060100', 'EIN - server', 'backup tools', 1, 1472779040, 1472779040, 2, 10, 2, 1),
(381, 1393606800, 'ME5600400-0000', 'Sharkoon Quick Port XT Duo', '10131082010060113', 'EIN - Support', 'backup tools', 2, 1472779040, 1472779040, 2, 10, 2, 1),
(382, 1393606800, 'ME5600401-0000', 'Clear One Chat 50', '0650-1343-08', 'EIN - IS Storage', 'video conference system', 1, 1472779040, 1472779040, 2, 42, 2, 1),
(383, 1393606800, 'ME5600402-0000', 'Logitech Camera C920', '1335LZ04AZN9', 'EIN - Sales', 'testing', 1, 1472779040, 1472779040, 2, 45, 2, 1),
(384, 1393606800, 'ME5600403-0000', 'Kinect for Windows', '0', 'EIN - IS Storage', 'testing', 1, 1472779040, 1472779040, 2, 16, 2, 1),
(385, 1393606800, 'ME5600404-0000', 'UDP Paralel Power', '0', 'EIN - server', 'EIN - Network', 1, 1472779040, 1472779040, 2, 39, 2, 1),
(386, 1393606800, 'ME5600405-0000', 'UDP Paralel Power', '0', 'EIN - server', 'EIN - Network', 1, 1472779040, 1472779040, 2, 39, 2, 1),
(387, 1393606800, 'ME5600406-0000', 'UDP Paralel Power', '0', 'EIN - server', 'EIN - Network', 1, 1472779040, 1472779040, 2, 39, 2, 1),
(388, 1393606800, 'ME5600407-0000', 'D-Link DIR 615', 'QX201D6000332', 'EIN - Support', 'EIN-ISDlink', 1, 1472779040, 1472779040, 2, 3, 2, 1),
(389, 1393606800, 'ME5600408-0000', 'D-Link DIR 615', 'QX201D6005989', 'EIN - IS Storage', 'testing', 1, 1472779040, 1472779040, 2, 3, 2, 1),
(390, 1393606800, 'ME5600409-0000', 'D-Link DIR 615', 'QX201D6000338', 'EIN - IS Storage', 'testing', 1, 1472779040, 1472779040, 2, 3, 2, 1),
(391, 1393606800, 'ME5600410-0000', 'Punktal Net Toner', '0', 'EIN - server', 'EIN - Network Tools', 1, 1472779040, 1472779040, 2, 38, 2, 1),
(392, 1393606800, 'ME5600411-0000', 'LG-Flatron W1953SV', '104INCNA4363', 'EIN - Support', 'workstation', 2, 1472779040, 1472779040, 2, 14, 2, 1),
(393, 1393606800, 'ME5600412-0000', 'LG-Flatron W1953SV', '104INJLA4380', 'EIN - IS Storage', 'exhibition', 1, 1472779040, 1472779040, 2, 14, 2, 1),
(394, 1393606800, 'ME5600413-0000', 'LG-Flatron W1953SV', '104INYDA4866', 'EIN - IS Storage', 'exhibition', 1, 1472779040, 1472779040, 2, 14, 2, 1),
(395, 1393606800, 'ME5600414-0000', 'LG-Flatron W1953SV', '104INGQ8V631', 'ESS - Semarang', 'testing', 2, 1472779040, 1472779040, 2, 14, 2, 1),
(396, 1393606800, 'ME5600415-0000', 'LCD Touchscreen ACER', 'ETLHZ0C009113132D34032', 'EIN - IS Storage', 'testing', 1, 1472779040, 1472779040, 2, 13, 2, 1),
(397, 1393606800, 'ME5600421-0000', 'ATEN KVMP CS1708A', 'A1C6Y270EEN0156', 'EIN - IS Storage', 'backup', 1, 1472779040, 1472779040, 2, 12, 2, 1),
(398, 1393606800, 'ME5600422-0000', 'VGA Splitter', '1920X1440', 'EIN - IS Storage', 'testing', 1, 1472779040, 1472779040, 2, 36, 2, 1),
(399, 1393606800, 'ME5600423-0000', 'Lenovo USB Portable DVD Burner', '11S43N3265ZVJ5ZM000L5H', 'EIN - Support', 'IS Tools', 1, 1472779040, 1472779040, 2, 22, 2, 1),
(400, 1393606800, 'ME5600424-0000', 'Lenovo USB Portable DVD Burner', '11S43N3265ZVJ5FR00030D', 'EIN - Support', 'IS Tools', 1, 1472779040, 1472779040, 2, 22, 2, 1),
(401, 1393606800, 'ME5600426-0000', 'Shuttle X50V2', 'X50V2L0402B26F00079', 'EIN - IS Storage', 'exhibition', 1, 1472779040, 1472779040, 2, 25, 2, 1),
(402, 1404147600, 'ME5600428-0000', 'Express Card To Paralel', '0', 'EIN - Support', 'testing', 2, 1472779040, 1472779040, 2, 27, 2, 1),
(403, 1404147600, 'ME5600429-0000', 'Express Card To Paralel', '0', 'EIN - IS Storage', 'testing', 1, 1472779041, 1472779041, 2, 27, 2, 1),
(404, 1404147600, 'ME5600430-0000', 'Express Card To Paralel', '0', 'EIN - IS Storage', 'testing', 1, 1472779041, 1472779041, 2, 27, 2, 1),
(405, 1404147600, 'ME5600431-0000', 'Express Card To Paralel', '0', 'EIN - IS Storage', 'testing', 1, 1472779041, 1472779041, 2, 27, 2, 1),
(406, 1404147600, 'ME5600432-0000', 'Express Card To Serial', '0', 'EIN - IS Storage', 'testing', 1, 1472779041, 1472779041, 2, 27, 2, 1),
(407, 1404147600, 'ME5600433-0000', 'Express Card To Serial', '0', 'EIN - IS Storage', 'testing', 1, 1472779041, 1472779041, 2, 27, 2, 1),
(408, 1406826000, 'ME5600434-0000', 'TP Link TDW 8901 N', '13C71502886', 'ESS - Surabaya', 'ESC Network', 1, 1472779041, 1472779041, 2, 18, 2, 1),
(409, 1406826000, 'ME5600435-0000', 'Patch Panel 24 port', '0', 'EIN - server', 'EIN - Network', 1, 1472779041, 1472779041, 2, 24, 2, 1),
(410, 1406826000, 'ME5600436-0000', 'Wiring Management 1 U', '0', 'EIN - server', 'EIN - Network', 2, 1472779041, 1472779041, 2, 46, 2, 1),
(411, 1406826000, 'ME5600437-0000', 'Wiring Management 1 U', '0', 'EIN - server', 'EIN - Network', 2, 1472779041, 1472779041, 2, 46, 2, 1),
(412, 1406826000, 'ME5600438-0000', 'Wiring Management 1 U', '0', 'EIN - server', 'EIN - Network', 2, 1472779041, 1472779041, 2, 46, 2, 1),
(413, 1406826000, 'ME5600439-0000', 'Wiring Management 1 U', '0', 'EIN - server', 'EIN - Network', 2, 1472779041, 1472779041, 2, 46, 2, 1),
(414, 1406826000, 'ME5600440-0000', 'Wiring Management 1 U', '0', 'EIN - server', 'EIN - Network', 2, 1472779041, 1472779041, 2, 46, 2, 1),
(415, 1406826000, 'ME5600441-0000', 'Wiring Management 1 U', '0', 'EIN - server', 'EIN - Network', 2, 1472779041, 1472779041, 2, 46, 2, 1),
(416, 1406826000, 'ME5600442-0000', 'Magnetic Strip Reader', '''215140102537', 'EIN - Sales', 'testing', 1, 1472779041, 1472779041, 2, 15, 2, 1),
(417, 1406826000, 'ME5600443-0000', 'Sun Android Smart TV Box', '0', 'EIN - IS Storage', 'testing', 1, 1472779041, 1472779041, 2, 17, 2, 1),
(418, 1406826000, 'ME5600444-0000', 'EZCast HDMI', '0', 'EIN - IS Locker', 'testing', 1, 1472779041, 1472779041, 2, 6, 2, 1),
(419, 1406826000, 'ME5600445-0000', 'EZCast HDMI', '0', 'EIN - IS Locker', 'testing', 1, 1472779041, 1472779041, 2, 6, 2, 1),
(420, 1406826000, 'ME5600446-0000', 'TP Link TL WR702N', '12485409839', 'EIN - IS Storage', 'testing', 1, 1472779041, 1472779041, 2, 18, 2, 1),
(421, 1406826000, 'ME5600447-0000', 'TP Link TL WR702N', '12485409792', 'EIN - Support', 'testing', 1, 1472779041, 1472779041, 2, 18, 2, 1),
(422, 1406826000, 'ME5600448-0000', 'Logitech Speacker Z120', 'CP410', 'EIN - IS Storage', 'demo', 1, 1472779041, 1472779041, 2, 35, 2, 1),
(423, 1406826000, 'ME5600449-0000', 'Lenovo A316i', 'HJ1EN21', 'EIN - IS Storage', 'will be dispose', 1, 1472779041, 1472779041, 2, 37, 1, 1),
(424, 1406826000, 'ME5600450-0000', 'Lenovo Tablet A3300-GV', 'HGC4VP1Z', 'EIN - IS Storage', 'exhibition', 1, 1472779041, 1472779041, 2, 37, 2, 1),
(425, 1406826000, 'ME5600451-0000', 'Lenovo Tablet A3300-GV', 'HGC4VP3C', 'EIN - IS Storage', 'exhibition', 1, 1472779041, 1472779041, 2, 37, 2, 1),
(426, 1406826000, 'ME5600452-0000', 'Lenovo Tablet A3300-GV', 'HGC4VM5J', 'EIN - IS Storage', 'exhibition', 1, 1472779041, 1472779041, 2, 37, 2, 1),
(427, 1406826000, 'ME5600453-0000', 'Lenovo Tablet A3300-GV', 'HGC4VM6W', 'EIN - IS Storage', 'exhibition', 1, 1472779041, 1472779041, 2, 37, 2, 1),
(428, 1406826000, 'ME5600454-0000', 'Cash Drawer WD 420', '420140200028', 'EIN - IS Storage', 'testing', 1, 1472779041, 1472779041, 2, 5, 2, 1),
(429, 1406826000, 'ME5600455-0000', 'Zyrex onePad SP1110', 'ONE10N0061', 'EIN - IS Storage', 'exhibition', 1, 1472779041, 1472779041, 2, 37, 2, 1),
(430, 1406826000, 'ME5600456-0000', 'HP Slate 21-K100 All In One', '3CQ33920VJ', 'EIN - IS Storage', 'testing', 1, 1472779041, 1472779041, 2, 25, 2, 1),
(431, 1412096400, 'ME5600457-0000', 'TP-Link TD-W8951ND', '2145421004235', 'ESC - Bandung', 'ESC Network', 1, 1472779042, 1472779042, 2, 18, 2, 1),
(432, 1412096400, 'ME5600458-0000', 'TP-Link TD-W8951ND', '2145421004231', 'ESS - Semarang', 'ESC Network', 1, 1472779042, 1472779042, 2, 18, 2, 1),
(433, 1412096400, 'ME5600460-0000', 'Mikrotik RB450G', '33B6047A0E13', 'ESS - Surabaya', 'ESC Network', 1, 1472779042, 1472779042, 2, 33, 2, 1),
(434, 1412096400, 'ME5600461-0000', 'Mikrotik RB450G', '33B6043371A7', 'EIN - IS Storage', 'backup', 1, 1472779042, 1472779042, 2, 33, 2, 1),
(435, 1412096400, 'ME5600462-0000', 'Mikrotik RB450G', '33B60437DE25', 'ESC - Bandung', 'ESC Network', 1, 1472779042, 1472779042, 2, 33, 2, 1),
(436, 1412096400, 'ME5600463-0000', 'Mikrotik RB450G', '33B604A5EFE7', 'ESS - Jakarta', 'ESC Network', 1, 1472779042, 1472779042, 2, 33, 2, 1),
(437, 1412096400, 'ME5600464-0000', 'Epson Printer L355', 'S46K019671', 'ESC - Madiun', 'Printer Sharing', 2, 1472779042, 1472779042, 2, 29, 2, 1),
(438, 1412096400, 'ME5600465-0000', 'Epson Printer L355', 'S46K019674', 'EIN - Sales', 'Printer Sharing', 2, 1472779042, 1472779042, 2, 29, 2, 1),
(439, 1412096400, 'ME5600466-0000', 'Epson Printer L355', 'S46K019689', 'EIN - Support', 'Printer Sharing', 1, 1472779042, 1472779042, 2, 29, 2, 1),
(440, 1412096400, 'ME5600467-0000', 'Epson Printer L355', 'S46K019692', 'ESC - Purwokerto', 'workstation', 2, 1472779042, 1472779042, 2, 29, 2, 1),
(441, 1388509200, 'ME5600468-0000', 'Wireless Access Point TP-Link TL-WA801ND', '2148116006185', 'ESS - Surabaya', 'ESC Network', 1, 1472779042, 1472779042, 2, 3, 2, 1),
(442, 1388509200, 'ME5600469-0000', 'Wireless Access Point TP-Link TL-WA801ND', '2148116006194', 'ESC - Bandung', 'ESC Network', 1, 1472779042, 1472779042, 2, 3, 2, 1),
(443, 1388509200, 'ME5600471-0000', 'Linksys E2500', '10A30C63409183', 'ESS - Jakarta', 'ESC Network', 1, 1472779042, 1472779042, 2, 3, 2, 1),
(444, 1388509200, 'ME5600472-0000', 'Linksys E2500', '10A30C63409191', 'ESC - Medan', 'ESC Network', 1, 1472779042, 1472779042, 2, 3, 2, 1),
(445, 1388509200, 'ME5600473-0000', 'Epson Printer WF7511', 'MXYY0011920', 'EIN - Support', 'Printer Sharing', 1, 1472779042, 1472779042, 2, 29, 2, 1),
(446, 1388509200, 'ME5600474-0000', 'Epson Printer TM-C3400BK', 'RCHF000127', 'JKT - Warehouse', 'warehouse workstaion', 1, 1472779042, 1472779042, 2, 29, 2, 1),
(447, 1388509200, 'ME5600475-0000', 'Epson Projector EB-1955', 'RLKF470114L', 'EIN - Support', 'EIN - MD Room', 1, 1472779042, 1472779042, 2, 30, 2, 1),
(448, 1420045200, 'ME5600476-0000', 'Epson Printer WF3521', 'QZQY103806', 'ESS - Jakarta', 'ESC workstation', 1, 1472779042, 1472779042, 2, 29, 2, 1),
(449, 1422723600, 'SW5600477-0000', 'License Corel Draw Graphic Suite X7', 'LCCDGSX7ML2', 'EIN - IS Locker', 'testing - support', 1, 1472779042, 1472779042, 2, 34, 2, 1),
(450, 1422723600, 'SW5600478-0000', 'License MS Visio 2013 Std', '64697280', 'EIN - IS Locker', 'testing - support', 1, 1472779042, 1472779042, 2, 34, 2, 1),
(451, 1362070800, 'ME5600479-0000', 'TP-Link TL-SG1024', '0', 'ESS - Surabaya', 'ESC Network', 1, 1472779042, 1472779042, 2, 20, 2, 1),
(452, 1362070800, 'ME5600480-0000', 'TP-Link TL-SG1016', '0', 'ESC - Bandung', 'ESC Network', 1, 1472779042, 1472779042, 2, 20, 2, 1),
(453, 1362070800, 'ME5600481-0000', 'Dlink switch 8 port', '0', 'ESC - Bandung', 'ESC Network', 1, 1472779042, 1472779042, 2, 20, 2, 1),
(454, 1362070800, 'ME5600482-0000', 'Mifi Modem Router Smartfren Rev B', '20140426', 'ESC - Bandung', 'Toko L Series', 1, 1472779042, 1472779042, 2, 18, 2, 1),
(455, 1362070800, 'ME5600483-0000', 'SMARTFREN TR8881', 'C007201312608506603', 'EIN - IS Locker', 'IS Tools', 1, 1472779042, 1472779042, 2, 18, 2, 1),
(456, 1362070800, 'ME5600484-0000', 'SMARTFREN TR8881', 'C007201312608506629', 'EIN - IS Locker', 'IS Tools', 1, 1472779042, 1472779042, 2, 18, 2, 1),
(457, 1362070800, 'ME5600485-0000', 'Mifi GSM/CDMA ZTE AC30', '0', 'EIN - IS Locker', 'EIN Out Office Network', 1, 1472779042, 1472779042, 2, 18, 2, 1),
(458, 1362070800, 'ME5600486-0000', 'Mifi GSM/CDMA ZTE AC30', '0', 'EIN - IS Locker', 'EIN Out Office Network', 1, 1472779042, 1472779042, 2, 18, 2, 1),
(459, 1362070800, 'ME5600487-0000', 'Mifi GSM/CDMA ZTE AC30', '0', 'EIN - IS Locker', 'EIN Out Office Network', 1, 1472779042, 1472779042, 2, 18, 2, 1),
(460, 1362070800, 'ME5600488-0000', 'Mifi GSM/CDMA ZTE AC30', '0', 'EIN - IS Locker', 'EIN Out Office Network', 1, 1472779043, 1472779043, 2, 18, 2, 1),
(461, 1362070800, 'ME5600489-0000', 'Mifi GSM/CDMA ZTE AC30', '0', 'EIN - IS Locker', 'EIN Out Office Network', 1, 1472779043, 1472779043, 2, 18, 2, 1),
(462, 1362070800, 'ME5600492-0000', 'Jabra UC Voice 150 MS Duo', '0', 'EIN - IS Locker', 'video conference system', 1, 1472779043, 1472779043, 2, 11, 2, 1),
(463, 1362070800, 'ME5600493-0000', 'Jabra UC Voice 150 MS Duo', '0', 'EIN - IS Locker', 'video conference system', 1, 1472779043, 1472779043, 2, 11, 2, 1),
(464, 1362070800, 'ME5600494-0000', 'Fortunarack 19 550mm', '0', 'EIN - GA Storage', 'For ESC Network', 1, 1472779043, 1472779043, 2, 31, 2, 1),
(465, 1362070800, 'ME5600495-0000', 'Fortunarack 19 550mm', '0', 'EIN - GA Storage', 'For ESC Network', 1, 1472779043, 1472779043, 2, 31, 2, 1),
(466, 1362070800, 'ME5600496-0000', 'Fortunarack 19 550mm', '0', 'EIN - GA Storage', 'For ESC Network', 1, 1472779043, 1472779043, 2, 31, 2, 1),
(467, 1362070800, 'ME5600497-0000', 'Fortunarack 19 550mm', '0', 'EIN - GA Storage', 'For ESC Network', 1, 1472779043, 1472779043, 2, 31, 2, 1),
(468, 1362070800, 'ME5600498-0000', 'TP Link TD8817', '2145108003549', 'EIN - IS Storage', 'testing', 1, 1472779043, 1472779043, 2, 18, 2, 1),
(469, 1362070800, 'ME5600501-0000', 'TP Link TD8817', '2145108003556', 'ESC - Pekanbaru', 'ESC Network', 1, 1472779043, 1472779043, 2, 18, 2, 1),
(470, 1362070800, 'ME5600502-0000', 'TP-Link TL-SG1016', '214B396001415', 'EIN - IS Storage', 'backup', 1, 1472779043, 1472779043, 2, 20, 2, 1),
(471, 1362070800, 'ME5600503-0000', 'TP-Link TL-SG1016', '2147075001697', 'EIN - IS Storage', 'backup', 1, 1472779043, 1472779043, 2, 20, 2, 1),
(472, 1362070800, 'ME5600504-0000', 'TP-Link TL-SG1016', '214B396001416', 'EIN - IS Storage', 'backup', 1, 1472779043, 1472779043, 2, 20, 2, 1),
(473, 1362070800, 'ME5600505-0000', 'TP-Link TL-SG1016', '241B396001412', 'EIN - IS Storage', 'backup', 1, 1472779043, 1472779043, 2, 20, 2, 1),
(474, 1362070800, 'ME5600506-0000', 'Mikrotik RB450G', '33B6041E1488', 'ESC - Yogyakarta', 'ESC Network', 1, 1472779043, 1472779043, 2, 33, 2, 1),
(475, 1362070800, 'ME5600507-0000', 'Mikrotik RB450G', '33B604F2C601', 'EIN - IS Storage', 'backup', 1, 1472779043, 1472779043, 2, 33, 2, 1),
(476, 1362070800, 'ME5600508-0000', 'Mikrotik RB450G', '33B604B52D11', 'EIN - IS Storage', 'backup', 1, 1472779043, 1472779043, 2, 33, 2, 1),
(477, 1362070800, 'ME5600509-0000', 'Mikrotik RB450G', '33B6045F3BE3', 'EIN - IS Storage', 'backup', 1, 1472779043, 1472779043, 2, 33, 2, 1),
(478, 1362070800, 'ME5600510-0000', 'Linksys E2500', '10A30C61416401', 'ESC - Samarinda', 'ESC Network', 1, 1472779043, 1472779043, 2, 3, 2, 1),
(479, 1362070800, 'ME5600511-0000', 'Linksys E2500', '10A30C62403856', 'EIN - IS Storage', 'testing', 1, 1472779043, 1472779043, 2, 3, 2, 1),
(480, 1362070800, 'ME5600512-0000', 'Linksys E2500', '10A30C62403884', 'ESS - Jakarta', 'ESC Network', 1, 1472779043, 1472779043, 2, 3, 2, 1),
(481, 1362070800, 'ME5600513-0000', 'Linksys E2500', '10A30C62403877', 'ESC - Pontianak', 'ESC Network', 1, 1472779043, 1472779043, 2, 3, 2, 1),
(482, 1362070800, 'ME5600514-0000', 'Panasonic KXTES824', '4JCTB030378', 'EIN - IS Storage', 'backup', 1, 1472779043, 1472779043, 2, 23, 2, 1),
(483, 1362070800, 'ME5600515-0000', 'Panasonic KXTES824', '4JCTB030476', 'ESS - Surabaya', 'ESC Network', 1, 1472779043, 1472779043, 2, 23, 2, 1),
(484, 1362070800, 'ME5600516-0000', 'Panasonic KX-TES824', '4JCTB030672', 'ESS - Semarang', 'ESC Network', 1, 1472779043, 1472779043, 2, 23, 2, 1),
(485, 1362070800, 'ME5600517-0000', 'Panasonic KXTES824', '4JCTB030926', 'EIN - IS Storage', 'backup', 1, 1472779043, 1472779043, 2, 23, 2, 1),
(486, 1362070800, 'ME5600518-0000', 'Lenovo Tablet A3300-GV', 'HGE8HNTJ', 'EIN - IS Storage', 'exhibition', 1, 1472779043, 1472779043, 2, 37, 2, 1),
(487, 1362070800, 'ME5600519-0000', 'Lenovo Tablet A3300-GV', 'HGE8HTKJ', 'EIN - IS Storage', 'exhibition', 1, 1472779043, 1472779043, 2, 37, 2, 1),
(488, 1362070800, 'ME5600520-0000', 'Lenovo Tablet A3300-GV', 'HGE8HQQO', 'EIN - IS Storage', 'exhibition', 1, 1472779044, 1472779044, 2, 37, 2, 1),
(489, 1362070800, 'ME5600521-0000', 'Lenovo Tablet A3300-GV', 'HGE8HNWB', 'EIN - IS Storage', 'exhibition', 1, 1472779044, 1472779044, 2, 37, 2, 1),
(490, 1362070800, 'ME5600522-0000', 'Lenovo Edge 73Z D1IA', 'S1H01MUB', 'ESS - Jakarta', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(491, 1362070800, 'ME5600523-0000', 'Lenovo Edge 73Z D1IA', 'S1H01MUZ', 'ESS - Jakarta', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(492, 1362070800, 'ME5600524-0000', 'Lenovo Edge 73Z D1IA', 'S1H01MVW', 'ESC - Pontianak', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(493, 1362070800, 'ME5600525-0000', 'Lenovo Edge 73Z D1IA', 'S1H01MRY', 'ESS - Serpong', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(494, 1362070800, 'ME5600526-0000', 'Lenovo Edge 73Z D1IA', 'S1H01MRV', 'ESC - Bandung', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(495, 1362070800, 'ME5600527-0000', 'Lenovo Edge 73Z D1IA', 'S1H01MS9', 'ESC - Medan', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(496, 1362070800, 'ME5600528-0000', 'Lenovo Edge 73Z D1IA', 'S1H01MS8', 'ESS - Semarang', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(497, 1362070800, 'ME5600529-0000', 'Lenovo Edge 73Z D1IA', 'S1H01MU1', 'ESS - Surabaya', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(498, 1362070800, 'ME5600530-0000', 'Lenovo Edge 73Z D1IA', 'S1H01MUU', 'ESS - Surabaya', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(499, 1362070800, 'ME5600531-0000', 'Lenovo Edge 73Z D1IA', 'S1H01MW0', 'ESC - Yogyakarta', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(500, 1362070800, 'ME5600532-0000', 'Lenovo Edge 73Z D1IA', 'S1H01MRV', 'ESC - Bandung', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(501, 1362070800, 'ME5600533-0000', 'Lenovo Edge 73Z D1IA', 'S1H01MU5', 'ESC - Surabaya', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(502, 1362070800, 'ME5600534-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC01SCBH', 'ESS - Jakarta', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(503, 1362070800, 'ME5600535-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC01SCAR', 'ESS - Jakarta', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(504, 1362070800, 'ME5600536-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC007P4F', 'ESC - Pekanbaru', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(505, 1362070800, 'ME5600537-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC01SCBC', 'ESC - Makassar', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(506, 1362070800, 'ME5600538-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC01SCB7', 'ESS - Surabaya', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(507, 1362070800, 'ME5600539-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC007P4K', 'ESS - Surabaya', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(508, 1362070800, 'ME5600540-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC01SCBE', 'ESS - Serpong', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(509, 1362070800, 'ME5600541-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC018D3G', 'ESC - Medan', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(510, 1362070800, 'ME5600542-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC01SCCS', 'ESS - Semarang', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(511, 1362070800, 'ME5600543-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC01SCBJ', 'ESS - Semarang', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(512, 1362070800, 'ME5600544-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC007P4R', 'ESC - Bandung', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(513, 1362070800, 'ME5600545-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC018CTZ', 'ESC - Yogyakarta', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(514, 1362070800, 'ME5600546-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC01SCB5', 'ESC - Palembang', 'ESC workstation', 1, 1472779044, 1472779044, 2, 25, 2, 1),
(515, 1362070800, 'ME5600547-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC007P4T', 'ESS - Serpong', 'ESC workstation', 1, 1472779045, 1472779045, 2, 25, 2, 1),
(516, 1362070800, 'ME5600548-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC01SCBK', 'ESC - Medan', 'ESC workstation', 1, 1472779045, 1472779045, 2, 25, 2, 1),
(517, 1362070800, 'ME5600549-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC007P4C', 'ESC - Makassar', 'ESC workstation', 1, 1472779045, 1472779045, 2, 25, 2, 1),
(518, 1362070800, 'ME5600550-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC007P4S', 'ESC - Surabaya', 'ESC workstation', 1, 1472779045, 1472779045, 2, 25, 2, 1),
(519, 1362070800, 'ME5600551-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC01SCB8', 'ESC - Surabaya', 'ESC workstation', 1, 1472779045, 1472779045, 2, 25, 2, 1),
(520, 1362070800, 'ME5600552-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC007P46', 'ESC - Bandung', 'ESC workstation', 1, 1472779045, 1472779045, 2, 25, 2, 1),
(521, 1362070800, 'ME5600553-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC007P4Z', 'ESS - Jakarta', 'ESC workstation', 1, 1472779045, 1472779045, 2, 25, 2, 1),
(522, 1362070800, 'ME5600554-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC007P4P', 'ESC - Palembang', 'ESC workstation', 1, 1472779045, 1472779045, 2, 25, 2, 1),
(523, 1362070800, 'ME5600555-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC007P4X', 'ESC - Samarinda', 'ESC workstation', 1, 1472779045, 1472779045, 2, 25, 2, 1),
(524, 1362070800, 'ME5600556-0000', 'Lenovo Thinkcentre Edge 73 LIA', 'PC01SCBS', 'ESC - Pontianak', 'ESC workstation', 1, 1472779045, 1472779045, 2, 25, 2, 1),
(525, 1362070800, 'ME5600558-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202122', 'EIN - Support', 'PC Tax', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(526, 1362070800, 'ME5600559-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202123', 'ESC - Bandung', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(527, 1362070800, 'ME5600560-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202124', 'ESC - Manado', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(528, 1362070800, 'ME5600561-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202125', 'ESC - Madiun', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(529, 1362070800, 'ME5600562-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202126', 'EIN - IS Storage', 'KOM', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(530, 1362070800, 'ME5600563-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202127', 'ESC - Bandung', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(531, 1362070800, 'ME5600564-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202128', 'EIN - Support', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(532, 1362070800, 'ME5600565-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202129', 'ESC - Makassar', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(533, 1362070800, 'ME5600566-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202130', 'ESC - Medan', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(534, 1362070800, 'ME5600567-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202131', 'ESC - Medan', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(535, 1362070800, 'ME5600568-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202132', 'ESC - Medan', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(536, 1362070800, 'ME5600569-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202133', 'ESC - Palembang', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(537, 1362070800, 'ME5600570-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202134', 'ESC - Pekanbaru', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(538, 1362070800, 'ME5600571-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202135', 'ESC - Pontianak', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(539, 1362070800, 'ME5600572-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202136', 'ESC - Purwokerto', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(540, 1362070800, 'ME5600573-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202137', 'ESC - Purwokerto', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(541, 1362070800, 'ME5600574-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202138', 'ESC - Samarinda', 'workstation', 2, 1472779045, 1472779045, 2, 21, 2, 1),
(542, 1362070800, 'ME5600575-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202139', 'ESS - Semarang', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(543, 1362070800, 'ME5600576-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202140', 'ESS - Surabaya', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(544, 1362070800, 'ME5600577-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202141', 'ESS - Surabaya', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(545, 1362070800, 'ME5600578-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202142', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(546, 1362070800, 'ME5600579-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202143', 'ESS - Surabaya', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(547, 1362070800, 'ME5600580-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202144', 'ESS - Surabaya', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(548, 1362070800, 'ME5600581-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202145', 'ESC - Yogyakarta', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(549, 1362070800, 'ME5600582-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202146', 'ESC - Yogyakarta', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(550, 1362070800, 'ME5600583-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202147', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(551, 1362070800, 'ME5600584-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202148', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(552, 1362070800, 'ME5600585-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202149', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(553, 1362070800, 'ME5600586-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202150', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(554, 1362070800, 'ME5600587-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202151', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(555, 1362070800, 'ME5600588-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202152', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(556, 1362070800, 'ME5600589-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202153', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(557, 1362070800, 'ME5600590-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202154', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(558, 1362070800, 'ME5600591-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202155', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(559, 1362070800, 'ME5600592-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202156', 'EIN - Support', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(560, 1362070800, 'ME5600593-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202157', 'EIN - Support', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(561, 1362070800, 'ME5600594-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202158', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(562, 1362070800, 'ME5600595-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202159', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(563, 1362070800, 'ME5600596-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202160', 'EIN - Support', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(564, 1362070800, 'ME5600597-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202161', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(565, 1362070800, 'ME5600598-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202162', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(566, 1362070800, 'ME5600599-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202163', 'EIN - Support', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(567, 1362070800, 'ME5600600-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202164', 'EIN - Support', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(568, 1362070800, 'ME5600601-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202165', 'EIN - Sales', 'workstation', 2, 1472779046, 1472779046, 2, 21, 2, 1),
(569, 1362070800, 'ME5600602-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202166', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(570, 1362070800, 'ME5600603-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202167', 'EIN - Sales', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(571, 1362070800, 'ME5600604-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202168', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(572, 1362070800, 'ME5600605-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202169', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(573, 1362070800, 'ME5600606-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202170', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(574, 1362070800, 'ME5600607-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202171', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(575, 1362070800, 'ME5600608-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202172', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(576, 1362070800, 'ME5600609-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202173', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(577, 1362070800, 'ME5600610-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202174', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(578, 1362070800, 'ME5600611-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202175', 'ESC - Jember', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(579, 1362070800, 'ME5600612-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202176', 'ESC - Madiun', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(580, 1362070800, 'ME5600613-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202177', 'ESS - Surabaya', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(581, 1362070800, 'ME5600614-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202178', 'EIN - IS Storage', 'ex Dyaharini', 1, 1472779047, 1472779047, 2, 21, 2, 1),
(582, 1362070800, 'ME5600615-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202179', 'EIN - Sales', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(583, 1362070800, 'ME5600616-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202180', 'EIN - Sales', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(584, 1362070800, 'ME5600617-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202181', 'EIN - Sales', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(585, 1362070800, 'ME5600618-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202182', 'EIN - Sales', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(586, 1362070800, 'ME5600619-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202183', 'EIN - Sales', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(587, 1362070800, 'ME5600620-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202184', 'ESC - Makassar', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(588, 1362070800, 'ME5600621-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202185', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(589, 1362070800, 'ME5600622-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202186', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(590, 1362070800, 'ME5600623-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202187', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(591, 1362070800, 'ME5600624-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202188', 'EIN - Sales', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(592, 1362070800, 'ME5600625-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202189', 'EIN - Sales', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(593, 1362070800, 'ME5600626-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202190', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(594, 1362070800, 'ME5600627-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202191', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(595, 1362070800, 'ME5600628-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202192', 'EIN - Support', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(596, 1362070800, 'ME5600629-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202193', 'EIN - Sales', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(597, 1362070800, 'ME5600630-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202194', 'EIN - Sales', 'workstation', 2, 1472779047, 1472779047, 2, 21, 2, 1),
(598, 1362070800, 'ME5600631-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202195', 'EIN - Support', 'workstation', 2, 1472779048, 1472779048, 2, 21, 2, 1),
(599, 1362070800, 'ME5600632-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202196', 'EIN - IS Storage', 'KOM', 1, 1472779048, 1472779048, 2, 21, 2, 1),
(600, 1362070800, 'ME5600633-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202197', 'EIN - IS Storage', 'backup', 1, 1472779048, 1472779048, 2, 21, 2, 1),
(601, 1362070800, 'ME5600634-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202198', 'ESC - Makassar', 'workstation', 2, 1472779048, 1472779048, 2, 21, 2, 1),
(602, 1362070800, 'ME5600635-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202199', 'EIN - IS Storage', 'KOM', 1, 1472779048, 1472779048, 2, 21, 2, 1),
(603, 1362070800, 'ME5600636-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202200', 'EIN - Support', 'workstation', 2, 1472779048, 1472779048, 2, 21, 2, 1),
(604, 1362070800, 'ME5600637-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202201', 'EIN - Support', 'workstation', 2, 1472779048, 1472779048, 2, 21, 2, 1),
(605, 1362070800, 'ME5600638-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202202', 'ESC - Manado', 'workstation', 2, 1472779048, 1472779048, 2, 21, 2, 1),
(606, 1362070800, 'ME5600639-0000', 'Fujitsu Lifebook U745 Ultrabook', 'R5202203', 'EIN - Sales', 'workstation', 2, 1472779048, 1472779048, 2, 21, 2, 1),
(607, 1362070800, 'ME5600640-0000', 'Dell PowerEdge T20', 'CN-094NDX-70163-3BS-A01U', 'EIN - IS Storage', 'testing', 1, 1472779048, 1472779048, 2, 25, 2, 1),
(608, 1430413200, 'ME5600641-0000', 'Mikrotik RB450G', '33B602FC5FEC', 'EIN - IS Storage', 'backup', 1, 1472779048, 1472779048, 2, 33, 2, 1),
(609, 1430413200, 'ME5600642-0000', 'Mikrotik RB450G', '33B6044B9909', 'ESC - Medan', 'ESC Network', 1, 1472779048, 1472779048, 2, 33, 2, 1),
(610, 1430413200, 'ME5600643-0000', 'Mikrotik RB450G', '33B60279B2EA', 'ESC - Pekanbaru', 'ESC Network', 1, 1472779048, 1472779048, 2, 33, 2, 1),
(611, 1430413200, 'ME5600644-0000', 'Mikrotik RB450G', '33B6024ACB80', 'EIN - IS Storage', 'backup', 1, 1472779048, 1472779048, 2, 33, 2, 1),
(612, 1430413200, 'ME5600645-0000', 'Mikrotik RB450G', '33B604D69371', 'ESC - Samarinda', 'ESC Network', 1, 1472779048, 1472779048, 2, 33, 2, 1),
(613, 1430413200, 'ME5600646-0000', 'D-Link  DGS-10008A', 'QBID2E3001330', 'ESS - Semarang', 'ESC Network', 1, 1472779048, 1472779048, 2, 20, 2, 1),
(614, 1430413200, 'ME5600647-0000', 'UPS - ABX1100LI-MS', '3B1449X15621', 'EIN - Support', 'UPS', 1, 1472779048, 1472779048, 2, 40, 2, 1),
(615, 1433091600, 'ME5600648-0000', 'Samsung galaxy tab S 10.5 LTE', 'RR2G500ES8M', 'EIN - IS Locker', 'demo', 1, 1472779048, 1472779048, 2, 37, 2, 1),
(616, 1433091600, 'ME5600649-0000', 'Samsung galaxy tab S 10.5 LTE', 'RR2G500RL1B', 'EIN - IS Locker', 'demo', 1, 1472779048, 1472779048, 2, 37, 2, 1),
(617, 1433091600, 'ME5600650-0000', 'Samsung galaxy tab S 10.5 LTE', 'RR2G500EKFT', 'EIN - IS Locker', 'demo', 1, 1472779048, 1472779048, 2, 37, 2, 1),
(618, 1433091600, 'ME5600651-0000', 'Samsung galaxy tab S 10.5 LTE', 'RR2G500RG8B', 'EIN - IS Locker', 'demo', 1, 1472779048, 1472779048, 2, 37, 2, 1),
(619, 1433091600, 'ME5600652-0000', 'Samsung galaxy tab S 10.5 LTE', 'RF2G204TAMW', 'EIN - IS Locker', 'demo', 1, 1472779048, 1472779048, 2, 37, 2, 1),
(620, 1433091600, 'ME5600653-0000', 'Mikrotik RB450G', '33B6045D20E8', 'EIN - IS Storage', 'backup', 1, 1472779048, 1472779048, 2, 33, 2, 1),
(621, 1433091600, 'ME5600654-0000', 'Mikrotik RB450G', '33B604B4041C', 'ESC - Surabaya', 'ESC Network', 1, 1472779048, 1472779048, 2, 33, 2, 1),
(622, 1433091600, 'ME5600655-0000', 'Mikrotik RB450G', '33B604F3EF0C', 'ESC - Pontianak', 'ESC Network', 1, 1472779048, 1472779048, 2, 33, 2, 1),
(623, 1433091600, 'ME5600656-0000', 'Mikrotik RB450G', '33B604C1715B', 'ESS - Semarang', 'ESC Network', 1, 1472779048, 1472779048, 2, 33, 2, 1),
(624, 1433091600, 'ME5600657-0000', 'Mikrotik RB450G', '33B60431E91A', 'ESC - Makassar', 'ESC Network', 1, 1472779048, 1472779048, 2, 33, 2, 1),
(625, 1433091600, 'ME5600658-0000', 'Datalogic Quickscan QD2430', 'G14M21930', 'EIN - IS Storage', 'testing', 1, 1472779048, 1472779048, 2, 4, 2, 1),
(626, 1438362000, 'ME5600659-0000', 'Lenovo ThinkCentre M83-3IF', 'PC039KY5', 'ESC - Mangga Dua Mall', 'goose lite PC', 1, 1472779049, 1472779049, 2, 25, 2, 1),
(627, 1441040400, 'ME5600660-0000', 'Dlink switch 8 port', '0', 'ESC - Surabaya', 'ESC Network', 1, 1472779049, 1472779049, 2, 20, 2, 1),
(628, 1441040400, 'ME5600662-0000', 'Dlink Wireless Router DIR 615 N 300', '0', 'ESC - Pontianak', 'ESC Network', 1, 1472779049, 1472779049, 2, 3, 2, 1),
(629, 1441040400, 'ME5600663-0000', 'Symantec backup Exec Essential 12 Month', '0', 'EIN - server', 'server', 1, 1472779049, 1472779049, 2, 34, 2, 1),
(630, 1443632400, 'ME5600664-0000', 'Fingerprint Machine V-8000', '0', 'EIN - Support', 'finger machine', 1, 1472779049, 1472779049, 2, 9, 2, 1),
(631, 1443632400, 'ME5600665-0000', 'Fingerprint Machine V-8000', '0', 'EIN - Support', 'finger machine', 1, 1472779049, 1472779049, 2, 9, 2, 1),
(632, 1443632400, 'ME5600666-0000', 'Fingerprint Machine RX-220', '6583150500758', 'EIN - Support', 'finger machine', 1, 1472779049, 1472779049, 2, 9, 2, 1),
(633, 1443632400, 'ME5600667-0000', 'Fingerprint Machine RX-220', '6583150500748', 'EIN - Support', 'finger machine', 1, 1472779049, 1472779049, 2, 9, 2, 1),
(634, 1443632400, 'ME5600668-0000', 'Fingerprint Machine RX-220', '6583150500702', 'EIN - Support', 'finger machine', 1, 1472779049, 1472779049, 2, 9, 2, 1),
(635, 1443632400, 'ME5600669-0000', 'Fingerprint Machine RX-220', '6583150500711', 'EIN - Support', 'finger machine', 1, 1472779049, 1472779049, 2, 9, 2, 1),
(636, 1443632400, 'ME5600670-0000', 'Fingerprint Machine RX-220', '6583150500699', 'EIN - Sales', 'finger machine', 1, 1472779049, 1472779049, 2, 9, 2, 1),
(637, 1443632400, 'ME5600671-0000', 'Fingerprint Machine RX-220', '6583150500722', 'EIN - Sales', 'finger machine', 1, 1472779049, 1472779049, 2, 9, 2, 1),
(638, 1443632400, 'ME5600672-0000', 'Fargo DTC1250E', 'B4491202', 'EIN - IS Locker', 'IS Tools', 1, 1472779049, 1472779049, 2, 29, 2, 1),
(639, 1443632400, 'SW5600673-0000', 'Barcode Software Bartender Seagull BT-Pro', '195646', 'EIN - IS Storage', 'testing', 1, 1472779049, 1472779049, 2, 34, 2, 1),
(640, 1443632400, 'ME5600674-0000', 'Lenovo ThinkPad X1 Carbon CTO', 'R9-0HZSAQ', 'EIN - Sales', 'workstation', 2, 1472779049, 1472779049, 2, 21, 2, 1),
(641, 1443632400, 'ME5600675-0000', 'Lenovo ThinkPad X1 Carbon CTO', 'R9-0HZSAX', 'EIN - Sales', 'workstation', 2, 1472779049, 1472779049, 2, 21, 2, 1),
(642, 1443632400, 'ME5600676-0000', 'Lenovo ThinkPad X1 Carbon CTO', 'R9-0HZSAM', 'EIN - Sales', 'workstation', 2, 1472779049, 1472779049, 2, 21, 2, 1),
(643, 1443632400, 'ME5600677-0000', 'Lenovo ThinkPad X1 Carbon CTO', 'R9-0HZSAT', 'EIN - Sales', 'workstation', 2, 1472779049, 1472779049, 2, 21, 2, 1),
(644, 1443632400, 'ME5600678-0000', 'Lenovo ThinkPad X1 Carbon CTO', 'R9-0HZSAY', 'EIN - Support', 'workstation', 2, 1472779049, 1472779049, 2, 21, 2, 1),
(645, 1443632400, 'ME5600679-0000', 'Lenovo ThinkPad X1 Carbon CTO', 'R9-0HZSAS', 'EIN - Support', 'workstation', 2, 1472779049, 1472779049, 2, 21, 2, 1),
(646, 1443632400, 'ME5600680-0000', 'Lenovo ThinkPad X1 Carbon CTO', 'R9-0HZSAR', 'EIN - IS Storage', 'spare', 1, 1472779049, 1472779049, 2, 21, 2, 1),
(647, 1443632400, 'ME5600681-0000', 'Lenovo ThinkPad X1 Carbon CTO', 'R9-0HZSAN', 'EIN - Support', 'workstation', 2, 1472779049, 1472779049, 2, 21, 2, 1),
(648, 1443632400, 'ME5600682-0000', 'Lenovo ThinkPad X1 Carbon CTO', 'R9-0HZSAV', 'EIN - Support', 'workstation', 2, 1472779049, 1472779049, 2, 21, 2, 1),
(649, 1443632400, 'ME5600683-0000', 'Lenovo ThinkPad X1 Carbon CTO', 'R9-0HZSAP', 'EIN - Support', 'workstation', 2, 1472779049, 1472779049, 2, 21, 2, 1),
(650, 1443632400, 'ME5600684-0000', 'Lenovo ThinkPad X1 Carbon CTO', 'R9-0HZSAU', 'EIN - IS Storage', 'workstation', 2, 1472779049, 1472779049, 2, 21, 2, 1),
(651, 1443632400, 'ME5600685-0000', 'Lenovo ThinkPad X1 Carbon CTO', 'R9-0HZSAW', 'EIN - Support', 'workstation', 2, 1472779049, 1472779049, 2, 21, 2, 1),
(652, 1446310800, 'SW5600686-0000', 'Barcode Software Bartender Seagull BT-Pro', '195647', 'EIN - IS Storage', 'testing', 1, 1472779049, 1472779049, 2, 34, 2, 1),
(653, 1456765200, 'ME5600687-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5DBTB038838', 'ESC - Cikarang', '0', 1, 1472779049, 1472779049, 2, 23, 2, 1),
(654, 1456765200, 'ME5600688-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5DATB037710', 'ESC - Bogor', '0', 1, 1472779049, 1472779049, 2, 23, 2, 1),
(655, 1456765200, 'ME5600689-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5DBTB038839', 'ESC - Bandung', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(656, 1456765200, 'ME5600690-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5DBTB038808', 'ESC - Cirebon', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(657, 1456765200, 'ME5600691-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5BBTB039582', 'ESC - Surabaya', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(658, 1456765200, 'ME5600692-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5HATB041091', 'ESC - Pekanbaru', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(659, 1456765200, 'ME5600693-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5EBTB039689', 'ESC - Samarinda', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(660, 1456765200, 'ME5600694-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5DBTB038161', 'ESC - Palembang', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(661, 1456765200, 'ME5600695-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5EBTB039374', 'ESC - Manado', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(662, 1456765200, 'ME5600696-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5EBTB039879', 'ESC - Serpong', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(663, 1456765200, 'ME5600697-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5HATB041659', 'ESC - Purwokerto', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(664, 1456765200, 'ME5600698-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5EBTB039741', 'ESC - Makassar', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(665, 1456765200, 'ME5600699-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '''5DBTB03884', 'ESC - Serang', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1);
INSERT INTO `inventories` (`id`, `acquisition`, `asset_number`, `description`, `serial_number`, `location`, `remark`, `available`, `created_at`, `modified_at`, `inventory_categories_id`, `inventory_types_id`, `inventory_status_id`, `flag`) VALUES
(666, 1456765200, 'ME5600700-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5DBTB038799', 'ESC - Jember', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(667, 1456765200, 'ME5600701-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5EBTB039580', 'ESC - Pontianak', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(668, 1456765200, 'ME5600702-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5EBTB038792', 'ESC - Medan', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(669, 1456765200, 'ME5600703-0000', 'Plant Machinary Equipment PABX KX-TES824ND', '5EBTB038627', 'ESC - Madiun', '0', 1, 1472779050, 1472779050, 2, 23, 2, 1),
(670, 1456765200, 'ME5600704-0000', 'Linksys Max Stream AC2600 Wifi Router EA8500', '16T10C6B500434', 'EIN - Support', '0', 1, 1472779050, 1472779050, 2, 33, 2, 1),
(671, 1456765200, 'ME5600705-0000', 'Huawei 3G Mobile & Extender /E5336', 'S8YBY15616002798', 'EIN - IS Storage', '0', 1, 1472779050, 1472779050, 2, 18, 2, 1),
(672, 1456765200, 'ME5600706-0000', 'Huawei 3G Mobile & Extender /E5336', 'S8YBY15616002809', 'EIN - IS Storage', '0', 1, 1472779050, 1472779050, 2, 18, 2, 1),
(673, 1456765200, 'ME5600707-0000', 'Huawei 3G Mobile & Extender /E5336', 'S8YBY15616002805', 'EIN - Sales', '0', 2, 1472779050, 1472779050, 2, 18, 2, 1),
(674, 1456765200, 'ME5600708-0000', 'Huawei 3G Mobile & Extender /E5336', 'S8YBY15616002808', 'EIN - IS Storage', '0', 1, 1472779050, 1472779050, 2, 18, 2, 1),
(675, 1456765200, 'ME5600709-0000', 'Huawei 3G Mobile & Extender /E5336', 'S8YBY15616002813', 'EIN - IS Storage', '0', 1, 1472779050, 1472779050, 2, 18, 2, 1),
(676, 1456765200, 'ME5600710-0000', 'Linksys Max Stream EA6350 Wifi Router', '14Y10J09415140', 'EIN - IS Storage', '0', 1, 1472779050, 1472779050, 2, 33, 2, 1),
(677, 1456765200, 'ME5600711-0000', 'Linksys Max Stream EA6350 Wifi Router', '14Y10J0B434472', 'EIN - IS Storage', '0', 1, 1472779050, 1472779050, 2, 33, 2, 1),
(678, 1456765200, 'ME5600712-0000', 'Linksys E1200 N300 Wifi Router', '10822C6C501262', 'EIN - IS Storage', '0', 1, 1472779050, 1472779050, 2, 33, 2, 1),
(679, 1456765200, 'ME5600713-0000', 'Linksys E1200 N300 Wifi Router', '10822C6B516349', 'EIN - IS Storage', '0', 1, 1472779050, 1472779050, 2, 33, 2, 1),
(680, 1456765200, 'ME5600714-0000', 'Linksys E1200 N300 Wifi Router', '10822C6C501268', 'EIN - IS Storage', '0', 1, 1472779050, 1472779050, 2, 33, 2, 1),
(681, 1456765200, 'ME5600715-0000', 'Linksys E1200 N300 Wifi Router', '10822C6B516315', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 33, 2, 1),
(682, 1456765200, 'ME5600716-0000', 'Linksys E1200 N300 Wifi Router', '10822C6C501260', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 33, 2, 1),
(683, 1456765200, 'ME5600717-0000', 'Linksys E1200 N300 Wifi Router', '10822C6B516361', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 33, 2, 1),
(684, 1456765200, 'ME5600718-0000', 'Linksys E1200 N300 Wifi Router', '10822C6B516369', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 33, 2, 1),
(685, 1456765200, 'ME5600719-0000', 'Linksys E1200 N300 Wifi Router', '10822C6B516352', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 33, 2, 1),
(686, 1456765200, 'ME5600720-0000', 'Linksys E1200 N300 Wifi Router', '10822C6B516367', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 33, 2, 1),
(687, 1456765200, 'ME5600721-0000', 'Linksys E1200 N300 Wifi Router', '10822C6B516379', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 33, 2, 1),
(688, 1456765200, 'ME5600722-0000', 'TP Link TL-SG1008', '215C319000447', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 20, 2, 1),
(689, 1456765200, 'ME5600723-0000', 'TP Link TL-SG1008', '215A053000884', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 20, 2, 1),
(690, 1456765200, 'ME5600724-0000', 'TP Link TL-SG1008', '215C319000299', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 20, 2, 1),
(691, 1456765200, 'ME5600725-0000', 'TP Link TL-SG1008', '215C319000448', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 20, 2, 1),
(692, 1456765200, 'ME5600726-0000', 'TP Link TL-SG1008', '215C319000442', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 20, 2, 1),
(693, 1456765200, 'ME5600727-0000', 'TP Link TL-SG1008', '215C319000444', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 20, 2, 1),
(694, 1456765200, 'ME5600728-0000', 'TP Link TL-SG1008', '215C319000445', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 20, 2, 1),
(695, 1456765200, 'ME5600729-0000', 'TP Link TL-SG1008', '215C319000446', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 20, 2, 1),
(696, 1456765200, 'ME5600730-0000', 'TP Link TL-SG1008', '215C319000441', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 20, 2, 1),
(697, 1456765200, 'ME5600731-0000', 'TP Link TL-SG1008', '215C319000443', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 20, 2, 1),
(698, 1456765200, 'ME5600732-0000', 'Intel NUC Mini PC', 'G6PY548005NF', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 25, 2, 1),
(699, 1456765200, 'ME5600733-0000', 'Finger Print V8000', '6530155300163', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 9, 2, 1),
(700, 1456765200, 'ME5600734-0000', 'Finger Print V8000', '6530155300075', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 9, 2, 1),
(701, 1456765200, 'ME5600735-0000', 'Finger Print V8000', '6530155300193', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 9, 2, 1),
(702, 1456765200, 'ME5600736-0000', 'Finger Print V8000', '6530155300132', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 9, 2, 1),
(703, 1456765200, 'ME5600737-0000', 'Finger Print V8000', '6530155300199', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 9, 2, 1),
(704, 1456765200, 'ME5600738-0000', 'Finger Print V8000', '6530155300120', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 9, 2, 1),
(705, 1456765200, 'ME5600739-0000', 'Finger Print V8000', '6530155300084', 'EIN - IS Storage', '0', 1, 1472779051, 1472779051, 2, 9, 2, 1),
(706, 1456765200, 'ME5600740-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C502518', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(707, 1456765200, 'ME5600741-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C500412', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(708, 1456765200, 'ME5600742-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C500424', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(709, 1456765200, 'ME5600743-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C502581', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(710, 1456765200, 'ME5600744-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C500383', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(711, 1456765200, 'ME5600745-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C502598', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(712, 1456765200, 'ME5600746-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C500404', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(713, 1456765200, 'ME5600747-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C500408', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(714, 1456765200, 'ME5600748-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C500386', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(715, 1456765200, 'ME5600749-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C502564', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(716, 1456765200, 'ME5600750-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C502524', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(717, 1456765200, 'ME5600751-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C508877', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(718, 1456765200, 'ME5600752-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C502515', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(719, 1456765200, 'ME5600753-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C500406', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(720, 1456765200, 'ME5600754-0000', 'Linksys E1200 N300 Wireless Router', '10822C6C502201', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(721, 1456765200, 'ME5600755-0000', 'TP Link TL-SG1008', '216476000993', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 20, 2, 1),
(722, 1456765200, 'ME5600756-0000', 'TP Link TL-SG1008', '216476000999', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 20, 2, 1),
(723, 1456765200, 'ME5600757-0000', 'TP Link TL-SG1008', '216476000995', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 20, 2, 1),
(724, 1456765200, 'ME5600758-0000', 'TP Link TL-SG1008', '216476000994', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 20, 2, 1),
(725, 1456765200, 'ME5600759-0000', 'TP Link TL-SG1008', '216476001000', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 20, 2, 1),
(726, 1456765200, 'ME5600760-0000', 'Mikrotik RB450G', '5D690508B7A0/543', 'ESC Palembang', '0', 2, 1472779052, 1472779052, 2, 33, 2, 1),
(727, 1456765200, 'ME5600761-0000', 'Mikrotik RB450G', '5D6904FFB828/543', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(728, 1456765200, 'ME5600762-0000', 'Mikrotik RB450G', '5D69059A0371/543', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(729, 1456765200, 'ME5600763-0000', 'Mikrotik RB450G', '5D6905C25E4D/543', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(730, 1456765200, 'ME5600764-0000', 'Mikrotik RB450G', '5D69014B2A0B/543', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(731, 1456765200, 'ME5600765-0000', 'Mikrotik RB450G', '5D6904A3C6CA/543', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(732, 1456765200, 'ME5600766-0000', 'MikroBits Alnos RoS Level 5', 'FCSB261134SEW2IB-2799', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 33, 2, 1),
(733, 1456765200, 'ME5600767-0000', 'Mini PC Lenovo Thinkcentre M73 4UIA', 'PC04ZQYE', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 25, 2, 1),
(734, 1456765200, 'ME5600768-0000', 'Mini PC Lenovo Thinkcentre M73 4UIA', 'PC04HZ21', 'EIN - IS Storage', '0', 1, 1472779052, 1472779052, 2, 25, 2, 1),
(735, 1456765200, 'ME5600769-0000', 'LENOVO Rhink Vision', 'V9025M39', 'EIN - IS Storage', '0', 1, 1472779053, 1472779053, 2, 14, 2, 1),
(736, 1456765200, 'ME5600770-0000', 'LENOVO ThinkVision', 'V9025M47', 'EIN - IS Storage', '0', 1, 1472779053, 1472779053, 2, 14, 2, 1),
(737, 1456765200, 'ME5600771-0000', 'Linksys Max Stream AC2600 Wifi Router EA8500', '0', 'EIN - Support', 'double submit', 1, 1472779053, 1472779053, 2, 33, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_categories`
--

CREATE TABLE `inventory_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory_categories`
--

INSERT INTO `inventory_categories` (`id`, `name`) VALUES
(1, 'Fixed Asset'),
(2, 'Written Off');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_status`
--

CREATE TABLE `inventory_status` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory_status`
--

INSERT INTO `inventory_status` (`id`, `name`) VALUES
(1, 'Broken'),
(2, 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_types`
--

CREATE TABLE `inventory_types` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory_types`
--

INSERT INTO `inventory_types` (`id`, `name`) VALUES
(1, 'Access Point'),
(2, 'Airport'),
(3, 'AP Router'),
(4, 'Barcode Scanner'),
(5, 'Cash Drawer'),
(6, 'Converter'),
(7, 'Copy Machine'),
(8, 'Duplicator'),
(9, 'Fingerprint Machine'),
(10, 'HDD Docking'),
(11, 'Headphone VC'),
(12, 'KVM'),
(13, 'LCD'),
(14, 'LCD Monitor'),
(15, 'Magnetic Reader'),
(16, 'Media'),
(17, 'Media Player'),
(18, 'Modem'),
(19, 'NAS'),
(20, 'Network Switch'),
(21, 'Notebook'),
(22, 'Optical Drive'),
(23, 'PABX'),
(24, 'Patch Panel'),
(25, 'PC'),
(26, 'PC Server'),
(27, 'PCMCIA Card'),
(28, 'Print Server'),
(29, 'Printer'),
(30, 'Projector'),
(31, 'Rack'),
(32, 'Rack Server'),
(33, 'Router'),
(34, 'Software'),
(35, 'Speaker Active'),
(36, 'Splitter'),
(37, 'Tablet'),
(38, 'Tone Checker'),
(39, 'UDP'),
(40, 'UPS'),
(41, 'USB Dongle'),
(42, 'VC Speaker Mic'),
(43, 'VC System'),
(44, 'VGA Switch'),
(45, 'Web Camera'),
(46, 'Management Cable');

-- --------------------------------------------------------

--
-- Table structure for table `lends`
--

CREATE TABLE `lends` (
  `id` int(11) NOT NULL,
  `lend_type_id` int(11) NOT NULL,
  `lend_at` int(11) NOT NULL,
  `returned_at` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `purpose` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lend_inventories`
--

CREATE TABLE `lend_inventories` (
  `lend_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `description` text NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `apo_id` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `activation_code` varchar(256) NOT NULL,
  `forgot_password_code` varchar(256) NOT NULL,
  `forgot_password_at` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` int(11) NOT NULL,
  `modified_at` int(11) NOT NULL,
  `user_roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `apo_id`, `email`, `password`, `first_name`, `last_name`, `activation_code`, `forgot_password_code`, `forgot_password_at`, `active`, `created_at`, `modified_at`, `user_roles_id`) VALUES
(1, 'EIN1093', 'admin@epson.co.id', '6wrtCsrPPhpUb4OJ9IVaQTV3iQeT3laVFpUNXdeNyjwA+7abE66eStFMYssuf5Y17WM+Ogw1Hngy3csTnPFMaQ==', 'Admin', 'epson', '', '', 0, 1, 1472479348, 1472614911, 2),
(2, 'EIN9310', 'superuser@epson.co.id', 'lyl9IA0ETGvmiVaxK3PZ/wdFOjqVvV86f9A0kn2UdT/1dVLINa/MPJBmA00+DDPVTSmvOBFaf/i+m3197kSh2g==', 'Super', 'user', '', '', 0, 1, 1472484309, 1472546539, 1),
(3, 'EIN1006', 'employee@epson.co.id', 'boSwMYdpetcYpSP3yxOLvm1YuC61US5D7xR7rHTU+Yn+Jtr9z2yaYz/vrUxAQTAYS5F16PvGW4QtBcsbWW9bQw==', 'Employeee', 'Epson', '', '', 0, 1, 1472548224, 1472576791, 3),
(4, 'EIN00113', 'carsini@ein.epson.co.id', 'P/aMT6sOTafryevk6EOEdLBgXJo7OzuPEy7sRtKqChxtdvLNc7xTGKcVRTqW0ALsrUeiK6oXoUv+/PsHOYMr0A==', 'Carsini', ' (EIN)', '', '', 0, 1, 1472724020, 0, 3),
(5, 'EIN00086', 'eddy.p@ein.epson.co.id', 'IWPgg8WywjTzcsZrNt6psDf9U2uTCCrycneZWQ3e2x3ijcG6SzqorV74ebwRdBq5ile4axqpUdiQsDjoeU3E4Q==', 'Eddy', 'Pel (EIN)', '', '', 0, 1, 1472724063, 1472724114, 3),
(6, 'EINCON225', 'hendri.s@ein.epson.co.id', 'pOthQpQ2sI9PMl6hXRouAmv1BRgR/Eg9fqdjf+WKkGDSDCM/nhkoyvD8BIloOtnjxYnqdjBmBNlKHsIetDBDfQ==', 'Hendri', 'Suharyadi (EIN)', '', '', 0, 1, 1472724099, 0, 3),
(7, 'EIN00087', 'sugiharto@ein.epson.co.id', '3rAuldAy6VCrOnQ2F6atcuEZmwfCb8PwBb6w3wM8v/GpWBNlmdpFVf6EpjoSsEDI/3JxG7yQDEzet4FAZaJX5Q==', 'Sugiharto', '(EIN)', '', '', 0, 1, 1472724154, 0, 3),
(8, 'EIN00088', 'tardjo@ein.epson.co.id', 'WmFDFjNT4a6MxCWpjw9ysIhaSUuvAbTw0Zq808XXPpJpUiJL+0Q8mG2r+qDdC7IjZxpjx643slTkJQ90H8WNeg==', 'Tardjo', '(EIN)', '', '', 0, 1, 1472724188, 0, 3),
(9, 'EIN00218', 'rudyanto.s@ein.epson.co.id', 'REyedT2w733mueYdhmICoopy6C5L4b/dtOmxf73cu1L6HwhZjjkNpk4KA0NHfh/upjMIWDVMXhohLVH2KAHUBg==', 'Rudyanto', 'Sudarman (EIN)', '', '', 0, 1, 1472724232, 0, 3),
(10, 'EINCDS014', 'lokita.a@ein.epson.co.id', 'LhqZSiZvB30yppHXPNtVwk70moRmDCVWCnvCKNWyDFt4ay8jiQlRw71ObqCNoko9tGBYFA/5e3BAfmokjmdCIg==', 'Lokita', 'Aknesia (EIN)', '', '', 0, 1, 1472724818, 0, 3),
(11, 'EINCON255', 'arsya@ein.epson.co.id', 'zjoULDyn7PTT3NIlPLOn7EHScU+eE7VEnpD+fph5qRyL2z0FcFp+ragOvxYgFtalYddcrEGcrhXAruHbEt0aaQ==', 'Arsya', 'Fajar (EIN)', '', '', 0, 1, 1472725219, 1472731323, 1),
(12, 'EINCON237', 'anugrah.pb@ein.epson.co.id', 'NRdEWz5mTJcFqos61N5+khbJy8EmY5ni7+YRx2elMq7WsLojhT6ojQYC4HN9YvQtnW3+pD7vUFSFXKHi8VJsGw==', 'Anugrah', 'Putra Banindyo (EIN)', '', '', 0, 1, 1472725249, 0, 3),
(13, 'EINCON238', 'bimo.wh@ein.epson.co.id', '2jEhjJPvWbgKo8hLiUjqk3yiaLI8rGbDtJ8OmNzNYG9uXo1+gWvyChXjTeZTnrJt7iT7mUxRGjIywol+Vuzoqw==', 'Bimo', 'Wiro Hutomo (EIN)', '', '', 0, 1, 1472725303, 0, 3),
(14, 'EIN00227', 'rakhmat.a@ein.epson.co.id', 'OwG9P1g0ur70G6xmV7QSge3ClDURQFWarmiDg7qKFy3NLlMyd34fc2endusEDPyoHiRUIMkk4tkQqKyFm3mxrg==', 'Rakhmat', 'Arifandi (EIN)', '', '', 0, 1, 1472725344, 0, 3),
(15, 'EINCON230', 'sigit.ns@ein.epson.co.id', '2i3XyLtIPEecYsmqp9XdmifJ/ZxXly8pAdeAdf09yRsr/cK+YOzSZCGj70Eq1Yv6u2gvwAxZXzW8vs1Tom5JpA==', 'Sigit', 'Nugroho Sasminto (EIN)', '', '', 0, 1, 1472725507, 0, 3),
(16, 'EINCON231', 'yoshapat.yr@ein.epson.co.id', '/bq/pVUNNLv4ko0Ub4OEP2XlApx0826IxyYvEpYRhru4Vrre5+9QIcakWizQSCtTRTPy0Fg8euBs7xSrdE5ebQ==', 'Yoshapat', 'Yosha Rahadian (EIN)', '', '', 0, 1, 1472725538, 0, 3),
(17, 'EINCON190', 'riva.jk@ein.epson.co.id', 'YJoa8C09Rl95lWn3jJ3/AtIbsaamCqL78qH/1K80xG9zozpbii/1Hk5JLdizIXF+xyDsARs6RHPJjGpb+ib2bg==', 'Riva', 'Juniar Kurniawan (EIN)', '', '', 0, 1, 1472725575, 0, 3),
(18, 'EINCON182', 'resty.h@ein.epson.co.id', 'R+RzNChrlOdIZ2qD7tN0Uol1WXpxRz8TkoNR8OF5iU779jbr/Vyj7uV11qJX2hpdPzmvozVWZeHouDnA0PWxdQ==', 'Resty', 'Hanraty (EIN)', '', '', 0, 1, 1472725611, 0, 3),
(19, 'EINCON137', 'suhendra@ein.epson.co.id', 'aiRxsc5TuiTzQOs6AkhjnkaQp9T6cr1W6IaxVuiAX3CMVhCtcIXdRjk8AMJSBUpEFaZiFz+0QG/kIPkRxpoqEg==', 'Suhendra', '(EIN)', '', '', 0, 1, 1472725659, 0, 3),
(20, 'EIN00068', 'chris.h@ein.epson.co.id', 'AtqGT4+xD0glejtGUG7H1LmVmlb8JxglRJ+vVceNmWGRqlSPSBIGN5spqGO6eRN4nfvaLxVJ1oqifFIq0QZQhA==', 'Chris', 'Herman Gunawan (EIN)', '', '', 0, 1, 1472725691, 0, 3),
(21, 'EIN00180', 'fitriyya.hz@ein.epson.co.id', 'jw0rWIN4QE53GMrusehJgqCvYi2cZjsKkEQB63Sfrg3u10UU8f+Me8dzFnN3g4//djbNWmqoE0nHMgQfqUr7KA==', 'Fitriyya', 'Hafifa Zahari (EIN)', '', '', 0, 1, 1472725725, 0, 3),
(22, 'EIN00132', 'sunu.s@ein.epson.co.id', 'gou8wrjgGzGXfgmLxz1n+hTEOIQ67QQggtFWhEKjicotJtLP0IyFRw3Gj6525CVoXbTlDvuZXoUb8pjCEIGxCw==', 'Sunu', 'Sasongko (EIN)', '', '', 0, 1, 1472725757, 0, 3),
(23, 'EIN00154', 'suntoro.p@ein.epson.co.id', 'o8uWAtPhh8ZDbixyOmoHUSScvIlc/nIzzMpUHm1QXI00doaNsDOJLdh+4x8E8Hn+bT4T+/sPSVwQtnuRLymfqw==', 'Suntoro', 'Prasetyo (EIN)', '', '', 0, 1, 1472725793, 0, 3),
(24, 'EINCON295', 'irvan.h@ein.epson.co.id', 'NRdEWz5mTJcFqos61N5+khbJy8EmY5ni7+YRx2elMq7WsLojhT6ojQYC4HN9YvQtnW3+pD7vUFSFXKHi8VJsGw==', 'Irvan', 'Herdiansyah (EIN)', '', '', 0, 1, 1472725827, 0, 3),
(25, 'EIN00151', 'zulkifli@ein.epson.co.id', 'OwG9P1g0ur70G6xmV7QSge3ClDURQFWarmiDg7qKFy3NLlMyd34fc2endusEDPyoHiRUIMkk4tkQqKyFm3mxrg==', 'Zulkifli', '(EIN)', '', '', 0, 1, 1472726023, 0, 3),
(26, 'EIN00090', 'marthin.p@ein.epson.co.id', 'o8uWAtPhh8ZDbixyOmoHUSScvIlc/nIzzMpUHm1QXI00doaNsDOJLdh+4x8E8Hn+bT4T+/sPSVwQtnuRLymfqw==', 'Marthin', 'Pasaribu (EIN)', '', '', 0, 1, 1472726056, 0, 3),
(27, 'EIN00095', 'm.rudi@ein.epson.co.id', 'n/IkMd/NQo7qWcKwSNJiIaY8CEid0xt7WQ4Fzg+BA79Wo2TZt2MNNcCPjiC53fD0rdcpWSLRcPH/cnrCos4i2w==', 'Muhammad', 'Rudi (EIN)', '', '', 0, 1, 1472726087, 0, 3),
(28, 'EIN00133', 'indra.w@ein.epson.co.id', 'anXPpq5vs67xnw1dff9cALtVRbwGnO+qTAuEm3/1AM1n3fimOQ0tqja4opgeWSMCA3tRvJps0/0WhmSZUPM65w==', 'Indra', 'Wahyudi (EIN)', '', '', 0, 1, 1472726117, 0, 3),
(29, 'EIN00089', 'ristanto.t@ein.epson.co.id', 'OvL+p0ZJByBdkrOfBwa/rPGtEa60vxD9fLcmrH8lkTkJQlR11tPCeqLV76T2c4PIWSYYma8ya2RTOFWtEmb/zw==', 'Ristanto', 'Triwidodo (EIN)', '', '', 0, 1, 1472726145, 0, 3),
(30, 'EIN00098', 'amar.f@ein.epson.co.id', '1wqdiZdlOmchcjkIAGpa+d5UgKBVaxNTkSZ+JsgZ+5fbaJguT8wefoLTKD7zt7CnYwPJF96+zT9qp+MVAOcJWw==', 'Amar', 'Fierdaus (EIN)', '', '', 0, 1, 1472726174, 0, 3),
(31, 'EIN00139', 'devina.e@ein.epson.co.id', '2Xzq+cK9F2Erf+0rPxrIA0a2MG1+rCvjsJXDlrQi1CRUwYxDbHmV1CufDG0BoyoLoUVNDII++H5Q7M16UBNFjg==', 'Devina', 'Erlita (EIN)', '', '', 0, 1, 1472726204, 0, 3),
(32, 'EIN00137', 'yuwana@ein.epson.co.id', 'BcYqT4DvLXJjIIA/VzQA4yjPtmGSzCay3UPbiGNpMgLLNtlrqSd4KuXrGUm++aR4ILdN6oHkHYly4K6GkEZxIA==', 'Yuwana', '(EIN)', '', '', 0, 1, 1472726232, 0, 3),
(33, 'EIN00091', 'soeryo.h@ein.epson.co.id', 'aWF4PCdeHhMOI9VUxop6Kxw5FJ3JCieiGRZC7WOQvJtv6xP/cp+i3HRWYDkDQyOb5YK1RKrX1/HmJ/C26e+42w==', 'Soeryo', 'Haryoko (EIN)', '', '', 0, 1, 1472726264, 0, 3),
(34, 'EIN00130', 'kristiyaningsih.wa@ein.epson.co.id', 'rVymia8s8BOahgvJFkLU1PAEUTrhqgnzNUmHskIWJpSagjXd4KTdb51ynbUxqrBUh+amCWsS1A5IwyVGU640nQ==', 'Kristiyaningsih', 'Wardi Astuti (EIN)', '', '', 0, 1, 1472726292, 0, 3),
(35, 'EINCON194', 'herdian.s@ein.epson.co.id', 'nOoj8pDI1bQOGan6oRVdUPLE1xmeXn6xzV28J7lVzvwl+PJXwOg6mgA+SoRzVwVAQqVpuV8M1MBjyubRxrB3Zg==', 'Herdian', 'Sasongko (EIN)', '', '', 0, 1, 1472726323, 0, 3),
(36, 'EIN00104', 'srirosniwaty.g@ein.epson.co.id', 'kP5oKundQHYAsU4pH3YQkbLvLtARGswBKS0U9vJ8Bewb4QYug7Q27MQ+JEDf0m4B8Cm4aRT6+Q4CyUAXRBVIJw==', 'Sri', 'Rosniwaty Gohan (EIN)', '', '', 0, 1, 1472726359, 1472726464, 3),
(37, 'EIN00195', 'hesthi.s@ein.epson.co.id', 'WEl+q0mzdPs7HJEtVuAz7OYj5L8lQacc4NKHOOyIYK58CEkIsWkK7V72W62O60hqTka+13f2jcCoq8VptyjCjg==', 'Hesthi', 'Suranto (EIN)', '', '', 0, 1, 1472726413, 0, 3),
(38, 'EIN10017', 'onlinehelpdesk@ein.epson.co.id', 'acCYE90+cVcSezI9MdM6coZrDXhKnLTJSAA5mFdLdoMJKEIsW9ec5lERaKYVbShcAvlSgX5R5x+3d7yXMkbJnA==', 'Online', 'Helpdesk (EIN)', '', '', 0, 1, 1472726447, 0, 3),
(39, 'EINCON159', 'fajar.r@ein.epson.co.id', 'WJaR3FEoThTKObSv7SUfVgURF5BOVqLWkJDKWaNtbLhc9ASMaHW9Df3bzrmssLdcO3hCPT+xhyL2qNcKVkGZ3g==', 'Fajar', 'Rachmayati (EIN)', '', '', 0, 1, 1472726499, 0, 3),
(40, 'EIN00193', 'fajar@ein.epson.co.id', 'FmhfjoQqLB1vo+/VIcslAAhqd8R8eAg6aS4FMsXhauxNEutKxl2x5IBMnStMdiU/NOC+Ik35xTi+vzGXkeo07g==', 'Fajar', '(EIN)', '', '', 0, 1, 1472726544, 0, 3),
(41, 'EIN00165', 'lestari.s@ein.epson.co.id', '1AGbS0hhzYxHMSBRWa5VJyrcTnJW93aJBXY0gHHtxtRWeTF94POQuw4k2ZgPT9mZ9nwmTlHd+88iCiDg+52TpQ==', 'Lestari', 'Setyorini (EIN)', '', '', 0, 1, 1472726571, 0, 3),
(42, 'EIN00163', 'rezah.a@ein.epson.co.id', '+MGClKGkyLqTue8jWjq3XZ8rBcv+y0DHoo7TYsEI+BpkuOsapwkdOizbNLdZ9WR0EPsrav2wN24EOcTdihfkpA==', 'Rezah', 'Aldino (EIN)', '', '', 0, 1, 1472726598, 0, 3),
(43, 'EINCON200', 'ersha.d@ein.epson.co.id', '/bK50X9ZeqU+de9ghQGaUL/DH5hHtqVRBxBXTvcnLswVR/FrcOKfzXCfejfMA+OLAoxrWyw+x3ETi9kb9Wa3pQ==', 'Ersha', 'Dialektika (EIN)', '', '', 0, 1, 1472726630, 0, 3),
(44, 'EIN10010', 'temp.cs@ein.epson.co.id', 'tXlAFRFgGqB4OJYtcj5yS6x0lV2/FmS8155KfCqchBhRWIr8yjntVdP/8+IAAfimxxJ/I0KjLJ3Y308mgm/o6g==', 'EIN', 'TEMP CS (EIN)', '', '', 0, 1, 1472726792, 0, 3),
(45, 'EINCON292', 'agus.h@ein.epson.co.id', '0LazNhZconUFSCCeRlgN3aQucDfZqMukMNyt1gL9cO0xKkP7NAIdSTM5QghOrR5lLKopsJwZvv+vHZolvfq2dQ==', 'Adi', 'Abdillah (EIN)', '', '', 0, 1, 1472726819, 0, 3),
(46, 'EINCON135', 'fatwa.ay@ein.epson.co.id', '1HGhQl7qNDVSbBbTVs4nRje6bZSxB221DM+zXKJFmqZyBBHCl4zxtZEAPROAHV6eGcoZO5Ck4+kcZkhteh0J4w==', 'Fatwa', 'Ananda Yasin (EIN)', '', '', 0, 1, 1472726860, 0, 3),
(47, 'EINCON152', 'handika.ap@ein.epson.co.id', 'anXPpq5vs67xnw1dff9cALtVRbwGnO+qTAuEm3/1AM1n3fimOQ0tqja4opgeWSMCA3tRvJps0/0WhmSZUPM65w==', 'Handika', 'Agung Prabowo (EIN)', '', '', 0, 1, 1472726885, 0, 3),
(48, 'EINCON60', 'renny.iv@ein.epson.co.id', 'uIxvr4fZplV97uxoRqUhDqukSlFpxu8lyCGYQSHro752rekOTBYGZ2iG0Bhp/N1B6izcSvLyJO7RQwKv6TSP1Q==', 'Renny', 'Indri Vianie (EIN)', '', '', 0, 1, 1472726915, 0, 3),
(49, 'EINCON192', 'nia.dd@ein.epson.co.id', '0hFfeOL8zWa9mJ0X6yCNGBibg8/gQuaSbI4gdfMQb/WqHmcHelcNsxFd+mKZWf4csxBjx9YCieMsm4MBmsLGkQ==', 'Nia', 'Dwidia Dara (EIN)', '', '', 0, 1, 1472726945, 0, 3),
(50, 'EIN00063', 'udhy.b@ein.epson.co.id', 'RNty9dlmJgxtJlDNSBZvgNb9KExy06JJBtIHSopNVIzSumk/NisfsPdNDoYbq7PubE6811jVc+IF0CojGEbiyg==', 'Udhy', 'Baidhowy (EIN)', '', '', 0, 1, 1472727028, 0, 3),
(51, 'EIN00004', 'cici.k@ein.epson.co.id', 'KM1rBaVzDDFiWBWAidjlm2YXAQkwcnBDt348es/wQk0AF3VIgfb1y3GHoNH0SGjJmNqZ4D+LVqLAajHc2BHQyA==', 'Cici', 'Kusmiati (EIN)', '', '', 0, 1, 1472727058, 0, 3),
(52, 'EINCON93', 'otto.h@ein.epson.co.id', '6+WL+ZRUM1T7uBEYagykkEwWkd/80f4gZXQXJX1T2CtbtESMDlyxklK2W2uyRi9bPW2opPYZZMjzDBixvobNzA==', 'Otto', 'Hidayat (EIN)', '', '', 0, 1, 1472727176, 0, 3),
(53, 'EIN00216', 'lina.m@ein.epson.co.id', 'MNn67Fg9wJLL0Wh8EdGvNddDfiO2Yzif2qZLunqh8PLOwH/vM62Ip2CkjMdDs0p7Ftd1TQuE9cWdVtpKvDd0iQ==', 'Lina', 'Mariani (EIN)', '', '', 0, 1, 1472727214, 0, 3),
(54, 'EINCON167', 'irma.ta@ein.epson.co.id', '7ZG5bsr4EniwUA6GKtVqIuSMDLV3rluUDrbC0+I1fPA0WRVBnOz02uzsQX+bb9Y7hQPrcSNXo3MZFuEx72PpRg==', 'Irma', 'Tri Ardhiani (EIN)', '', '', 0, 1, 1472727481, 0, 3),
(55, 'EIN00027', 'joster.j@ein.epson.co.id', 'kP5oKundQHYAsU4pH3YQkbLvLtARGswBKS0U9vJ8Bewb4QYug7Q27MQ+JEDf0m4B8Cm4aRT6+Q4CyUAXRBVIJw==', 'Joster', 'Johannes (EIN)', '', '', 0, 1, 1472727510, 0, 3),
(56, 'EIN00199', 'devie.g@ein.epson.co.id', 'fAYcfI4n99eJ0aJcFdz7OP/vCG0A5FD2ZNRehYHxjTctH9ZFUZDT0bQVwdm9WfYA6KJgfXgnn6YDp/8byQjPMQ==', 'Devie', 'Gusdewi (EIN)', '', '', 0, 1, 1472727542, 0, 3),
(57, 'EIN00184', 'nova.t@ein.epson.co.id', 'CinXz5qUxT31sBVwo7mF8FCz+yaY2t5qo6WYzauoZ87S5wsaCj0tXdzstSu7R+rbHf4MB98Eo0JwhMnJxl9W4Q==', 'Nova', 'Triandhika (EIN)', '', '', 0, 1, 1472727627, 0, 3),
(58, 'EIN00039', 'sunandar@ein.epson.co.id', 'FmhfjoQqLB1vo+/VIcslAAhqd8R8eAg6aS4FMsXhauxNEutKxl2x5IBMnStMdiU/NOC+Ik35xTi+vzGXkeo07g==', 'Sunandar', '(EIN)', '', '', 0, 1, 1472727656, 0, 3),
(59, 'EINCON281', 'rasika.p@ein.epson.co.id', '/bK50X9ZeqU+de9ghQGaUL/DH5hHtqVRBxBXTvcnLswVR/FrcOKfzXCfejfMA+OLAoxrWyw+x3ETi9kb9Wa3pQ==', 'Rasika', 'Palupi (EIN)', '', '', 0, 1, 1472727720, 0, 3),
(60, 'EINCON169', 'thresia.n@ein.epson.co.id', '8s8D3a8hoH3qKTFE7eI5fyMQWVPnr7vYI/aJ4dA5vavsj3TZo4xoUtChCKeA12hJpzL+vLV7+9Od5rCmm4KaYA==', 'Thresia', 'Nova (EIN)', '', '', 0, 1, 1472727784, 0, 3),
(61, 'EINCON108', 'andi.d@ein.epson.co.id', 'H+GqqHbWKbd1EzexxXO1wDKapup4ZJMm3+cDKcFZVw/CxALIv9pKtRj434gtNgwXdl32SN6lpI8v1gfWsDu0Qg==', 'Andi', 'Dwinanto (EIN)', '', '', 0, 1, 1472727818, 0, 3),
(62, 'EINCON149', 'rizky.p@ein.epson.co.id', 'RNty9dlmJgxtJlDNSBZvgNb9KExy06JJBtIHSopNVIzSumk/NisfsPdNDoYbq7PubE6811jVc+IF0CojGEbiyg==', 'Mohammad', 'Rizky Pratama (EIN)', '', '', 0, 1, 1472727846, 0, 3),
(63, 'EIN00183', 'furi.wp@ein.epson.co.id', 'h6FWEcsP2OOa8Hw4fH3/nh27SXkY5sEfmHXPp9P7sYxraZwtZgTX/i+xeS0fsduI50vTnPCIpdz1TggaEheAZw==', 'Furi', 'Widhi Purnomo (EIN)', '', '', 0, 1, 1472727878, 0, 3),
(64, 'EIN00228', 'riska.tw@ein.epson.co.id', 'ToneuRN44Ati2APhxOQHxuWj0iBhTclIYVxXTxtkubPqLvMvGEKX9Heb902a9xLk3um2BFj2AzsRZbtlWEQVUg==', 'Riska', 'Tri Wardhani (EIN)', '', '', 0, 1, 1472727907, 0, 3),
(65, 'EINCON71', 'agung.by@ein.epson.co.id', 'WJncoSnPbYQ5fLNP0JgtT1rqg6cybdhwQ1dafYP+AguarWv9mwBdfYUUEsnN8bWaxMJbFj9FehzIAlwuISR0aA==', 'Agung', 'Budi Yuwono (EIN)', '', '', 0, 1, 1472727940, 0, 3),
(66, 'EINCON247', 'andi.wn@ein.epson.co.id', 'K+C926TTUpFn+MqL/IniVBKLgVJCOQvdtQ3uCKSYZFISELqS0X2KyPAXibrjUowOEvXAJFYIjqep8zCu9yTsdw==', 'Andi', 'Winarto (EIN)', '', '', 0, 1, 1472727969, 0, 3),
(67, 'EIN10013', 'temp.lfp@ein.epson.co.id', '2GQkjtkdqq7a11ewBOuLQKV/y+L07B0Pv82O+tvT90JgNS0+mw5zS9udIMng7Jg7tqBIm6Tena0ofTUnbuB2Hw==', 'EIN', 'TEMP LFP (EIN)', '', '', 0, 1, 1472727996, 0, 3),
(68, 'EIN00224', 'ringola.f@ein.epson.co.id', 'aRj83ZUPJfbL9/EUlQwcwp9SkGSCBa5Uap3koo2rb89AHjIJBRGIi4oDn5b3J4z2VFptoK79hPYquTD8ekoDUw==', 'Ringola', 'Firola (EIN)', '', '', 0, 1, 1472728026, 0, 3),
(69, 'EIN00075', 'zanipar.s@ein.epson.co.id', 'ZPg1M1tsSmmeD0LjtCDaLEqj+Kr50QO27SRmYVwwXCkDulIqG06Pfq0OgjSkkwDng8NTLCa1//RGTXaWpINiJw==', 'Zanipar', 'Siadari (EIN)', '', '', 0, 1, 1472728063, 0, 3),
(70, 'EINCON22', 'maradona.s@ein.epson.co.id', 'BTGbvuUqWDyQ13h+jnC4D4z6/lYisbGpfww8HNaf2Sy9BIF7ZNE7Lt2+M+b2Dfy82N+jB+m2rgN57DZUoMs3BQ==', 'Maradona', 'Siregar (EIN)', '', '', 0, 1, 1472728092, 0, 3),
(71, 'EINCON64', 'yhony.t@ein.epson.co.id', 'H0MURQRdmWznrZQ7Ei2C/vGkC9rdClTowZqK+JWkp0u2JYacXiaw5Ob4EHbTvWpL0b/JOpZMCoFxZrNxL48hDQ==', 'Yhony', 'Tarmidji (EIN)', '', '', 0, 1, 1472728119, 0, 3),
(72, 'EINCON51', 'rommy.w@ein.epson.co.id', 'oTF0NUynHc4DD2ltTqQVmtdrB7w7naYrorVd+kREZ6f7Mc6UEOO6ppVa1lPZAMy9qNPbA1E/Xm644gpe9X5gKQ==', 'Rommy', 'Wardhana (EIN)', '', '', 0, 1, 1472728150, 0, 3),
(73, 'EINCON161', 'jamal.a@ein.epson.co.id', 'PUgSFp3DUBTI7/DWRgiw58QSdq7bSamBtiSzdI430QS0tHBnZR1tKxJr8+B+QlORnbmQ017v7LcoVp06zj131A==', 'Jamal', 'Arif (EIN)', '', '', 0, 1, 1472728195, 0, 3),
(74, 'EINCON08', 'ronny.s@ein.epson.co.id', 'AieZgJYm62G1l17I57SyPtiCzScjPBPf81vydn9zpGvKaXGRS4PmjVZO3wYIuiOOstjObJlNA58n5HpuC/jthg==', 'Ronny', 'Sasongko (EIN)', '', '', 0, 1, 1472728238, 0, 3),
(75, 'EINCON118', 'jhon.e@ein.epson.co.id', 'Xv/4IqcC3mg6NqXxoNcNS4Xq+9mEqdb0yIwJsIcmz4gwtXcHZbiavOfs7vksaT3vg7Z8bZMLxpoatGN0ZLeN3w==', 'Jhon', 'Eron Pasaribu (EIN)', '', '', 0, 1, 1472728269, 0, 3),
(76, 'EINCON138', 'adhitia.dm@ein.epson.co.id', 'OUAR2E2/4znsr9cgn0yqFRCaRIDb1Qy3K3RqzjYKnENNVGXb5dftjH9b20+jrA5YIh3mye1B8e+P5PgEk7Cbvg==', 'Adhitia', 'Duta Mirady (EIN)', '', '', 0, 1, 1472728302, 0, 3),
(77, 'EINCON151', 'dini.m@ein.epson.co.id', 'oxsYNT3lO/hBtq5mVWpPqUalJMbPQrS4PFmKLuEfAEmk8mjk4WWHNZf32Jzjsb20fDIUE/FeTunGfNRS5Rbu/A==', 'Dini', 'Meiriani (EIN)', '', '', 0, 1, 1472728331, 0, 3),
(78, 'EIN00217', 'almiza.z@ein.epson.co.id', 'RsytyD/LJjP2v9QHtaM2j+g99O7niDFAoLsaVQgpq2umz3BEZvBnCMwleeXqx7DtATkavpxqmheaIHXrF6R8vQ==', 'Almiza', 'Zuria (EIN)', '', '', 0, 1, 1472728374, 0, 1),
(79, 'EINCON208', 'nancy.ip@ein.epson.co.id', 'aFu/d+woKIsxtnlAYV4QRcVFdRqYx6s9p3y/28cVjZZBxjUGulrnq/H6jwG26IqCDVumJavZYAvEAfWMb56LZw==', 'Nancy', 'Indah Pardede (EIN)', '', '', 0, 1, 1472728521, 0, 3),
(80, 'EINCON215', 'noviana@ein.epson.co.id', 'cGdNXqDy2+ubLss96Vfa3jZy8TUduHSYyaPOG3HGPTxDEMLXCfMgB28uIewoM4/iLAoA+ivfc/V9M7h0nmt6PQ==', 'Noviana', '(EIN)', '', '', 0, 1, 1472728556, 0, 3),
(81, 'EIN00011', 'wida.v@ein.epson.co.id', '7d/Mn9Fu7pFAbjEHwhpWjAN5P4efxFZOvnMF9ZoZh/kNC/4cj+bLKeBtLUQ6jkdKSFHIF5NFb4mmmwOC/RzBzw==', 'Wida', 'Vridayanti (EIN)', '', '', 0, 1, 1472728584, 0, 3),
(82, 'EINCON150', 'rosa.r@ein.epson.co.id', 'yjerwWHJYBZFjvix+r4wGjBg7rh/sJrjEyKcryJOMZe7RiscJm5xwhwM+tEQ69RL/ljhmGIgl19yTMd9Ih9xYg==', 'Rosa', 'Riastiningrum (EIN)', '', '', 0, 1, 1472728616, 0, 3),
(83, 'EINCON139', 'wahyu.u@ein.epson.co.id', 'Bm/qw1IFM32pjh86k0NriL0o/crAfDxayLOTSQtiPRXr9/FcG+wWxd03IWWDcFftVPBUqxVKlOlumVLSVE1Qvw==', 'Wahyu', 'Dinary Umbarawaty (EIN)', '', '', 0, 1, 1472728648, 0, 3),
(84, 'EINCON227', 'trianggi@ein.epson.co.id', 'o4aJpaMgZ8JubqakjKYF1arQbLxhJz+v3CLpwlNVp3N4tyX9R1Mq0tJk0oSUY3PBsB+cmXYp3F4yMASlqhZguQ==', 'Tri', 'Anggi Firdaus Hutahaean (EIN)', '', '', 0, 1, 1472728675, 0, 3),
(85, 'EINCON226', 'debora.as@ein.epson.co.id', '6+WL+ZRUM1T7uBEYagykkEwWkd/80f4gZXQXJX1T2CtbtESMDlyxklK2W2uyRi9bPW2opPYZZMjzDBixvobNzA==', 'Debora', 'Ayu Sita (EIN)', '', '', 0, 1, 1472728702, 0, 3),
(86, 'EINCON257', 'ranidyah.s@ein.epson.co.id', '8s8D3a8hoH3qKTFE7eI5fyMQWVPnr7vYI/aJ4dA5vavsj3TZo4xoUtChCKeA12hJpzL+vLV7+9Od5rCmm4KaYA==', 'Ranidyah', 'Sarie (EIN)', '', '', 0, 1, 1472728730, 0, 3),
(87, 'EIN00062', 'ade.n@ein.epson.co.id', 'WJncoSnPbYQ5fLNP0JgtT1rqg6cybdhwQ1dafYP+AguarWv9mwBdfYUUEsnN8bWaxMJbFj9FehzIAlwuISR0aA==', 'Ade', 'Ayu Natalia (EIN)', '', '', 0, 1, 1472728758, 0, 3),
(88, 'EINCON202', 'geotama.r@ein.epson.co.id', 'H0MURQRdmWznrZQ7Ei2C/vGkC9rdClTowZqK+JWkp0u2JYacXiaw5Ob4EHbTvWpL0b/JOpZMCoFxZrNxL48hDQ==', 'Geotama', 'Riamputra (EIN)', '', '', 0, 1, 1472728790, 0, 3),
(89, 'EINCON140', 'agung.p@ein.epson.co.id', 'RsytyD/LJjP2v9QHtaM2j+g99O7niDFAoLsaVQgpq2umz3BEZvBnCMwleeXqx7DtATkavpxqmheaIHXrF6R8vQ==', 'Agung', 'Priyanto (EIN)', '', '', 0, 1, 1472728833, 0, 3),
(90, 'EINCON57', 'andri.d@ein.epson.co.id', '17E4wOCThsdq9XsxnDB3qcRs/rMcAhnJb4vRHJK4Akv5thmTnR6EfPT3U4Z9yLYDHDKFdTSr1kFuWjVDR3Qdlg==', 'Andri', 'Dayadi (EIN)', '', '', 0, 1, 1472728882, 0, 3),
(91, 'EINCON204', 'kamal .h@ein.epson.co.id', 'J2iSabRexGWBlFyDuGS8bqTzaayAnWe2FvnDvT67WGAwxkZCILtiBJmfCpdsSaZ5MNu7Zn3T7Iq0PSbQQf4v9Q==', 'Kamal', 'Hakim (EIN)', '', '', 0, 1, 1472728912, 0, 3),
(92, 'EINCON252', 'resti.j@ein.epson.co.id', 'Vn/McWiJ4WB5kh4ztPbik2TZsgTEmJUCnsiUvcodjtR0oH0/iGcgHtWzsdsPozStyCOSILTEvYpBgqyYGjFWAw==', 'Resti', 'Juliani (EIN)', '', '', 0, 1, 1472728945, 0, 3),
(93, 'EIN00048', 'arief.s@ein.epson.co.id', 'B7dmIeVULJnsuQN7xMDI8ToPggMHgbaodyzvk+BGiuGGnh7iyd7uZEH0FjutzHnlMg7BMNMYgQHSd6Vc+EdgFA==', 'Arief', 'Susanto (EIN)', '', '', 0, 1, 1472728983, 0, 3),
(94, 'EINCON279', 'dyaharini.n@ein.epson.co.id', 'SrGUb20i/pp4GznvFHcimg7awKAfH5j5k182WMDN9NoBJSz/gCJ7kwKqVtTjPszHmAOOeMJqrKSYeqFPQfjatg==', 'Lizza', 'Semestani (EIN)', '', '', 0, 1, 1472729016, 0, 3),
(95, 'EINCON193', 'stefany.m@ein.epson.co.id', 'bwyhG9VSsPrj3k7ERI5co8IF3Z0WHlmqj/JbfYCzPjIxEnp+GG3Hb19Z7R8JdQEIuvwyMMJZcjTzbg0EH4iv+g==', 'Romauli', 'Stefany Manik (EIN)', '', '', 0, 1, 1472729048, 0, 3),
(96, 'EIN00019', 'muchammad.n@ein.epson.co.id', 'c8ePJxzgQbsvAUT5VAR2DFWQ2/nuffu7a+VhAR/6aOuQK8XI9Hvh0dhR1uCTmzntbIzS8eH29LTx1jmltqNLYA==', 'Muchammad', 'Husni Nurdin (EIN)', '', '', 0, 1, 1472729108, 0, 3),
(97, 'EINCON95', 'ary.d@ein.epson.co.id', 'OE/VBeha4xNjFlLlML/iBv9ZedxmIHzAkoxXw7kuRWREtyjxP94uz8I4E/wBpy8P32aItDYbSNJ9Zyy718KVvw==', 'Ary', 'Susana Dewi (EIN)', '', '', 0, 1, 1472729202, 0, 3),
(98, 'EIN00072', 'prima.k@ein.epson.co.id', 'tcdUSBnV9rkHVbqvCYNetMtgyC7mK152hlqNneGCjyFPcLXLizp3mstuF/W4mW6ptbPWEy2bUu5xuqm4HPttRg==', 'Sri', 'Prima Kusdianti (EIN)', '', '', 0, 1, 1472729232, 0, 3),
(99, 'EINCON197', 'martin alfred.n@ein.epson.co.id', 'kh4zaaoyaT4MdoFYQyY5Q/hId2DHF6IL2wsjV2u1Or+XeKcgqYcWBbZtvMd/1+gY6F3dNWaVQD4PE83UiKJHRw==', 'Martin', 'Alfred Nobel Simamora (EIN)', '', '', 0, 1, 1472729262, 0, 3),
(100, 'EINCON184', 'lia.p@ein.epson.co.id', 'GV0KYksdBVxnZ9CDExJJ/R3Fd9M+Wt78wuoMKv+oW31S5Lwoay4HNaPDdnZTdpdgeVscyBfLykIyX1ZCjRDtAQ==', 'Lia', 'Pratiwi (EIN)', '', '', 0, 1, 1472729294, 0, 3),
(101, 'EINCON128', 'meggy.a@ein.epson.co.id', 'vjiYjjPMNz1TqmbXw6kChlBwFFC22SAsPv2yzz4OJFYwkamRGsddAYE5/qZ6wJFKq5HkRg+gTs7QYwyVRi27LQ==', 'Meggy', 'Alex Jaguar (EIN)', '', '', 0, 1, 1472729325, 0, 3),
(102, 'EIN00058', 'nolly.d@ein.epson.co.id', 'QXIGGvvbSH4eTNuMU6Cdb2V7kiwNuEK+mXA41F7Vzo8SgEha2oOfiPGNQgvFXwoRfT6/P9XOrGNoMCEjc5zorA==', 'Nolly', 'Dhanurendra (EIN)', '', '', 0, 1, 1472729493, 0, 3),
(103, 'EINCON79', 'junaedi@ein.epson.co.id', 'pQxTB6NKOh/KTjGhwvYWuFjl8GpG90Ou1UKdOl78WSdRqPdqPDrSgkPjOGMGE+ebDzrpZDDyH3BzKFvbe5exiA==', 'Junaedi', '(EIN)', '', '', 0, 1, 1472729523, 0, 3),
(104, 'EINCON130', 'sigit.s@ein.epson.co.id', '6QeCVSsYDB9WsmcVEq1wYSuwLQZdliX/8Xbj/j6DwiBTE0hzn2EmN6X5+BvsvgWGkyNW/+JdnYOf82Zh+JSXAA==', 'Sigit', 'Setiawan (EIN)', '', '', 0, 1, 1472729554, 0, 3),
(105, 'EINCON172', 'ahid.n@ein.epson.co.id', 'DGKPAZNIvoHBdX3qQsSqaeDbSwJVlOew7AgIIv5qC3leZGDnWstWhJwnIiCTVufpjLHoC2ka02LvrTsa+MZ7ZA==', 'Muhammad', 'Ahid Nurprastyono (EIN)', '', '', 0, 1, 1472729584, 0, 3),
(106, 'EIN00054', 'ilham.b@ein.epson.co.id', 'EBx9DtrWT0ENl3MeUjvD0nRmSWAs84nByPsOp56wNjH+eoniyGRee9sQfMsrUTeyEwvKlVL5gGVwbqOpGwRilw==', 'Ilham', 'Budi (EIN)', '', '', 0, 1, 1472729612, 0, 3),
(107, 'EINCON75', 'rakhmanto.@ein.epson.co.id', '9DhKewLFwmE5Gki0QhG9m+dQJhzksgsyhE30jB1XQEvlH090P6OlaFYSJoX1OEibMyALR7hYbPzwMif37XQlMQ==', 'Rakhmanto', '(EIN)', '', '', 0, 1, 1472729640, 0, 3),
(108, 'EINCON125', 'anton.s@ein.epson.co.id', 'uLL4SAoTE+NF/f6oEUiXwzqb5Dl80G0CHwC60X1eKcNA95OaeJ6J2Kw4KjaSYiqcYgtQu0CFdxIxEaEmBYTVTg==', 'Anton', 'Setyadhi (EIN)', '', '', 0, 1, 1472729666, 0, 3),
(109, 'EIN00212', 'erlina.dl@ein.epson.co.id', 'W42GdPLCRcMwP5T9wd9RTW9Fg7b0T64znBNgdr3E85xvllaBx4/FUxwSz3UAfHWSjSGEvhxOBBW15aVGIwvIBg==', 'Erlina', 'Dyah Listyowati (EIN)', '', '', 0, 1, 1472729703, 0, 3),
(110, 'EINCON34', 'natalia.l@ein.epson.co.id', '38j0AbrRVgT84gmyUdXqNINQAJNMLtDE94ble92LndR4IQaAmGop7Ld8uOcEH+LlyADQGRNrq1JUU2dUYNVGXg==', 'Natalia', 'Lestari (EIN)', '', '', 0, 1, 1472729729, 0, 3),
(111, 'EIN00046', 'marita.s@ein.epson.co.id', 'QmNB7WFASKWo5V/HwCxkfna7Xc+DbdK0NFhM39yyJm7ddaAs3h1pvax091EsxukE6Yx8RDpCyCaTwLUpoHjzUA==', 'Marita', 'Sari (EIN)', '', '', 0, 1, 1472729779, 0, 3),
(112, 'EINCON195', 'rofi.s@ein.epson.co.id', 'h15wO+kOGqYzR5U7EOO+JkmGnGybC7QFT4yRpLw5kGYzB9fViAwEcOz4ZHRRA+slPsPDR4wOFabxJNmvl60jBA==', 'Rofi', 'Syaoqi (EIN)', '', '', 0, 1, 1472729812, 0, 3),
(113, 'EIN10030', 'pungky.e@ein.epson.co.id', 'q7h951A+zAagCqsQQPr3L/2xuWmTCna2Sx63yHwf2r8Vw8oU9VY8280Itlcm/Ml4eoGO1XgAl1LRRXbVag3auQ==', 'Pungky', 'Erawati (EIN)', '', '', 0, 1, 1472729839, 0, 3),
(114, 'EINCON114', 'syahrizal.a@ein.epson.co.id', 'rnNr9JnMXcfrLaFEUHERmJI7t8VraRfHJhG8ThtmA3hHnzBivL0HkMp4Yto0yQfIXpN/ReeOyi+uls9fMRxx9Q==', 'Syahrizal', 'Aprianto (EIN)', '', '', 0, 1, 1472729870, 0, 3),
(115, 'EINCON181', 'anang.m@ein.epson.co.id', 'ko44YcC70OgXsHfZQEgLYQUmlYIiJ5k44mSiMpwNDZDZMp6v/84aMEtOReE3rJXIiIEwvBLEvGXDaMyYecOV8Q==', 'Anang', 'Maulana (EIN)', '', '', 0, 1, 1472729899, 0, 1),
(116, 'EINCON37', 'augustina.h@ein.epson.co.id', 'VQjmLcgJIWkikyzOD37lilhxUp+6RvoIfhZod/sT9wneUSEr+qBPD3k072MzVyZfkQVeMKFHR2GVEy1/vFCpnw==', 'Augustina', 'Sri Harniati (EIN)', '', '', 0, 1, 1472729940, 0, 3),
(117, 'EINCON129', 'taufiq.s@ein.epson.co.id', '+eN1WrC4U0kO1cIjvxSfEo0c8BsxxTw5+SkNGzp7weKnpKEsEf+x2MtRoeLhQH3ZfZG6ZpubmCVZuM6wFsdhLQ==', 'Taufiq', 'Soesman (EIN)', '', '', 0, 1, 1472729967, 0, 3),
(118, 'EINCON145', 'bayu.a@ein.epson.co.id', 'fh3i53jHZYraeTfYTws5+6EmbviKpF3KVpyUIFpCaxqXVhGgprqPddymdLjWgYZOkmtV3UdsyC+/0MIRBTAi1Q==', 'Bayu', 'Airlangga (EIN)', '', '', 0, 1, 1472729993, 0, 3),
(119, 'EINCON89', 'sri.h@ein.epson.co.id', '4bkv0x82ViuGe43svmOyRJSSzDbB41+6kW/5hVpo9LO9Ncre4RGjVOZO2Dpt/tHN9G3OZvjWmsvyonrEjOaBHg==', 'Sri', 'Harmini (EIN)', '', '', 0, 1, 1472730030, 0, 3),
(120, 'EINCON104', 'hesti.a@ein.epson.co.id', 'Z/Xl2vsT375R8cBDj+nnFwMg3L3n8qKvBfZHHjXgpKnH6I+i4oWclTV2zlpqv+cKUGRf8CaNW2aLnEefsiv9YQ==', 'Hesti', 'Astina (EIN)', '', '', 0, 1, 1472730073, 0, 3),
(121, 'EINCON203', 'harry.s@ein.epson.co.id', 'Vszfo2/+vXsIsEG1SzzN/ITH5dbrrZC8TobY34IDmd481FGlJUhJ5J/v4FgBt3oKiBx55qaWst1GoDEeAgct+g==', 'Harry', 'Suseno (EIN)', '', '', 0, 1, 1472730151, 0, 3),
(122, 'EIN00038', 'maya.s@ein.epson.co.id', 'JgO5y8NJe5egzqSG5+6TQePOz0/PyF0odXRK/62Gb3NIl+3hXLmMWESOXgHtwizK4lp1k4LZPWntM241DgFUTg==', 'Maya', 'Sari Saputro (EIN)', '', '', 0, 1, 1472730222, 0, 3),
(123, 'EINCON50', 'rahadian.s@ein.epson.co.id', 'zTemK9oYEttlsXWzuPlM/j63POJT5m933r0LkNuPEGuAqwuKHsae7cY03YVDo7671jJpAFHEJXWw6gJK3Xn9Eg==', 'Dodi', '(EIN)', '', '', 0, 1, 1472730278, 0, 3),
(124, 'EIN00203', 'pipit.a@ein.epson.co.id', 'tID/cNRHX2Izg3Y+Gi7ATvUR5bYdIwuPfp9drA3V1Uurx6TcJibBip0XShML+GnWjl0lMynL3dqOCwvDjVHCNA==', 'Pipit', 'Afriyanti (EIN)', '', '', 0, 1, 1472730313, 0, 3),
(125, 'EIN00074', 'robith.i@ein.epson.co.id', '+qq4ky9UDMtjNNar3UWVfgxK7mpIQQiHfGANqKD6+QqMhnhyBvluvskNUUMDdAndO3vRHwTPedB199UT/vek8A==', 'Robith', 'Isnaini (EIN', '', '', 0, 1, 1472730345, 0, 3),
(126, 'EINCON07', 'andri.f@ein.epson.co.id', 'obPQl+pCGRLxxpf2ADvKjoNlVv3SP2Vf2wIdg5MAf6rCooC5mKDxvJurZQ/r9qJl7CfpNl/lLqmk13VSrRdTRw==', 'Andri', 'Friyantara (EIN)', '', '', 0, 1, 1472730378, 0, 3),
(127, 'EINCON63', 'luther.v@ein.epson.co.id', 'qJ1JewQPhjrgN7gigxBffVleH3G9HCEWmoSPQObmYylw+7MCb2ztrWmcT2FtppvQESEp2cbDN0sFKO9h/99cLw==', 'Luther', 'Valentine (EIN)', '', '', 0, 1, 1472730405, 0, 3),
(128, 'EIN00070', 'nurlaela@ein.epson.co.id', 'DmchP4C9UkIuijgtZsZUTZA4SMUI2j6uuOVf25msqImbR37C5ShKTT6d8vAnHm2tfhjMIt907qu4JqHqUhgbXQ==', 'Nurlaela', '(EIN)', '', '', 0, 1, 1472730448, 0, 3),
(129, 'EINCON201', 'janet.a@ein.epson.co.id', '1RBa4lpLgCnduxkZqFyo/Cfy0fizebslOCeQV6tSTckYeMUvdLbTrbS/u9I5RLkCpjmbjk36DRcIUpRAJAVrkw==', 'Janet', 'Ariana (EIN)', '', '', 0, 1, 1472730483, 0, 3),
(130, 'EINCON196', 'mfarid.c@ein.epson.co.id', '/JrzZpW5DPHszVrlTNFdjR2Mugy99ph+Fkkgsh7XUujqZnulzSnjtBAA1zmqQw6ShAOpIuo9wR7KqoVKJLU95g==', 'Muhammad', 'Farid Cahyadi (EIN)', '', '', 0, 1, 1472730526, 0, 3),
(131, 'EIN00018', 'sulistyo.n@ein.epson.co.id', 'gwTsyi8G+Zlbv/uRTidy/HUFAgAoU9S1VUoR7vA+tugFgA653nH48wasN+UQWJxScKOu2n5qQPW9GNP5OxugLQ==', 'Sulistyo', ' Nugroho (EIN)', '', '', 0, 1, 1472730599, 0, 3),
(132, 'EIN00214', 'eko.h@ein.epson.co.id', 'ak5EDSo1RSEpkfscsV3mTCterNTzknHN8yxiCSODe8j8b/uaqQbNuizU/o99fZoQv8dQKPWIsuyJvNsuOyV/Qg==', 'Eko', 'Heriyanti Hastuti (EIN)', '', '', 0, 1, 1472730629, 0, 3),
(133, 'EIN00085', 'andryanto.w@ein.epson.co.id', 'sHj9MoVD8olZQlyJdHO7fEGZtIgdr27F8u4TBbapoIjHFkFmV9RVP+Ms+iKd/tLOF/TUdQnedlH6ZwpltxCxjw==', 'Andryanto', 'Candra Wijaya (EIN)', '', '', 0, 1, 1472730663, 0, 3),
(134, 'EIN00222', 'karana.km@ein.epson.co.id', 'VoEWNkAv/9Dn1B3UlmnvjLmzHRuprcudUZAj4amvJCeSdUkjdurLoMl3jZJdaYjCoLUnQ+WjmsT8k6iJnDSnlg==', 'Karana', 'Krisna Mukti (EIN)', '', '', 0, 1, 1472730687, 0, 3),
(135, 'EINCON188', 'hut.a@ein.epson.co.id', 'xTVo3NWrOAAkmL8M+/R5S8aGDuPeSKTsLnRlOa9aTgefTRwa5T956wlSe01SHdRL3K3VhFUptJRiz4qIG7h4TQ==', 'Hut', 'Abriyadi (EIN)', '', '', 0, 1, 1472730761, 0, 3),
(136, 'EIN00221', 'nova.e@ein.epson.co.id', 'jN6hgbA6ZujTyaD3P4rO+lw/lxaJ5iFkrbWWtcH/8kd0sGQQ+WBLzeD8DqZdYBKaZSZIgUsdbANF3rvAke74RA==', 'Nova', 'Eropiana (EIN)', '', '', 0, 1, 1472730812, 0, 3),
(137, 'EINCON176', 'indra.p@ein.epson.co.id', 'JLNdIKcEKCsR3sNhDhkM7GhcCdLZgkELraI/SjruXqwLvKv4Tr18YI1qyXTF1IQrRu+qAZfbHqYaH5BZ0kqb2A==', 'Indra', 'Pratama (EIN)', '', '', 0, 1, 1472730842, 0, 3),
(138, 'EINCON154', 'ahmad.r@ein.epson.co.id', 'SA5szQ402o1+odk2Pi9G9RuHJ8/RgQO8qTRlb/rVqARK8cH0h9TQ+k25tJgdaP4auNqU2siiuwZAhC9kGF9WJg==', 'Ahmad', 'Rifai (EIN)', '', '', 0, 1, 1472730872, 0, 3),
(139, 'EIN00077', 'riswin.l@ein.epson.co.id', 'TMlY2lbCbE3Jw85rTqdgXq8RJSup36XNhCdr85oc0b2eQACIG4bY3H4zH6zDWcfH+lIfbqX1+xwX4wv6yFiS7A==', 'Riswin', 'Li (EIN)', '', '', 0, 1, 1472730904, 0, 3),
(140, 'EIN00213', 'karman@ein.epson.co.id', 'MOMmR3+x3m71RqT/Pn5aJiP8A+hhniY+QHpR2BnD29anD9Lya2i0EV6GCPbHlj+AyD2KrIpXyCdZ4urc8g24lQ==', 'Karman', '(EIN)', '', '', 0, 1, 1472730933, 0, 3),
(141, 'EINCON291', 'diana.a@ein.epson.co.id', '9F/UE4b/L+4AKFn0DbQyUHdHwQX4vYkO3CwWHHnKxU+vbTCAHd8zyaDHO/DJwm20s/pOonxC6tqQeprRnnmGOA==', 'Diana', 'Ayu Istiqomah (EIN)', '', '', 0, 1, 1472730982, 0, 3),
(142, 'EIN00223', 'indra.h@ein.epson.co.id', 'mDpiQW6vYc/sbPBJvUvs2KvyXoJwO8o/WD+8wrkxjycPMHbdDyYuhEAvpauTKKo58msd+wu3ozdMMyBa4uI6XQ==', 'Indra', 'Herdian (EIN)', '', '', 0, 1, 1472731010, 0, 3),
(143, 'EIN00174', 'fahmi.rs@ein.epson.co.id', 'G3TQzTW9cxC4Dmb+TUKHwb783F/HGuzQs7JCxtn3OWEjSl1qFvwG/f6QYwkdnk/h0H2R+yiYGMfSnqPHNbjEgg==', 'Fahmi R', 'Syamsudin (EIN)', '', '', 0, 1, 1472731043, 0, 3),
(144, 'EINCON177', 'andi.w@ein.epson.co.id', 'wwlLBmX6NrLvdPGIDE9asoYyeDgX99ARCrft8LilLPJRLg0dPOPCMJ1fU9dnWPW9DVe7+rvf8DZjFp2yLlA5CA==', 'Andi', 'Wiyogo (EIN)', '', '', 0, 1, 1472731232, 0, 3),
(145, 'EINCON214', 'reza.nz@ein.epson.co.id', '5mRZs80p6BJcNgZbPGaUuzlcljUO9pLCBkoSFHiMdktDpO1/RsnD0rFWV7+/ldE5MTZOzy3QrmoLeIVFazFE5g==', 'Reza', 'Noor Zaky (EIN)', '', '', 0, 1, 1472731268, 0, 3),
(146, 'EINCON213', 'yulia.as@ein.epson.co.id', '6h5GwBS4etOnWfyRTNytI83nk5LmVDPT4jwYmRfSoAN5eUdRJAx7gzwocIAWYp/BVI48K4uKUBs8vKO9fRMLsg==', 'Yulia', 'Aprida Sari (EIN)', '', '', 0, 1, 1472731302, 0, 3),
(147, 'IPB ILMU KOMPUTER 2016', 'aldipradana@gmail.com', 'zTemK9oYEttlsXWzuPlM/j63POJT5m933r0LkNuPEGtjK0z8+efxOUL5AKW5hVNeqG4T9X4f0F4FtUKRRlo+7A==', 'Mhd Tessar ', 'Aldipradana', '', '', 0, 1, 1472731536, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_lends`
--

CREATE TABLE `user_lends` (
  `users_id` int(11) NOT NULL,
  `lend_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `sent_status` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lend_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`) VALUES
(1, 'Super User'),
(2, 'Admin'),
(3, 'Employee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inventory_inventory_categories1_idx` (`inventory_categories_id`),
  ADD KEY `fk_inventory_inventory_types1_idx` (`inventory_types_id`),
  ADD KEY `fk_inventory_inventory_status1_idx` (`inventory_status_id`);

--
-- Indexes for table `inventory_categories`
--
ALTER TABLE `inventory_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_status`
--
ALTER TABLE `inventory_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_types`
--
ALTER TABLE `inventory_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lends`
--
ALTER TABLE `lends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lend_inventories`
--
ALTER TABLE `lend_inventories`
  ADD PRIMARY KEY (`lend_id`,`inventory_id`),
  ADD KEY `fk_lend_inventories_inventory1_idx` (`inventory_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_logs_users1_idx` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_user_roles_idx` (`user_roles_id`);

--
-- Indexes for table `user_lends`
--
ALTER TABLE `user_lends`
  ADD PRIMARY KEY (`users_id`,`lend_id`),
  ADD KEY `fk_user_lends_lend1_idx` (`lend_id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;
--
-- AUTO_INCREMENT for table `inventory_categories`
--
ALTER TABLE `inventory_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `inventory_status`
--
ALTER TABLE `inventory_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `inventory_types`
--
ALTER TABLE `inventory_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `lends`
--
ALTER TABLE `lends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `fk_inventory_inventory_categories1` FOREIGN KEY (`inventory_categories_id`) REFERENCES `inventory_categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventory_inventory_status1` FOREIGN KEY (`inventory_status_id`) REFERENCES `inventory_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventory_inventory_types1` FOREIGN KEY (`inventory_types_id`) REFERENCES `inventory_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `lend_inventories`
--
ALTER TABLE `lend_inventories`
  ADD CONSTRAINT `fk_lend_inventories_inventory1` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lend_inventories_lend1` FOREIGN KEY (`lend_id`) REFERENCES `lends` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `fk_logs_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_user_roles` FOREIGN KEY (`user_roles_id`) REFERENCES `user_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_lends`
--
ALTER TABLE `user_lends`
  ADD CONSTRAINT `fk_user_lends_lend1` FOREIGN KEY (`lend_id`) REFERENCES `lends` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_lends_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
