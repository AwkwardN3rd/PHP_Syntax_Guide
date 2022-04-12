-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 17, 2022 at 03:29 PM
-- Server version: 5.7.37-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Moteldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `AccessCards`
--

CREATE TABLE `AccessCards` (
  `Card_ID` int(11) NOT NULL,
  `AccessLevel` smallint(6) NOT NULL,
  `Availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AccessCards`
--

INSERT INTO `AccessCards` (`Card_ID`, `AccessLevel`, `Availability`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 2, 1),
(7, 2, 1),
(8, 2, 1),
(9, 2, 1),
(10, 2, 1),
(11, 2, 1),
(12, 2, 1),
(13, 2, 1),
(14, 2, 1),
(15, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Amenities`
--

CREATE TABLE `Amenities` (
  `Amenity_ID` smallint(6) NOT NULL,
  `AmenityCatigory` varchar(50) NOT NULL,
  `AmenityCost` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Amenities`
--

INSERT INTO `Amenities` (`Amenity_ID`, `AmenityCatigory`, `AmenityCost`) VALUES
(1, 'Night Pool Access', 40.00),
(2, 'Room service', 45.00),
(3, 'Party Room', 35.00);

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `Employee_ID` int(11) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `PhoneNum` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`Employee_ID`, `FirstName`, `LastName`, `PhoneNum`, `Email`) VALUES
(1, 'Tim', 'Cob', '2505552354', 'TimTom@mail.com'),
(2, 'Adina', 'Proctor', '2509902312', 'KittyCat@mail.com'),
(3, 'Cydney', 'Paine', '2542334563', 'Cydney2B@mail.com'),
(4, 'Zak', 'Driscoll', '2234534554', 'ZacAttack@mail.com'),
(5, 'Otis', 'Hutchings', '9097786534', 'OtisHut4@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Guest`
--

CREATE TABLE `Guest` (
  `Guest_ID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `StreetAddress` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Province` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `PostalCode` varchar(255) DEFAULT NULL,
  `PhoneNum` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Guest`
--

INSERT INTO `Guest` (`Guest_ID`, `FirstName`, `LastName`, `StreetAddress`, `City`, `Province`, `Country`, `PostalCode`, `PhoneNum`, `Email`) VALUES
(1000, 'John', 'Doe', '432 Arlington', 'Slocan', 'BC', 'Canada', 'V038T0', '2223331212', 'johndoe@email.com'),
(1001, 'Bob', 'Grabo', '000 GreenGrass', 'Paradise City', 'California', 'USA', 'V038T0', '2332221212', 'SomeWhere23@email.com'),
(1002, 'Marrie', 'Carter', 'Opr 364', 'Banff', 'BC', 'Canada', 'V052G1', '4443462597', 'MCarter@email.com'),
(1003, 'Tiffany', 'Small', 'Browns Place', 'Cranbrook', 'NS', 'Canada', 'P2D4FE', '2504449807', 'Tiffeny@email.com'),
(1004, 'Lilly', 'Brown', '9623 Link st', 'Kelowna', 'ON', 'Canada', 'P7EW33', '2504649907', 'LillyB@email.com'),
(1005, 'Emily', 'Lena', NULL, NULL, NULL, NULL, NULL, NULL, 'myemail@gmail.com'),
(1008, 'Moon', 'Moon', NULL, NULL, NULL, NULL, NULL, NULL, 'Moon@email.com'),
(1010, 'Emily', 'Lena', NULL, NULL, NULL, NULL, NULL, NULL, 'cats@gmail.com'),
(1011, 'Missy', '', NULL, NULL, NULL, NULL, NULL, NULL, 'miss@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `HouseKeeping`
--

CREATE TABLE `HouseKeeping` (
  `HouseKeeping_ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Room_ID` int(11) NOT NULL,
  `Stay` tinyint(1) DEFAULT NULL,
  `Service` tinyint(1) DEFAULT NULL,
  `IsRoomClean` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HouseKeeping`
--

INSERT INTO `HouseKeeping` (`HouseKeeping_ID`, `Date`, `Room_ID`, `Stay`, `Service`, `IsRoomClean`) VALUES
(2, '2021-12-22', 5, 1, 1, 0),
(3, '2021-12-22', 10, 1, 0, 0),
(4, '2021-12-23', 5, 0, 0, 1),
(5, '2022-01-27', 12, 0, 0, 0),
(6, '2022-01-27', 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Inventory`
--

CREATE TABLE `Inventory` (
  `Inventory_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Quanity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Inventory`
--

INSERT INTO `Inventory` (`Inventory_ID`, `Product_ID`, `Quanity`) VALUES
(1, 1, 12),
(2, 2, 1),
(3, 3, 18),
(4, 4, 48),
(5, 5, 87);

-- --------------------------------------------------------

--
-- Table structure for table `Invoice`
--

CREATE TABLE `Invoice` (
  `InvoiceNum` int(11) NOT NULL,
  `Guest_ID` int(11) NOT NULL,
  `Reservation_ID` int(11) NOT NULL,
  `Package_ID` smallint(6) DEFAULT NULL,
  `Amenity_ID` smallint(6) DEFAULT NULL,
  `PaymentMethod` varchar(50) NOT NULL,
  `Discount` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Invoice`
--

INSERT INTO `Invoice` (`InvoiceNum`, `Guest_ID`, `Reservation_ID`, `Package_ID`, `Amenity_ID`, `PaymentMethod`, `Discount`) VALUES
(1, 1003, 10002, 2, NULL, 'Cash', 0.14);

-- --------------------------------------------------------

--
-- Table structure for table `Packages`
--

CREATE TABLE `Packages` (
  `Package_ID` smallint(6) NOT NULL,
  `PackageType` varchar(50) NOT NULL,
  `Discount` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Packages`
--

INSERT INTO `Packages` (`Package_ID`, `PackageType`, `Discount`) VALUES
(1, 'Weekend Getaway', 0.10),
(2, 'Swim the night away!', 0.14),
(3, 'Full Package', 0.20);

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `Product_ID` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductCategory` varchar(25) NOT NULL,
  `Cost` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`Product_ID`, `ProductName`, `ProductCategory`, `Cost`) VALUES
(1, 'Zep40 - 250ml 18/case', 'Cleaning', 134.54),
(2, 'Clorox Bleach - 3L 3/case', 'Cleaning', 120.29),
(3, '3m Lint Rollers - 6/case', 'Cleaning', 110.09),
(4, 'Bath & Hand Towels - 48/case', 'Room', 66.00),
(5, 'BIC Gel-ocity - 48 (r,bu,bk)', 'Front-End', 1.70);

-- --------------------------------------------------------

--
-- Table structure for table `Reservation`
--

CREATE TABLE `Reservation` (
  `Reservation_ID` int(11) NOT NULL,
  `Guest_ID` int(11) NOT NULL,
  `Room_ID` int(11) NOT NULL,
  `Package_ID` smallint(6) DEFAULT NULL,
  `Amenity_ID` smallint(6) DEFAULT NULL,
  `Card_ID` int(11) DEFAULT NULL,
  `CheckIn` date NOT NULL,
  `CheckOut` date NOT NULL,
  `Notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Reservation`
--

INSERT INTO `Reservation` (`Reservation_ID`, `Guest_ID`, `Room_ID`, `Package_ID`, `Amenity_ID`, `Card_ID`, `CheckIn`, `CheckOut`, `Notes`) VALUES
(10000, 1001, 2, NULL, NULL, 11, '2022-01-27', '2022-01-31', 'aaaaaaaaaaaaaaa'),
(10001, 1003, 4, 1, 3, 10, '2022-01-27', '2022-01-31', 'Anniversary! Please put cake and sparkliers in room'),
(10002, 1002, 10, NULL, NULL, 15, '2022-01-20', '2022-02-02', 'DND'),
(10003, 1004, 10, 2, NULL, 15, '2022-01-27', '2022-02-20', 'N/A'),
(10014, 1000, 1, NULL, NULL, 6, '2022-02-01', '2022-02-02', 'ff'),
(10022, 1004, 10, NULL, NULL, 11, '2022-02-03', '2022-02-11', 'this is some notes'),
(10023, 1008, 2, NULL, NULL, NULL, '2022-02-05', '2022-02-06', 'aaaaaaaaaaaaaa'),
(10024, 1008, 2, NULL, NULL, NULL, '2022-02-05', '2022-02-06', 'some notes'),
(10025, 1008, 3, NULL, NULL, NULL, '2022-02-05', '2022-02-11', NULL),
(10026, 1008, 18, NULL, NULL, NULL, '2022-02-11', '2022-02-12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Rooms`
--

CREATE TABLE `Rooms` (
  `Room_ID` int(11) NOT NULL,
  `RoomType_ID` smallint(6) NOT NULL,
  `RoomNum` int(11) NOT NULL,
  `Floor` int(11) NOT NULL,
  `RoomStatus` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Rooms`
--

INSERT INTO `Rooms` (`Room_ID`, `RoomType_ID`, `RoomNum`, `Floor`, `RoomStatus`) VALUES
(1, 1, 101, 1, 0),
(2, 1, 102, 1, 1),
(3, 1, 103, 1, 1),
(4, 2, 104, 1, 1),
(5, 2, 105, 1, 1),
(6, 4, 106, 1, 1),
(7, 6, 107, 1, 1),
(8, 6, 108, 1, 1),
(9, 7, 109, 1, 1),
(10, 7, 110, 1, 1),
(11, 3, 111, 2, 1),
(12, 3, 112, 2, 1),
(13, 3, 114, 2, 1),
(14, 8, 115, 2, 1),
(15, 8, 116, 2, 1),
(16, 8, 117, 2, 1),
(17, 8, 118, 2, 1),
(18, 5, 119, 2, 1),
(19, 5, 120, 2, 1),
(20, 5, 121, 2, 1),
(21, 6, 122, 1, 0),
(22, 6, 122, 2, 0),
(23, 6, 122, 1, 0),
(26, 4, 123, 1, 0),
(27, 2, 124, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `RoomType`
--

CREATE TABLE `RoomType` (
  `RoomType_ID` smallint(6) NOT NULL,
  `RoomType` varchar(25) DEFAULT NULL,
  `Accessiblity` tinyint(1) NOT NULL,
  `PetFriendly` tinyint(1) NOT NULL,
  `RoomRate` double(10,2) NOT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RoomType`
--

INSERT INTO `RoomType` (`RoomType_ID`, `RoomType`, `Accessiblity`, `PetFriendly`, `RoomRate`, `Description`) VALUES
(1, 'Queen(A,P)', 1, 1, 120.00, 'Queen room with pets allowed, easy access.'),
(2, 'Queen(A)', 1, 0, 110.00, 'Queen room with no pets allowed, easy access.'),
(3, 'Queen(P)', 0, 1, 120.00, 'Queen room with pets allowed, access limited.'),
(4, 'King(A)', 1, 0, 160.00, 'King room with no pets allowed, easy access.'),
(5, 'King', 0, 0, 160.00, 'King room with no pets allowed, easy access.'),
(6, 'Double Queen(A,P)', 1, 1, 140.00, 'Double Queen room with pets allowed, easy access.'),
(7, 'Double Queen(A)', 1, 0, 130.00, 'Double Queen room with no pets allowed, easy access.'),
(8, 'Double Queen(P)', 0, 1, 140.00, 'Double Queen room with pets allowed, easy access.');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tesDt`
-- (See below for the actual view)
--
CREATE TABLE `tesDt` (
`RoomID` int(11)
,`Room_ID` int(11)
,`RoomType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Test`
-- (See below for the actual view)
--
CREATE TABLE `Test` (
`RoomID` int(11)
,`Room_ID` int(11)
,`RoomType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Test2`
-- (See below for the actual view)
--
CREATE TABLE `Test2` (
`RoomID` int(11)
,`Room_ID` int(11)
,`RoomType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Testfour`
-- (See below for the actual view)
--
CREATE TABLE `Testfour` (
`RoomID` int(11)
,`Room_ID` int(11)
,`RoomType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Testthree`
-- (See below for the actual view)
--
CREATE TABLE `Testthree` (
`RoomID` int(11)
,`Room_ID` int(11)
,`RoomType` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Testtwo`
-- (See below for the actual view)
--
CREATE TABLE `Testtwo` (
`RoomID` int(11)
,`Room_ID` int(11)
,`RoomType` varchar(25)
);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `User_ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Employee_ID` int(11) DEFAULT NULL,
  `Guest_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`User_ID`, `username`, `password`, `email`, `Employee_ID`, `Guest_ID`) VALUES
(5, 'Emily', 'password', 'thatchickemily1@gmail.com', NULL, NULL),
(6, 'Moon', '', 'Moon@email.com', NULL, NULL),
(7, 'Admin', 'password', 'Admin@mail.com', NULL, NULL),
(8, 'Emily', '', 'cats@gmail.com', NULL, NULL),
(9, 'Missy', 'password', 'miss@gmail.com', NULL, NULL),
(10, 'lena', 'password', 'Moon1@email.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure for view `tesDt`
--
DROP TABLE IF EXISTS `tesDt`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tesDt`  AS  select `Rooms`.`Room_ID` AS `RoomID`,`Reservation`.`Room_ID` AS `Room_ID`,`RoomType`.`RoomType` AS `RoomType` from ((`Rooms` join `Reservation` on((`Rooms`.`Room_ID` = `Reservation`.`Room_ID`))) join `RoomType` on((`RoomType`.`RoomType_ID` = `Rooms`.`RoomType_ID`))) where (`Reservation`.`CheckIn` <> '2022-01-27') ;

-- --------------------------------------------------------

--
-- Structure for view `Test`
--
DROP TABLE IF EXISTS `Test`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Test`  AS  select `Rooms`.`Room_ID` AS `RoomID`,`Reservation`.`Room_ID` AS `Room_ID`,`RoomType`.`RoomType` AS `RoomType` from ((`Rooms` join `Reservation` on((`Rooms`.`Room_ID` = `Reservation`.`Room_ID`))) join `RoomType` on((`RoomType`.`RoomType_ID` = `Rooms`.`RoomType_ID`))) where (`Reservation`.`CheckIn` <> '2022-01-27') ;

-- --------------------------------------------------------

--
-- Structure for view `Test2`
--
DROP TABLE IF EXISTS `Test2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Test2`  AS  select `Rooms`.`Room_ID` AS `RoomID`,`Reservation`.`Room_ID` AS `Room_ID`,`RoomType`.`RoomType` AS `RoomType` from ((`Rooms` join `Reservation` on((`Rooms`.`Room_ID` = `Reservation`.`Room_ID`))) join `RoomType` on((`RoomType`.`RoomType_ID` = `Rooms`.`RoomType_ID`))) where (`Reservation`.`CheckIn` <> '2022-01-27') ;

-- --------------------------------------------------------

--
-- Structure for view `Testfour`
--
DROP TABLE IF EXISTS `Testfour`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Testfour`  AS  select `Rooms`.`Room_ID` AS `RoomID`,`Reservation`.`Room_ID` AS `Room_ID`,`RoomType`.`RoomType` AS `RoomType` from ((`Rooms` join `Reservation` on((`Rooms`.`Room_ID` = `Reservation`.`Room_ID`))) join `RoomType` on((`RoomType`.`RoomType_ID` = `Rooms`.`RoomType_ID`))) where (`Reservation`.`CheckIn` <> '2022-01-27') ;

-- --------------------------------------------------------

--
-- Structure for view `Testthree`
--
DROP TABLE IF EXISTS `Testthree`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Testthree`  AS  select `Rooms`.`Room_ID` AS `RoomID`,`Reservation`.`Room_ID` AS `Room_ID`,`RoomType`.`RoomType` AS `RoomType` from ((`Rooms` join `Reservation` on((`Rooms`.`Room_ID` = `Reservation`.`Room_ID`))) join `RoomType` on((`RoomType`.`RoomType_ID` = `Rooms`.`RoomType_ID`))) where (`Reservation`.`CheckIn` <> '2022-01-27') ;

-- --------------------------------------------------------

--
-- Structure for view `Testtwo`
--
DROP TABLE IF EXISTS `Testtwo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Testtwo`  AS  select `Rooms`.`Room_ID` AS `RoomID`,`Reservation`.`Room_ID` AS `Room_ID`,`RoomType`.`RoomType` AS `RoomType` from ((`Rooms` join `Reservation` on((`Rooms`.`Room_ID` = `Reservation`.`Room_ID`))) join `RoomType` on((`RoomType`.`RoomType_ID` = `Rooms`.`RoomType_ID`))) where (`Reservation`.`CheckIn` <> '2022-01-27') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AccessCards`
--
ALTER TABLE `AccessCards`
  ADD PRIMARY KEY (`Card_ID`);

--
-- Indexes for table `Amenities`
--
ALTER TABLE `Amenities`
  ADD PRIMARY KEY (`Amenity_ID`);

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`Employee_ID`);

--
-- Indexes for table `Guest`
--
ALTER TABLE `Guest`
  ADD PRIMARY KEY (`Guest_ID`);

--
-- Indexes for table `HouseKeeping`
--
ALTER TABLE `HouseKeeping`
  ADD PRIMARY KEY (`HouseKeeping_ID`),
  ADD KEY `Room_ID` (`Room_ID`);

--
-- Indexes for table `Inventory`
--
ALTER TABLE `Inventory`
  ADD PRIMARY KEY (`Inventory_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `Invoice`
--
ALTER TABLE `Invoice`
  ADD PRIMARY KEY (`InvoiceNum`),
  ADD KEY `Guest_ID` (`Guest_ID`),
  ADD KEY `Reservation_ID` (`Reservation_ID`),
  ADD KEY `Amenity_ID` (`Amenity_ID`),
  ADD KEY `Package_ID` (`Package_ID`);

--
-- Indexes for table `Packages`
--
ALTER TABLE `Packages`
  ADD PRIMARY KEY (`Package_ID`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `Reservation`
--
ALTER TABLE `Reservation`
  ADD PRIMARY KEY (`Reservation_ID`),
  ADD KEY `Card_ID` (`Card_ID`),
  ADD KEY `Room_ID` (`Room_ID`),
  ADD KEY `Guest_ID` (`Guest_ID`),
  ADD KEY `Package_ID` (`Package_ID`),
  ADD KEY `Amenity_ID` (`Amenity_ID`);

--
-- Indexes for table `Rooms`
--
ALTER TABLE `Rooms`
  ADD PRIMARY KEY (`Room_ID`),
  ADD KEY `RoomType_ID` (`RoomType_ID`);

--
-- Indexes for table `RoomType`
--
ALTER TABLE `RoomType`
  ADD PRIMARY KEY (`RoomType_ID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AccessCards`
--
ALTER TABLE `AccessCards`
  MODIFY `Card_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `Amenities`
--
ALTER TABLE `Amenities`
  MODIFY `Amenity_ID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Guest`
--
ALTER TABLE `Guest`
  MODIFY `Guest_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;
--
-- AUTO_INCREMENT for table `HouseKeeping`
--
ALTER TABLE `HouseKeeping`
  MODIFY `HouseKeeping_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Inventory`
--
ALTER TABLE `Inventory`
  MODIFY `Inventory_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Invoice`
--
ALTER TABLE `Invoice`
  MODIFY `InvoiceNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Packages`
--
ALTER TABLE `Packages`
  MODIFY `Package_ID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Reservation`
--
ALTER TABLE `Reservation`
  MODIFY `Reservation_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10027;
--
-- AUTO_INCREMENT for table `Rooms`
--
ALTER TABLE `Rooms`
  MODIFY `Room_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `RoomType`
--
ALTER TABLE `RoomType`
  MODIFY `RoomType_ID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `HouseKeeping`
--
ALTER TABLE `HouseKeeping`
  ADD CONSTRAINT `HouseKeeping_ibfk_1` FOREIGN KEY (`Room_ID`) REFERENCES `Rooms` (`Room_ID`);

--
-- Constraints for table `Inventory`
--
ALTER TABLE `Inventory`
  ADD CONSTRAINT `Inventory_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `Product` (`Product_ID`),
  ADD CONSTRAINT `Inventory_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `Product` (`Product_ID`);

--
-- Constraints for table `Invoice`
--
ALTER TABLE `Invoice`
  ADD CONSTRAINT `Invoice_ibfk_1` FOREIGN KEY (`Guest_ID`) REFERENCES `Guest` (`Guest_ID`),
  ADD CONSTRAINT `Invoice_ibfk_2` FOREIGN KEY (`Reservation_ID`) REFERENCES `Reservation` (`Reservation_ID`),
  ADD CONSTRAINT `Invoice_ibfk_3` FOREIGN KEY (`Package_ID`) REFERENCES `Packages` (`Package_ID`),
  ADD CONSTRAINT `Invoice_ibfk_4` FOREIGN KEY (`Amenity_ID`) REFERENCES `Amenities` (`Amenity_ID`),
  ADD CONSTRAINT `Invoice_ibfk_5` FOREIGN KEY (`Package_ID`) REFERENCES `Packages` (`Package_ID`),
  ADD CONSTRAINT `Invoice_ibfk_6` FOREIGN KEY (`Package_ID`) REFERENCES `Packages` (`Package_ID`);

--
-- Constraints for table `Reservation`
--
ALTER TABLE `Reservation`
  ADD CONSTRAINT `Reservation_ibfk_1` FOREIGN KEY (`Card_ID`) REFERENCES `AccessCards` (`Card_ID`),
  ADD CONSTRAINT `Reservation_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `Rooms` (`Room_ID`),
  ADD CONSTRAINT `Reservation_ibfk_3` FOREIGN KEY (`Guest_ID`) REFERENCES `Guest` (`Guest_ID`),
  ADD CONSTRAINT `Reservation_ibfk_4` FOREIGN KEY (`Package_ID`) REFERENCES `Packages` (`Package_ID`),
  ADD CONSTRAINT `Reservation_ibfk_5` FOREIGN KEY (`Amenity_ID`) REFERENCES `Amenities` (`Amenity_ID`);

--
-- Constraints for table `Rooms`
--
ALTER TABLE `Rooms`
  ADD CONSTRAINT `Rooms_ibfk_1` FOREIGN KEY (`RoomType_ID`) REFERENCES `RoomType` (`RoomType_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
