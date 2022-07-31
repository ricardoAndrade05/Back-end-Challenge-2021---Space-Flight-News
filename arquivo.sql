-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: coodesh_challenge
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `featured` bit(1) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `news_site` varchar(255) DEFAULT NULL,
  `published_at` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'','Imagem: 0','Site: 0','Publicado: 0','Sumario: 0','Titulo: 0','Url: 0'),(2,'','Imagem: 1','Site: 1','Publicado: 1','Sumario: 1','Titulo: 1','Url: 1'),(3,'','Imagem: 2','Site: 2','Publicado: 2','Sumario: 2','Titulo: 2','Url: 2'),(4,'','Imagem: 3','Site: 3','Publicado: 3','Sumario: 3','Titulo: 3','Url: 3'),(5,'','Imagem: 4','Site: 4','Publicado: 4','Sumario: 4','Titulo: 4','Url: 4'),(6,'','Imagem: 5','Site: 5','Publicado: 5','Sumario: 5','Titulo: 5','Url: 5'),(7,'','Imagem: 6','Site: 6','Publicado: 6','Sumario: 6','Titulo: 6','Url: 6'),(8,'','Imagem: 7','Site: 7','Publicado: 7','Sumario: 7','Titulo: 7','Url: 7'),(9,'','Imagem: 8','Site: 8','Publicado: 8','Sumario: 8','Titulo: 8','Url: 8'),(10,'','Imagem: 9','Site: 9','Publicado: 9','Sumario: 9','Titulo: 9','Url: 9'),(11,'','Imagem: 10','Site: 10','Publicado: 10','Sumario: 10','Titulo: 10','Url: 10'),(12,'','Imagem: 11','Site: 11','Publicado: 11','Sumario: 11','Titulo: 11','Url: 11'),(13,'','Imagem: 12','Site: 12','Publicado: 12','Sumario: 12','Titulo: 12','Url: 12'),(14,'','Imagem: 13','Site: 13','Publicado: 13','Sumario: 13','Titulo: 13','Url: 13'),(15,'','Imagem: 14','Site: 14','Publicado: 14','Sumario: 14','Titulo: 14','Url: 14'),(16,'','Imagem: 15','Site: 15','Publicado: 15','Sumario: 15','Titulo: 15','Url: 15'),(17,'','Imagem: 16','Site: 16','Publicado: 16','Sumario: 16','Titulo: 16','Url: 16'),(18,'','Imagem: 17','Site: 17','Publicado: 17','Sumario: 17','Titulo: 17','Url: 17'),(19,'','Imagem: 18','Site: 18','Publicado: 18','Sumario: 18','Titulo: 18','Url: 18'),(20,'','Imagem: 19','Site: 19','Publicado: 19','Sumario: 19','Titulo: 19','Url: 19'),(21,'','Imagem: 20','Site: 20','Publicado: 20','Sumario: 20','Titulo: 20','Url: 20'),(22,'','Imagem: 21','Site: 21','Publicado: 21','Sumario: 21','Titulo: 21','Url: 21'),(23,'','Imagem: 22','Site: 22','Publicado: 22','Sumario: 22','Titulo: 22','Url: 22'),(24,'','Imagem: 23','Site: 23','Publicado: 23','Sumario: 23','Titulo: 23','Url: 23'),(25,'','Imagem: 24','Site: 24','Publicado: 24','Sumario: 24','Titulo: 24','Url: 24'),(26,'','Imagem: 25','Site: 25','Publicado: 25','Sumario: 25','Titulo: 25','Url: 25'),(27,'','Imagem: 26','Site: 26','Publicado: 26','Sumario: 26','Titulo: 26','Url: 26'),(28,'','Imagem: 27','Site: 27','Publicado: 27','Sumario: 27','Titulo: 27','Url: 27'),(29,'','Imagem: 28','Site: 28','Publicado: 28','Sumario: 28','Titulo: 28','Url: 28'),(30,'','Imagem: 29','Site: 29','Publicado: 29','Sumario: 29','Titulo: 29','Url: 29'),(31,'','Imagem: 30','Site: 30','Publicado: 30','Sumario: 30','Titulo: 30','Url: 30'),(32,'','Imagem: 31','Site: 31','Publicado: 31','Sumario: 31','Titulo: 31','Url: 31'),(33,'','Imagem: 32','Site: 32','Publicado: 32','Sumario: 32','Titulo: 32','Url: 32'),(34,'','Imagem: 33','Site: 33','Publicado: 33','Sumario: 33','Titulo: 33','Url: 33'),(35,'','Imagem: 34','Site: 34','Publicado: 34','Sumario: 34','Titulo: 34','Url: 34'),(36,'','Imagem: 35','Site: 35','Publicado: 35','Sumario: 35','Titulo: 35','Url: 35'),(37,'','Imagem: 36','Site: 36','Publicado: 36','Sumario: 36','Titulo: 36','Url: 36'),(38,'','Imagem: 37','Site: 37','Publicado: 37','Sumario: 37','Titulo: 37','Url: 37'),(39,'','Imagem: 38','Site: 38','Publicado: 38','Sumario: 38','Titulo: 38','Url: 38'),(40,'','Imagem: 39','Site: 39','Publicado: 39','Sumario: 39','Titulo: 39','Url: 39'),(41,'','Imagem: 40','Site: 40','Publicado: 40','Sumario: 40','Titulo: 40','Url: 40'),(42,'','Imagem: 41','Site: 41','Publicado: 41','Sumario: 41','Titulo: 41','Url: 41'),(43,'','Imagem: 42','Site: 42','Publicado: 42','Sumario: 42','Titulo: 42','Url: 42'),(44,'','Imagem: 43','Site: 43','Publicado: 43','Sumario: 43','Titulo: 43','Url: 43'),(45,'','Imagem: 44','Site: 44','Publicado: 44','Sumario: 44','Titulo: 44','Url: 44'),(46,'','Imagem: 45','Site: 45','Publicado: 45','Sumario: 45','Titulo: 45','Url: 45'),(47,'','Imagem: 46','Site: 46','Publicado: 46','Sumario: 46','Titulo: 46','Url: 46'),(48,'','Imagem: 47','Site: 47','Publicado: 47','Sumario: 47','Titulo: 47','Url: 47'),(49,'','Imagem: 48','Site: 48','Publicado: 48','Sumario: 48','Titulo: 48','Url: 48'),(50,'','Imagem: 49','Site: 49','Publicado: 49','Sumario: 49','Titulo: 49','Url: 49'),(51,'','Imagem: 50','Site: 50','Publicado: 50','Sumario: 50','Titulo: 50','Url: 50'),(52,'','Imagem: 51','Site: 51','Publicado: 51','Sumario: 51','Titulo: 51','Url: 51'),(53,'','Imagem: 52','Site: 52','Publicado: 52','Sumario: 52','Titulo: 52','Url: 52'),(54,'','Imagem: 53','Site: 53','Publicado: 53','Sumario: 53','Titulo: 53','Url: 53'),(55,'','Imagem: 54','Site: 54','Publicado: 54','Sumario: 54','Titulo: 54','Url: 54'),(56,'','Imagem: 55','Site: 55','Publicado: 55','Sumario: 55','Titulo: 55','Url: 55'),(57,'','Imagem: 56','Site: 56','Publicado: 56','Sumario: 56','Titulo: 56','Url: 56'),(58,'','Imagem: 57','Site: 57','Publicado: 57','Sumario: 57','Titulo: 57','Url: 57'),(59,'','Imagem: 58','Site: 58','Publicado: 58','Sumario: 58','Titulo: 58','Url: 58'),(60,'','Imagem: 59','Site: 59','Publicado: 59','Sumario: 59','Titulo: 59','Url: 59'),(61,'','Imagem: 60','Site: 60','Publicado: 60','Sumario: 60','Titulo: 60','Url: 60'),(62,'','Imagem: 61','Site: 61','Publicado: 61','Sumario: 61','Titulo: 61','Url: 61'),(63,'','Imagem: 62','Site: 62','Publicado: 62','Sumario: 62','Titulo: 62','Url: 62'),(64,'','Imagem: 63','Site: 63','Publicado: 63','Sumario: 63','Titulo: 63','Url: 63'),(65,'','Imagem: 64','Site: 64','Publicado: 64','Sumario: 64','Titulo: 64','Url: 64'),(66,'','Imagem: 65','Site: 65','Publicado: 65','Sumario: 65','Titulo: 65','Url: 65'),(67,'','Imagem: 66','Site: 66','Publicado: 66','Sumario: 66','Titulo: 66','Url: 66'),(68,'','Imagem: 67','Site: 67','Publicado: 67','Sumario: 67','Titulo: 67','Url: 67'),(69,'','Imagem: 68','Site: 68','Publicado: 68','Sumario: 68','Titulo: 68','Url: 68'),(70,'','Imagem: 69','Site: 69','Publicado: 69','Sumario: 69','Titulo: 69','Url: 69'),(71,'','Imagem: 70','Site: 70','Publicado: 70','Sumario: 70','Titulo: 70','Url: 70'),(72,'','Imagem: 71','Site: 71','Publicado: 71','Sumario: 71','Titulo: 71','Url: 71'),(73,'','Imagem: 72','Site: 72','Publicado: 72','Sumario: 72','Titulo: 72','Url: 72'),(74,'','Imagem: 73','Site: 73','Publicado: 73','Sumario: 73','Titulo: 73','Url: 73'),(75,'','Imagem: 74','Site: 74','Publicado: 74','Sumario: 74','Titulo: 74','Url: 74'),(76,'','Imagem: 75','Site: 75','Publicado: 75','Sumario: 75','Titulo: 75','Url: 75'),(77,'','Imagem: 76','Site: 76','Publicado: 76','Sumario: 76','Titulo: 76','Url: 76'),(78,'','Imagem: 77','Site: 77','Publicado: 77','Sumario: 77','Titulo: 77','Url: 77'),(79,'','Imagem: 78','Site: 78','Publicado: 78','Sumario: 78','Titulo: 78','Url: 78'),(80,'','Imagem: 79','Site: 79','Publicado: 79','Sumario: 79','Titulo: 79','Url: 79'),(81,'','Imagem: 80','Site: 80','Publicado: 80','Sumario: 80','Titulo: 80','Url: 80'),(82,'','Imagem: 81','Site: 81','Publicado: 81','Sumario: 81','Titulo: 81','Url: 81'),(83,'','Imagem: 82','Site: 82','Publicado: 82','Sumario: 82','Titulo: 82','Url: 82'),(84,'','Imagem: 83','Site: 83','Publicado: 83','Sumario: 83','Titulo: 83','Url: 83'),(85,'','Imagem: 84','Site: 84','Publicado: 84','Sumario: 84','Titulo: 84','Url: 84'),(86,'','Imagem: 85','Site: 85','Publicado: 85','Sumario: 85','Titulo: 85','Url: 85'),(87,'','Imagem: 86','Site: 86','Publicado: 86','Sumario: 86','Titulo: 86','Url: 86'),(88,'','Imagem: 87','Site: 87','Publicado: 87','Sumario: 87','Titulo: 87','Url: 87'),(89,'','Imagem: 88','Site: 88','Publicado: 88','Sumario: 88','Titulo: 88','Url: 88'),(90,'','Imagem: 89','Site: 89','Publicado: 89','Sumario: 89','Titulo: 89','Url: 89'),(91,'','Imagem: 90','Site: 90','Publicado: 90','Sumario: 90','Titulo: 90','Url: 90'),(92,'','Imagem: 91','Site: 91','Publicado: 91','Sumario: 91','Titulo: 91','Url: 91'),(93,'','Imagem: 92','Site: 92','Publicado: 92','Sumario: 92','Titulo: 92','Url: 92'),(94,'','Imagem: 93','Site: 93','Publicado: 93','Sumario: 93','Titulo: 93','Url: 93'),(95,'','Imagem: 94','Site: 94','Publicado: 94','Sumario: 94','Titulo: 94','Url: 94'),(96,'','Imagem: 95','Site: 95','Publicado: 95','Sumario: 95','Titulo: 95','Url: 95');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2wcvo61kw2vkguws07sbmaq68` (`article_id`),
  CONSTRAINT `FK2wcvo61kw2vkguws07sbmaq68` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES ('Id: 0','ProviderEvent: 0',1),('Id: 1','ProviderEvent: 1',2),('Id: 10','ProviderEvent: 10',11),('Id: 11','ProviderEvent: 11',12),('Id: 12','ProviderEvent: 12',13),('Id: 13','ProviderEvent: 13',14),('Id: 14','ProviderEvent: 14',15),('Id: 15','ProviderEvent: 15',16),('Id: 16','ProviderEvent: 16',17),('Id: 17','ProviderEvent: 17',18),('Id: 18','ProviderEvent: 18',19),('Id: 19','ProviderEvent: 19',20),('Id: 2','ProviderEvent: 2',3),('Id: 20','ProviderEvent: 20',21),('Id: 21','ProviderEvent: 21',22),('Id: 22','ProviderEvent: 22',23),('Id: 23','ProviderEvent: 23',24),('Id: 24','ProviderEvent: 24',25),('Id: 25','ProviderEvent: 25',26),('Id: 26','ProviderEvent: 26',27),('Id: 27','ProviderEvent: 27',28),('Id: 28','ProviderEvent: 28',29),('Id: 29','ProviderEvent: 29',30),('Id: 3','ProviderEvent: 3',4),('Id: 30','ProviderEvent: 30',31),('Id: 31','ProviderEvent: 31',32),('Id: 32','ProviderEvent: 32',33),('Id: 33','ProviderEvent: 33',34),('Id: 34','ProviderEvent: 34',35),('Id: 35','ProviderEvent: 35',36),('Id: 36','ProviderEvent: 36',37),('Id: 37','ProviderEvent: 37',38),('Id: 38','ProviderEvent: 38',39),('Id: 39','ProviderEvent: 39',40),('Id: 4','ProviderEvent: 4',5),('Id: 40','ProviderEvent: 40',41),('Id: 41','ProviderEvent: 41',42),('Id: 42','ProviderEvent: 42',43),('Id: 43','ProviderEvent: 43',44),('Id: 44','ProviderEvent: 44',45),('Id: 45','ProviderEvent: 45',46),('Id: 46','ProviderEvent: 46',47),('Id: 47','ProviderEvent: 47',48),('Id: 48','ProviderEvent: 48',49),('Id: 49','ProviderEvent: 49',50),('Id: 5','ProviderEvent: 5',6),('Id: 50','ProviderEvent: 50',51),('Id: 51','ProviderEvent: 51',52),('Id: 52','ProviderEvent: 52',53),('Id: 53','ProviderEvent: 53',54),('Id: 54','ProviderEvent: 54',55),('Id: 55','ProviderEvent: 55',56),('Id: 56','ProviderEvent: 56',57),('Id: 57','ProviderEvent: 57',58),('Id: 58','ProviderEvent: 58',59),('Id: 59','ProviderEvent: 59',60),('Id: 6','ProviderEvent: 6',7),('Id: 60','ProviderEvent: 60',61),('Id: 61','ProviderEvent: 61',62),('Id: 62','ProviderEvent: 62',63),('Id: 63','ProviderEvent: 63',64),('Id: 64','ProviderEvent: 64',65),('Id: 65','ProviderEvent: 65',66),('Id: 66','ProviderEvent: 66',67),('Id: 67','ProviderEvent: 67',68),('Id: 68','ProviderEvent: 68',69),('Id: 69','ProviderEvent: 69',70),('Id: 7','ProviderEvent: 7',8),('Id: 70','ProviderEvent: 70',71),('Id: 71','ProviderEvent: 71',72),('Id: 72','ProviderEvent: 72',73),('Id: 73','ProviderEvent: 73',74),('Id: 74','ProviderEvent: 74',75),('Id: 75','ProviderEvent: 75',76),('Id: 76','ProviderEvent: 76',77),('Id: 77','ProviderEvent: 77',78),('Id: 78','ProviderEvent: 78',79),('Id: 79','ProviderEvent: 79',80),('Id: 8','ProviderEvent: 8',9),('Id: 80','ProviderEvent: 80',81),('Id: 81','ProviderEvent: 81',82),('Id: 82','ProviderEvent: 82',83),('Id: 83','ProviderEvent: 83',84),('Id: 84','ProviderEvent: 84',85),('Id: 85','ProviderEvent: 85',86),('Id: 86','ProviderEvent: 86',87),('Id: 87','ProviderEvent: 87',88),('Id: 88','ProviderEvent: 88',89),('Id: 89','ProviderEvent: 89',90),('Id: 9','ProviderEvent: 9',10),('Id: 90','ProviderEvent: 90',91),('Id: 91','ProviderEvent: 91',92),('Id: 92','ProviderEvent: 92',93),('Id: 93','ProviderEvent: 93',94),('Id: 94','ProviderEvent: 94',95),('Id: 95','ProviderEvent: 95',96);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `launcher`
--

DROP TABLE IF EXISTS `launcher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `launcher` (
  `id` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkypelswqqyl2vuglkr9ur870s` (`article_id`),
  CONSTRAINT `FKkypelswqqyl2vuglkr9ur870s` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `launcher`
--

LOCK TABLES `launcher` WRITE;
/*!40000 ALTER TABLE `launcher` DISABLE KEYS */;
INSERT INTO `launcher` VALUES ('Id: 0','ProviderLauncher: 0',1),('Id: 1','ProviderLauncher: 1',2),('Id: 10','ProviderLauncher: 10',11),('Id: 11','ProviderLauncher: 11',12),('Id: 12','ProviderLauncher: 12',13),('Id: 13','ProviderLauncher: 13',14),('Id: 14','ProviderLauncher: 14',15),('Id: 15','ProviderLauncher: 15',16),('Id: 16','ProviderLauncher: 16',17),('Id: 17','ProviderLauncher: 17',18),('Id: 18','ProviderLauncher: 18',19),('Id: 19','ProviderLauncher: 19',20),('Id: 2','ProviderLauncher: 2',3),('Id: 20','ProviderLauncher: 20',21),('Id: 21','ProviderLauncher: 21',22),('Id: 22','ProviderLauncher: 22',23),('Id: 23','ProviderLauncher: 23',24),('Id: 24','ProviderLauncher: 24',25),('Id: 25','ProviderLauncher: 25',26),('Id: 26','ProviderLauncher: 26',27),('Id: 27','ProviderLauncher: 27',28),('Id: 28','ProviderLauncher: 28',29),('Id: 29','ProviderLauncher: 29',30),('Id: 3','ProviderLauncher: 3',4),('Id: 30','ProviderLauncher: 30',31),('Id: 31','ProviderLauncher: 31',32),('Id: 32','ProviderLauncher: 32',33),('Id: 33','ProviderLauncher: 33',34),('Id: 34','ProviderLauncher: 34',35),('Id: 35','ProviderLauncher: 35',36),('Id: 36','ProviderLauncher: 36',37),('Id: 37','ProviderLauncher: 37',38),('Id: 38','ProviderLauncher: 38',39),('Id: 39','ProviderLauncher: 39',40),('Id: 4','ProviderLauncher: 4',5),('Id: 40','ProviderLauncher: 40',41),('Id: 41','ProviderLauncher: 41',42),('Id: 42','ProviderLauncher: 42',43),('Id: 43','ProviderLauncher: 43',44),('Id: 44','ProviderLauncher: 44',45),('Id: 45','ProviderLauncher: 45',46),('Id: 46','ProviderLauncher: 46',47),('Id: 47','ProviderLauncher: 47',48),('Id: 48','ProviderLauncher: 48',49),('Id: 49','ProviderLauncher: 49',50),('Id: 5','ProviderLauncher: 5',6),('Id: 50','ProviderLauncher: 50',51),('Id: 51','ProviderLauncher: 51',52),('Id: 52','ProviderLauncher: 52',53),('Id: 53','ProviderLauncher: 53',54),('Id: 54','ProviderLauncher: 54',55),('Id: 55','ProviderLauncher: 55',56),('Id: 56','ProviderLauncher: 56',57),('Id: 57','ProviderLauncher: 57',58),('Id: 58','ProviderLauncher: 58',59),('Id: 59','ProviderLauncher: 59',60),('Id: 6','ProviderLauncher: 6',7),('Id: 60','ProviderLauncher: 60',61),('Id: 61','ProviderLauncher: 61',62),('Id: 62','ProviderLauncher: 62',63),('Id: 63','ProviderLauncher: 63',64),('Id: 64','ProviderLauncher: 64',65),('Id: 65','ProviderLauncher: 65',66),('Id: 66','ProviderLauncher: 66',67),('Id: 67','ProviderLauncher: 67',68),('Id: 68','ProviderLauncher: 68',69),('Id: 69','ProviderLauncher: 69',70),('Id: 7','ProviderLauncher: 7',8),('Id: 70','ProviderLauncher: 70',71),('Id: 71','ProviderLauncher: 71',72),('Id: 72','ProviderLauncher: 72',73),('Id: 73','ProviderLauncher: 73',74),('Id: 74','ProviderLauncher: 74',75),('Id: 75','ProviderLauncher: 75',76),('Id: 76','ProviderLauncher: 76',77),('Id: 77','ProviderLauncher: 77',78),('Id: 78','ProviderLauncher: 78',79),('Id: 79','ProviderLauncher: 79',80),('Id: 8','ProviderLauncher: 8',9),('Id: 80','ProviderLauncher: 80',81),('Id: 81','ProviderLauncher: 81',82),('Id: 82','ProviderLauncher: 82',83),('Id: 83','ProviderLauncher: 83',84),('Id: 84','ProviderLauncher: 84',85),('Id: 85','ProviderLauncher: 85',86),('Id: 86','ProviderLauncher: 86',87),('Id: 87','ProviderLauncher: 87',88),('Id: 88','ProviderLauncher: 88',89),('Id: 89','ProviderLauncher: 89',90),('Id: 9','ProviderLauncher: 9',10),('Id: 90','ProviderLauncher: 90',91),('Id: 91','ProviderLauncher: 91',92),('Id: 92','ProviderLauncher: 92',93),('Id: 93','ProviderLauncher: 93',94),('Id: 94','ProviderLauncher: 94',95),('Id: 95','ProviderLauncher: 95',96);
/*!40000 ALTER TABLE `launcher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-30 11:23:20
