-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: epl
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `conPoint` int(11) NOT NULL,
  `gameNo` varchar(255) DEFAULT NULL,
  `losses` int(11) NOT NULL,
  `pick` varchar(255) DEFAULT NULL,
  `points` int(11) NOT NULL,
  `week` varchar(255) DEFAULT NULL,
  `winner` varchar(255) DEFAULT NULL,
  `wins` int(11) NOT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_joqe68jkpmq2t97w7vlkw1lsf` (`person_id`),
  CONSTRAINT `FK_joqe68jkpmq2t97w7vlkw1lsf` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (21,7,'g10',0,'Chelsea',7,'wk1','Chelsea',1,1),(22,1,'g5',0,'Stoke',0,'wk1','',0,1),(23,10,'g8',0,'Man Utd',10,'wk1','Man Utd',1,1),(24,9,'g1',1,'Leicester',-9,'wk1','Hull',0,1),(25,6,'g4',0,'Spurs',0,'wk1','',0,1),(26,4,'g9',1,'Arsenal',-4,'wk1','Liverpool',0,1),(27,3,'g6',0,'Southampton',0,'wk1','',0,1),(28,2,'g2',1,'Burnley',-2,'wk1','Swansea',1,1),(29,5,'g3',0,'West Brom',5,'wk1','West Brom',1,1),(30,8,'g7',0,'Man City',8,'wk1','Man City',1,1),(31,2,'g2',1,'Swansea',2,'wk1','Swansea',1,2),(32,6,'g10',0,'Chelsea',6,'wk1','Chelsea',1,2),(33,1,'g3',1,'Crystal Palace',-1,'wk1','West Brom',0,2),(34,4,'g5',0,'Stoke',0,'wk1','',0,2),(35,10,'g7',0,'Man City',10,'wk1','Man City',1,2),(36,7,'g1',1,'Leicester',-7,'wk1','Hull',0,2),(37,5,'g4',0,'Spurs',0,'wk1','',0,2),(38,8,'g9',1,'Arsenal',-8,'wk1','Liverpool',0,2),(39,3,'g6',0,'Southampton',0,'wk1','',0,2),(40,9,'g8',0,'Man Utd',9,'wk1','Man Utd',1,2),(41,1,'g9',1,'Arsenal',-1,'wk1','Liverpool',0,3),(42,2,'g3',1,'Crystal Palace',-2,'wk1','West Brom',0,3),(43,10,'g8',0,'Man Utd',10,'wk1','Man Utd',1,3),(44,3,'g2',1,'Swansea',3,'wk1','Swansea',1,3),(45,8,'g4',0,'Spurs',0,'wk1','',0,3),(46,9,'g5',0,'Stoke',0,'wk1','',0,3),(47,7,'g7',0,'Man City',7,'wk1','Man City',1,3),(48,4,'g10',0,'Chelsea',4,'wk1','Chelsea',1,3),(49,6,'g1',1,'Leicester',-6,'wk1','Hull',0,3),(50,5,'g6',0,'Southampton',0,'wk1','',0,3),(51,2,'g2',1,'Swansea',2,'wk1','Swansea',1,4),(52,5,'g6',0,'Southampton',0,'wk1','',0,4),(53,10,'g7',0,'Man City',10,'wk1','Man City',1,4),(54,6,'g1',0,'Hull',6,'wk1','Hull',1,4),(55,7,'g9',0,'Liverpool',7,'wk1','Liverpool',1,4),(56,1,'g5',0,'Middlesbrough',0,'wk1','',0,4),(57,3,'g3',1,'Crystal Palace',-3,'wk1','West Brom',0,4),(58,4,'g4',0,'Spurs',0,'wk1','',0,4),(59,9,'g8',0,'Man Utd',9,'wk1','Man Utd',1,4),(60,8,'g10',0,'Chelsea',8,'wk1','Chelsea',1,4),(61,4,'g9',1,'Arsenal',-4,'wk1','Liverpool',0,5),(62,9,'g1',1,'Leicester',-9,'wk1','Hull',0,5),(63,6,'g4',0,'Spurs',0,'wk1','',0,5),(64,8,'g8',0,'Man Utd',8,'wk1','Man Utd',1,5),(65,2,'g10',0,'Chelsea',2,'wk1','Chelsea',1,5),(66,10,'g7',0,'Man City',10,'wk1','Man City',1,5),(67,7,'g6',0,'Southampton',0,'wk1','',0,5),(68,1,'g2',1,'Burnley',-1,'wk1','Swansea',1,5),(69,3,'g3',1,'Crystal Palace',-3,'wk1','West Brom',0,5),(70,5,'g5',0,'Stoke',0,'wk1','',0,5),(71,6,'g3',1,'Crystal Palace',-6,'wk1','West Brom',0,6),(72,10,'g8',0,'Man Utd',10,'wk1','Man Utd',1,6),(73,8,'g1',1,'Leicester',-8,'wk1','Hull',0,6),(74,5,'g10',0,'Chelsea',5,'wk1','Chelsea',1,6),(75,7,'g4',0,'Spurs',0,'wk1','',0,6),(76,9,'g7',0,'Man City',9,'wk1','Man City',1,6),(77,2,'g2',1,'Swansea',2,'wk1','Swansea',1,6),(78,3,'g5',0,'Stoke',0,'wk1','',0,6),(79,4,'g6',0,'Southampton',0,'wk1','',0,6),(80,1,'g9',1,'Arsenal',-1,'wk1','Liverpool',0,6),(81,5,'g4',0,'Spurs',0,'wk1','',0,7),(82,10,'g7',0,'Man City',10,'wk1','Man City',1,7),(83,6,'g2',1,'Swansea',6,'wk1','Swansea',1,7),(84,1,'g10',1,'West Ham',-1,'wk1','Chelsea',0,7),(85,2,'g3',0,'West Brom',2,'wk1','West Brom',1,7),(86,7,'g5',0,'Stoke',0,'wk1','',0,7),(87,8,'g1',1,'Leicester',-8,'wk1','Hull',0,7),(88,3,'g9',1,'Arsenal',-3,'wk1','Liverpool',0,7),(89,4,'g6',0,'Southampton',0,'wk1','',0,7),(90,9,'g8',0,'Man Utd',9,'wk1','Man Utd',1,7),(91,6,'g3',1,'Crystal Palace',-6,'wk1','West Brom',0,8),(92,4,'g9',1,'Arsenal',-4,'wk1','Liverpool',0,8),(93,8,'g1',1,'Leicester',-8,'wk1','Hull',0,8),(94,2,'g2',1,'Swansea',2,'wk1','Swansea',1,8),(95,7,'g8',0,'Man Utd',7,'wk1','Man Utd',1,8),(96,9,'g10',0,'Chelsea',9,'wk1','Chelsea',1,8),(97,5,'g6',0,'Southampton',0,'wk1','',0,8),(98,10,'g7',0,'Man City',10,'wk1','Man City',1,8),(99,3,'g4',0,'Spurs',0,'wk1','',0,8),(100,1,'g5',0,'Stoke',0,'wk1','',0,8),(101,1,'g3',0,'West Brom',1,'wk1','West Brom',1,9),(102,2,'g5',0,'Middlesbrough',0,'wk1','',0,9),(103,5,'g2',1,'Swansea',5,'wk1','Swansea',1,9),(104,3,'g4',0,'Spurs',0,'wk1','',0,9),(105,7,'g9',1,'Arsenal',-7,'wk1','Liverpool',0,9),(106,10,'g1',1,'Leicester',-10,'wk1','Hull',0,9),(107,9,'g8',0,'Man Utd',9,'wk1','Man Utd',1,9),(108,8,'g7',0,'Man City',8,'wk1','Man City',1,9),(109,6,'g10',0,'Chelsea',6,'wk1','Chelsea',1,9),(110,4,'g6',0,'Watford',0,'wk1','',0,9),(111,7,'g5',0,'Stoke',0,'wk1','',0,10),(112,10,'g7',0,'Man City',10,'wk1','Man City',1,10),(113,3,'g3',0,'West Brom',3,'wk1','West Brom',1,10),(114,9,'g8',0,'Man Utd',9,'wk1','Man Utd',1,10),(115,1,'g2',1,'Burnley',-1,'wk1','Swansea',1,10),(116,6,'g4',0,'Spurs',0,'wk1','',0,10),(117,4,'g6',0,'Southampton',0,'wk1','',0,10),(118,5,'g10',0,'Chelsea',5,'wk1','Chelsea',1,10),(119,8,'g1',1,'Leicester',-8,'wk1','Hull',0,10),(120,2,'g9',0,'Liverpool',2,'wk1','Liverpool',1,10),(121,5,'g8',0,'Man Utd',5,'wk1','Man Utd',1,11),(122,3,'g9',0,'Liverpool',3,'wk1','Liverpool',1,11),(123,8,'g7',0,'Man City',8,'wk1','Man City',1,11),(124,9,'g4',0,'Spurs',0,'wk1','',0,11),(125,10,'g10',0,'Chelsea',10,'wk1','Chelsea',1,11),(126,2,'g6',0,'Watford',0,'wk1','',0,11),(127,7,'g1',1,'Leicester',-7,'wk1','Hull',0,11),(128,1,'g5',0,'Stoke',0,'wk1','',0,11),(129,6,'g3',1,'Crystal Palace',-6,'wk1','West Brom',0,11),(130,4,'g2',1,'Swansea',4,'wk1','Swansea',1,11),(131,1,'g2',1,'Swansea',1,'wk1','Swansea',1,12),(132,7,'g6',0,'Southampton',0,'wk1','',0,12),(133,4,'g4',0,'Spurs',0,'wk1','',0,12),(134,9,'g10',0,'Chelsea',9,'wk1','Chelsea',1,12),(135,10,'g7',0,'Man City',10,'wk1','Man City',1,12),(136,6,'g3',1,'Crystal Palace',-6,'wk1','West Brom',0,12),(137,2,'g5',0,'Stoke',0,'wk1','',0,12),(138,3,'g9',1,'Arsenal',-3,'wk1','Liverpool',0,12),(139,8,'g8',0,'Man Utd',8,'wk1','Man Utd',1,12),(140,5,'g1',1,'Leicester',-5,'wk1','Hull',0,12),(141,4,'g3',1,'Crystal Palace',-4,'wk1','West Brom',0,13),(142,10,'g7',0,'Man City',10,'wk1','Man City',1,13),(143,1,'g2',1,'Burnley',-1,'wk1','Swansea',1,13),(144,9,'g8',0,'Man Utd',9,'wk1','Man Utd',1,13),(145,5,'g9',1,'Arsenal',-5,'wk1','Liverpool',0,13),(146,3,'g4',0,'Spurs',0,'wk1','',0,13),(147,7,'g6',0,'Southampton',0,'wk1','',0,13),(148,8,'g10',0,'Chelsea',8,'wk1','Chelsea',1,13),(149,2,'g5',0,'Middlesbrough',0,'wk1','',0,13),(150,6,'g1',1,'Leicester',-6,'wk1','Hull',0,13),(151,5,'g6',0,'Southampton',0,'wk1','',0,14),(152,9,'g4',0,'Spurs',0,'wk1','',0,14),(153,10,'g1',1,'Leicester',-10,'wk1','Hull',0,14),(154,2,'g2',1,'Swansea',2,'wk1','Swansea',1,14),(155,3,'g5',0,'Stoke',0,'wk1','',0,14),(156,4,'g3',1,'Crystal Palace',-4,'wk1','West Brom',0,14),(157,6,'g8',0,'Man Utd',6,'wk1','Man Utd',1,14),(158,8,'g9',1,'Arsenal',-8,'wk1','Liverpool',0,14),(159,1,'g10',1,'West Ham',-1,'wk1','Chelsea',0,14),(160,7,'g7',0,'Man City',7,'wk1','Man City',1,14),(161,9,'g6',0,'Southampton',0,'wk1','',0,15),(162,4,'g1',1,'Leicester',-4,'wk1','Hull',0,15),(163,3,'g2',1,'Burnley',-3,'wk1','Swansea',1,15),(164,8,'g8',0,'Man Utd',8,'wk1','Man Utd',1,15),(165,7,'g10',0,'Chelsea',7,'wk1','Chelsea',1,15),(166,5,'g9',0,'Liverpool',5,'wk1','Liverpool',1,15),(167,6,'g4',0,'Spurs',0,'wk1','',0,15),(168,1,'g5',0,'Middlesbrough',0,'wk1','',0,15),(169,10,'g7',0,'Man City',10,'wk1','Man City',1,15),(170,2,'g3',1,'Crystal Palace',-2,'wk1','West Brom',0,15),(171,7,'g1',0,'Hull',7,'wk1','Hull',1,16),(172,3,'g2',1,'Swansea',3,'wk1','Swansea',1,16),(173,6,'g5',0,'Middlesbrough',0,'wk1','',0,16),(174,4,'g10',0,'Chelsea',4,'wk1','Chelsea',1,16),(175,8,'g3',1,'Crystal Palace',-8,'wk1','West Brom',0,16),(176,9,'g6',0,'Southampton',0,'wk1','',0,16),(177,5,'g9',1,'Arsenal',-5,'wk1','Liverpool',0,16),(178,2,'g4',0,'Spurs',0,'wk1','',0,16),(179,1,'g8',1,'Bournemouth',-1,'wk1','Man Utd',0,16),(180,10,'g7',0,'Man City',10,'wk1','Man City',1,16),(191,2,'g3',1,'Crystal Palace',-2,'wk1','West Brom',0,18),(192,5,'g2',1,'Swansea',5,'wk1','Swansea',1,18),(193,1,'g10',0,'Chelsea',1,'wk1','Chelsea',1,18),(194,8,'g8',0,'Man Utd',8,'wk1','Man Utd',1,18),(195,9,'g1',1,'Leicester',-9,'wk1','Hull',0,18),(196,3,'g9',1,'Arsenal',-3,'wk1','Liverpool',0,18),(197,7,'g4',0,'Spurs',0,'wk1','',0,18),(198,4,'g6',0,'Southampton',0,'wk1','',0,18),(199,10,'g7',0,'Man City',10,'wk1','Man City',1,18),(200,6,'g5',0,'Stoke',0,'wk1','',0,18),(201,6,'g5',0,'Stoke',0,'wk1','',0,17),(202,1,'g10',1,'West Ham',-1,'wk1','Chelsea',0,17),(203,5,'g4',0,'Spurs',0,'wk1','',0,17),(204,7,'g8',0,'Man Utd',7,'wk1','Man Utd',1,17),(205,10,'g1',1,'Leicester',-10,'wk1','Hull',0,17),(206,4,'g6',0,'Watford',0,'wk1','',0,17),(207,8,'g2',0,'Swansea',8,'wk1','Swansea',1,17),(208,3,'g3',1,'Crystal Palace',-3,'wk1','West Brom',0,17),(209,9,'g7',0,'Man City',9,'wk1','Man City',1,17),(210,2,'g9',0,'Liverpool',2,'wk1','Liverpool',1,17);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `winNum` int(10) NOT NULL,
  `lossNum` int(10) NOT NULL,
  `totPoint` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'hphs','Ashley W',5,3,15),(2,'mexico','Beder T',4,4,11),(3,'recife','Emir G',4,4,15),(4,'tworivers','Fernando DR',6,2,39),(5,'cruzazul','Juan Pablo G',4,4,3),(6,'unh','Marc H',4,4,11),(7,'hamster','Matt D',4,4,15),(8,'futbol','Mauricio M',4,4,10),(9,'soccer','Max G',5,3,12),(10,'dodgers','Mike N',6,2,20),(11,'chase','Mike P',5,3,17),(12,'melody','Neil W',4,4,14),(13,'valpo','Ryan W',4,4,11),(14,'arrachera','Sam G',3,5,-8),(15,'houston','Tony C',5,3,21),(16,'mayor','Tyler W',4,4,10),(17,'ncstate','Wes S',4,3,12),(18,'youngjah','Willie W',4,4,10);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-22  8:34:17
