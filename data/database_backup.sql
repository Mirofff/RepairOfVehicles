CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `body`
--

DROP TABLE IF EXISTS `body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `body` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Body` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `body`
--

LOCK TABLES `body` WRITE;
/*!40000 ALTER TABLE `body` DISABLE KEYS */;
INSERT INTO `body` VALUES (1,'Универсал'),(2,'Хэтчбек'),(3,'Лифтбек'),(4,'Купе'),(5,'Лимузин'),(6,'Кабриолет'),(7,'Внедорожник'),(8,'Седан'),(9,'Микроавтобус');
/*!40000 ALTER TABLE `body` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Brand` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Toyota'),(2,'Mercedes-Benz'),(3,'BMW'),(4,'Honda22'),(5,'Volkswagen'),(27,'Еще один 2'),(29,'Audi');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `VIN` varchar(17) NOT NULL,
  `ReleaseYear` date DEFAULT NULL,
  `Mileage` int DEFAULT NULL,
  `stateNumber` char(8) DEFAULT NULL,
  `Brand_ID` int NOT NULL,
  `Body_ID` int NOT NULL,
  `Color_ID` int NOT NULL,
  `Engine_ID` int NOT NULL,
  `Model_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Car_Engine1_idx` (`Engine_ID`),
  CONSTRAINT `fk_Car_Engine1` FOREIGN KEY (`Engine_ID`) REFERENCES `engines` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'vdXmSVqtq5Oabdu3z','2020-01-20',100000,'п129го39',1,1,1,1,1),(2,'u4wvjzN5fgDQtcrn1','2014-01-01',15000,'с395мо39',2,2,2,1,2),(3,'vdXmSVqtq5Oabdu3z','2020-01-20',10000,'дрг12977',5,5,2,5,2),(4,'Sj9wf4FKP9N3fPtlC','2015-01-01',80000,'ж154ма77',1,5,1,5,3),(5,'H5q0pHV6HX16XBN1t','2020-01-20',50000,'о490ле78',5,5,5,1,4),(20,'45h356hw54b254bwb','2019-04-20',11111,'о241дт39',2,2,5,1,6),(21,'817i2ug4b34t','2003-12-20',1245,'5jh23376',5,5,2,5,2),(22,'bo4ubou25141b5','2011-01-01',12000,'р454лл39',5,5,2,5,2),(23,'1562b35jb24','2007-01-20',12300,'а213лр39',1,7,2,2,3),(24,'1298h3b5b24','2003-12-20',134357,'о124ло39',1,1,1,1,9);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `client` varchar(45) DEFAULT NULL,
  `patronimic` varchar(45) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `series` int DEFAULT NULL,
  `number` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (2,'Марфа','Полянина','Елизаровна',79623434669,'Ул. Достоевского пд. 4, 5',4398,997761),(3,'Марина','Казакова','Денисовна',88005553535,'Ул. Ленина дом 20',4930,901786),(4,'Петр','Бессмертный','Власович',79812428277,'Пр. Грибоедова дом 15, квартира 14',4950,727113),(5,'Иван','Казаков','Аркашевич',79623434669,'Ул. Жукова пд. 4, 5',4585,467987),(8,'Генадий','Чебурков','Крокодилович',30,'Пр. Укурышей',1488,228822);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `ID` int NOT NULL,
  `Color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Черный'),(2,'Белый'),(3,'Серебрянный'),(4,'Серый'),(5,'Графитовый'),(6,'Зеленый'),(7,'Темно-Серый');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumables`
--

DROP TABLE IF EXISTS `consumables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumables` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `consumables` varchar(200) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumables`
--

LOCK TABLES `consumables` WRITE;
/*!40000 ALTER TABLE `consumables` DISABLE KEYS */;
INSERT INTO `consumables` VALUES (1,'Тормозные колодки передние Тойота Камри 70',2300),(3,'Моторное масло Total Quartz 9000 HKS G-310 5W-30, 1л',1300),(4,'Моторное масло Total Quartz 9000 HKS G-310 5W-30 5L',5600),(5,'Тормозная жидкость Reinwell DOT4 1 л',500),(6,'Тормозная жидкость Renault DOT 4+ (0,5 л)',1900),(7,'Фиксатор автомобильный, 100 шт.',600),(8,'Гайка колесная автомобильная конус 20 шт.',1333),(9,'Шины зимние Sailun Ice Blazer WST3 104T Шипованные',8000),(10,'Шины зимние Yokohama iceGuard iG55 94T Шипованные',6500),(12,'Какой то шлак за 100',100);
/*!40000 ALTER TABLE `consumables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engines`
--

DROP TABLE IF EXISTS `engines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engines` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Engines` varchar(45) DEFAULT NULL,
  `Power` int DEFAULT NULL,
  `Volume` float DEFAULT NULL,
  `Fuel_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Engine_Fuel1_idx` (`Fuel_ID`),
  CONSTRAINT `fk_Engine_Fuel1` FOREIGN KEY (`Fuel_ID`) REFERENCES `fuel` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engines`
--

LOCK TABLES `engines` WRITE;
/*!40000 ALTER TABLE `engines` DISABLE KEYS */;
INSERT INTO `engines` VALUES (1,'otherEngines',10000,2000,4),(2,'Mercedes-Benz OM642',235,2987,1),(3,'BMW M57',286,2993,2),(4,'Volvo D5',230,2400,3),(5,'VW CFNA',105,1598,2),(7,'Mitsubishi 4G63',144,1997,1),(11,'Еще какое то двихло',200,500,1);
/*!40000 ALTER TABLE `engines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuel`
--

DROP TABLE IF EXISTS `fuel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuel` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Fuel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel`
--

LOCK TABLES `fuel` WRITE;
/*!40000 ALTER TABLE `fuel` DISABLE KEYS */;
INSERT INTO `fuel` VALUES (1,'Дизель'),(2,'Бензин-95'),(3,'Бензин-98'),(4,'Газ');
/*!40000 ALTER TABLE `fuel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `get_body`
--

DROP TABLE IF EXISTS `get_body`;
/*!50001 DROP VIEW IF EXISTS `get_body`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `get_body` AS SELECT 
 1 AS `ID`,
 1 AS `Body`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `model` char(30) DEFAULT NULL,
  `brand_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'Q7',29),(2,'Touareg',5),(3,'RAV4',1),(4,'CX5',4),(5,'Civik',4),(6,'Q870',2),(8,'M5',3),(9,'LandCruiser',1),(13,'X5',3),(15,'Camry2',1);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RegistrationDate` date DEFAULT NULL,
  `DateExecution` date DEFAULT NULL,
  `Client_ID` int NOT NULL,
  `Service_ID` int NOT NULL,
  `Car_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Order_Customer1_idx` (`Client_ID`),
  KEY `fk_Order_Service1_idx` (`Service_ID`),
  KEY `fk_Order_Car1_idx` (`Car_ID`),
  CONSTRAINT `fk_Order_Car1` FOREIGN KEY (`Car_ID`) REFERENCES `car` (`ID`),
  CONSTRAINT `fk_Order_Customer1` FOREIGN KEY (`Client_ID`) REFERENCES `clients` (`ID`),
  CONSTRAINT `fk_Order_Service1` FOREIGN KEY (`Service_ID`) REFERENCES `service` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2019-04-12','2019-04-15',3,1,1),(2,'2020-06-08','2020-06-10',2,2,2),(4,'2019-02-24','2019-03-26',4,4,5),(5,'2019-02-27','2019-03-10',3,1,3),(34,'2022-12-31','2022-12-03',3,5,2),(35,'2022-12-03','2022-12-03',8,1,4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `service` varchar(45) DEFAULT NULL,
  `Count` int DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Consumables_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Service_Consumables1_idx` (`Consumables_ID`),
  CONSTRAINT `fk_Service_Consumables1` FOREIGN KEY (`Consumables_ID`) REFERENCES `consumables` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'Замена воздушного фильтра двигателя',3,1000,4),(2,'Профилактика торм. механизма и еще чето',2,1000,4),(3,'Замена фильтра салона',1,999,8),(4,'Замена фильтра ДВС',2,500,9),(5,'Шприцевание крестовин карданного вала 1',2,2000,6);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Администратор'),(2,'Пользователь');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id_idx` (`status_id`),
  CONSTRAINT `status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','qwerty',1),(2,'user','12345',2),(5,'user2','12345',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP PROCEDURE IF EXISTS `countOfWork` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `countOfWork`()
BEGIN
SELECT 
    b.brand as `Марка`, COUNT(o.service_id) as `Количество ремонтных работа`
FROM
    orders AS o
        JOIN
    car AS c ON o.car_id = c.id
        JOIN
    brand AS b ON c.brand_id = b.id
GROUP BY b.brand;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOrders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrders`(startDate date, endDate date)
BEGIN
SELECT
    o.dateexecution as `Дата выполения`,
    c.client as `Клиент`,
    s.service as `Услуга`,
    s.count as `Количество`,
    s.price as `Цена`,
    (s.price * s.count) as `Цена * Количество`
FROM
    mydb.orders AS o
        JOIN
    mydb.clients AS c ON o.client_id = c.id
        JOIN
    mydb.service AS s ON o.service_id = s.id
WHERE
    o.dateExecution BETWEEN startDate AND endDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOrdersByRegion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrdersByRegion`()
BEGIN
SELECT 
    c.stateNumber as 'Гос. Номер',
    SUBSTRING(c.stateNumber, 7, 2) as 'Регион',
    COUNT(c.stateNumber) as 'Количество заказов'
FROM
    mydb.car AS c
GROUP BY SUBSTRING(c.stateNumber, 7, 2)
ORDER BY COUNT(c.stateNumber) DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `incomeForPeriod` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `incomeForPeriod`(startDate date, endDate date)
BEGIN
SELECT 
    SUM(s.price * s.count) 'Доход за период'
FROM
    orders AS o
        JOIN
    service AS s ON o.service_id = s.id
WHERE
    o.dateExecution BETWEEN '2010-12-01' AND '2030-12-01';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `get_body`
--

/*!50001 DROP VIEW IF EXISTS `get_body`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `get_body` AS select `body`.`ID` AS `ID`,`body`.`Body` AS `Body` from `body` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-15 23:08:13
