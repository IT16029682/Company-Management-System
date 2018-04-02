-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2017 at 08:39 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itp`
--

-- --------------------------------------------------------

--
-- Table structure for table `addorder`
--

CREATE TABLE `addorder` (
  `DID` int(11) NOT NULL,
  `OID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applyleave`
--

CREATE TABLE `applyleave` (
  `EmpNo` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NumOfLeave` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applyleave`
--

INSERT INTO `applyleave` (`EmpNo`, `Date`, `NumOfLeave`, `StartDate`, `EndDate`) VALUES
(9, '2017-11-17 06:33:36', 1, '2017-11-03', '2017-11-04'),
(9, '2017-11-17 06:41:55', 3, '2017-11-03', '2017-11-06'),
(10, '2017-11-10 06:57:16', 3, '2017-11-17', '2017-11-20'),
(14, '2017-11-19 06:32:43', 14, '2017-11-16', '2017-11-30'),
(15, '2017-11-19 08:30:04', 4, '2017-11-22', '2017-11-26'),
(15, '2017-11-19 08:30:42', 4, '2017-11-27', '2017-12-01'),
(15, '2017-11-19 08:31:40', 5, '2017-12-06', '2017-12-11'),
(15, '2017-11-19 08:49:05', 2, '2017-11-22', '2017-11-24'),
(15, '2017-11-19 12:50:20', 1, '2017-11-01', '2017-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CID` int(11) NOT NULL,
  `Cname` varchar(50) NOT NULL,
  `Caddress` varchar(100) NOT NULL,
  `CtelNo` varchar(12) NOT NULL,
  `CtelNo2` varchar(12) DEFAULT NULL,
  `Cemail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CID`, `Cname`, `Caddress`, `CtelNo`, `CtelNo2`, `Cemail`) VALUES
(12, 'Brandix Apparel Solutions Ltd.', 'Welisara', '0114727444', '', 'info@brandix.as.com'),
(13, 'Rasa Hari Products (Pvt) Ltd.', 'No 53, Nagoda, Kandana.', '0112978456', '0112978467', 'rasahari@yahoo.com'),
(14, 'Ransilu Fashion House', 'No. 23/5, Negombo Road, Ja-Ela', '0117743699', NULL, NULL),
(17, 'ABC Solutions (Pvt) Ltd.', 'No.42, Ela Road, Raddolugama', '0119009963', '0119019964', NULL),
(18, 'Shalini Perera ', 'No. 43/3, Sri Wickramasinghe Mawatha, Raddolugama', '0767447147', NULL, 'shaliniperera@gmail.com'),
(19, 'Udeshi Perera ', 'No. 15, Church Lane, Ja-Ela', '0112955004', '0776461289', 'pereraudeshi@yahoo.com'),
(20, 'R.V.S. Constructors Company', 'No. 21, Old Negombo Road, Aluth Mawatha, Wattala', '0117400123', '0117400456', NULL),
(21, 'Krishan Silva ', 'No. 6, Ranaviru Mawatha, Ja-Ela', '0716563320', NULL, 'silvakrishan@yahoo.com'),
(22, 'Hamid T.', 'No. 34, Old Negombo Road, Ja-Ela', '0766223156', NULL, 't.hamid@yahoo.com'),
(23, 'Kayomi Perumathanthri', 'No. 25, Pansala Mawatha, Borella', '0112329987', '0776633014', 'kperumathanthri@gmail.com'),
(24, 'Dinith Gamage', 'No. 29/7, Hill Street, Borella', '0714455231', NULL, 'gdinith@gmail.com'),
(25, 'Nimshi Palihawadana', 'No. 2, 2nd Cross Street, Raddolugama', '0112901456', '0779412753', 'pnimshi@yahoo.com'),
(26, 'Olu Pharamacy', 'No. 30, Negombo Road, Kandana', '0117897899', '0117897890', NULL),
(27, 'Thudella Security (Pvt) Ltd.', 'No. 24, 1st Lane, Thudella', '0116546544', '0116546545', 'securityforthudella@yahoo.com'),
(28, 'Erandi De Silva', 'No. 65, 4th Lane, Wattala', '0715867500', NULL, 'desilvaera@gmail.com'),
(29, 'WQS Traders', '23, Negombo Road, Mabole', '0113213210', NULL, NULL),
(30, 'Amal Travels', 'No. 30, Kirula Road, Negombo', '0110123012', '0110223012', 'travels.amal@gmal.com'),
(31, 'Sunimal Informatics', 'No. 23, Kochchikade, Negombo', '0117753357', '0113577553', 'infosunimal@yahoo.com'),
(32, 'House of Fashion', 'No. 78, Kuruwita Mawatha, Negombo', '0112995195', '0112995196', 'houseoffashion@slt.com'),
(33, 'Odel (Pvt) Ltd.', 'No. 45, Alwis Mawatha, Hendala, Wattala', '0112944566', '0112944577', 'pvtodel@softlogic.com'),
(42, 'Shalini De Silva', 'No. 2/45, Church Lane, Mahabage', '0777554410', NULL, 'shali@yahoo.com'),
(43, 'Michelle Valencia', 'No. 90, Church Lane, Wattala', '0112996336', '0779879878', 'Micky@gmail.com'),
(44, 'Muditha Gajanayaka', 'No. 25, Medawelikada Road, Rajagiriya', '0773330021', NULL, 'mudigaja@gmail.com'),
(45, 'Nushara Rajarathne', 'No. 2, Mangala Road, Nugegoda', '0711123202', '0112655555', 'n.rajarathne@yahoo.com'),
(46, 'Ann Alles', 'No. 34, Pansala Mawatha, Peliyagoda', '0779999654', '0112778899', 'ann.alles@gmail.com'),
(47, 'Napthali Hettiarachchi', 'No. 56, Malwatte Mawatha, Ja-ela', '0779998879', '0115566925', 'n.hetti@gmail.com'),
(48, 'Hasakalani Abeysinghe', 'No. 98, Thotupola Road, Mahabage', '0765550123', NULL, 'abey123hasakalani@yahoo.com'),
(49, 'Pan Restaurent ', 'No. 34, Old Negombo Road, Wattala', '0112365632', '0112365633', 'panrest@gmail.com'),
(50, 'Pizza Hut (Kandana)', 'No. 56/3, Negombo Road, Kandana', '0112729729', '0112729722', 'kandanapizzahut@yahoo.com'),
(51, 'Amal Flora ', 'No. 4, Kanuwana, Ja-Ela', '0116655445', '0113221232', 'amalflora@yahoo.com'),
(52, 'Ama Perera', 'No. 2 jaEla', '0719639632', '0719876541', 'ama@gmail.com'),
(53, 'Amal fernando', 'No.4, Kandana', '0719879879', NULL, 'amal@gmail.com'),
(54, 'Sanduni Fernando', 'No. 4, Kandana', '0719879879', NULL, 'sanduni@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `damage_item`
--

CREATE TABLE `damage_item` (
  `SupplierName` varchar(20) NOT NULL,
  `ReturnDate` date NOT NULL,
  `Quantity` int(11) NOT NULL,
  `reson` varchar(100) NOT NULL,
  `ItemCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `damage_item`
--

INSERT INTO `damage_item` (`SupplierName`, `ReturnDate`, `Quantity`, `reson`, `ItemCode`) VALUES
('eeee', '2016-11-01', 2, 'eee', 1),
('ddd', '2016-01-01', 5, 'ww', 1),
('eeee', '2016-11-01', 3, 'eee', 1),
('blackboard', '2017-10-17', 100, 'Damaged', 5),
('ruwan', '2017-11-14', 100, 'Damaged', 8),
('dinith', '2017-11-03', 10, 'Damaged', 9),
('din', '2017-11-09', 10, 'Damaged', 10),
('erandi', '2017-10-26', 10, 'Clear Stock', 19),
('eeee', '2016-11-09', 100, 'Damaged', 1),
('eeee', '2016-11-03', 2, 'Damaged', 1),
('ruwan', '2017-11-16', 100, 'Damaged', 66),
('ruwan', '2017-11-16', 800, 'Damaged', 66);

-- --------------------------------------------------------

--
-- Table structure for table `deletedemp`
--

CREATE TABLE `deletedemp` (
  `Empno` int(11) NOT NULL,
  `Designation` varchar(10) NOT NULL,
  `FName` varchar(100) NOT NULL,
  `LName` varchar(100) NOT NULL,
  `NIC` varchar(10) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(100) NOT NULL,
  `ContactNum` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deletedemp`
--

INSERT INTO `deletedemp` (`Empno`, `Designation`, `FName`, `LName`, `NIC`, `Email`, `Address`, `ContactNum`) VALUES
(7, 'Admin', 'shalini', 'perera', '785962145v', 'sp@gmail.com', 'raddolugama', 'EE'),
(8, 'helper', 'nimal', 'perera', '95704006v', 'kp@gmail.com', 'colombo', '0112235722'),
(16, 'operator', 'roshen', 'samaranayake', '795962145v', 'roshens@yahoo.com', 'negombo', '123654789v'),
(18, 'helper', 'krishan', 'silva', '964789546v', 'ksilva@gmail.com', 'kadawatha', '0711236985'),
(19, 'helper', 'Piyasena ', 'Gamage', '8012345654', 'piyasena@yahoo.com', 'NO. 2, kandana', '0779879858'),
(45, 'helper', 'kamal', 'perera', '607040065v', 'kp@gmail.com', 'colombo', '0112235722'),
(46, 'helper', 'pot', 'perera', '957040065v', 'kp@gmail.com', 'colombo', '0112235722'),
(47, 'Admin', 'poiuytre', 'senarathne', '801236547v', 'sunilsenarathne@gmail.com', 'Kandy', '0770081955'),
(48, 'Admin', 'harshana', 'senarathne', '801286547v', 'sunilsenarathne@gmail.com', 'Kandy', '0770081955'),
(51, 'helper', 'nimal', 'perera', '781236547v', 'np@gmail.com', 'colombo', '0770081933'),
(52, 'helper', 'Arun', 'Gamage', '811236547v', 'arun@gmail.com', 'Wattala', '0770081933');

-- --------------------------------------------------------

--
-- Table structure for table `deliver`
--

CREATE TABLE `deliver` (
  `DID` int(11) NOT NULL,
  `VID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(25) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `CName` varchar(25) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Distance` double DEFAULT NULL,
  `Rate` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliver`
--

INSERT INTO `deliver` (`DID`, `VID`, `CID`, `Date`, `Status`, `Address`, `CName`, `Contact`, `Distance`, `Rate`) VALUES
(1, 7, 2, '2017-10-15', 'Started', 'Kollupitiya', 'Jehan', '011', 0, 0),
(2, 7, 2, '2017-10-15', 'Started', 'Colombo', 'Hasantha', '011', 0, 0),
(3, 8, 1, '2017-10-15', 'Complete', 'Fort', 'Faizal', '0112235350', 5, 150),
(4, 7, 5, '2017-10-09', 'Cancelled', 'Mattala', 'Danushka', '0775488967', 0, 0),
(5, 3, 4, '2017-10-17', 'Complete', 'Ja Ela', 'Hamid', '0778544274', 10, 300),
(6, 3, 4, '2017-10-18', 'Complete', 'Ja Ela', 'Hamid', '0778432126', 5, 150),
(7, 11, 3, '2017-10-17', 'Complete', 'Ja Ela', 'Hamid', '0778544814', 12, 360),
(8, 10, 17, '2017-11-10', 'Started', 'JaEla', 'ABC Solutions Pvt Ltd', '777891023', NULL, NULL),
(9, 3, 51, '2017-11-16', 'Complete', 'No. 4, Kanuwana, Ja-Ela', 'Amal Flora ', '0116655445', 100, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `Empno` int(11) NOT NULL,
  `Designation` varchar(10) NOT NULL,
  `FName` varchar(100) NOT NULL,
  `LName` varchar(100) NOT NULL,
  `ECname` varchar(50) NOT NULL,
  `ECno` varchar(10) NOT NULL,
  `ECrelationEmp` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `NIC` varchar(10) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(100) NOT NULL,
  `ContactNum` varchar(10) NOT NULL,
  `MaritalStatus` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `JoinDate` date NOT NULL,
  `BasicSal` double NOT NULL,
  `VID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`Empno`, `Designation`, `FName`, `LName`, `ECname`, `ECno`, `ECrelationEmp`, `DOB`, `NIC`, `Email`, `Address`, `ContactNum`, `MaritalStatus`, `Gender`, `Status`, `JoinDate`, `BasicSal`, `VID`) VALUES
(8, 'helper', 'Namal', 'Perera', 'sumal', '0773171550', 'brother', '1979-10-31', '807040065v', 'kp@gmail.com', 'No.1 Kandana', '0112235722', 'Married', 'Male', 'Available', '2013-10-18', 20000, NULL),
(9, 'helper', 'Jesudasan', 'Gamage', 'kusum', '0779292656', 'wife', '1981-03-05', '781236547v', 'dg@gmail.com', 'colombo', '0770081933', 'Married', 'Male', 'Available', '2014-10-28', 20000, NULL),
(10, 'helper', 'Kamal', 'Fernando', 'amal', '0773171756', 'brother', '1965-10-01', '765896541v', 'kf@gmail.com', 'colombo', '0112235723', 'Married', 'Male', 'Available', '2012-10-22', 20000, NULL),
(12, 'driver', 'Siripala', 'Amarasinghe', 'Kusuma', '0779292787', 'wife', '2017-10-31', '751236547v', 'ss@gmail.com', 'colombo', '0770081944', 'Single', 'Male', '', '2016-10-31', 20000, 1),
(13, 'admin', 'erandi', 'de silva', 'shalini', '0779292756', 'sister', '2017-10-02', '960236547v', 'eds@gmail.com', 'wattala', '0770081944', 'Single', 'Female', '', '2017-10-10', 50000, NULL),
(14, 'helper', 'jacob', 'perera', 'shiran', '0112232122', 'father', '2017-09-04', '105962145v', 'jp@gmail.com', 'raddolugama', '123654789v', 'Single', 'Female', 'Not Available', '2017-10-10', 20000, NULL),
(15, 'operator', 'shehan', 'fernando', 'neville', '0112234634', 'father', '2017-09-04', '105962145v', 'shehanf@yahoo.com', 'raddolugama', '123654789v', 'Single', 'Male', '', '2017-10-10', 20000, NULL),
(17, 'helper', 'nishantha', 'alwis', 'dilmi', '0773171456', 'wife', '2017-10-31', '60704006v', 'nishanthaalwis@gmail.com', 'ja ela', '0112235755', 'Married', 'Male', 'Not Available', '2017-10-25', 20000, NULL),
(49, 'helper', 'malinga', 'lasith', 'Amal', '0112232178', 'Brother', '1980-10-05', '808236547v', 'lasith@gmail.com', 'mathara', '0770081956', 'Married', 'Male', 'Available', '2017-11-06', 6000, NULL),
(50, 'helper', 'Namal', 'perera', 'sumal', '0773171550', 'brother', '2017-10-31', '927040065v', 'kp@gmail.com', 'colombo', '0112235722', 'Married', 'Male', 'Available', '2017-09-03', 20000, NULL),
(53, 'admin', 'kayomi', 'perumathanthri', 'shalini', '0778965423', 'sister', '2017-10-01', '964589632v', 'kayo@gmail.com', 'colombo', '0112232122', 'Single', 'Female', '', '2017-10-01', 60000, NULL),
(54, 'Admin', 'Udeshi', 'Perera', 'Manuli', '0769966321', 'sister', '2017-11-01', '951233212v', 'udeshi@gmail.com', 'Ja-ela', '0710212369', '(Select)', '(Select)', 'Available', '2017-06-01', 20000, NULL),
(55, 'Admin', 'sunil', 'senarathne', 'Amali', '0112232177', 'Wife', '1980-11-03', '801236547v', 'sunilsenarathne@gmail.com', 'Kandy', '0770081955', 'Married', 'Male', '', '2017-11-12', 60000, NULL),
(56, 'Admin', 'kamala', 'senarathne', 'Amali', '0112232177', 'Wife', '1980-11-05', '801236547v', 'sunilsenarathne@gmail.com', 'Kandy', '0770081955', 'Married', 'Male', '', '2017-11-05', 60000, NULL);

--
-- Triggers `emp`
--
DELIMITER $$
CREATE TRIGGER `LEAVE` AFTER INSERT ON `emp` FOR EACH ROW insert into `leave` values(NEW.Empno,0,14,0)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `estimate`
--

CREATE TABLE `estimate` (
  `EstimateID` int(11) NOT NULL,
  `CID` int(11) DEFAULT NULL,
  `Edate` date NOT NULL,
  `Eamount` double NOT NULL,
  `Size` varchar(25) NOT NULL,
  `PaperType` varchar(20) NOT NULL,
  `ProductType` varchar(20) NOT NULL,
  `Pro_catag` varchar(20) NOT NULL,
  `sheet` int(11) DEFAULT NULL,
  `descrip` varchar(150) DEFAULT NULL,
  `Qty` int(11) NOT NULL,
  `Pages` int(11) DEFAULT NULL,
  `Item_code` int(11) DEFAULT NULL,
  `unitPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estimate`
--

INSERT INTO `estimate` (`EstimateID`, `CID`, `Edate`, `Eamount`, `Size`, `PaperType`, `ProductType`, `Pro_catag`, `sheet`, `descrip`, `Qty`, `Pages`, `Item_code`, `unitPrice`) VALUES
(12, 17, '2017-11-09', 2000000, '5.5" x 8.5"', 'Offset Paper', 'Printing', 'Booklet', 2, '', 100, 4, 14, 5),
(13, 27, '2017-11-09', 450, 'A4 size', 'A4 Paper', 'Printing', 'Letterhead', NULL, '', 150, NULL, 1, 1.5),
(14, 12, '2017-11-11', 750000, '1" x 1"', 'OCC Paper', 'Printing', 'Hang Tag', NULL, 'Accessories should be ''Black''', 1500, NULL, 15, 1),
(17, 12, '2017-11-11', 450000, 'A4 Size', 'Gloss Text Paper', 'Printing/Laminating', 'File Folder', NULL, '', 100, NULL, 9, 7.5),
(18, 21, '2017-11-11', 375000, 'A4 Size', 'StickyBack LPouch', 'Laminating', 'File Folder', NULL, '', 100, NULL, 16, 7.5),
(19, 50, '2017-11-13', 1000000, '8.5" x 11"', 'Semi-Gloss Paper', 'Printing', 'Brochure', NULL, 'Template Given.', 1000, NULL, 10, 2),
(20, 20, '2017-11-13', 100500, '3.5" x 2"', 'C2S Cardstock Paper', 'Printing', 'Business Card', NULL, 'Proof Read the template before processing the order.', 1000, NULL, 8, 1),
(21, 13, '2017-11-13', 1250000, '8.5" x 11"', 'Offset Paper', 'Printing', 'Poster', NULL, '', 1000, NULL, 14, 2.5),
(22, 29, '2017-11-14', 5625000, '5.5" x 8.5"', 'Offset Paper', 'Printing', 'Booklet', 6, '', 250, 3, 14, 2.5),
(23, 19, '2017-11-14', 450000, '5" x 7"', 'Matte Cover Paper', 'Printing', 'Invitation', NULL, 'Proof Reading has to be done before process. ', 300, NULL, 7, 2.5),
(24, 17, '2017-11-15', 800000, '1 ft x 1 ft ', 'Scrim Vinyl BBoard', 'Printing', 'Banner', NULL, '', 2, NULL, 12, 800),
(25, 21, '2017-11-16', 2500, 'A3 size', 'SelfSealing LPouch', 'Laminating', 'File Folder', NULL, '', 2, NULL, 17, 2.5),
(26, 52, '2017-11-19', 75375, '3.5" x 2"', 'C2S Cardstock Paper', 'Printing', 'Business Card', NULL, '', 1000, NULL, 8, 0.75),
(27, 53, '2017-11-19', 800000, '1 ft x 1 ft ', 'Coroplast BBoard', 'Printing', 'Banner', NULL, '', 2, NULL, 13, 800);

-- --------------------------------------------------------

--
-- Table structure for table `fuel`
--

CREATE TABLE `fuel` (
  `ID` int(10) NOT NULL,
  `VID` int(10) NOT NULL,
  `Quantity` double NOT NULL,
  `Cost` double NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fuel`
--

INSERT INTO `fuel` (`ID`, `VID`, `Quantity`, `Cost`, `Date`) VALUES
(1, 1, 3.3, 311.5, '2014-09-17'),
(3, 2, 10, 1130, '2017-10-15'),
(4, 2, 10, 113, '2017-10-14'),
(5, 1, 12, 1404, '2017-10-18'),
(6, 2, 10, 1170, '2017-10-18'),
(7, 3, 10, 1280, '2017-10-18'),
(8, 4, 23, 2691, '2017-10-18'),
(9, 6, 15, 1755, '2017-10-18'),
(10, 2, 10, 1130, '2017-10-03'),
(11, 2, 10, 1130, '2017-10-28');

-- --------------------------------------------------------

--
-- Table structure for table `issuence`
--

CREATE TABLE `issuence` (
  `issueID` int(11) NOT NULL,
  `ItemCode` int(11) NOT NULL,
  `Qty` int(11) NOT NULL,
  `issue_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuence`
--

INSERT INTO `issuence` (`issueID`, `ItemCode`, `Qty`, `issue_Date`) VALUES
(2, 1, 2, '2016-11-11'),
(3, 6, 100, '2016-11-30'),
(5, 66, 1000, '2017-11-23'),
(6, 1, 100, '2016-11-11'),
(7, 1, 100, '2016-11-11'),
(8, 2, 100, '2017-11-10'),
(9, 6, 100, '2016-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `item_inventory`
--

CREATE TABLE `item_inventory` (
  `Item_code` int(11) NOT NULL,
  `Item_name` varchar(20) NOT NULL,
  `AddDate` date NOT NULL,
  `Quantity` int(11) NOT NULL,
  `unitPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_inventory`
--

INSERT INTO `item_inventory` (`Item_code`, `Item_name`, `AddDate`, `Quantity`, `unitPrice`) VALUES
(1, 'A4 Paper', '2017-08-15', 200800, 2),
(2, 'Ink(blue) Bottle', '2016-01-01', 900, 2000),
(5, 'A3 Paper', '2017-10-05', 1000, 5),
(6, 'Uncoated Cover Paper', '2017-10-14', 800, 550),
(7, 'Matte Cover Paper', '2017-10-14', 100, 600),
(8, 'C2S Cardstock Paper', '2017-11-14', 1800, 100.5),
(9, 'Gloss Text Paper', '2017-11-02', 90, 600),
(10, 'Semi-Gloss Paper', '2017-11-02', 190, 500),
(11, 'Foamcore BBoard', '2017-11-02', 190, 500),
(12, 'Scrim Vinyl BBoard', '2017-11-02', 190, 500),
(13, 'Coroplast BBoard', '2017-11-02', 190, 500),
(14, 'Offset Paper', '2017-11-02', 190, 500),
(15, 'OCC Paper', '2017-11-02', 190, 500),
(16, 'StickyBack LPouch', '2017-11-02', 190, 500),
(17, 'SelfSealing LPouch', '2017-11-02', 190, 500),
(18, 'Matte Lpouch', '2017-11-02', 190, 500),
(19, 'Carbonless Paper', '2017-11-02', 380, 500),
(66, 'Cover', '2017-10-14', 2000, 200),
(77, 'Carbonless Bottle', '2017-11-02', 380, 500);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `JID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `MachineID` int(11) NOT NULL,
  `OStatus` varchar(100) NOT NULL,
  `Ptype` varchar(20) NOT NULL,
  `Eid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`JID`, `OrderID`, `MachineID`, `OStatus`, `Ptype`, `Eid`) VALUES
(1, 1, 1, 'Complete', 'Printing', 8),
(2, 2, 1, 'Complete', 'Printing', 10),
(3, 9, 2, 'Complete', 'Laminating', 9),
(4, 4, 1, 'Processing', 'Printing', 8),
(5, 3, 2, 'Processing', 'Printing/Laminating', 14),
(6, 5, 2, 'Processing', 'Printing/Laminating', 14),
(7, 14, 4, 'Complete', 'printing', 17),
(8, 15, 1, 'Processing', 'printing', 18),
(9, 17, 3, 'Complete', 'Printing', 17),
(12, 20, 4, 'Processing', 'Printing', 17),
(13, 20, 4, 'Processing', 'Printing', 17),
(15, 23, 6, 'Complete', 'Printing', 49),
(16, 24, 6, 'Complete', 'Printing', 51),
(17, 25, 6, 'Complete', 'Printing', 49),
(18, 27, 6, 'Complete', 'Laminating', 49);

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `EmpNo` int(11) NOT NULL,
  `Taken` double DEFAULT NULL,
  `Left` double NOT NULL,
  `NoPay` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`EmpNo`, `Taken`, `Left`, `NoPay`) VALUES
(8, 0, 14, 0),
(9, 4, 8, 0),
(10, 0, 11, 0),
(12, 0, 14, 0),
(13, 0, 14, 0),
(14, 14, 0, 0),
(15, 15, -1, 0),
(17, 0, 14, 0),
(49, 0, 14, 0),
(50, 0, 14, 0),
(53, 0, 14, 0),
(54, 0, 14, 0),
(55, 0, 14, 0),
(56, 0, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `loanid` int(11) NOT NULL,
  `EmpNo` int(11) NOT NULL,
  `ApplyDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Amt` double NOT NULL,
  `Duration` varchar(50) NOT NULL,
  `Monthly_Installment` double NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`loanid`, `EmpNo`, `ApplyDate`, `Amt`, `Duration`, `Monthly_Installment`, `StartDate`, `EndDate`) VALUES
(1, 8, '2017-11-15 06:41:40', 10000, '10', 1000, '2017-11-01', '2018-08-01'),
(2, 8, '2017-11-15 06:42:11', 10000, '10', 1000, '2017-11-01', '2018-08-01'),
(4, 9, '2017-11-15 06:48:13', 1000, '10', 100, '2017-11-01', '2018-08-01'),
(5, 9, '2017-11-15 06:48:44', 1000, '10', 100, '2017-11-01', '2018-09-01'),
(6, 9, '2017-11-15 06:49:04', 1000, '10', 100, '2017-11-01', '2018-09-01'),
(7, 9, '2017-11-15 06:54:37', 1000, '10', 100, '2017-11-01', '2018-09-01'),
(8, 9, '2017-11-15 06:56:06', 1000, '10', 100, '2017-11-09', '2018-09-09'),
(9, 9, '2017-11-15 06:56:55', 1000, '10', 100, '2017-11-09', '2018-09-09'),
(10, 9, '2017-11-15 07:15:11', 1000, '10', 100, '2017-11-02', '2018-09-02'),
(11, 9, '2017-11-15 07:18:58', 1000, '10', 100, '2017-11-02', '2018-09-02'),
(12, 9, '2017-11-15 07:23:18', 1000, '10', 100, '2017-11-01', '2018-09-01'),
(16, 15, '2017-11-19 08:42:54', 1000, '4', 250, '2017-12-19', '2018-04-19'),
(17, 15, '2017-11-19 08:43:13', 1000, '4', 250, '2017-12-19', '2018-04-19'),
(18, 15, '2017-11-19 08:43:22', 1000, '4', 250, '2017-12-19', '2018-04-19'),
(19, 15, '2017-11-19 08:43:27', 1000, '4', 250, '2017-12-19', '2018-04-19'),
(20, 15, '2017-11-19 08:43:30', 1000, '4', 250, '2017-12-19', '2018-04-19'),
(21, 15, '2017-11-19 08:50:03', 1000, '2', 500, '2017-12-01', '2018-02-01'),
(22, 15, '2017-11-19 12:51:25', 1000, '10', 100, '2017-11-01', '2018-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `MachineID` int(11) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Sole_agent` varchar(10) NOT NULL,
  `Lable` varchar(50) NOT NULL,
  `SN` varchar(50) NOT NULL,
  `Equipment_name` varchar(50) NOT NULL,
  `Warrenty_period` int(11) NOT NULL,
  `Purches_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`MachineID`, `Status`, `Sole_agent`, `Lable`, `SN`, `Equipment_name`, `Warrenty_period`, `Purches_date`) VALUES
(1, 'Not Available', 'singer', 'ddd', 'dd', 'printer', 20171017, '2017-10-16'),
(2, 'Not Available', 'singer', 'oop', '112', 'printer', 1, '2016-10-14'),
(3, 'Not Available', 'singer', 'ee', '225', 'cutter', 3, '2017-11-08'),
(4, 'Not Available', 'singer', 'OOP', '0012', 'printer', 36, '2014-11-05'),
(5, 'Not Available', 'singer', 'EEE', '1234', 'laser printer', 12, '2012-05-14'),
(6, 'Available', 'singer', 'kll', '1054', 'printer ER', 24, '2017-11-05'),
(7, 'Available', 'singer', 'sm', '12511247', 'plate exposer', 12, '2014-11-03'),
(8, 'Available', 'softlogic', 'kkouy', '4587524', 'laser cutter', 36, '2014-11-05'),
(9, 'Available', 'singer', 'lkkk', '2458', 'laminator', 24, '2015-05-04'),
(10, 'Available', 'ruwan', 'pr', '123', 'printer', 2, '2017-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `maintenancelog`
--

CREATE TABLE `maintenancelog` (
  `MaintenanceID` int(11) NOT NULL,
  `MachineID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `ServiceBy` varchar(100) NOT NULL,
  `Descrip` varchar(100) NOT NULL,
  `ValidationPeriod` date NOT NULL,
  `ValidatedBy` varchar(100) NOT NULL,
  `Cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintenancelog`
--

INSERT INTO `maintenancelog` (`MaintenanceID`, `MachineID`, `Date`, `ServiceBy`, `Descrip`, `ValidationPeriod`, `ValidatedBy`, `Cost`) VALUES
(1, 1, '2017-10-05', 'sllsldslbsaasldas', 'kjxzdslfls', '2017-10-14', 'htf', 1000),
(2, 1, '2017-10-24', 'sad sadsad asdsada', 'scsd asdda', '2017-10-14', 'sa', 1000),
(3, 3, '2017-11-10', 'Sam', 'umyjnthvfc', '2017-11-10', 'kmal', 1200),
(4, 1, '2017-11-15', 'saman', 'oil change', '2018-01-02', 'saman', 10000),
(5, 5, '2017-11-07', 'jim', 'parts replace', '2017-12-19', 'kim', 22000),
(6, 7, '2017-11-07', 'saman perera', 'color change', '2018-01-01', 'saman', 2000),
(7, 3, '2017-11-01', 'saman', 'parts replaced', '2017-11-27', 'singer', 10000),
(8, 9, '2017-11-20', 'singer', 'oil change', '2017-11-23', 'singer', 1000),
(9, 1, '2017-11-01', 'ruw', 'serv', '2017-11-08', 'game', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `ordercust`
--

CREATE TABLE `ordercust` (
  `Orderid` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `EstId` int(11) NOT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `OrderStatus` varchar(10) DEFAULT NULL,
  `ProcessStatus` varchar(100) DEFAULT NULL,
  `OrderDate` date NOT NULL,
  `Pid` int(11) DEFAULT NULL,
  `deliveryReq` varchar(5) DEFAULT NULL,
  `file` varchar(150) DEFAULT NULL,
  `refNo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordercust`
--

INSERT INTO `ordercust` (`Orderid`, `Cid`, `EstId`, `memo`, `OrderStatus`, `ProcessStatus`, `OrderDate`, `Pid`, `deliveryReq`, `file`, `refNo`) VALUES
(17, 20, 20, '', 'Undertaken', 'Complete', '2017-11-13', 18, 'No', 'C:UsersKriDesktopITP_FILESE32_business_card.pdf', 'A01'),
(18, 19, 23, 'font should be clear.', 'Undertaken', 'Complete', '2017-11-14', 19, 'Yes', 'C:UsersKriDesktopITP_FILESE44_invitation.pdf', 'A18'),
(19, 17, 12, '', 'Cancelled', 'Processing', '2017-11-14', 20, 'Yes', 'C:UsersKriDesktopITP_FILESE31_booklet.pdf', 'A19'),
(20, 27, 13, '', 'Cancelled', 'Processing', '2017-11-14', 21, 'Yes', 'C:UsersKriDesktopITP_FILESE47_letterhead.pdf', 'A20'),
(22, 12, 14, '', 'Undertaken', 'Processing', '2017-11-14', 22, 'Yes', 'C:UsersKriDesktopITP_FILESE29_hang_tag.pdf', 'A21'),
(23, 13, 21, '', 'Undertaken', 'Complete', '2017-11-14', 23, 'Yes', 'C:UsersKriDesktopITP_FILESE46_poster.pdf', 'A23'),
(24, 27, 13, '', 'Undertaken', 'Complete', '2017-11-15', 24, 'No', 'C:UsersKriDesktopITP_FILESE47_letterhead.pdf', 'A24'),
(25, 29, 22, '', 'Undertaken', 'Complete', '2017-11-15', 25, 'Yes', 'C:UsersKriDesktopITP_FILESE50_booklet.pdf', 'A25'),
(26, 13, 21, '', 'Undertaken', NULL, '2017-11-15', 26, 'Yes', 'C:UsersKriDesktopITP_FILESE46_poster.pdf', 'A26'),
(27, 21, 18, 'Attach Paper Holders', 'Undertaken', 'Complete', '2017-11-16', 27, 'Yes', 'C:UsersKriDesktopITP_FILESE33_file folder.pdf', 'A27'),
(28, 17, 24, '', 'Undertaken', NULL, '2017-11-16', 28, 'Yes', 'C:UsersKriDesktopITP_FILESE42_banner.pdf', 'A28'),
(30, 13, 21, 'add a 1cm border around the poster.', 'Undertaken', NULL, '2017-11-16', 29, 'Yes', 'C:UsersKriDesktopITP_FILESE46_poster.pdf', 'A29'),
(31, 52, 26, '', 'Undertaken', NULL, '2017-11-19', 30, 'Yes', 'C:UsersKriDesktopITP_FILESE32_business_card.pdf', 'A31'),
(32, 53, 27, '', 'Undertaken', NULL, '2017-11-19', 31, 'Yes', 'C:UsersKriDesktopITP_FILESE42_banner.pdf', 'A32'),
(33, 12, 14, '', 'Undertaken', NULL, '2017-11-19', 32, 'Yes', 'gdhdhdhdh', 'gdgdg');

-- --------------------------------------------------------

--
-- Table structure for table `ordersupplierinvoice`
--

CREATE TABLE `ordersupplierinvoice` (
  `InvoiceID` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordersupplierinvoice`
--

INSERT INTO `ordersupplierinvoice` (`InvoiceID`, `SupplierID`, `Date`) VALUES
(36, 3, '2017-09-16 16:44:12'),
(37, 3, '2017-09-16 19:54:51'),
(38, 1, '2017-09-18 05:29:55'),
(39, 3, '2017-09-19 14:26:44'),
(40, 3, '2017-09-28 13:32:42'),
(41, 3, '2017-10-02 06:37:24'),
(42, 14, '2017-10-02 06:45:11'),
(43, 3, '2017-10-18 10:30:57'),
(44, 1, '2017-10-18 14:55:41'),
(45, 1, '2017-10-21 19:19:46'),
(46, 3, '2017-10-21 19:25:30'),
(47, 14, '2017-10-21 19:28:09'),
(48, 1, '2017-10-22 06:47:56'),
(49, 3, '2017-10-22 06:58:58'),
(50, 1, '2017-10-22 07:03:48'),
(51, 1, '2017-10-22 07:04:37'),
(52, 14, '2017-10-22 07:44:42'),
(53, 1, '2017-10-22 10:08:54'),
(54, 3, '2017-10-22 10:26:56'),
(55, 9, '2017-10-22 10:27:06'),
(56, 6, '2017-11-10 08:01:40'),
(57, 9, '2017-11-10 08:02:27'),
(58, 9, '2017-11-13 10:37:12'),
(59, 9, '2017-11-13 10:40:06'),
(60, 9, '2017-11-13 10:41:20'),
(61, 3, '2017-11-13 10:43:38'),
(62, 9, '2017-11-14 09:21:46'),
(63, 1, '2017-11-14 09:22:05'),
(64, 9, '2017-11-14 12:27:47'),
(65, 9, '2017-11-16 13:40:29'),
(66, 6, '2017-11-16 20:27:21'),
(67, 16, '2017-11-19 17:47:28'),
(68, 3, '2017-11-19 17:48:00'),
(69, 9, '2017-11-19 17:48:10'),
(70, 6, '2017-11-19 19:17:22'),
(71, 1, '2017-11-19 19:34:05');

--
-- Triggers `ordersupplierinvoice`
--
DELIMITER $$
CREATE TRIGGER `updateinfo` AFTER INSERT ON `ordersupplierinvoice` FOR EACH ROW UPDATE ordersupplieritem SET OrderInvoiceID = NEW.InvoiceID WHERE SupplierID = NEW.SupplierID  AND OrderInvoiceID IS NULL
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ordersupplieritem`
--

CREATE TABLE `ordersupplieritem` (
  `ID` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `ItemCode` int(11) NOT NULL,
  `OrderInvoiceID` int(11) DEFAULT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Qty` int(11) NOT NULL,
  `beforeDays` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordersupplieritem`
--

INSERT INTO `ordersupplieritem` (`ID`, `SupplierID`, `ItemCode`, `OrderInvoiceID`, `OrderDate`, `Qty`, `beforeDays`) VALUES
(102, 3, 1, 61, '2017-11-14 08:07:43', 3555, '2017-11-01'),
(104, 3, 1, 46, '2017-11-14 08:07:43', 55, '2017-11-01'),
(105, 9, 5, 62, '2017-11-14 09:21:46', 100, '2017-11-30'),
(106, 9, 5, 62, '2017-11-14 09:21:46', 12, '2017-12-14'),
(107, 1, 1, 63, '2017-11-14 09:22:05', 1000, '2017-12-14'),
(108, 9, 9, 64, '2017-11-14 12:27:47', 10, '2017-11-14'),
(109, 9, 5, 65, '2017-11-16 13:40:29', 100, '2017-11-23'),
(110, 6, 1, 66, '2017-11-16 20:27:21', 5, '2017-11-22'),
(117, 3, 1, 68, '2017-11-19 17:48:00', 2, '2017-11-22'),
(118, 16, 2, 67, '2017-11-19 17:47:28', 15, '2017-11-30'),
(119, 9, 5, 69, '2017-11-19 17:48:10', 25, '2017-11-30'),
(120, 6, 1, 70, '2017-11-19 19:17:22', 10, '2017-11-29'),
(121, 1, 2, 71, '2017-11-19 19:34:05', 10, '2017-11-30'),
(122, 1, 7, 71, '2017-11-19 19:34:05', 10, '2017-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Pid` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `DeliverID` varchar(10) DEFAULT NULL,
  `DespositAmt` double NOT NULL,
  `TotalAmt` double NOT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Type` varchar(20) NOT NULL,
  `discount` double NOT NULL,
  `Balance` double NOT NULL,
  `Advance` double NOT NULL,
  `Paydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Pid`, `Cid`, `DeliverID`, `DespositAmt`, `TotalAmt`, `Status`, `Type`, `discount`, `Balance`, `Advance`, `Paydate`) VALUES
(18, 20, NULL, 100500, 71150, NULL, 'credit', 30150, 0, 35575, '2017-11-14'),
(19, 19, NULL, 450000, 315800, 'Complete', 'cash', 135000, 0, 157900, '2017-11-13'),
(20, 17, NULL, 2000000, 1400800, 'Processing', 'credit', 600000, 0, 700400, '2017-11-14'),
(21, 27, NULL, 450, 1250, 'Processing', 'cash', 0, 0, 625, '2017-11-14'),
(22, 12, NULL, 750000, 525800, 'Processing', 'cash', 225000, 0, 262900, '2017-11-06'),
(23, 13, NULL, 1250000, 875800, 'Complete', 'credit', 375000, 437900, 437900, '2017-10-17'),
(24, 27, NULL, 900, 1700, 'Complete', 'cash', 0, 850, 850, '2017-10-18'),
(25, 29, NULL, 5625000, 3938300, 'Complete', 'credit', 1687500, 0, 1969150, '2017-10-18'),
(26, 13, NULL, 2500000, 1750800, NULL, 'cash', 750000, 0, 875400, '2017-09-12'),
(27, 21, NULL, 375000, 263300, 'Complete', 'cash', 112500, 0, 131650, '2017-09-07'),
(28, 17, NULL, 800000, 560800, NULL, 'cash', 240000, 280400, 280400, '2017-11-14'),
(29, 13, NULL, 3750000, 2625800, NULL, 'credit', 1125000, 1312900, 1312900, '2017-11-13'),
(30, 52, NULL, 75375, 53562, NULL, 'cash', 22612.5, 26781.25, 26781.25, '2017-11-19'),
(31, 53, NULL, 800000, 560800, NULL, 'cash', 240000, 280400, 280400, '2017-11-19'),
(32, 12, NULL, 1500000, 1050800, NULL, 'credit', 450000, 525400, 525400, '2017-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `product` varchar(30) NOT NULL,
  `default_size` varchar(25) DEFAULT NULL,
  `fixed_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `product`, `default_size`, `fixed_price`) VALUES
(1100, 'Brochure', '8.5" x 11"', 0.5),
(1101, 'Business Card', '3.5" x 2"', 0.75),
(1102, 'Booklet', '5.5" x 8.5"', 2.5),
(1103, 'Banner', '1 ft x 1 ft ', 800),
(1104, 'Bookmark', '2" x 6"', 0.5),
(1105, 'File Folder', NULL, 2.5),
(1106, 'Letterhead', NULL, 1.5),
(1107, 'Poster', '8.5" x 11"', 2.5),
(1108, 'Invitation', '5" x 7"', 2.5),
(1109, 'Hang Tag', '1" x 1"', 0.6),
(1110, 'Envelope - Booklet', '9" x 12"', 3);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `EmpNo` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Salary` double NOT NULL,
  `Deductions` double NOT NULL,
  `OT_charges` double NOT NULL,
  `TotalAllowance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`EmpNo`, `Date`, `Salary`, `Deductions`, `OT_charges`, `TotalAllowance`) VALUES
(8, '2017-11-17 06:43:32', 64788, 2200, 11988, 35000),
(9, '2017-11-17 03:20:07', 65989, 0, 10989, 35000),
(10, '2017-11-10 06:52:56', 66988, 0, 11988, 35000),
(14, '2017-11-19 04:47:18', 56402.5, 0, 1402.5, 35000),
(15, '2017-11-17 05:34:46', 62990, 2000, 9990, 35000),
(15, '2017-11-17 06:47:49', 62990, 2000, 9990, 35000),
(15, '2017-11-19 08:03:59', 56912.5, 0, 1912.5, 35000),
(15, '2017-11-19 08:27:25', 54712.5, 2200, 1912.5, 35000),
(15, '2017-11-19 08:46:31', 56162.5, 750, 1912.5, 35000),
(15, '2017-11-19 12:48:44', 55925, 350, 1275, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `setsupplieritem`
--

CREATE TABLE `setsupplieritem` (
  `ItemCode` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `ETIunit_price` double NOT NULL,
  `Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setsupplieritem`
--

INSERT INTO `setsupplieritem` (`ItemCode`, `SupplierID`, `ETIunit_price`, `Type`) VALUES
(1, 1, 195, 'Bundle'),
(2, 1, 2000, 'Bottle'),
(7, 1, 6000, 'Bundle'),
(1, 3, 200, 'Bundle'),
(1, 6, 150, 'Bundle'),
(19, 7, 2000, 'Bundle'),
(2, 9, 1900, 'Bottle'),
(5, 9, 100, 'Bundle'),
(9, 9, 400, 'Bundle'),
(2, 10, 1800, 'Bottle'),
(17, 13, 450, 'Bundle'),
(2, 16, 1950, 'Bottle'),
(5, 16, 600, 'Bundle'),
(18, 16, 2000, 'Bundle');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(11) NOT NULL,
  `Supplier_name` varchar(30) NOT NULL,
  `S_Address` varchar(100) NOT NULL,
  `Telpn` varchar(10) NOT NULL,
  `S_Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `Supplier_name`, `S_Address`, `Telpn`, `S_Email`) VALUES
(1, 'Saman ptv lmtd', 'colombo', '0112255698', 'sman.s@gmail.com'),
(3, 'Ranka Items ', 'ja ela', '0112236546', 'krishan.kr1996@gmail.com'),
(6, 'F.H.R Bookshp', 'Seeduwa', '0112263569', 'krishankr1996@gmail.com'),
(7, 'A S R TRADING COMPANY', 'Colombo 3', '0112212345', 'asr.djsl23@gmail.com'),
(8, 'BOOKLINE (PVT) LTD', 'Colombo 4', '0712123678', 'bookline.supplier@gmail.com'),
(9, 'METROPOLITAN OFFICE (PVT) LTD', 'Wattala ', '0715689756', 'metropolitanz.pvt@gmail.com'),
(10, 'Gold Circle (PVT) LTD', 'Seeduwa', '0112136569', 'gold.circle@gmail.com'),
(11, 'METALCO (PVT) LTD', 'Seeduwa', '0775632456', 'melalco.supplirs@gmail.com'),
(12, 'Samarathunga (PVT) LTD', 'Negombo', '0112236587', 'smara.supplirs@gmail.com'),
(13, 'INKS LAB (PVT) LTD ', 'Negombo', '0728936587', 'inks.lab@gmail.com'),
(14, 'Jonn 4 Suppliers', 'Gampaha', '0715689321', 'nemindassswarnaja@gmail.com'),
(16, 'Nihal pvt lmtd', 'colombo', '0112233659', 'nihal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_acc`
--

CREATE TABLE `supplier_acc` (
  `acc_id` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `TotalAmount` double NOT NULL,
  `Deposit_amount` double NOT NULL,
  `Balance` double NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_acc`
--

INSERT INTO `supplier_acc` (`acc_id`, `SupplierID`, `TotalAmount`, `Deposit_amount`, `Balance`, `Date`) VALUES
(1, 6, 223444, 185500, 37944, '2017-11-13'),
(2, 3, 34500, 6000, 28500, '2017-11-15'),
(3, 7, 38000, 25000, 13000, '2017-11-19'),
(4, 13, 5000, 4000, 1000, '2017-10-17'),
(5, 10, 71500, 50000, 21500, '2017-11-19'),
(6, 14, 20000, 12500, 7500, '2017-10-15'),
(7, 9, 12500, 5000, 7500, '2017-11-19'),
(8, 11, 25000, 12500, 12500, '2017-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `TripID` int(10) NOT NULL,
  `VID` int(10) NOT NULL,
  `Distance` double NOT NULL,
  `RunDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`TripID`, `VID`, `Distance`, `RunDate`) VALUES
(1, 1, 40, '2017-09-14'),
(2, 1, 40, '2017-09-14'),
(3, 1, 41, '2017-10-14'),
(4, 7, 100, '2017-10-15'),
(5, 7, 20, '2017-10-15'),
(6, 5, 10, '2017-10-18'),
(7, 8, 22, '2017-10-18'),
(8, 2, 198, '2017-10-18'),
(9, 1, 27, '2017-10-18'),
(10, 1, 2, '2017-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `updt`
--

CREATE TABLE `updt` (
  `code` int(11) NOT NULL,
  `qunt` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updt`
--

INSERT INTO `updt` (`code`, `qunt`, `date`) VALUES
(3, 100, '2017-08-15 00:00:00'),
(3, 200, '2017-08-15 00:00:00'),
(3, 30, '2016-01-01 00:00:00'),
(3, 30, '2016-01-01 00:00:00'),
(3, 30, '2016-01-01 00:00:00'),
(3, 300, '2016-01-01 00:00:00'),
(2, 30, '2016-11-01 00:00:00'),
(2, 30, '2016-11-01 00:00:00'),
(2, 30, '2016-11-01 00:00:00'),
(2, 500, '2016-11-01 00:00:00'),
(2, 500, '2016-11-01 00:00:00'),
(2, 2, '2016-11-01 00:00:00'),
(2, 2, '2016-11-01 00:00:00'),
(0, 3, '2016-01-01 00:00:00'),
(4, 5, '2016-01-01 00:00:00'),
(202, 500, '2017-08-15 00:00:00'),
(5, 100, '2017-10-05 00:00:00'),
(10, 100, '2017-11-02 00:00:00'),
(19, 200, '2017-11-02 00:00:00'),
(1, 50000, '2017-08-15 00:00:00'),
(1, 100000, '2017-08-15 00:00:00'),
(1, 1000, '2017-08-17 00:00:00'),
(8, 900, '2017-11-14 00:00:00'),
(20, 10000, '2017-11-14 00:00:00'),
(21, 1000, '2017-11-14 00:00:00'),
(78, 400, '2017-11-02 00:00:00'),
(1, 102, '2017-08-15 00:00:00'),
(66, 900, '2017-10-14 00:00:00'),
(66, 900, '2017-10-14 00:00:00'),
(66, 700, '2017-10-14 00:00:00'),
(101, 1000, '2017-10-14 00:00:00'),
(110, 10000, '2017-11-02 00:00:00'),
(110, 100, '2017-11-02 00:00:00'),
(66, 1400, '2017-10-14 00:00:00'),
(102, 200, '2017-11-24 00:00:00'),
(102, 500, '2017-11-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `EmpNo` int(11) NOT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`EmpNo`, `UserName`, `Password`, `Type`) VALUES
(1, 'krishan', '123', 'admin'),
(8, 'kr', '12', 'staff'),
(54, 'Udeshi', '789', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `VID` int(10) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Model` varchar(20) NOT NULL,
  `ChassisNo` varchar(20) NOT NULL,
  `Regno` varchar(20) NOT NULL,
  `Odometer` int(11) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Availability` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`VID`, `Brand`, `Model`, `ChassisNo`, `Regno`, `Odometer`, `Type`, `Availability`) VALUES
(1, 'Izuzu', 'Canter', 'HDBNPVY3FR', 'HT-0451', 130, 'Truck', 'Yes'),
(2, 'Izuzu', 'Canter', '9MA9DH4FUL', 'CAA0587', 398, 'Truck', 'Yes'),
(3, 'Tata', 'Batta', '9XEX6CKR8W', 'KP-5478', 15000, 'Minitruck', 'Yes'),
(4, 'Nissan', 'Vannet', '4YHCTE', 'JT-8891', 74300, 'Van', 'Yes'),
(5, 'Toyota', 'Hiace', 'A8U8DXN91L', 'NA-7542', 5135, 'Van', 'Yes'),
(6, 'Suzuki', 'Every', '9HBGG0YETZ', 'KP-5210', 25450, 'Van', 'Yes'),
(7, 'Tata', 'Nano', 'KEBH7JNOVL', 'CAR-0785', 120, 'Car', 'Yes'),
(8, 'Micro', 'Panda', 'M3R8DXMCS0', 'KP-3523', 32, 'Car', 'Yes'),
(9, 'Toyota', 'Vigo', 'Z4KF7G5L7Q', 'PC-4296', 21356, 'Pickup', 'Yes'),
(10, 'Nissan', 'Navara', 'P4OK78FEQ1', 'PF-4679', 101255, 'Pickup', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `vehiclepay`
--

CREATE TABLE `vehiclepay` (
  `PayID` int(10) NOT NULL,
  `VID` int(10) NOT NULL,
  `Amount` double NOT NULL,
  `Notes` varchar(155) NOT NULL,
  `Date` date NOT NULL,
  `PaymentType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehiclepay`
--

INSERT INTO `vehiclepay` (`PayID`, `VID`, `Amount`, `Notes`, `Date`, `PaymentType`) VALUES
(1, 1, 101.5, '', '2017-09-17', 'License'),
(2, 1, 15000.5, '', '2017-09-15', 'Insurance'),
(3, 2, 750, '', '2017-09-15', 'License'),
(4, 3, 10520, '', '2017-09-16', 'Insurance'),
(5, 2, 500, '', '2017-10-04', 'Insurance'),
(6, 3, 4500, '', '2017-10-03', 'License'),
(7, 4, 25000, 'Tires', '2017-10-05', 'Repair'),
(8, 4, 5400, '', '2017-10-05', 'Service'),
(9, 5, 7800, 'Full service', '2017-10-06', 'Service'),
(10, 6, 2000, '', '2017-10-09', 'License');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addorder`
--
ALTER TABLE `addorder`
  ADD PRIMARY KEY (`DID`,`OID`),
  ADD KEY `OID` (`OID`);

--
-- Indexes for table `applyleave`
--
ALTER TABLE `applyleave`
  ADD PRIMARY KEY (`EmpNo`,`Date`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `damage_item`
--
ALTER TABLE `damage_item`
  ADD KEY `ItemCode` (`ItemCode`);

--
-- Indexes for table `deletedemp`
--
ALTER TABLE `deletedemp`
  ADD PRIMARY KEY (`Empno`);

--
-- Indexes for table `deliver`
--
ALTER TABLE `deliver`
  ADD PRIMARY KEY (`DID`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`Empno`),
  ADD KEY `VID` (`VID`);

--
-- Indexes for table `estimate`
--
ALTER TABLE `estimate`
  ADD PRIMARY KEY (`EstimateID`),
  ADD KEY `Item_code` (`Item_code`),
  ADD KEY `CID` (`CID`);

--
-- Indexes for table `fuel`
--
ALTER TABLE `fuel`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `VID` (`VID`);

--
-- Indexes for table `issuence`
--
ALTER TABLE `issuence`
  ADD PRIMARY KEY (`issueID`,`ItemCode`),
  ADD KEY `issuence_ibfk_1` (`ItemCode`);

--
-- Indexes for table `item_inventory`
--
ALTER TABLE `item_inventory`
  ADD PRIMARY KEY (`Item_code`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`JID`,`OrderID`,`MachineID`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`EmpNo`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`loanid`),
  ADD KEY `EmpNo` (`EmpNo`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`MachineID`);

--
-- Indexes for table `maintenancelog`
--
ALTER TABLE `maintenancelog`
  ADD PRIMARY KEY (`MaintenanceID`),
  ADD KEY `MachineID` (`MachineID`);

--
-- Indexes for table `ordercust`
--
ALTER TABLE `ordercust`
  ADD PRIMARY KEY (`Orderid`),
  ADD KEY `Cid` (`Cid`),
  ADD KEY `Pid` (`Pid`),
  ADD KEY `EstId` (`EstId`),
  ADD KEY `Cid_2` (`Cid`);

--
-- Indexes for table `ordersupplierinvoice`
--
ALTER TABLE `ordersupplierinvoice`
  ADD PRIMARY KEY (`InvoiceID`);

--
-- Indexes for table `ordersupplieritem`
--
ALTER TABLE `ordersupplieritem`
  ADD PRIMARY KEY (`ID`,`SupplierID`,`ItemCode`),
  ADD KEY `SupplierID` (`SupplierID`),
  ADD KEY `OrderInvoiceID` (`OrderInvoiceID`),
  ADD KEY `setsupplieritem_ibfk_new` (`ItemCode`,`SupplierID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Pid`),
  ADD KEY `DeliverID` (`DeliverID`),
  ADD KEY `Cid` (`Cid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`EmpNo`,`Date`);

--
-- Indexes for table `setsupplieritem`
--
ALTER TABLE `setsupplieritem`
  ADD PRIMARY KEY (`SupplierID`,`ItemCode`),
  ADD KEY `ItemCode` (`ItemCode`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `supplier_acc`
--
ALTER TABLE `supplier_acc`
  ADD PRIMARY KEY (`acc_id`,`SupplierID`),
  ADD UNIQUE KEY `acc_id` (`acc_id`),
  ADD KEY `constraintsssss` (`SupplierID`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`TripID`),
  ADD KEY `VID` (`VID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`EmpNo`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`VID`);

--
-- Indexes for table `vehiclepay`
--
ALTER TABLE `vehiclepay`
  ADD PRIMARY KEY (`PayID`),
  ADD KEY `VID` (`VID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `deliver`
--
ALTER TABLE `deliver`
  MODIFY `DID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `Empno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `estimate`
--
ALTER TABLE `estimate`
  MODIFY `EstimateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `issuence`
--
ALTER TABLE `issuence`
  MODIFY `issueID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `JID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `loanid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `MachineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `maintenancelog`
--
ALTER TABLE `maintenancelog`
  MODIFY `MaintenanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ordercust`
--
ALTER TABLE `ordercust`
  MODIFY `Orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `ordersupplierinvoice`
--
ALTER TABLE `ordersupplierinvoice`
  MODIFY `InvoiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `ordersupplieritem`
--
ALTER TABLE `ordersupplieritem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `supplier_acc`
--
ALTER TABLE `supplier_acc`
  MODIFY `acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `TripID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `VID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `vehiclepay`
--
ALTER TABLE `vehiclepay`
  MODIFY `PayID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `addorder`
--
ALTER TABLE `addorder`
  ADD CONSTRAINT `addorder_ibfk_1` FOREIGN KEY (`OID`) REFERENCES `ordercust` (`Orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `applyleave`
--
ALTER TABLE `applyleave`
  ADD CONSTRAINT `cccccccleave` FOREIGN KEY (`EmpNo`) REFERENCES `emp` (`Empno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `damage_item`
--
ALTER TABLE `damage_item`
  ADD CONSTRAINT `damage_item_ibfk_1` FOREIGN KEY (`ItemCode`) REFERENCES `item_inventory` (`Item_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `constraint.vid3` FOREIGN KEY (`VID`) REFERENCES `vehicle` (`VID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `estimate`
--
ALTER TABLE `estimate`
  ADD CONSTRAINT `constraint.cideee` FOREIGN KEY (`EstimateID`) REFERENCES `customer` (`CID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `constraint.inventoryEsti` FOREIGN KEY (`Item_code`) REFERENCES `item_inventory` (`Item_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fuel`
--
ALTER TABLE `fuel`
  ADD CONSTRAINT `fuel_ibfk_1` FOREIGN KEY (`VID`) REFERENCES `vehicle` (`VID`);

--
-- Constraints for table `issuence`
--
ALTER TABLE `issuence`
  ADD CONSTRAINT `issuence_ibfk_1` FOREIGN KEY (`ItemCode`) REFERENCES `item_inventory` (`Item_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leave`
--
ALTER TABLE `leave`
  ADD CONSTRAINT `leave_ibfk_1` FOREIGN KEY (`EmpNo`) REFERENCES `emp` (`Empno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `constraint.loanz` FOREIGN KEY (`EmpNo`) REFERENCES `emp` (`Empno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maintenancelog`
--
ALTER TABLE `maintenancelog`
  ADD CONSTRAINT `maintenancelog_ibfk_1` FOREIGN KEY (`MachineID`) REFERENCES `machine` (`MachineID`);

--
-- Constraints for table `ordercust`
--
ALTER TABLE `ordercust`
  ADD CONSTRAINT `constraint.iEstiOrd` FOREIGN KEY (`EstId`) REFERENCES `estimate` (`EstimateID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordercust_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `customer` (`CID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orderpay_ibfk_1` FOREIGN KEY (`Pid`) REFERENCES `payment` (`Pid`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `ordersupplieritem`
--
ALTER TABLE `ordersupplieritem`
  ADD CONSTRAINT `setsupplieritem_ibfk_new` FOREIGN KEY (`ItemCode`,`SupplierID`) REFERENCES `setsupplieritem` (`ItemCode`, `SupplierID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `cust_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `customer` (`CID`);

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`EmpNo`) REFERENCES `emp` (`Empno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `setsupplieritem`
--
ALTER TABLE `setsupplieritem`
  ADD CONSTRAINT `setsupplieritem_ibfk_5` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `setsupplieritem_ibfk_6` FOREIGN KEY (`ItemCode`) REFERENCES `item_inventory` (`Item_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplier_acc`
--
ALTER TABLE `supplier_acc`
  ADD CONSTRAINT `constraintsssss` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`);

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`VID`) REFERENCES `vehicle` (`VID`);

--
-- Constraints for table `vehiclepay`
--
ALTER TABLE `vehiclepay`
  ADD CONSTRAINT `vehiclepay_ibfk_1` FOREIGN KEY (`VID`) REFERENCES `vehicle` (`VID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
