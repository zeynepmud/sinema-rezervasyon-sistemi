-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: sinema
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `FilmID` int NOT NULL AUTO_INCREMENT,
  `FilmAdı` varchar(100) NOT NULL,
  PRIMARY KEY (`FilmID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Yeni Film Adı'),(2,'Oyuncak Hikayesi'),(3,'Titanic'),(4,'Coco'),(5,'Inside Out'),(6,'Joker'),(7,'Frozen'),(8,'Zootopia'),(9,'Toy Story'),(10,'Black Panther'),(11,'Gece Rüyası'),(12,'Gizli Gerçek'),(13,'Zaman Yolcusu');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koltuk`
--

DROP TABLE IF EXISTS `koltuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `koltuk` (
  `KoltukNo` int NOT NULL,
  `SalonID` int NOT NULL,
  PRIMARY KEY (`KoltukNo`,`SalonID`),
  KEY `SalonID` (`SalonID`),
  CONSTRAINT `koltuk_ibfk_1` FOREIGN KEY (`SalonID`) REFERENCES `salon` (`SalonID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koltuk`
--

LOCK TABLES `koltuk` WRITE;
/*!40000 ALTER TABLE `koltuk` DISABLE KEYS */;
INSERT INTO `koltuk` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5),(10,5),(11,5),(12,5),(13,5),(14,5),(15,5),(16,5),(17,5),(18,5),(19,5),(20,5);
/*!40000 ALTER TABLE `koltuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kullanıcı`
--

DROP TABLE IF EXISTS `kullanıcı`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kullanıcı` (
  `KullanıcıID` int NOT NULL AUTO_INCREMENT,
  `Ad` varchar(50) NOT NULL,
  `Soyad` varchar(50) NOT NULL,
  `DogumTarihi` date NOT NULL,
  PRIMARY KEY (`KullanıcıID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kullanıcı`
--

LOCK TABLES `kullanıcı` WRITE;
/*!40000 ALTER TABLE `kullanıcı` DISABLE KEYS */;
INSERT INTO `kullanıcı` VALUES (1,'Ahmet','Kılıc','1990-05-15'),(2,'Mehmet','Demir','1995-08-20'),(3,'Ayşe','Kaya','1998-02-10'),(4,'Fatma','Çelik','1990-09-12'),(5,'Ali','Şahin','1987-07-22'),(6,'Zeynep','Kurt','2000-01-15'),(7,'Can','Öztürk','1985-03-18'),(8,'Elif','Aydın','1999-12-30'),(9,'Hakan','Çetin','1980-11-14'),(10,'Sevil','Eren','1997-06-25'),(11,'Cem','Güneş','1983-04-08'),(12,'Merve','Arslan','2002-07-19'),(13,'Furkan','Kılıç','1996-10-31'),(14,'Burak','Koç','1989-02-02'),(15,'Gizem','Aksoy','1994-12-01'),(16,'Deniz','Yıldız','1993-08-17'),(17,'Esra','Bal','1988-03-29'),(18,'Ece','Turan','1990-05-20'),(19,'Büşra','Eroğlu','1997-07-15'),(20,'Kadir','Uzun','1991-09-01'),(21,'Umut','Kaya','1986-04-10'),(22,'Emre','Acar','1998-02-28'),(23,'Melisa','Demirtaş','1993-10-06'),(24,'Betül','Keskin','2001-01-05'),(25,'Sinem','Karaca','2000-06-13'),(26,'Barış','Yıldırım','1993-03-15'),(27,'Ece','Tuna','1990-07-25'),(28,'Cem','Erdoğan','1987-11-09'),(29,'Deniz','Arslan','1995-05-15'),(30,'Hakan','Yıldız','1988-08-20'),(31,'Merve','Taşçı','1992-12-01'),(36,'Ahmet','Yılmaz','2003-06-08');
/*!40000 ALTER TABLE `kullanıcı` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `kullanıcırezervasyonlar`
--

DROP TABLE IF EXISTS `kullanıcırezervasyonlar`;
/*!50001 DROP VIEW IF EXISTS `kullanıcırezervasyonlar`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kullanıcırezervasyonlar` AS SELECT 
 1 AS `Ad`,
 1 AS `Soyad`,
 1 AS `RezervasyonID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `LogMesajı` varchar(255) NOT NULL,
  `Tarih` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'Yeni kullanıcı eklendi: Ahmet Yılmaz','2024-12-20 19:43:03'),(2,'Kullanıcı silindi: İrem Soylu','2024-12-20 19:46:36'),(3,'Film adı güncellendi: Eski Adı: Avengers: Endgame Yeni Adı: Yeni Film Adı','2024-12-20 19:47:10');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezervasyon`
--

DROP TABLE IF EXISTS `rezervasyon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rezervasyon` (
  `RezervasyonID` int NOT NULL AUTO_INCREMENT,
  `KullanıcıID` int DEFAULT NULL,
  PRIMARY KEY (`RezervasyonID`),
  KEY `KullanıcıID` (`KullanıcıID`),
  CONSTRAINT `rezervasyon_ibfk_1` FOREIGN KEY (`KullanıcıID`) REFERENCES `kullanıcı` (`KullanıcıID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezervasyon`
--

LOCK TABLES `rezervasyon` WRITE;
/*!40000 ALTER TABLE `rezervasyon` DISABLE KEYS */;
INSERT INTO `rezervasyon` VALUES (1,1),(6,1),(2,2),(7,2),(3,3),(11,3),(4,4),(12,4),(5,5),(15,5),(8,6),(16,6),(9,7),(17,7),(10,8),(13,9),(14,10),(18,11),(19,12),(20,13);
/*!40000 ALTER TABLE `rezervasyon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salon`
--

DROP TABLE IF EXISTS `salon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salon` (
  `SalonID` int NOT NULL AUTO_INCREMENT,
  `SalonAdı` varchar(50) NOT NULL,
  PRIMARY KEY (`SalonID`),
  UNIQUE KEY `SalonAdı` (`SalonAdı`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salon`
--

LOCK TABLES `salon` WRITE;
/*!40000 ALTER TABLE `salon` DISABLE KEYS */;
INSERT INTO `salon` VALUES (1,'Salon A'),(2,'Salon B'),(3,'Salon C'),(4,'Salon D'),(5,'Salon E'),(6,'Salon F'),(7,'Salon G'),(8,'Salon H');
/*!40000 ALTER TABLE `salon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seans_rezervasyon`
--

DROP TABLE IF EXISTS `seans_rezervasyon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seans_rezervasyon` (
  `SeansID` int NOT NULL,
  `RezervasyonID` int NOT NULL,
  PRIMARY KEY (`SeansID`,`RezervasyonID`),
  KEY `RezervasyonID` (`RezervasyonID`),
  CONSTRAINT `seans_rezervasyon_ibfk_1` FOREIGN KEY (`SeansID`) REFERENCES `seans` (`SeansID`) ON DELETE CASCADE,
  CONSTRAINT `seans_rezervasyon_ibfk_2` FOREIGN KEY (`RezervasyonID`) REFERENCES `rezervasyon` (`RezervasyonID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seans_rezervasyon`
--

LOCK TABLES `seans_rezervasyon` WRITE;
/*!40000 ALTER TABLE `seans_rezervasyon` DISABLE KEYS */;
INSERT INTO `seans_rezervasyon` VALUES (1,1),(1,2),(2,3),(3,4),(4,5),(2,6),(5,7),(6,8),(6,9),(7,10),(8,11),(8,12),(9,13),(10,14),(11,15),(12,16),(12,17),(13,18),(13,19),(14,20);
/*!40000 ALTER TABLE `seans_rezervasyon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yenikullanıcı`
--

DROP TABLE IF EXISTS `yenikullanıcı`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yenikullanıcı` (
  `KullanıcıID` int NOT NULL DEFAULT '0',
  `Ad` varchar(50) NOT NULL,
  `Soyad` varchar(50) NOT NULL,
  `DogumTarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yenikullanıcı`
--

LOCK TABLES `yenikullanıcı` WRITE;
/*!40000 ALTER TABLE `yenikullanıcı` DISABLE KEYS */;
INSERT INTO `yenikullanıcı` VALUES (1,'Ahmet','Kılıc','1990-05-15'),(2,'Mehmet','Demir','1995-08-20'),(3,'Ayşe','Kaya','1998-02-10'),(4,'Fatma','Çelik','1990-09-12'),(5,'Ali','Şahin','1987-07-22'),(6,'Zeynep','Kurt','2000-01-15'),(7,'Can','Öztürk','1985-03-18'),(8,'Elif','Aydın','1999-12-30'),(9,'Hakan','Çetin','1980-11-14'),(10,'Sevil','Eren','1997-06-25'),(11,'Cem','Güneş','1983-04-08'),(12,'Merve','Arslan','2002-07-19'),(13,'Furkan','Kılıç','1996-10-31'),(14,'Burak','Koç','1989-02-02'),(15,'Gizem','Aksoy','1994-12-01'),(16,'Deniz','Yıldız','1993-08-17'),(17,'Esra','Bal','1988-03-29'),(18,'Ece','Turan','1990-05-20'),(19,'Büşra','Eroğlu','1997-07-15'),(20,'Kadir','Uzun','1991-09-01'),(21,'Umut','Kaya','1986-04-10'),(22,'Emre','Acar','1998-02-28'),(23,'Melisa','Demirtaş','1993-10-06'),(24,'Betül','Keskin','2001-01-05'),(25,'Sinem','Karaca','2000-06-13'),(26,'Barış','Yıldırım','1993-03-15'),(27,'Ece','Tuna','1990-07-25'),(28,'Cem','Erdoğan','1987-11-09'),(29,'Deniz','Arslan','1995-05-15'),(30,'Hakan','Yıldız','1988-08-20'),(31,'Merve','Taşçı','1992-12-01'),(32,'İrem','Soylu','1996-09-17');
/*!40000 ALTER TABLE `yenikullanıcı` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ödeme`
--

DROP TABLE IF EXISTS `ödeme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ödeme` (
  `ÖdemeID` int NOT NULL AUTO_INCREMENT,
  `RezervasyonID` int DEFAULT NULL,
  `Tutar` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ÖdemeID`),
  KEY `RezervasyonID` (`RezervasyonID`),
  CONSTRAINT `ödeme_ibfk_1` FOREIGN KEY (`RezervasyonID`) REFERENCES `rezervasyon` (`RezervasyonID`) ON DELETE CASCADE,
  CONSTRAINT `ödeme_chk_1` CHECK ((`Tutar` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ödeme`
--

LOCK TABLES `ödeme` WRITE;
/*!40000 ALTER TABLE `ödeme` DISABLE KEYS */;
INSERT INTO `ödeme` VALUES (1,1,50.00),(2,2,55.00),(3,3,60.00),(4,4,45.00),(5,5,70.00),(6,6,50.00),(7,7,60.00),(8,8,65.00),(9,9,55.00),(10,10,75.00),(11,11,50.00),(12,12,60.00),(13,13,45.00),(14,14,70.00),(15,15,55.00),(16,16,60.00),(17,17,65.00),(18,18,50.00),(19,19,75.00),(20,20,55.00);
/*!40000 ALTER TABLE `ödeme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `kullanıcırezervasyonlar`
--

/*!50001 DROP VIEW IF EXISTS `kullanıcırezervasyonlar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kullanıcırezervasyonlar` AS select `kullanıcı`.`Ad` AS `Ad`,`kullanıcı`.`Soyad` AS `Soyad`,`rezervasyon`.`RezervasyonID` AS `RezervasyonID` from (`kullanıcı` join `rezervasyon` on((`kullanıcı`.`KullanıcıID` = `rezervasyon`.`KullanıcıID`))) */;
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

-- Dump completed on 2026-08-24 21:55:10
