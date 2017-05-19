//Server version	5.0.19-nt
create database House_rent;

use House_rent;

//Table structure for table `customer`

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `fname` varchar(45) default NULL,
  `lname` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `pass` varchar(45) default NULL,
  `cpass` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `country` varchar(45) default NULL,
  `state` varchar(45) default NULL,
  `city` varchar(45) default NULL,
  `mobile` varchar(88) default NULL,
  `uname` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `customer` WRITE;
INSERT INTO `customer` VALUES ('a','a','a','a','a','a','a','a','a','a','a'),('tony','sabu','tonysabu33@gmail.com','tony','tony','ayanavaram','india','tamilnadu','chennai','7299575886','tony');
UNLOCK TABLES;

DROP TABLE IF EXISTS `owner`;
CREATE TABLE `owner` (
  `name` varchar(45) default NULL,
  `description1` varchar(45) default NULL,
  `Type` varchar(56) default NULL,
  `location` varchar(55) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


LOCK TABLES `owner` WRITE;
INSERT INTO `owner` VALUES ('Royal Palace','Hills Park, 2nd Floor,Avadi','RentHouse','Avadi'),('Jayanthi Garden','Jayanthi Garden, Ambattur','RentHouse','Ambattur'),('Pillar House','Plot no:2, Main road, Adyar','RentHouse','Adyar'),('Ashwin Plot','Plot A2, Main road, Chepauk','RentHouse','Chepauk'),('Aravinda Villas','no.20/21, Aravinda Villas Street, Egmore','RentHouse','Egmore'),('Anbu Illam','Anbu Illam, Guindy Bus stop , Guindy','RentHouse','Guindy'),('Natraj Nillayam','Second Floor, Mylopore','RentHouse','Mylapore'),('Play House','Play House, Main Road, Ramapuram','RentHouse','Ramapuram'),('RajaKumar Villlas','No.2, Second Main Road, Pattabiram','RentHouse','Pattabiram'),('Cycle Garden','Cycle Garden, Near Railway Station, Perambur','RentHouse','Perambur'),('Hema Park','Near Bus Stop, Hema Park, Porur','RentHouse','Porur'),('Thambi Ninaivalayam','Near Railway Station, Tambaram','RentHouse','Tambaram'),('A@B plot','Lakshmi Nagar, Second Street, Velachery','RentHouse','Velachery'),('Rama Villas','No.20, Second St, Main Road, Avadi','RentHouse','Avadi'),('tony','ayanavaram','Hotel','Chepauk');
UNLOCK TABLES;

