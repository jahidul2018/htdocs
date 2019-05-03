/*
MySQL Data Transfer
Source Host: localhost
Source Database: artbound
Target Host: localhost
Target Database: artbound
Date: 27/04/2017 20:05:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for art
-- ----------------------------
DROP TABLE IF EXISTS `art`;
CREATE TABLE `art` (
  `ArtID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) DEFAULT NULL,
  `ArtImage` varchar(100) DEFAULT NULL,
  `ArtName` varchar(100) DEFAULT NULL,
  `Style` varchar(10) DEFAULT NULL,
  `Subject` varchar(11) DEFAULT NULL,
  `Medium` varchar(12) DEFAULT NULL,
  `CreateDay` varchar(2) DEFAULT NULL,
  `CreateMonth` varchar(2) DEFAULT NULL,
  `CreateYear` varchar(4) DEFAULT NULL,
  `BackgroundStory` varchar(3000) DEFAULT NULL,
  `SaleStatus` varchar(8) DEFAULT NULL,
  `PurchasedBy` varchar(60) DEFAULT NULL,
  `UploadDay` varchar(2) DEFAULT NULL,
  `UploadMonth` varchar(2) DEFAULT NULL,
  `UploadYear` varchar(4) DEFAULT NULL,
  `UploadTime` varchar(11) DEFAULT NULL,
  `AdminClearance` varchar(12) DEFAULT NULL,
  `AuctionRequest` int(5) DEFAULT NULL,
  `RequestStatus` varchar(10) DEFAULT NULL,
  `Report` int(5) DEFAULT NULL,
  `Likes` varchar(10) NOT NULL,
  PRIMARY KEY (`ArtID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for auction
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction` (
  `AuctionID` int(11) NOT NULL AUTO_INCREMENT,
  `ArtID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `StartDate` varchar(20) DEFAULT NULL,
  `ClosingDate` varchar(20) DEFAULT NULL,
  `InitialPrice` varchar(8) DEFAULT NULL,
  `IncrementPerBid` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`AuctionID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for auction_request
-- ----------------------------
DROP TABLE IF EXISTS `auction_request`;
CREATE TABLE `auction_request` (
  `RequestID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(11) DEFAULT NULL,
  `ArtID` varchar(11) DEFAULT NULL,
  `RequestDate` varchar(11) DEFAULT NULL,
  `RequestTime` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`RequestID`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for bid
-- ----------------------------
DROP TABLE IF EXISTS `bid`;
CREATE TABLE `bid` (
  `BidID` int(11) NOT NULL AUTO_INCREMENT,
  `ArtID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `BidDate` varchar(15) DEFAULT NULL,
  `BidTime` varchar(15) DEFAULT NULL,
  `BidAmount` int(15) DEFAULT NULL,
  PRIMARY KEY (`BidID`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for credit_card
-- ----------------------------
DROP TABLE IF EXISTS `credit_card`;
CREATE TABLE `credit_card` (
  `CreditID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) DEFAULT NULL,
  `NationalID` varchar(17) DEFAULT NULL,
  `NameOnCard` varchar(50) DEFAULT NULL,
  `CardType` varchar(20) DEFAULT NULL,
  `CardNumber` varchar(20) DEFAULT NULL,
  `ExpireMonth` varchar(10) DEFAULT NULL,
  `ExpireYear` varchar(4) DEFAULT NULL,
  `CVV` varchar(5) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `CompanyName` varchar(60) DEFAULT NULL,
  `ContactNumber` varchar(15) DEFAULT NULL,
  `AddressLine1` varchar(50) DEFAULT NULL,
  `AddressLine2` varchar(50) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `ZipCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CreditID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `LikeID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(11) DEFAULT NULL,
  `ArtID` varchar(11) DEFAULT NULL,
  `LikeDate` varchar(11) DEFAULT NULL,
  `LikeTime` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`LikeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `ReportID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(11) DEFAULT NULL,
  `ArtID` varchar(11) DEFAULT NULL,
  `ReportDetail` varchar(2000) DEFAULT NULL,
  `ReportDate` varchar(11) DEFAULT NULL,
  `ReportTime` varchar(10) DEFAULT NULL,
  `ReportChecked` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ReportID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user_guide
-- ----------------------------
DROP TABLE IF EXISTS `user_guide`;
CREATE TABLE `user_guide` (
  `ID` varchar(5) NOT NULL,
  `ArtistGuide` mediumtext,
  `CollectorGuide` mediumtext,
  `BidderGuide` mediumtext,
  `MemberGuide` mediumtext,
  `FAQ` mediumtext,
  `ArtboundAim` mediumtext,
  `ArtboundEvolution` mediumtext,
  `ContactNumber` varchar(15) DEFAULT NULL,
  `ContactEmail` varchar(50) DEFAULT NULL,
  `ContactAddress` varchar(200) DEFAULT NULL,
  `TermService` mediumtext,
  `PrivacyPolicy` mediumtext,
  `CopyrightPolicy` mediumtext,
  `About` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Active` int(1) DEFAULT NULL,
  `ActivationCode` varchar(32) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `UserType` varchar(10) DEFAULT NULL,
  `BirthDay` varchar(3) DEFAULT NULL,
  `BirthMonth` varchar(10) DEFAULT NULL,
  `BirthYear` varchar(4) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `ContactNumber` varchar(20) DEFAULT NULL,
  `ActivityClearance` varchar(10) NOT NULL,
  `attempts` int(3) DEFAULT NULL,
  `timestamp` int(3) DEFAULT NULL,
  `LoginNumbers` int(10) NOT NULL,
  `ProfileImage` varchar(100) NOT NULL,
  `AboutMe` varchar(3000) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `art` VALUES ('12', '93', 'Photo0516.jpg', 'Scary', 'fine art', 'portrait', 'oil', '1', '0', '2008', 'Mindblown', 'not sold', '', '27', '12', '2016', '08:22:41p', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('13', '93', '5ZCe330.jpg', 'Aaaaaaaaa', 'fine art', 'portrait', 'oil', '1', '0', '2001', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'not sold', '', '03', '01', '2017', '07:20:57p', 'Allowed', '10', null, '0', '');
INSERT INTO `art` VALUES ('14', '93', '18-art-wallpaper.jpg', 'Bbbbbbbb', 'fine art', 'portrait', 'oil', '1', '0', '2001', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'not sold', '', '03', '01', '2017', '07:21:43p', 'Allowed', '10', 'Cancelled', '0', '');
INSERT INTO `art` VALUES ('15', '93', '27ca2a97cf82210c655adfbb25640bda.jpg', 'Cccccccc', 'fine art', 'portrait', 'oil', '1', '0', '2001', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'not sold', '', '03', '01', '2017', '07:23:06p', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('16', '93', '4467134-art-wallpapers.jpg', 'Dddddddd', 'fine art', 'nature', 'oil', '1', '0', '2001', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'not sold', '', '03', '01', '2017', '07:24:07p', 'Allowed', '10', 'Cancelled', '0', '');
INSERT INTO `art` VALUES ('17', '93', '37223778-art-wallpapers.jpg', 'Eeeeeeee afdfdccc', 'fine art', 'print', 'oil', '1', '0', '2001', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'not sold', '', '03', '01', '2017', '07:26:10p', 'Allowed', '19', null, '3', '1');
INSERT INTO `art` VALUES ('18', '93', '1612080121464art-wallpaper-hd-5.jpg', 'Ffffffff sfsdfsf', 'fine art', 'print', 'airbrush', '1', '0', '2002', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'not sold', '', '03', '01', '2017', '07:28:14p', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('19', '93', 'arts-wallpapers-9.jpg', 'Ggggggggg ajdhajskdas', 'fine art', 'portrait', 'airbrush', '1', '0', '2002', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'not sold', '', '03', '01', '2017', '07:30:25p', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('20', '93', 'art-wallpaper-hd-19.jpg', 'Hhhhhh andsaldasl', 'fine art', 'portrait', 'airbrush', '1', '0', '2002', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'sold', '', '03', '01', '2017', '07:31:12p', 'Allowed', '12', 'Cancelled', '0', '');
INSERT INTO `art` VALUES ('21', '93', 'Art-Wallpapers-6.jpg', 'Iiiiiiiiii sfsdlfsjfkfjs', 'modern', 'portrait', 'oil', '1', '0', '2002', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'sold', '', '03', '01', '2017', '07:33:00p', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('22', '93', 'art-wallpapers-dark-2.jpg', 'Jjjjjjjjjj nldnsf', 'modern', 'portrait', 'oil', '1', '0', '2002', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'sold', '', '03', '01', '2017', '07:35:40p', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('23', '93', 'art-wallpapers-high-definition-For-Desktop-Wallpaper.jpg', 'Abbbbbbbbb kdjdkjsd', 'abstract', 'landscape', 'watercolour', '2', '1', '2003', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'sold', '', '03', '01', '2017', '07:38:16p', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('24', '93', 'b7811303fcbe79fafb6141286dc5d9fdb9912f17f57726e2e397b4e65b0094e7.jpg', 'Bccccccc lslsdlfsf', 'abstract', 'landscape', 'watercolour', '2', '1', '2003', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'sold', '', '03', '01', '2017', '07:39:13p', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('25', '93', 'Eagle-Art.jpg', 'Cdddd sfsldfksdfk', 'abstract', 'landscape', 'watercolour', '2', '1', '2003', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'sold', '', '03', '01', '2017', '07:40:19p', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('26', '93', 'exploring_by_chillay-d5gbp22.jpg', 'Deeeeee aldkdksd', 'abstract', 'nature', 'watercolour', '2', '1', '2003', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'sold', '', '03', '01', '2017', '07:41:17p', 'Allowed', '10', null, '0', '');
INSERT INTO `art` VALUES ('27', '93', 'fs7ra38.jpg', 'Effffffff adkjdsd', 'abstract', 'landscape', 'watercolour', '2', '1', '2003', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'sold', '', '03', '01', '2017', '07:43:10p', 'Allowed', '10', null, '0', '');
INSERT INTO `art` VALUES ('28', '93', 'fU0gFbJ.jpg', 'Fgggggg ldslsddks', 'abstract', 'landscape', 'watercolour', '2', '1', '2004', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'not sold', '', '03', '01', '2017', '07:44:09p', 'Allowed', '10', null, '0', '');
INSERT INTO `art` VALUES ('29', '93', 'hd-art-wallpapers-for-mac.jpeg', 'Ghhhhhh ljdslddjdsl', 'pop art', 'landscape', 'watercolour', '2', '1', '2004', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely.', 'sold', '', '03', '01', '2017', '07:52:06p', 'Allowed', '10', 'Cancelled', '0', '');
INSERT INTO `art` VALUES ('30', '93', 'thumb-1920-86137.jpg', 'Hiiiiiii adsdnsd', 'pop art', 'landscape', 'watercolour', '2', '1', '2004', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely. The Foreign Keys have also been provided wherever necessary to enforce referential integrity between entities.', 'sold', '', '03', '01', '2017', '09:06:42p', 'Allowed', '10', null, '0', '');
INSERT INTO `art` VALUES ('32', '93', 'grunge-nature-art.jpg', 'Ijjjjjjjjjjj dldsdjddkjsd', 'abstract', 'landscape', 'digital', '2', '1', '2004', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities.', 'sold', '', '04', '01', '2017', '10:57:20a', 'Allowed', '10', null, '0', '');
INSERT INTO `art` VALUES ('33', '93', 'NcZmi0w.jpg', 'Falcon Rising', 'abstract', 'landscape', 'digital', '2', '1', '2004', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities.', 'sold', '', '04', '01', '2017', '10:58:42a', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('34', '93', 'OlXtdKw.jpg', 'Abccccccc dsdjhm', 'composite', 'still life', 'acrylic', '3', '2', '2005', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length).', 'not sold', '', '11', '04', '2017', '11:31:04a', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('35', '93', 'Pictures-Fantasy-Art-HD.jpg', 'Battleships', 'composite', 'still life', 'acrylic', '3', '2', '2005', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length).', 'sold', '', '11', '04', '2017', '11:35:49a', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('36', '93', 'profileImage_origin.jpg', 'Leaving the darkness behind', 'composite', 'still life', 'acrylic', '3', '2', '2005', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length).', 'not sold', '', '11', '04', '2017', '11:42:38a', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('37', '93', 'symbol_art_wallpapers.jpeg', 'Bcddddddddddd jdslksdfldk', 'composite', 'still life', 'acrylic', '3', '2', '2005', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length).', 'sold', '', '11', '04', '2017', '11:45:00a', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('38', '93', 'thumb-1920-81842.jpg', 'Pirates of the Caribbean', 'composite', 'still life', 'acrylic', '3', '2', '2005', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length).', 'sold', '', '05', '01', '2017', '11:46:55a', 'Not Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('39', '93', 'thumb-1920-82154.jpg', 'Sunset in the Horizon', 'composite', 'still life', 'acrylic', '3', '2', '2005', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length).', 'not sold', '', '05', '01', '2017', '11:52:49a', 'Not Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('40', '93', 'thumb-1920-83503.jpg', 'Pride of Victory', 'composite', 'still life', 'acrylic', '3', '2', '2005', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length).', 'not sold', '', '05', '01', '2017', '11:54:43a', 'Not Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('41', '93', 'thumb-1920-84009.jpg', 'Waiting', 'composite', 'still life', 'acrylic', '4', '3', '2006', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length).', 'sold', '', '05', '01', '2017', '11:56:39a', 'Not Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('42', '93', 'thumb-1920-88208.jpg', 'Night on the Highcastle', 'composite', 'still life', 'acrylic', '4', '3', '2006', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length).', 'sold', '', '05', '01', '2017', '11:59:40a', 'Not Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('43', '93', 'thumb-1920-101511.jpg', 'Countrysight ', 'composite', 'still life', 'acrylic', '4', '3', '2006', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length).', 'sold', '', '05', '01', '2017', '12:07:00p', 'Not Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('44', '93', '677px-Mona_Lisa.jpg', 'Monalisa', 'modern', 'still life', 'oil', '5', '3', '2007', 'Whatever!!!!!!!!!', 'not sold', '', '05', '01', '2017', '01:21:45p', 'Not Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('45', '93', 'Whistlers_Mother_high_res.jpg', 'Whistlers Mother', 'composite', 'still life', 'watercolour', '2', '3', '2007', 'Whatever!!!!!!!!!!', 'sold', '', '05', '01', '2017', '01:22:49p', 'Not Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('46', '97', 'thumb-1920-337384.jpg', 'Girl in the Bus', 'fine art', 'still life', 'watercolour', '1', '0', '2001', 'Beautiful', 'sold', '', '20', '01', '2017', '04:58:14p', 'Allowed', '0', null, '0', '');
INSERT INTO `art` VALUES ('47', '93', 'xxWwjiv.jpg', 'Sleeping Beauty', 'modern', 'still life', 'airbrush', '28', '3', '1993', 'Sleeping Beauty', 'not sold', '', '25', '01', '2017', '04:36:27pm', 'Allowed', '0', null, '0', '0');
INSERT INTO `auction` VALUES ('1', '13', '93', '2017-01-22', '2017-01-25', '25000', '4000');
INSERT INTO `auction` VALUES ('2', '17', '93', '2017-04-19', '2017-04-20', '50000', '5000');
INSERT INTO `auction` VALUES ('3', '15', '93', '2017-04-24', '2017-04-26', '50000', '5000');
INSERT INTO `auction` VALUES ('4', '18', '93', '2017-04-27', '2017-04-28', '40000', '4000');
INSERT INTO `auction` VALUES ('5', '19', '93', '2017-05-05', '2017-05-07', '35000', '3000');
INSERT INTO `auction` VALUES ('7', '24', '93', '2017-05-15', '2017-05-17', '60000', '6000');
INSERT INTO `auction` VALUES ('8', '21', '93', '2017-05-01', '2017-05-03', '70000', '7000');
INSERT INTO `auction` VALUES ('9', '22', '93', '2017-05-03', '2017-05-04', '20000', '2000');
INSERT INTO `auction` VALUES ('10', '23', '93', '2017-05-06', '2017-05-08', '10000', '1000');
INSERT INTO `auction` VALUES ('12', '25', '93', '2017-05-10', '2017-05-12', '15000', '1500');
INSERT INTO `auction_request` VALUES ('151', '93', '15', '10/01/2017', '04:44:23pm');
INSERT INTO `auction_request` VALUES ('152', '97', '15', '10/01/2017', '04:44:28pm');
INSERT INTO `auction_request` VALUES ('154', '99', '15', '14/01/2017', '08:17:21pm');
INSERT INTO `auction_request` VALUES ('155', '96', '15', '14/01/2017', '10:03:48pm');
INSERT INTO `auction_request` VALUES ('156', '98', '17', '14/01/2017', '10:03:55pm');
INSERT INTO `auction_request` VALUES ('157', '101', '17', '14/01/2017', '10:04:29pm');
INSERT INTO `auction_request` VALUES ('158', '102', '17', '14/01/2017', '10:04:32pm');
INSERT INTO `auction_request` VALUES ('159', '103', '17', '14/01/2017', '10:04:39pm');
INSERT INTO `auction_request` VALUES ('160', '104', '17', '14/01/2017', '10:04:43pm');
INSERT INTO `auction_request` VALUES ('161', '105', '17', '14/01/2017', '10:04:46pm');
INSERT INTO `auction_request` VALUES ('162', '93', '19', '18/01/2017', '03:11:40pm');
INSERT INTO `auction_request` VALUES ('163', '93', '20', '18/01/2017', '03:13:58pm');
INSERT INTO `auction_request` VALUES ('164', '93', '20', '18/01/2017', '03:14:16pm');
INSERT INTO `auction_request` VALUES ('165', '100', '13', '20/01/2017', '07:48:31am');
INSERT INTO `auction_request` VALUES ('166', '100', '13', '20/01/2017', '07:48:41am');
INSERT INTO `auction_request` VALUES ('167', '104', '24', '23/04/2017', '03:48:45pm');
INSERT INTO `auction_request` VALUES ('168', '105', '24', '23/04/2017', '05:27:55pm');
INSERT INTO `auction_request` VALUES ('169', '93', '13', '24/04/2017', '03:04:22am');
INSERT INTO `bid` VALUES ('5', '17', '93', 'PritomChakraborty', '23/01/2017', '03:13pm', '55000');
INSERT INTO `bid` VALUES ('6', '17', '93', 'PritomChakraborty', '23/01/2017', '03:14pm', '60000');
INSERT INTO `bid` VALUES ('7', '17', '97', 'IronMan1', '23/01/2017', '03:15pm', '65000');
INSERT INTO `bid` VALUES ('8', '17', '97', 'IronMan1', '23/01/2017', '03:15pm', '70000');
INSERT INTO `bid` VALUES ('9', '17', '99', 'IronMan3', '23/01/2017', '03:16pm', '75000');
INSERT INTO `bid` VALUES ('10', '17', '99', 'IronMan3', '23/01/2017', '03:16pm', '80000');
INSERT INTO `bid` VALUES ('11', '17', '97', 'IronMan1', '23/01/2017', '11:04pm', '100000');
INSERT INTO `bid` VALUES ('12', '17', '97', 'IronMan1', '24/01/2017', '10:12pm', '105000');
INSERT INTO `bid` VALUES ('13', '17', '97', 'IronMan1', '24/01/2017', '10:13pm', '110000');
INSERT INTO `bid` VALUES ('14', '17', '97', 'IronMan1', '24/01/2017', '10:41pm', '115000');
INSERT INTO `bid` VALUES ('15', '17', '97', 'IronMan1', '24/01/2017', '10:55pm', '120000');
INSERT INTO `bid` VALUES ('16', '17', '97', 'IronMan1', '24/01/2017', '11:01pm', '125000');
INSERT INTO `bid` VALUES ('17', '17', '97', 'IronMan1', '24/01/2017', '11:08pm', '130000');
INSERT INTO `bid` VALUES ('18', '17', '97', 'IronMan1', '24/01/2017', '11:21pm', '135000');
INSERT INTO `bid` VALUES ('19', '17', '97', 'IronMan1', '25/01/2017', '08:45am', '140000');
INSERT INTO `bid` VALUES ('20', '17', '97', 'IronMan1', '25/01/2017', '08:48am', '145000');
INSERT INTO `bid` VALUES ('21', '17', '97', 'IronMan1', '25/01/2017', '08:55am', '150000');
INSERT INTO `bid` VALUES ('22', '17', '97', 'IronMan1', '25/01/2017', '08:59am', '155000');
INSERT INTO `bid` VALUES ('23', '17', '97', 'IronMan1', '25/01/2017', '09:19am', '160000');
INSERT INTO `bid` VALUES ('24', '17', '97', 'IronMan1', '25/01/2017', '09:19am', '165000');
INSERT INTO `bid` VALUES ('25', '17', '97', 'IronMan1', '25/01/2017', '09:29am', '170000');
INSERT INTO `bid` VALUES ('26', '17', '97', 'IronMan1', '25/01/2017', '09:34am', '175000');
INSERT INTO `bid` VALUES ('27', '17', '97', 'IronMan1', '25/01/2017', '09:35am', '180000');
INSERT INTO `bid` VALUES ('28', '17', '97', 'IronMan1', '25/01/2017', '09:36am', '185000');
INSERT INTO `bid` VALUES ('29', '17', '97', 'IronMan1', '25/01/2017', '09:37am', '190000');
INSERT INTO `bid` VALUES ('30', '17', '97', 'IronMan1', '25/01/2017', '09:51am', '195000');
INSERT INTO `bid` VALUES ('31', '17', '97', 'IronMan1', '25/01/2017', '10:20am', '200000');
INSERT INTO `bid` VALUES ('32', '17', '97', 'IronMan1', '25/01/2017', '12:02pm', '0');
INSERT INTO `bid` VALUES ('33', '17', '97', 'IronMan1', '25/01/2017', '05:39pm', '300000');
INSERT INTO `bid` VALUES ('34', '17', '97', 'IronMan1', '25/01/2017', '05:45pm', '0');
INSERT INTO `bid` VALUES ('35', '17', '97', 'IronMan1', '25/01/2017', '05:46pm', '308000');
INSERT INTO `bid` VALUES ('36', '17', '97', 'IronMan1', '25/01/2017', '05:51pm', '315000');
INSERT INTO `bid` VALUES ('37', '17', '97', 'IronMan1', '25/01/2017', '06:40pm', '315000');
INSERT INTO `bid` VALUES ('38', '17', '97', 'IronMan1', '25/01/2017', '06:41pm', '320000');
INSERT INTO `bid` VALUES ('39', '17', '97', 'IronMan1', '25/01/2017', '06:42pm', '327000');
INSERT INTO `bid` VALUES ('40', '17', '97', 'IronMan1', '25/01/2017', '06:45pm', '335000');
INSERT INTO `bid` VALUES ('41', '17', '97', 'IronMan1', '25/01/2017', '06:47pm', '342000');
INSERT INTO `bid` VALUES ('42', '17', '97', 'IronMan1', '25/01/2017', '06:50pm', '350000');
INSERT INTO `bid` VALUES ('43', '17', '97', 'IronMan1', '25/01/2017', '07:11pm', '357000');
INSERT INTO `bid` VALUES ('44', '17', '97', 'IronMan1', '25/01/2017', '07:14pm', '0');
INSERT INTO `bid` VALUES ('45', '17', '96', 'SrabonChowdhury', '01/02/2017', '08:42pm', '362000');
INSERT INTO `bid` VALUES ('46', '17', '96', 'SrabonChowdhury', '01/02/2017', '09:04pm', '367000');
INSERT INTO `bid` VALUES ('47', '17', '96', 'SrabonChowdhury', '01/02/2017', '09:24pm', '372000');
INSERT INTO `bid` VALUES ('48', '17', '96', 'SrabonChowdhury', '01/02/2017', '09:47pm', '377000');
INSERT INTO `bid` VALUES ('49', '17', '96', 'SrabonChowdhury', '01/02/2017', '09:47pm', '377000');
INSERT INTO `bid` VALUES ('50', '17', '96', 'SrabonChowdhury', '01/02/2017', '09:48pm', '377000');
INSERT INTO `bid` VALUES ('51', '17', '96', 'SrabonChowdhury', '01/02/2017', '09:50pm', '382000');
INSERT INTO `bid` VALUES ('52', '17', '96', 'SrabonChowdhury', '01/02/2017', '09:51pm', '382000');
INSERT INTO `bid` VALUES ('53', '17', '96', 'SrabonChowdhury', '01/02/2017', '09:51pm', '382000');
INSERT INTO `bid` VALUES ('54', '17', '96', 'SrabonChowdhury', '01/02/2017', '09:52pm', '382000');
INSERT INTO `bid` VALUES ('55', '17', '96', 'SrabonChowdhury', '01/02/2017', '09:52pm', '382000');
INSERT INTO `bid` VALUES ('56', '17', '96', 'SrabonChowdhury', '02/02/2017', '07:34pm', '387000');
INSERT INTO `bid` VALUES ('57', '17', '96', 'SrabonChowdhury', '02/02/2017', '07:50pm', '392000');
INSERT INTO `bid` VALUES ('58', '17', '96', 'SrabonChowdhury', '02/02/2017', '07:51pm', '397000');
INSERT INTO `bid` VALUES ('59', '17', '96', 'SrabonChowdhury', '02/02/2017', '07:59pm', '402000');
INSERT INTO `bid` VALUES ('60', '17', '96', 'SrabonChowdhury', '03/02/2017', '03:34pm', '407000');
INSERT INTO `bid` VALUES ('61', '17', '96', 'SrabonChowdhury', '03/02/2017', '03:34pm', '412000');
INSERT INTO `bid` VALUES ('62', '17', '93', 'PritomChakraborty', '21/04/2017', '12:17pm', '412000');
INSERT INTO `bid` VALUES ('63', '17', '93', 'PritomChakraborty', '21/04/2017', '12:17pm', '0');
INSERT INTO `bid` VALUES ('64', '17', '93', 'PritomChakraborty', '21/04/2017', '12:29pm', '0');
INSERT INTO `bid` VALUES ('65', '17', '93', 'PritomChakraborty', '21/04/2017', '12:29pm', '0');
INSERT INTO `bid` VALUES ('66', '17', '93', 'PritomChakraborty', '21/04/2017', '12:29pm', '417000');
INSERT INTO `bid` VALUES ('67', '17', '93', 'PritomChakraborty', '21/04/2017', '05:46pm', '0');
INSERT INTO `bid` VALUES ('68', '17', '93', 'PritomChakraborty', '21/04/2017', '05:47pm', '0');
INSERT INTO `bid` VALUES ('69', '17', '93', 'PritomChakraborty', '21/04/2017', '05:47pm', '425000');
INSERT INTO `bid` VALUES ('70', '17', '93', 'PritomChakraborty', '21/04/2017', '05:50pm', '43500');
INSERT INTO `bid` VALUES ('71', '17', '93', 'PritomChakraborty', '21/04/2017', '05:51pm', '43500');
INSERT INTO `bid` VALUES ('72', '17', '93', 'PritomChakraborty', '21/04/2017', '05:56pm', '125');
INSERT INTO `bid` VALUES ('73', '17', '93', 'PritomChakraborty', '21/04/2017', '06:23pm', '0');
INSERT INTO `bid` VALUES ('74', '17', '93', 'PritomChakraborty', '21/04/2017', '06:23pm', '25000');
INSERT INTO `bid` VALUES ('75', '17', '93', 'PritomChakraborty', '21/04/2017', '06:24pm', '0');
INSERT INTO `bid` VALUES ('76', '17', '93', 'PritomChakraborty', '21/04/2017', '06:24pm', '0');
INSERT INTO `bid` VALUES ('77', '17', '93', 'PritomChakraborty', '21/04/2017', '06:25pm', '0');
INSERT INTO `bid` VALUES ('78', '17', '93', 'PritomChakraborty', '21/04/2017', '06:25pm', '2222');
INSERT INTO `bid` VALUES ('79', '17', '93', 'PritomChakraborty', '21/04/2017', '06:35pm', '0');
INSERT INTO `bid` VALUES ('80', '17', '93', 'PritomChakraborty', '21/04/2017', '06:35pm', '25');
INSERT INTO `bid` VALUES ('81', '17', '93', 'PritomChakraborty', '21/04/2017', '06:40pm', '0');
INSERT INTO `bid` VALUES ('82', '17', '93', 'PritomChakraborty', '21/04/2017', '06:53pm', '1344');
INSERT INTO `bid` VALUES ('83', '17', '93', 'PritomChakraborty', '21/04/2017', '07:33pm', '0');
INSERT INTO `bid` VALUES ('84', '17', '93', 'PritomChakraborty', '21/04/2017', '07:33pm', '0');
INSERT INTO `bid` VALUES ('85', '17', '93', 'PritomChakraborty', '21/04/2017', '07:35pm', '0');
INSERT INTO `bid` VALUES ('86', '17', '93', 'PritomChakraborty', '21/04/2017', '07:36pm', '0');
INSERT INTO `bid` VALUES ('87', '17', '93', 'PritomChakraborty', '21/04/2017', '07:39pm', '0');
INSERT INTO `bid` VALUES ('88', '17', '93', 'PritomChakraborty', '21/04/2017', '07:50pm', '0');
INSERT INTO `bid` VALUES ('89', '17', '93', 'PritomChakraborty', '21/04/2017', '08:14pm', '435000');
INSERT INTO `bid` VALUES ('90', '17', '93', 'PritomChakraborty', '21/04/2017', '09:51pm', '440500');
INSERT INTO `bid` VALUES ('91', '15', '93', 'PritomChakraborty', '2017-04-25', '12:52pm', '55000');
INSERT INTO `bid` VALUES ('92', '15', '97', 'IronMan1', '2017-04-25', '12:53pm', '60500');
INSERT INTO `bid` VALUES ('93', '15', '93', 'PritomChakraborty', '2017-04-25', '09:43am', '65500');
INSERT INTO `bid` VALUES ('94', '15', '93', 'PritomChakraborty', '2017-04-25', '09:45am', '66100');
INSERT INTO `bid` VALUES ('95', '15', '0', '', '2017-04-25', '09:52am', '66100');
INSERT INTO `bid` VALUES ('96', '15', '93', 'PritomChakraborty', '2017-04-25', '09:54am', '71600');
INSERT INTO `credit_card` VALUES ('12', '93', '2222222222222', 'Tony Stark', 'visa', '4012888888881881', '5', '2017', '888', 'pritomchakraborty@outlook.com', 'Tony', 'Stark', 'Stark Industry', '+8801832300015', '12 K M Das Lane, Volagiri Asrom, Dhaka', '12 K M Das Lane, Volagiri Asrom, Dhaka', 'Dhaka', '8888');
INSERT INTO `likes` VALUES ('1', '93', '17', '10/01/2017', '04:44:00pm');
INSERT INTO `reports` VALUES ('5', '93', '13', 'Artist is fraud...!!!', '08/01/2017', '06:39:07pm', 'Checked');
INSERT INTO `reports` VALUES ('6', '93', '13', 'Artist is fraud...', '08/01/2017', '06:42:32pm', 'Checked');
INSERT INTO `reports` VALUES ('7', '93', '17', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely. The Foreign Keys have also been provided wherever necessary to enforce referential integrity between entities. After that the Implementation stage comes. The â€œNavicat for MySQLâ€ tool has been used for implementation, where the database â€œrainmarsh_airportâ€ has been created, and all the tables and their attributes along with essential primary key and foreign keys have been created within that database according to Data Dictionary. After creating tables the data insertion began. For insertion data was collected from the scenario, requirements and sample of paper records. After finishing the Data Insertion, the database became completely functional to perform queries.', '10/01/2017', '08:29:23pm', 'No');
INSERT INTO `reports` VALUES ('8', '93', '17', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely. The Foreign Keys have also been provided wherever necessary to enforce referential integrity between entities. After that the Implementation stage comes. The â€œNavicat for MySQLâ€ tool has been used for implementation, where the database â€œrainmarsh_airportâ€ has been created, and all the tables and their attributes along with essential primary key and foreign keys have been created within that database according to Data Dictionary. After creating tables the data insertion began. For insertion data was collected from the scenario, requirements and sample of paper records. After finishing the Data Insertion, the database became completely functional to perform queries.', '10/01/2017', '08:31:08pm', 'No');
INSERT INTO `reports` VALUES ('9', '93', '17', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely. The Foreign Keys have also been provided wherever necessary to enforce referential integrity between entities. After that the Implementation stage comes. The â€œNavicat for MySQLâ€ tool has been used for implementation, where the database â€œrainmarsh_airportâ€ has been created, and all the tables and their attributes along with essential primary key and foreign keys have been created within that database according to Data Dictionary. After creating tables the data insertion began. For insertion data was collected from the scenario, requirements and sample of paper records. After finishing the Data Insertion, the database became completely functional to perform queries. ', '10/01/2017', '08:32:55pm', 'No');
INSERT INTO `user_guide` VALUES ('admin', 'This Is Artist Guide Section...', 'This is collector guide section...\r\n\r\nThis is collector guide section...', 'This Is Bidder Guide Section...\r\n\r\nThis Is Bidder Guide Section...\r\n\r\nThis Is Bidder Guide Section...', 'This Is Member Guide Section...\r\n\r\nThis Is Member Guide Section...\r\n\r\nThis Is Member Guide Section...\r\n\r\nThis Is Member Guide Section...', 'This Is FAQ Section...', 'This is Artbound Aim Section...', 'This is Artbound Evolution Section...', '01832300015', 'artbound@gmail.com', 'Not added yet', 'This is Terms of Service...', 'This is Privacy Policy Section...', 'This is Copyright Policy Section...', 'This is About Section...');
INSERT INTO `users` VALUES ('93', 'Pritom', 'Chakraborty', 'PritomChakraborty', 'srabon.bilash@outlook.com', '1', '2095309db8e4436dbdb4347e10500fab', 'Aa!123456', 'collector', '18', '11', '1980', 'male', '+8801766074455', 'Active', '0', '0', '131', 'Photo0420.jpg', 'To design and develop an effective system, first the scenario, requirements and sample of paper records that was given, have been analyzed very carefully. This detailed analysis helped to find out all necessary entities and their relations and all the possible attributes for each entity, which helped to step on the next stage â€œEntity Relationship Model (ERD)â€. The Normalization (Un-normalized form to 3rd normalized form) of attributes helped to avoid the redundancy of data and design an appropriate Entity Relationship Model. The ERD showed the functional dependencies between entities. Then the Data Dictionary has been created where all entities and their attributes has been represented with necessary Metadata (Data Type, Length). Each entity is provided with a Primary Key, which helps to identify that entity uniquely. The Foreign Keys have also been provided wherever necessary to enforce referential integrity between entities.\r\nAfter that the Implementation stage comes. The â€œNavicat for MySQLâ€ tool has been used for implementation, where the database â€œrainmarsh_airportâ€ has been created, and all the tables and their attributes along with essential primary key and foreign keys have been created within that database according to Data Dictionary. After creating tables the data insertion began. For insertion data was collected from the scenario, requirements and sample of paper records.\r\nAfter finishing the Data Insertion, the database became completely functional to perform queries.');
INSERT INTO `users` VALUES ('96', 'Srabon', 'Chowdhury', 'SrabonChowdhury', 'srabon.bilash@outlook.com', '1', '11c6ff63a2eb91c9c7bf5046153d9fda', 'Aa!123456', 'bidder', '19', '9', '1980', 'male', '+8801766074454', 'Active', '0', '0', '18', '14886212_911333962330497_1801835828_n.jpg', 'à¦¸à¦¤à§à¦¯à¦œà¦¿à§Ž à¦šà¦•à§à¦°à¦¬à¦°à§à¦¤à§€...à¥¤ à¦à¦•à¦œà¦¨ à¦šà¦¿à¦¤à§à¦°à¦¶à¦¿à¦²à§à¦ªà§€, à¦¸à¦¬à¦¸à¦®à§Ÿ à¦¹à¦¾à¦¸à¦¿à¦–à§à¦¶à¦¿, à¦ªà§à¦°à¦¾à¦£à¦¬à¦¨à§à¦¤, à¦¬à¦¹à§à¦—à§à¦£à§‡ à¦—à§à¦£à¦¾à¦¨à§à¦¬à¦¿à¦¤ à¦†à¦®à¦¾à¦° à¦…à¦¤à¦¿ à¦ªà¦›à¦¨à§à¦¦à§‡à¦° à¦à¦•à¦œà¦¨ à¦®à¦¾à¦¨à§à¦·à¥¤ à¦°à¦‚-à¦¤à§à¦²à¦¿à¦° à¦¬à§à¦¨à¦¨à§‡ à¦¤à¦¿à¦¨à¦¿ à¦…à¦¸à¦¾à¦§à¦¾à¦°à¦£à¥¤ à¦¸à§à¦°à§‹à¦¤à§‡à¦° à¦¬à¦¿à¦ªà¦°à§€à¦¤à§‡ à¦—à¦¿à§Ÿà§‡ à¦¨à¦¿à¦œà§‡à¦° à¦¸à§à¦¬à¦ªà§à¦¨à¦•à§‡ à¦†à¦—à¦²à§‡ à¦§à¦°à§‡ à¦ªà¦¥ à¦šà¦²à¦¾à¦° à¦®à¦¤à§‹ à¦¸à¦¾à¦¹à¦¸, à¦¶à¦•à§à¦¤à¦¿ à¦“ à¦§à¦°à§à¦¯à§à¦¯ à¦–à§à¦¬ à¦•à¦® à¦®à¦¾à¦¨à§à¦·à§‡à¦°à¦‡ à¦¥à¦¾à¦•à§‡à¥¤ à¦†à¦®à¦¾à¦° à¦¦à§‡à¦–à¦¾ à¦¸à§‡à¦‡ à¦…à¦²à§à¦ªà¦•à¦¿à¦›à§ à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦¤à¦¿à¦¨à¦¿ à¦à¦•à¦œà¦¨à¥¤ à¦¶à¦¿à¦•à§à¦·à¦¾à¦œà§€à¦¬à¦¨ à¦¶à§‡à¦·à§‡ à¦œà§€à¦¬à¦¿à¦•à¦¾à¦° à¦šà¦¿à¦°à¦šà§‡à¦¨à¦¾ à¦ªà¦¥ à¦¨à¦¾ à¦®à¦¾à§œà¦¿à§Ÿà§‡ à¦›à¦¬à¦¿ à¦†à¦à¦•à¦¾à¦•à§‡à¦‡ à¦ªà§‡à¦¶à¦¾ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¨à¦¿à§Ÿà§‡à¦›à§‡à¦¨à¥¤ à¦—à§œà§‡ à¦¤à§à¦²à§‡à¦›à§‡à¦¨ à¦¨à¦¿à¦œà§‡à¦° à¦›à¦¬à¦¿ à¦†à¦à¦•à¦¾ à¦¶à§‡à¦–à¦¾à¦¨à§‹à¦° à¦¸à§à¦•à§à¦² à¦šà¦¿à¦¤à§à¦°à¦£à¥¤ à¦†à¦° à¦¤à¦¾à¦°à¦‡ à¦ªà¦¾à¦¶à¦¾à¦ªà¦¾à¦¶à¦¿ à¦…à¦¨à§‡à¦•à¦¦à¦¿à¦¨ à¦§à¦°à§‡ à¦šà§‡à¦·à§à¦Ÿà¦¾ à¦šà¦¾à¦²à¦¿à§Ÿà§‡ à¦¯à¦¾à¦šà§à¦›à¦¿à¦²à§‡à¦¨ à¦¨à¦¿à¦œà§‡à¦° à¦†à¦à¦•à¦¾ à¦›à¦¬à¦¿à¦° à¦ªà§à¦°à¦¦à¦°à§à¦¶à¦¨à§€à¦° à¦œà¦¨à§à¦¯à¥¤\r\n\r\nà¦…à¦¬à¦¶à§‡à¦·à§‡, à¦…à¦¨à§‡à¦• à¦ªà§à¦°à¦šà§‡à¦·à§à¦Ÿà¦¾à¦° à¦ªà¦° à¦¸à§‡à¦‡ à¦¬à¦¹à§ à¦ªà§à¦°à¦¤à§€à¦•à§à¦·à¦¿à¦¤ à¦¸à§à¦¬à¦ªà§à¦¨ à¦¬à¦¾à¦¸à§à¦¤à¦¬à§‡ à¦°à§‚à¦ª à¦ªà§‡à¦¤à§‡ à¦šà¦²à§‡à¦›à§‡à¥¤ à¦†à¦° à¦¸à§‡à¦‡à¦¸à¦¾à¦¥à§‡ à¦†à¦®à¦¾à¦° à¦¦à¦¾à¦¦à¦¾à¦° à¦†à¦à¦•à¦¾ à¦à¦¤à¦—à§à¦²à§‹ à¦›à¦¬à¦¿ à¦à¦•à¦¸à¦¾à¦¥à§‡ à¦¦à§‡à¦–à¦¾à¦° à¦¬à¦¹à§à¦¦à¦¿à¦¨à§‡à¦° à¦‡à¦šà§à¦›à¦¾à¦Ÿà¦¾à¦“ à¦ªà§‚à¦°à¦£ à¦¹à¦¤à§‡ à¦¯à¦¾à¦šà§à¦›à§‡à¥¤ :) :) :)\r\n\r\nà¦†à¦—à¦¾à¦®à§€ à§¨ à¦…à¦•à§à¦Ÿà§‹à¦¬à¦° à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦šà¦¾à¦°à§à¦•à¦²à¦¾ à¦…à¦¨à§à¦·à¦¦à§‡à¦° à¦œà§Ÿà¦¨à§à¦² à¦—à§à¦¯à¦¾à¦²à¦¾à¦°à§€ (à§¨)-à¦¤à§‡ à¦¶à§à¦°');
INSERT INTO `users` VALUES ('97', 'Abc', 'Abc', 'IronMan1', 'pritomchakraborty@outlook.com', '1', '8a334a9d2de0aa889246dcfc476c4eea', 'Aa!123456', 'artist', '1', '0', '1988', 'male', '+8801766074454', 'Active', '0', '0', '29', '14885920_911333995663827_111964942_n.jpg', '');
INSERT INTO `users` VALUES ('98', 'Def', 'Def', 'IronMan2', 'pritomchakraborty@outlook.com', '1', 'e90d4125bafb093e8fa2044be8efa7e4', 'Aa!123456', 'collector', '1', '0', '1988', 'male', '+8801766074454', 'Active', '0', '0', '3', '14877902_911333972330496_1594412081_n.jpg', '');
INSERT INTO `users` VALUES ('99', 'Ghi', 'Ghi', 'IronMan3', 'pritomchakraborty@outlook.com', '1', 'ddda5c5b7289a45096e799915a2f442e', 'Aa!123456', 'bidder', '1', '0', '1988', 'male', '01766074454', 'Blocked', '0', '0', '3', '14889737_911276835669543_2580838148454257092_o.jpg', '');
INSERT INTO `users` VALUES ('100', 'Jkl', 'Jkl', 'IronMan4', 'pritomchakraborty@outlook.com', '1', '123236dcd137fd08c1cc9d86f016ca34', 'Aa!123456', 'admin', '1', '0', '1988', 'male', '01718878262', 'Active', '0', '0', '68', 'Amar Ami-5.jpg', '');
INSERT INTO `users` VALUES ('101', 'Mno', 'Mno', 'IronMan5', 'pritomchakraborty@outlook.com', '1', '2702028e352eafb88d17be980dfb9053', 'Aa!123456', 'artist', '1', '0', '1988', 'male', '01766074454', 'Blocked', '0', '0', '2', '14889941_911275985669628_2577569015323314697_o.jpg', '');
INSERT INTO `users` VALUES ('102', 'Pqr', 'Pqr', 'IronMan6', 'srabon.bilash@outlook.com', '1', '264833bf49ce111548b824ae6141b7d0', 'Aa!123456', 'collector', '1', '0', '1988', 'male', '01766074454', 'Blocked', '0', '0', '1', 'Amar Ami-8.jpg', '');
INSERT INTO `users` VALUES ('103', 'Ssss', 'Ssss', 'IronMan7', 'srabon.bilash@outlook.com', '1', '160599bb45c556fe15119a8bd4037f2c', 'Aa!123456', 'bidder', '1', '0', '1988', 'male', '01766074454', 'Blocked', '0', '0', '4', 'End.jpg', '');
INSERT INTO `users` VALUES ('104', 'Uvw', 'Uvw', 'IronMan8', 'srabon.bilash@outlook.com', '1', '2cfb638524cf59601f769526465c2e71', 'Aa!123456', 'member', '2', '1', '1988', 'male', '01766074454', 'Active', '0', '0', '10', 'IMG_20140514_151159.jpg', '');
INSERT INTO `users` VALUES ('105', 'Tanveer', 'Hasan', 'TanveerHasan', 'pritomchakraborty@outlook.com', '1', '676869186931688f58d3bc56f083fea7', 'Aa!123456', 'artist', '1', '0', '1991', 'male', '01766074454', 'Blocked', '0', '0', '4', 'Photo0660.jpg', '');
INSERT INTO `users` VALUES ('109', 'Tony', 'Stark', 'IronMan9', 'pritomchakraborty@outlook.com', '1', '8b85e7148c44c2d6dd779ff423a77097', 'Aa!123456', 'member', '1', '0', '1998', 'male', '01718878262', '', null, null, '0', '', '');
