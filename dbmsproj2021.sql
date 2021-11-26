-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: localhost    Database: dbmsproj2021
-- ------------------------------------------------------
-- Server version	5.7.33-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cameras`
--

DROP TABLE IF EXISTS `cameras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cameras` (
  `Camera_ID` varchar(12) NOT NULL,
  `Highway_Number` varchar(10) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Type` varchar(10) DEFAULT NULL,
  `Distance_From_Source` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Camera_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cameras`
--

LOCK TABLES `cameras` WRITE;
/*!40000 ALTER TABLE `cameras` DISABLE KEYS */;
INSERT INTO `cameras` VALUES ('12341001','NH44','Delhi','EN',0.00),('12341002','NH44','Jewar ','EN',99.30),('12341003','NH44','Jewar ','EX',99.30),('12341004','NH44','Mathura','EN',183.00),('12341005','NH44','Mathura','EX',183.00),('12341006','NH44','Agra','EX',242.00),('12341007','NH45','Agra','EN',0.00),('12341008','NH45','Mathura','EN',59.00),('12341009','NH45','Mathura','EX',59.00),('12341010','NH45','Jewar ','EN',142.70),('12341011','NH45','Jewar ','EX',142.70),('12341012','NH45','Delhi','EX',242.00),('12341013','NH3','Amritsar','EN',0.00),('12341014','NH3','Adampur ','EN',93.70),('12341015','NH3','Adampur ','EX',93.70),('12341016','NH3','Nasrala','EN',120.00),('12341017','NH3','Nasrala','EX',120.00),('12341018','NH3','Hoshiarpur','EN',135.00),('12341019','NH3','Hoshiarpur','EX',135.00),('12341020','NH3','Jalandhar','EX',149.00),('12341021','NH4','Jalandhar','EN',0.00),('12341022','NH4','Hoshiarpur','EN',14.00),('12341023','NH4','Hoshiarpur','EX',14.00),('12341024','NH4','Nasrala','EN',29.00),('12341025','NH4','Nasrala','EX',29.00),('12341026','NH4','Adampur ','EN',55.30),('12341027','NH4','Adampur ','EX',55.30),('12341028','NH4','Amritsar','EX',149.00),('12341029','NH48','Delhi','EN',0.00),('12341030','NH48','Gurgaon','EN',43.00),('12341031','NH48','Gurgaon','EX',43.00),('12341032','NH48','Dharuhera','EN',79.40),('12341033','NH48','Dharuhera','EX',79.40),('12341034','NH48','Bawal','EN',120.00),('12341035','NH48','Bawal','EX',120.00),('12341036','NH48','Jaipur','EX',281.30),('12341037','NH49','Jaipur','EN',0.00),('12341038','NH49','Bawal','EN',161.30),('12341039','NH49','Bawal','EX',161.30),('12341040','NH49','Dharuhera','EN',201.90),('12341041','NH49','Dharuhera','EX',201.90),('12341042','NH49','Gurgaon','EN',238.30),('12341043','NH49','Gurgaon','EX',238.30),('12341044','NH49','Delhi','EX',281.30),('12341045','NH7','Shimla','EN',0.00),('12341046','NH7','Kalka','EN',52.00),('12341047','NH7','Kalka','EX',52.00),('12341048','NH7','Chandigarh','EX',111.70),('12341049','NH8','Chandigarh','EN',0.00),('12341050','NH8','Kalka','EN',59.70),('12341051','NH8','Kalka','EX',59.70),('12341052','NH8','Shimla','EX',111.70),('12341053','NH21','Agra','EN',0.00),('12341054','NH21','Bharatpur','EN',112.00),('12341055','NH21','Bharatpur','EX',112.00),('12341056','NH21','Jaipur','EX',239.70),('12341057','NH22','Jaipur','EN',0.00),('12341058','NH22','Bharatpur','EN',127.00),('12341059','NH22','Bharatpur','EX',127.00),('12341060','NH22','Agra','EX',239.70),('12341061','NH30','Allahabad ','EN',0.00),('12341062','NH30','Raebareli','EN',121.10),('12341063','NH30','Raebareli','EX',121.10),('12341064','NH30','Lucknow','EX',200.50),('12341065','NH31','Lucknow','EN',200.50),('12341066','NH31','Raebareli','EN',79.40),('12341067','NH31','Raebareli','EX',79.40),('12341068','NH31','Allahabad ','EX',200.50),('12341069','NH27','Lucknow','EN',0.00),('12341070','NH27','Ajgain ','EN',47.00),('12341071','NH27','Ajgain ','EX',47.00),('12341072','NH27','Unnao ','EN',67.00),('12341073','NH27','Unnao ','EX',67.00),('12341074','NH27','Kanpur ','EX',92.70),('12341075','NH28','Kanpur ','EN',0.00),('12341076','NH28','Unnao','EN',25.70),('12341077','NH28','Unnao','EX',25.70),('12341078','NH28','Ajgain ','EN',45.70),('12341079','NH28','Ajgain ','EX',45.70),('12341080','NH28','Lucknow','EX',92.70),('12341081','NH19','Kanpur ','EN',0.00),('12341082','NH19','Bara ','EN',56.00),('12341083','NH19','Bara ','EX',56.00),('12341084','NH19','Muradganj ','EN',108.00),('12341085','NH19','Muradganj ','EX',108.00),('12341086','NH19','Etawah ','EN',156.30),('12341087','NH19','Etawah ','EX',156.30),('12341088','NH19','Sirsaganj ','EN',201.50),('12341089','NH19','Sirsaganj ','EX',201.50),('12341090','NH19','Firozabad ','EN',240.00),('12341091','NH19','Firozabad ','EX',240.00),('12341092','NH19','Agra ','EX',278.50),('12341093','NH20','Agra ','EN',0.00),('12341094','NH20','Firozabad','EN',38.50),('12341095','NH20','Firozabad','EX',38.50),('12341096','NH20','Sirsaganj ','EN',77.00),('12341097','NH20','Sirsaganj ','EX',77.00),('12341098','NH20','Etawah ','EN',122.20),('12341099','NH20','Etawah ','EX',122.20),('12341100','NH20','Muradganj ','EN',170.50),('12341101','NH20','Muradganj','EX',170.50),('12341102','NH20','Bara ','EN',222.50),('12341103','NH20','Bara ','EX',222.50),('12341104','NH20','Kanpur ','EX',240.00),('12341105','NH11','Jaisalmer','EN',0.00),('12341106','NH11','Pokharan','EN',150.00),('12341107','NH11','Pokharan','EX',150.00),('12341108','NH11','Bikaner','EX',330.00),('12341109','NH12','Bikaner','EN',0.00),('12341110','NH12','Pokharan','EN',180.00),('12341111','NH12','Pokharan','EX',180.00),('12341112','NH12','Jaisalmer','EX',330.00),('12341113','NH25','Jodhpur','EN',0.00),('12341114','NH25','Kalyanpur','EN',53.00),('12341115','NH25','Kalyanpur','EX',53.00),('12341116','NH25','Tilwara','EN',85.00),('12341117','NH25','Tilwara','EX',85.00),('12341118','NH25','Dhudhwa','EN',138.00),('12341119','NH25','Dhudhwa','EX',138.00),('12341120','NH25','Kawas','EN',185.00),('12341121','NH25','Kawas','EX',185.00),('12341122','NH25','Ajmer','EX',222.00),('12341123','NH26','Ajmer','EN',0.00),('12341124','NH26','Kawas','EN',37.00),('12341125','NH26','Kawas','EX',37.00),('12341126','NH26','Dhudhwa','EN',84.00),('12341127','NH26','Dhudhwa','EX',84.00),('12341128','NH26','Tilwara','EN',137.00),('12341129','NH26','Tilwara','EX',137.00),('12341130','NH26','Kalyanpur','EN',169.00),('12341131','NH26','Kalyanpur','EX',169.00),('12341132','NH26','Jodhpur','EX',222.00),('12341133','NH1','Delhi','EN',0.00),('12341134','NH1','Ambala','EN',45.00),('12341135','NH1','Ambala','EX',45.00),('12341136','NH1','Panipat','EN',120.00),('12341137','NH1','Panipat','EX',120.00),('12341138','NH1','Kurukshetra','EN',193.00),('12341139','NH1','Kurukshetra','EX',193.00),('12341140','NH1','Chandigarh','EX',248.00),('12341141','NH2','Chandigarh','EN',0.00),('12341142','NH2','Kurukshetra','EN',55.00),('12341143','NH2','Kurukshetra','EX',55.00),('12341144','NH2','Panipat','EN',128.00),('12341145','NH2','Panipat','EX',128.00),('12341146','NH2','Ambala','EN',203.00),('12341147','NH2','Ambala','EX',203.00),('12341148','NH2','Delhi','EX',248.00),('12341149','NH5','Ludhiana ','EN',0.00),('12341150','NH5','Jagraon ','EN',35.00),('12341151','NH5','Jagraon ','EX',35.00),('12341152','NH5','Moga ','EN',58.00),('12341153','NH5','Moga ','EX',58.00),('12341154','NH5','Kharar ','EN',89.00),('12341155','NH5','Kharar ','EX',89.00),('12341156','NH5','Chandigarh ','EX',101.00),('12341157','NH6','Chandigarh ','EN',0.00),('12341158','NH6','Kharar ','EN',12.00),('12341159','NH6','Kharar ','EX',12.00),('12341160','NH6','Moga ','EN',43.00),('12341161','NH6','Moga ','EX',43.00),('12341162','NH6','Jagraon ','EN',66.00),('12341163','NH6','Jagraon ','EX',66.00),('12341164','NH6','Ludhiana ','EX',101.00),('12341165','NH23','Delhi','EN',0.00),('12341166','NH23','Noida','EN',30.00),('12341167','NH23','Noida','EX',30.00),('12341168','NH23','Aligarh','EN',85.00),('12341169','NH23','Aligarh','EX',85.00),('12341170','NH23','Mathura','EN',150.00),('12341171','NH23','Mathura','EX',150.00),('12341172','NH23','Agra','EN',246.00),('12341173','NH23','Agra','EX',246.00),('12341174','NH23','Firozabad','EN',315.00),('12341175','NH23','Firozabad','EX',315.00),('12341176','NH23','Etawah ','EN',412.00),('12341177','NH23','Etawah ','EX',412.00),('12341178','NH23','Kannauj','EN',495.00),('12341179','NH23','Kannauj','EX',495.00),('12341180','NH23','Lucknow','EX',553.60),('12341181','NH24','Lucknow','EN',0.00),('12341182','NH24','Kannauj','EN',58.60),('12341183','NH24','Kannauj','EX',58.60),('12341184','NH24','Etawah ','EN',141.60),('12341185','NH24','Etawah ','EX',141.60),('12341186','NH24','Firozabad','EN',238.60),('12341187','NH24','Firozabad','EX',238.60),('12341188','NH24','Agra','EN',307.60),('12341189','NH24','Agra','EX',307.60),('12341190','NH24','Mathura','EN',403.60),('12341191','NH24','Mathura','EX',403.60),('12341192','NH24','Aligarh','EN',468.60),('12341193','NH24','Aligarh','EX',468.60),('12341194','NH24','Noida','EN',523.60),('12341195','NH24','Noida','EX',523.60),('12341196','NH24','Delhi','EX',553.60),('12341197','NH64','Patiala','EN',0.00),('12341198','NH64','Sahibzada','EN',26.00),('12341199','NH64','Sahibzada','EX',26.00),('12341200','NH64','Bir','EN',56.50),('12341201','NH64','Bir','EX',56.50),('12341202','NH64','Lamba','EN',84.70),('12341203','NH64','Lamba','EX',84.70),('12341204','NH64','Chandigarh','EX',105.00),('12341205','NH65','Chandigarh','EN',0.00),('12341206','NH65','Lamba','EN',20.30),('12341207','NH65','Lamba','EX',20.30),('12341208','NH65','Bir','EN',48.50),('12341209','NH65','Bir','EX',48.50),('12341210','NH65','Sahibzada','EN',79.00),('12341211','NH65','Sahibzada','EX',79.00),('12341212','NH65','Patiala','EN',105.00),('12341213','NH72','Ambala','EN',0.00),('12341214','NH72','Sabalpur','EN',36.00),('12341215','NH72','Sabalpur','EX',36.00),('12341216','NH72','Khandwa','EN',78.00),('12341217','NH72','Khandwa','EX',78.00),('12341218','NH72','Birwi','EN',105.90),('12341219','NH72','Birwi','EX',105.90),('12341220','NH72','Firozpur','EN',139.00),('12341221','NH72','Firozpur','EX',139.00),('12341222','NH72','Saharanpur','EN',155.50),('12341223','NH72','Saharanpur','EX',155.50),('12341224','NH72','Dehradun','EX',178.00),('12341225','NH73','Dehradun','EN',0.00),('12341226','NH73','Saharanpur','EN',22.50),('12341227','NH73','Saharanpur','EX',22.50),('12341228','NH73','Firozpur','EN',39.00),('12341229','NH73','Firozpur','EX',39.00),('12341230','NH73','Birwi','EN',72.10),('12341231','NH73','Birwi','EX',72.10),('12341232','NH73','Khandwa','EN',100.00),('12341233','NH73','Khandwa','EX',100.00),('12341234','NH73','Sabalpur','EN',142.00),('12341235','NH73','Sabalpur','EX',142.00),('12341236','NH73','Ambala','EX',178.00);
/*!40000 ALTER TABLE `cameras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `Vehicle_Number` varchar(15) NOT NULL,
  `Vehicle_Genre` varchar(30) DEFAULT NULL,
  `Vehicle_type` varchar(30) DEFAULT NULL,
  `Additional_Price` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES ('CH12FF0011','Private','SUV',10.00),('CH13BH8981','Commercial','SUV',15.00),('CH16AA2021','Commercial','HLV',20.00),('CH17UI8901','Private','Sedan',5.00),('CH22AC5534','Private','Sedan',5.00),('CH56UI1209','Private ','Hatchback',0.00),('DL10CH1993','Commercial','HLV',20.00),('DL11CC6666','Private','Sedan',5.00),('DL11RC7121','Private','Sedan',5.00),('DL13AA9111','Private','Sedan',5.00),('DL13WW1910','Private','Sedan',5.00),('DL2CAA5936','Commercial','SUV',15.00),('DL2CFF5921','Private','Sedan',5.00),('DL2CSS2231','Commercial','HLV',20.00),('DL3CAS2212','Commercial','HLV',20.00),('DL3CSF1023','Private ','Hatchback',0.00),('DL4CHH1018','Commercial','SUV',15.00),('DL4CTY3341','Commercial','HLV',20.00),('DL6CZY1238','Private ','Hatchback',0.00),('DL7CHG3182','Commercial','HLV',20.00),('DL8CGH2727','Private','Sedan',5.00),('DL8VIR8712','Commercial','HLV',20.00),('DL9CAA1456','Private','Sedan',5.00),('DL9CWW1111','Private','Sedan',5.00),('HP11II9911','Private','Sedan',5.00),('HP21FF3321','Commercial','HLV',20.00),('HP22ER0191','Commercial','HLV',20.00),('HP22TT0919','Private ','Hatchback',0.00),('HP43JJ0224','Private','Sedan',5.00),('HP90RT8921','Private','SUV',10.00),('HP90TY1239','Commercial','SUV',15.00),('HP91SS1623','Commercial','HLV',20.00),('HR12SS1331','Private ','Hatchback',0.00),('HR13HH1214','Commercial','HLV',20.00),('HR13UH0914','Private','Sedan',5.00),('HR14DD1144','Commercial','SUV',15.00),('HR15WW1022','Commercial','HLV',20.00),('HR21TT2014','Commercial','HLV',20.00),('HR22HJ0034','Private','Sedan',5.00),('HR22RT9314','Private ','Hatchback',0.00),('HR33DD4454','Private','SUV',10.00),('HR46SH5143','Commercial','HLV',20.00),('HR56FF1892','Private','SUV',10.00),('HR56GG1045','Private','Sedan',5.00),('HR56UI0926','Private ','Hatchback',0.00),('HR56UU7712','Private','SUV',10.00),('HR67UI0091','Private','Sedan',5.00),('HR76MB7612','Commercial','HLV',20.00),('HR90AA6661','Commercial','SUV',15.00),('PB08AZ2221','Private ','Hatchback',0.00),('PB09AD1121','Private','SUV',10.00),('PB11ED0112','Private','SUV',10.00),('PB15JJ8911','Commercial','HLV',20.00),('PB16FG1670','Private ','Hatchback',0.00),('PB22UU1022','Commercial','HLV',20.00),('PB23JJ9921','Commercial','SUV',15.00),('PB56FH6120','Private ','Hatchback',0.00),('PB67HT3421','Private','SUV',10.00),('PB67RR1563','Private','Sedan',5.00),('PB67TY0002','Commercial','SUV',15.00),('PB68AB3312','Private','SUV',10.00),('PB68SS1122','Private','Sedan',5.00),('PB77BH8912','Commercial','SUV',15.00),('PB78UI2123','Private','Sedan',5.00),('PB79IJ3356','Commercial','SUV',15.00),('RJ01HJ2018','Private','Sedan',5.00),('RJ78YY1568','Private ','Hatchback',0.00),('RJ88YY6762','Commercial','HLV',20.00),('RJ89UI0009','Commercial','HLV',20.00),('UP01AS9823','Commercial','HLV',20.00),('UP13BR0191','Private','Sedan',5.00),('UP14CC9640','Commercial','HLV',20.00),('UP14SS5511','Commercial','HLV',20.00),('UP14TJ0961','Commercial','HLV',20.00),('UP14TT7823','Private','Sedan',5.00),('UP15RT0272','Commercial','HLV',20.00),('UP16BG5698','Private','Sedan',5.00),('UP16BG9812','Commercial','HLV',20.00),('UP16BR0818','Commercial','SUV',15.00),('UP16BS3095','Commercial','HLV',20.00),('UP16BT1023','Private','Sedan',5.00),('UP16GH8921','Commercial','HLV',20.00),('UP16HG5678','Private','SUV',10.00),('UP16TV6784','Private','Sedan',5.00),('UP16YY2342','Private','SUV',10.00),('UP17YY9012','Private','SUV',10.00),('UP19RR6672','Commercial','HLV',20.00),('UP20EE5554','Commercial','SUV',15.00),('UP22YJ6549','Private','SUV',10.00),('UP33FD7686','Private','Sedan',5.00),('UP34HJ7810','Commercial','SUV',15.00),('UP34TJ3342','Private ','Hatchback',0.00),('UP44UJ9091','Private ','Hatchback',0.00),('UP67UI0318','Private','SUV',10.00),('UP70HJ1222','Private','SUV',10.00),('UP87ER0338','Private ','Hatchback',0.00),('UP87WE1121','Commercial','HLV',20.00),('UP89HJ9654','Private','Sedan',5.00),('UP92YY2020','Commercial','SUV',15.00),('UP99ER2013','Private','Sedan',5.00);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry_toll`
--

DROP TABLE IF EXISTS `entry_toll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry_toll` (
  `Camera_id` varchar(12) DEFAULT NULL,
  `Vehicle_Number` varchar(20) DEFAULT NULL,
  `Highway_Number` varchar(5) DEFAULT NULL,
  `Distance_From_Source` decimal(10,2) DEFAULT NULL,
  `Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry_toll`
--

LOCK TABLES `entry_toll` WRITE;
/*!40000 ALTER TABLE `entry_toll` DISABLE KEYS */;
INSERT INTO `entry_toll` VALUES ('12341001','UP16BS3095','NH44',0.00,'2021-04-14 15:31:49');
/*!40000 ALTER TABLE `entry_toll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exit_toll`
--

DROP TABLE IF EXISTS `exit_toll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exit_toll` (
  `Camera_id` varchar(12) DEFAULT NULL,
  `Vehicle_Number` varchar(20) DEFAULT NULL,
  `Highway_Number` varchar(5) DEFAULT NULL,
  `Distance_From_Source` decimal(10,2) DEFAULT NULL,
  `Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exit_toll`
--

LOCK TABLES `exit_toll` WRITE;
/*!40000 ALTER TABLE `exit_toll` DISABLE KEYS */;
INSERT INTO `exit_toll` VALUES ('12341006','UP16BS3095','NH44',242.00,'2021-04-14 15:32:56');
/*!40000 ALTER TABLE `exit_toll` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger ins_pr after insert on exit_toll for each row
begin
insert into price_structure
set 
vehicle_number=new.vehicle_number,
Distance_travelled=new.distance_from_source-(SELECT Distance_from_source FROM entry_toll where new.vehicle_number=entry_toll.vehicle_number && new.highway_number=entry_toll.highway_number),
Price_calculated=(new.distance_from_source-(SELECT Distance_from_source FROM entry_toll where new.vehicle_number=entry_toll.vehicle_number && new.highway_number=entry_toll.highway_number))*(select price_per_km from highway where highway.highway_number=new.highway_number)+(select Additional_price from cars where cars.vehicle_number=new.vehicle_number);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `highway`
--

DROP TABLE IF EXISTS `highway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `highway` (
  `Highway_Number` varchar(10) NOT NULL,
  `Source` varchar(30) DEFAULT NULL,
  `Destination` varchar(30) DEFAULT NULL,
  `Price_per_km` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Highway_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `highway`
--

LOCK TABLES `highway` WRITE;
/*!40000 ALTER TABLE `highway` DISABLE KEYS */;
INSERT INTO `highway` VALUES ('NH1','Delhi ','Chandigarh',0.50),('NH11','Jaisalmer','Bikaner',2.50),('NH12','Bikaner','Jaisalmer',2.50),('NH19','Kanpur','Agra',2.00),('NH2','Chandigarh','Delhi',0.50),('NH20','Agra','Kanpur',2.00),('NH21','Agra','Jaipur',1.20),('NH22','Jaipur','Agra',1.20),('NH23','Delhi','Lucknow',1.60),('NH24','Lucknow','Delhi',1.60),('NH25','Jodhpur','Ajmer',1.80),('NH26','Ajmer','Jodhpur',1.80),('NH27','Lucknow','Kanpur',0.90),('NH28','Kanpur','Lucknow',0.90),('NH3','Amritsar','Jalandhar',1.50),('NH30','Allahabad','Lucknow',0.80),('NH31','Lucknow','Allahabad',0.80),('NH4','Jalandhar','Amritsar',1.50),('NH44','Delhi','Agra',2.00),('NH45','Agra','Delhi',2.00),('NH48','Delhi','Jaipur',1.00),('NH49','Jaipur','Delhi',1.00),('NH5','Ludhiana ','Chandigarh',0.60),('NH6','Chandigarh','Ludhiana',0.60),('NH64','Patiala','Chandigarh',2.00),('NH65','Chandigarh','Patiala',2.00),('NH7','Chandigarh','Shimla',5.00),('NH72','Ambala','Dehradun',1.30),('NH73','Dehradun','Ambala',1.30),('NH8','Shimla','Chandigarh',5.00);
/*!40000 ALTER TABLE `highway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `Vehicle_Number` varchar(15) NOT NULL,
  `First_Name` varchar(40) DEFAULT NULL,
  `Last_Name` varchar(40) DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Gender` varchar(3) DEFAULT NULL,
  `Price_Pending` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES ('CH12FF0011','Paranjay','Singh','8872667038','M',0.00),('CH13BH8981','Rani','Kumari','8214092846','F',0.00),('CH16AA2021','Rajat','Singh','8543464069','M',0.00),('CH17UI8901','Adhiraj','Singh','8494655736','M',0.00),('CH22AC5534','Rinku','Singh','8929051511','M',0.00),('CH56UI1209','Megha','Saini','8397771045','F',0.00),('DL10CH1993','Rithu','Kumari','7428034825','F',0.00),('DL11CC6666','Rupali','Shah','8483002640','F',0.00),('DL11RC7121','Rohit','Kumar','8577779975','M',0.00),('DL13AA9111','Yash','Sahijawani','7733076709','M',0.00),('DL13WW1910','Abheek','Jain','8097679507','M',0.00),('DL2CAA5936','Quratul','Ain','7331333454','F',0.00),('DL2CFF5921','Sanha','Aggarwal','7927509283','F',0.00),('DL2CSS2231','Anurag','Singh','7394836606','M',0.00),('DL3CAS2212','Utkarsh','Singhal','8498703585','M',0.00),('DL3CSF1023','Rishabh','Pant','8726254629','M',0.00),('DL4CHH1018','Rachana','Sharma','8116568489','F',0.00),('DL4CTY3341','Mehak','Joshi','8115116730','F',0.00),('DL6CZY1238','Mohammed','Arslaan','8653625261','M',0.00),('DL7CHG3182','Ratik','Bhatia','8013399510','M',0.00),('DL8CGH2727','Rohan','Mishra','8601271080','M',0.00),('DL8VIR8712','Virat','Kohli','7275831524','M',0.00),('DL9CAA1456','Gaurav','Taneja','7267051195','M',0.00),('DL9CWW1111','Mantosh','Singh','7015527531','M',0.00),('HP11II9911','Rinku','Sharma','8059970715','F',0.00),('HP21FF3321','Pawandeep','Shah','8698559493','M',0.00),('HP22ER0191','Gauri','Sharma','7317760367','F',0.00),('HP22TT0919','Akshar','Sharma','8664429603','M',0.00),('HP43JJ0224','Saksham','Joshi','7542294173','M',0.00),('HP90RT8921','Reetika','Kumari','7156512812','F',0.00),('HP90TY1239','Kritika','Mittal','7576720414','F',0.00),('HP91SS1623','Rajat','Srivastava','8522898265','M',0.00),('HR12SS1331','Varun','Kumar','8131287554','M',0.00),('HR13HH1214','Mohini','Dakkar','8587768515','F',0.00),('HR13UH0914','Rahul','Gupta','8652142203','M',0.00),('HR14DD1144','Rohan','Mehra','7829177223','M',0.00),('HR15WW1022','Urvashi','Singh','8648920202','F',0.00),('HR21TT2014','Manish','Pandey','7638987932','M',0.00),('HR22HJ0034','Ayushi','Khandoori','8300360344','F',0.00),('HR22RT9314','Neelaksh','Sharma','7478113396','M',0.00),('HR33DD4454','Santosh','Sharma','8916891492','M',0.00),('HR46SH5143','Yuzvendra ','Chahal','8449869613','M',0.00),('HR56FF1892','Meher','Singh','8511721047','F',0.00),('HR56GG1045','Rajat','Patidar','7726904040','M',0.00),('HR56UI0926','Maya','Devi','7579868437','F',0.00),('HR56UU7712','Ishaan','Kashayap','8215159392','M',0.00),('HR67UI0091','Yuvraj','Sharma','8269181276','M',0.00),('HR76MB7612','Mohammad','Babar','7959526786','M',0.00),('HR90AA6661','Eashan','Srivastava','7976429787','M',0.00),('PB08AZ2221','Arun','Sharma','7409123357','M',0.00),('PB09AD1121','Aditya','Sharma','7416781393','M',0.00),('PB11ED0112','Simrat','Kaur','8688691108','F',0.00),('PB15JJ8911','Siddarth','Kaushik','8456644454','M',0.00),('PB16FG1670','Prabhat','Srivastava','8161606378','M',0.00),('PB22UU1022','Rohanpreet','Singh','7990142759','M',0.00),('PB23JJ9921','Vidit','Khanduri','8910460131','M',0.00),('PB56FH6120','Pratistha','Gaur','8949246957','F',0.00),('PB67HT3421','Kaira','Singh','8014573006','F',0.00),('PB67RR1563','Vidhi','Gupta','8848142715','F',0.00),('PB67TY0002','Nikhil','Sharma','8235713660','M',0.00),('PB68AB3312','Rohini','Singh','8943349933','F',0.00),('PB68SS1122','Rohit','Aggarwal','7632674338','M',0.00),('PB77BH8912','Bipasha','Shekhawat','7900506803','F',0.00),('PB78UI2123','Jasmeer','Singh','7441460211','M',0.00),('PB79IJ3356','Amanat','Kaur','7391044028','F',0.00),('RJ01HJ2018','Saurabh','Saini','7658513706','M',0.00),('RJ78YY1568','Divyang','Sama','7046381614','M',0.00),('RJ88YY6762','Varun','Singhal','7970811468','M',0.00),('RJ89UI0009','Devdutt','Sharma','7736202712','M',0.00),('UP01AS9823','Arushi','Bansal','7415003544','F',0.00),('UP13BR0191','Karan','Khati','7746628183','M',0.00),('UP14CC9640','Aniket','Singh','7072832635','M',0.00),('UP14SS5511','Vidhushi','Bansal','8087470526','F',0.00),('UP14TJ0961','Ayush','Singh','7312210995','M',0.00),('UP14TT7823','Hardik','Srivastava','7392346858','M',0.00),('UP15RT0272','Apoorv','Mishra','7615821632','M',0.00),('UP16BG5698','Anoushka','Bhalla','7936994514','F',0.00),('UP16BG9812','Sachi','Bhatnagar','7597611027','F',0.00),('UP16BR0818','Prakhar','Mishra','7250566957','M',0.00),('UP16BS3095','Ram','Thakur','8788037981','M',0.00),('UP16BT1023','Divya','Adhikari','8919776764','F',0.00),('UP16GH8921','Arpana','Singh','8519157885','F',0.00),('UP16HG5678','Priyanshu','Bansal','8720536743','M',0.00),('UP16TV6784','Rahul','Tiwari','7398349542','M',0.00),('UP16YY2342','Devika','Uniyal','8829560490','F',0.00),('UP17YY9012','Mithali','Raj','9990934734','F',0.00),('UP19RR6672','Siddant','Gupta','8924001042','M',0.00),('UP20EE5554','Risabh','Bhardwaj','7896724668','M',0.00),('UP22YJ6549','Shashvat','Sinha','7136424352','M',0.00),('UP33FD7686','Vishal','Kumar','8644095748','M',0.00),('UP34HJ7810','Mohammad','Azharuddin','8470673873','M',0.00),('UP34TJ3342','Kartikey','Singh','8115291958','M',0.00),('UP44UJ9091','Prakash','Jha','7872713337','M',0.00),('UP67UI0318','Shefali','Raj','7176291177','F',0.00),('UP70HJ1222','Akshdeep','Naath','7749266709','M',0.00),('UP87ER0338','Vartika','Srivastava','8067920389','F',0.00),('UP87WE1121','Arinjay','Srivastava','8072489905','M',0.00),('UP89HJ9654','Aadya','Bansal','8195455917','F',0.00),('UP92YY2020','Sushant','Singh','8226816741','M',0.00),('UP99ER2013','Ishwar','Pandey','8937861538','M',0.00);
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_structure`
--

DROP TABLE IF EXISTS `price_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_structure` (
  `vehicle_number` varchar(20) DEFAULT NULL,
  `Distance_travelled` decimal(10,2) DEFAULT NULL,
  `Price_calculated` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_structure`
--

LOCK TABLES `price_structure` WRITE;
/*!40000 ALTER TABLE `price_structure` DISABLE KEYS */;
INSERT INTO `price_structure` VALUES ('UP16BS3095',242.00,504.00);
/*!40000 ALTER TABLE `price_structure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_vehicle`
--

DROP TABLE IF EXISTS `read_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `read_vehicle` (
  `camera_id` varchar(12) NOT NULL,
  `Vehicle_Number` varchar(10) DEFAULT NULL,
  `Type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_vehicle`
--

LOCK TABLES `read_vehicle` WRITE;
/*!40000 ALTER TABLE `read_vehicle` DISABLE KEYS */;
INSERT INTO `read_vehicle` VALUES ('12341001','UP16BS3095','En'),('12341006','UP16BS3095','Ex');
/*!40000 ALTER TABLE `read_vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger ins_bef_read_vehicle
BEFORE INSERT ON read_vehicle FOR EACH ROW
BEGIN
if (Select type from cameras where cameras.camera_id=new.camera_id)="En" THEN
SET New.Type="En";
elseif (Select type from cameras where cameras.camera_id=new.camera_id)="Ex" THEN
SET New.Type="Ex";
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger ins_aft_read_vehicle
AFTER INSERT ON read_vehicle FOR EACH ROW
BEGIN
if new.type="en" THEN
INSERT INTO entry_toll SET camera_id=new.camera_id, vehicle_number=new.vehicle_number,
highway_number=(Select Highway_number from Cameras where cameras.camera_id=new.camera_id),
distance_from_source=(Select distance_from_source from Cameras where cameras.camera_id=new.camera_id),
time=Now();
elseif new.type="ex" THEN
INSERT INTO exit_toll SET camera_id=new.camera_id, vehicle_number=new.vehicle_number,
highway_number=(Select Highway_number from Cameras where cameras.camera_id=new.camera_id),
distance_from_source=(Select distance_from_source from Cameras where cameras.camera_id=new.camera_id),
time=Now();
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger del_rec after delete on read_vehicle for each row
Begin
IF old.type="en" then
delete from entry_toll where old.camera_id=entry_toll.camera_id && old.vehicle_number=entry_toll.vehicle_number;
ELSEIF old.type="ex" then
delete from exit_toll where old.camera_id=exit_toll.camera_id && old.vehicle_number=exit_toll.vehicle_number;
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-14 16:49:38
