-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: medallahonor
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.25-MariaDB

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
-- Table structure for table `branchoffice`
--

DROP TABLE IF EXISTS `branchoffice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branchoffice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distributor_id` int(10) unsigned NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `specialization_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `branchoffice_distributor_id_foreign` (`distributor_id`),
  KEY `branchoffice_city_id_foreign` (`city_id`),
  KEY `branchoffice_specialization_id_foreign` (`specialization_id`),
  CONSTRAINT `branchoffice_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `branchoffice_distributor_id_foreign` FOREIGN KEY (`distributor_id`) REFERENCES `distributor` (`id`),
  CONSTRAINT `branchoffice_specialization_id_foreign` FOREIGN KEY (`specialization_id`) REFERENCES `specialization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchoffice`
--

LOCK TABLES `branchoffice` WRITE;
/*!40000 ALTER TABLE `branchoffice` DISABLE KEYS */;
INSERT INTO `branchoffice` VALUES (1,'DIST. COM. ABRAHAM DELGADO CIA SCS',2,18,1),(2,'ACTIVENTAS',3,10,1),(3,'DISTRIBUCIONES ALDANA Y CIA S EN C',4,16,1),(4,'ALTIPAL APARTADO LTDA.',5,1,3),(5,'ALTIPAL BOGOTA LTDA',5,3,3),(6,'ALTIPAL BOYACA LTDA',5,10,3),(7,'ALTIPAL IBAGUE LTDA.',5,12,2),(8,'ALTIPAL MEDELLIN LTDA.',5,14,3),(9,'ALTIPAL PEREIRA LTDA',5,9,3),(10,'ALTIPAL VILLAVICENCIO LTDA',5,28,3),(11,'ALTIPAL YOPAL',5,29,3),(12,'COMERCIALIZADORA CAMDUN LTDA',6,8,3),(13,'TORRES GRANADA CARLOS ALBERTO',7,4,1),(14,'CENECA DISTRIBUCIONES E U',8,24,1),(15,'DISTRICOMER BUCARAMANGA CUCUTA',9,8,2),(16,'DISTRICOMER BUCARAMANGA GIRON',9,11,3),(17,'DISTRIJASS S.A',10,17,1),(18,'DISTRITIENDAS DEL EJE CAFETERO',11,19,1),(19,'SIERRA SOLER EDGAR ALFONSO',12,20,3),(20,'EMPRENDER LTDA',13,19,1),(21,'GLOBOVENTAS S. A.',14,30,3),(22,'DISTRIBUCIONES GRANABASTOS LTDA',15,11,2),(23,'DIST. TROPICAL DE BOLIVAR S.A.',16,6,2),(24,'DISTRIBUIDORA DISTRIABASTOS-B/QUIL',16,2,2),(25,'DISTRIBUIDORA TROPICAL DE SUCRE S.A',16,23,2),(26,'DISTRIMARCAS S.A',16,13,1),(27,'PROVECOL ANTIOQUIA S.A.',16,13,2),(28,'GRUPO LITORAL S.A.',17,21,3),(29,'DISTRIBUIDORA HB EU',18,3,1),(30,'SURTIEXPRESS CAUCASIA',19,7,2),(31,'LA NIEVE E.U',20,28,2),(32,'GIRALDO FRANCO LUIS AMADOR',21,15,1),(33,'SIERRA MACIAS CRISTIAN ALBERTO',22,20,1),(34,'PROMOVENTAS LTDA.',23,13,3),(35,'SIERRA PINEDA Y CIA S. EN C.',24,12,3),(36,'INVERSIONES RUQUIM SANTA MARTA',25,22,2),(37,'INVERSIONES RUQUIM SOLEDAD',25,25,1),(38,'INVERSIONES RUQUIM TURBACO',25,26,1),(39,'INVERSIONES RUQUIM VALLEDUPAR',25,27,2),(40,'DISTRIBUIDORA SUPER 80 S.A.',26,5,2),(41,'SUPERMARCAS BUCARAMANGA GIRON',27,11,1),(42,'VENTAS Y MARCAS LTDA',28,3,3),(43,'ZULUAGA & SOTO CIA LTDA',29,3,2);
/*!40000 ALTER TABLE `branchoffice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Resultados'),(2,'Ejecución'),(3,'Información');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Apartado'),(2,'Barranquilla'),(3,'Bogotá'),(4,'Caicedonia'),(5,'Cali'),(6,'Cartagena'),(7,'Caucasia'),(8,'Cúcuta'),(9,'Dosquebradas'),(10,'Duitama'),(11,'Giron'),(12,'Ibagué'),(13,'Itagui'),(14,'Medellín'),(15,'Monteria'),(16,'Neiva'),(17,'Palmira'),(18,'Pasto'),(19,'Pereira'),(20,'Pitalito'),(21,'San Andrés Isla'),(22,'Santa Marta'),(23,'Sincelejo'),(24,'Soacha'),(25,'Soledad'),(26,'Turbaco'),(27,'Valledupar'),(28,'Villavicencia'),(29,'Yopal'),(30,'Yumbo');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distrib_specialization`
--

DROP TABLE IF EXISTS `distrib_specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distrib_specialization` (
  `distrib_id` int(10) unsigned NOT NULL,
  `specialization_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`distrib_id`,`specialization_id`),
  KEY `distrib_specialization_specialization_id_foreign` (`specialization_id`),
  CONSTRAINT `distrib_specialization_distrib_id_foreign` FOREIGN KEY (`distrib_id`) REFERENCES `distributor` (`id`),
  CONSTRAINT `distrib_specialization_specialization_id_foreign` FOREIGN KEY (`specialization_id`) REFERENCES `specialization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrib_specialization`
--

LOCK TABLES `distrib_specialization` WRITE;
/*!40000 ALTER TABLE `distrib_specialization` DISABLE KEYS */;
/*!40000 ALTER TABLE `distrib_specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor`
--

DROP TABLE IF EXISTS `distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distributor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_offices` int(11) NOT NULL,
  `total_score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `distributor_username_unique` (`username`),
  UNIQUE KEY `distributor_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor`
--

LOCK TABLES `distributor` WRITE;
/*!40000 ALTER TABLE `distributor` DISABLE KEYS */;
INSERT INTO `distributor` VALUES (1,'admin','1234','$2y$10$QKObdLueTjAw4Wh0YknNmOd0IzzeVtgWSpMeP5WZa6BDe3PfuIfG.','Pr0NDPoNvsVoFX0hpDOqH4uWZe6OZdzkHTP0AIz2wl9XtUgdjfXc8qclOOUr','Administrador','diegoreyes@xignacv2.com',1,0),(2,'abrahamdelgado','7123','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Abraham Delgado','no2@email.com',1,0),(3,'activentas','5559','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Activentas Ltda','no3@email.com',1,0),(4,'aldana','4757','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Aldana','no4@email.com',1,0),(5,'altipal','9008','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Altipal','no5@email.com',8,0),(6,'camdun','5313','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Camdun','no6@email.com',1,0),(7,'carlostorres','8122','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Carlos Torres','no7@email.com',1,0),(8,'cceneca','8871','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Cceneca','no8@email.com',1,0),(9,'districomer','1856','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Districomer','no9@email.com',2,0),(10,'distrijass','7778','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Distrijass','no10@email.com',1,0),(11,'distritiendas','6534','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Distritiendas Del Eje Caf.','no11@email.com',1,0),(12,'edgarsierra','9780','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Edgar Sierra Sup.','no12@email.com',1,0),(13,'emprender','9493','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Emprender','no13@email.com',1,0),(14,'globoventas','1850','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Globoventas','no14@email.com',1,0),(15,'granabastos','7539','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Granabastos','no15@email.com',1,0),(16,'grupobetacur','7686','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Grupo Betancur','no16@email.com',5,0),(17,'grupolitoral','4455','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Grupo Litoral','no17@email.com',1,0),(18,'hb','5937','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Hb E.U.','no18@email.com',1,0),(19,'juanguillermoduque','7880','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Juan Guillermo Duque','no19@email.com',1,0),(20,'lanieve','8345','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'La Nieve','no20@email.com',1,0),(21,'luisgiraldo','9870','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Luis Giraldo F.','no21@email.com',1,0),(22,'mariocamacho','3613','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Mario Camacho','no22@email.com',1,0),(23,'promocionesymercadeo','8732','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Promociones y Mercadeo M.','no23@email.com',1,0),(24,'promotoratolima','1892','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Promotora Ccial. Del Tolima','no24@email.com',1,0),(25,'ruquim','6834','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Ruquim','no25@email.com',4,0),(26,'super80','3755','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Super 80','no26@email.com',1,0),(27,'supermarcas','5032','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Supermarcas Bucaramanga','no27@email.com',1,0),(28,'ventasymarcas','6577','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Ventas y Marcas','no28@email.com',1,0),(29,'zuluagaysoto','1359','$2y$10$vPMBW2BNNu/wsUV2dqZ3QeIVeouFKfYOU49wSTGdxdDbGh3MRvKv2',NULL,'Zuluaga & Soto','no29@email.com',1,0);
/*!40000 ALTER TABLE `distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measuring`
--

DROP TABLE IF EXISTS `measuring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measuring` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `measuring_category_id_foreign` (`category_id`),
  CONSTRAINT `measuring_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measuring`
--

LOCK TABLES `measuring` WRITE;
/*!40000 ALTER TABLE `measuring` DISABLE KEYS */;
INSERT INTO `measuring` VALUES (1,'Efectividad',1),(2,'Surtido recomendado',1),(3,'Evacuación',1),(4,'Codificación',2),(5,'Planes especiales',2),(6,'ITT',3);
/*!40000 ALTER TABLE `measuring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2018_05_03_170947_create_category_table',1),(2,'2018_05_03_171420_create_measuring_table',1),(3,'2018_05_03_172109_create_specialization_table',1),(4,'2018_05_03_172718_create_city_table',1),(5,'2018_05_03_191530_create_distributor_table',1),(6,'2018_05_03_193922_create_branch_office_table',1),(7,'2018_05_03_200057_create_score_table',1),(8,'2018_05_03_202233_create_score_historical_table',1),(9,'2018_05_03_203748_create_distributor_specialization_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `distributor_id` int(10) unsigned NOT NULL,
  `branchoffice_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `measuring_id` int(10) unsigned NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `score_distributor_id_foreign` (`distributor_id`),
  KEY `score_branchoffice_id_foreign` (`branchoffice_id`),
  KEY `score_category_id_foreign` (`category_id`),
  KEY `score_measuring_id_foreign` (`measuring_id`),
  CONSTRAINT `score_branchoffice_id_foreign` FOREIGN KEY (`branchoffice_id`) REFERENCES `branchoffice` (`id`),
  CONSTRAINT `score_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `score_distributor_id_foreign` FOREIGN KEY (`distributor_id`) REFERENCES `distributor` (`id`),
  CONSTRAINT `score_measuring_id_foreign` FOREIGN KEY (`measuring_id`) REFERENCES `measuring` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,2,1,1,1,1281,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(2,2,1,1,2,1534,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(3,2,1,1,3,1706,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(4,2,1,2,4,1272,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(5,2,1,2,5,1104,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(6,2,1,3,6,709,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(7,3,2,1,1,1908,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(8,3,2,1,2,286,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(9,3,2,1,3,341,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(10,3,2,2,4,241,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(11,3,2,2,5,1968,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(12,3,2,3,6,174,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(13,4,3,1,1,458,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(14,4,3,1,2,1402,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(15,4,3,1,3,1414,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(16,4,3,2,4,1794,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(17,4,3,2,5,1745,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(18,4,3,3,6,1613,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(19,5,4,1,1,204,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(20,5,4,1,2,610,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(21,5,4,1,3,1777,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(22,5,4,2,4,717,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(23,5,4,2,5,281,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(24,5,4,3,6,931,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(25,5,5,1,1,1875,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(26,5,5,1,2,1679,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(27,5,5,1,3,1944,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(28,5,5,2,4,615,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(29,5,5,2,5,1829,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(30,5,5,3,6,1673,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(31,5,6,1,1,258,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(32,5,6,1,2,1286,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(33,5,6,1,3,415,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(34,5,6,2,4,490,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(35,5,6,2,5,1120,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(36,5,6,3,6,1070,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(37,5,7,1,1,292,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(38,5,7,1,2,1424,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(39,5,7,1,3,100,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(40,5,7,2,4,367,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(41,5,7,2,5,162,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(42,5,7,3,6,775,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(43,5,8,1,1,85,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(44,5,8,1,2,1619,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(45,5,8,1,3,1370,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(46,5,8,2,4,787,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(47,5,8,2,5,1926,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(48,5,8,3,6,426,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(49,5,9,1,1,272,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(50,5,9,1,2,1437,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(51,5,9,1,3,1024,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(52,5,9,2,4,554,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(53,5,9,2,5,231,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(54,5,9,3,6,1639,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(55,5,10,1,1,1855,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(56,5,10,1,2,355,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(57,5,10,1,3,360,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(58,5,10,2,4,1649,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(59,5,10,2,5,1144,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(60,5,10,3,6,240,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(61,5,11,1,1,1136,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(62,5,11,1,2,788,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(63,5,11,1,3,1182,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(64,5,11,2,4,1872,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(65,5,11,2,5,565,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(66,5,11,3,6,580,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(67,6,12,1,1,759,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(68,6,12,1,2,1969,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(69,6,12,1,3,1745,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(70,6,12,2,4,1694,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(71,6,12,2,5,672,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(72,6,12,3,6,1634,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(73,7,13,1,1,912,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(74,7,13,1,2,311,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(75,7,13,1,3,278,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(76,7,13,2,4,1695,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(77,7,13,2,5,364,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(78,7,13,3,6,1659,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(79,8,14,1,1,999,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(80,8,14,1,2,1395,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(81,8,14,1,3,441,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(82,8,14,2,4,108,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(83,8,14,2,5,809,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(84,8,14,3,6,758,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(85,9,15,1,1,782,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(86,9,15,1,2,1654,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(87,9,15,1,3,1717,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(88,9,15,2,4,1699,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(89,9,15,2,5,1248,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(90,9,15,3,6,568,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(91,9,16,1,1,1246,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(92,9,16,1,2,1960,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(93,9,16,1,3,1630,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(94,9,16,2,4,972,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(95,9,16,2,5,1225,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(96,9,16,3,6,1386,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(97,10,17,1,1,588,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(98,10,17,1,2,536,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(99,10,17,1,3,511,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(100,10,17,2,4,1623,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(101,10,17,2,5,1804,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(102,10,17,3,6,411,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(103,11,18,1,1,1871,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(104,11,18,1,2,1888,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(105,11,18,1,3,1456,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(106,11,18,2,4,1848,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(107,11,18,2,5,1609,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(108,11,18,3,6,1264,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(109,12,19,1,1,1208,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(110,12,19,1,2,1435,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(111,12,19,1,3,1137,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(112,12,19,2,4,221,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(113,12,19,2,5,791,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(114,12,19,3,6,1127,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(115,13,20,1,1,1497,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(116,13,20,1,2,612,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(117,13,20,1,3,724,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(118,13,20,2,4,1513,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(119,13,20,2,5,1245,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(120,13,20,3,6,368,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(121,14,21,1,1,1109,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(122,14,21,1,2,1572,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(123,14,21,1,3,338,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(124,14,21,2,4,1761,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(125,14,21,2,5,148,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(126,14,21,3,6,1480,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(127,15,22,1,1,95,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(128,15,22,1,2,190,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(129,15,22,1,3,223,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(130,15,22,2,4,904,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(131,15,22,2,5,787,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(132,15,22,3,6,1444,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(133,16,23,1,1,1998,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(134,16,23,1,2,1825,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(135,16,23,1,3,1010,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(136,16,23,2,4,1313,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(137,16,23,2,5,686,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(138,16,23,3,6,129,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(139,16,24,1,1,1602,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(140,16,24,1,2,1558,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(141,16,24,1,3,810,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(142,16,24,2,4,860,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(143,16,24,2,5,498,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(144,16,24,3,6,181,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(145,16,25,1,1,1793,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(146,16,25,1,2,944,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(147,16,25,1,3,1608,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(148,16,25,2,4,1428,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(149,16,25,2,5,883,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(150,16,25,3,6,1479,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(151,16,26,1,1,674,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(152,16,26,1,2,1166,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(153,16,26,1,3,1302,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(154,16,26,2,4,1221,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(155,16,26,2,5,101,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(156,16,26,3,6,1670,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(157,16,27,1,1,385,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(158,16,27,1,2,1771,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(159,16,27,1,3,713,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(160,16,27,2,4,863,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(161,16,27,2,5,1723,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(162,16,27,3,6,756,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(163,17,28,1,1,1849,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(164,17,28,1,2,939,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(165,17,28,1,3,444,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(166,17,28,2,4,656,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(167,17,28,2,5,766,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(168,17,28,3,6,1225,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(169,18,29,1,1,1903,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(170,18,29,1,2,446,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(171,18,29,1,3,1871,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(172,18,29,2,4,678,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(173,18,29,2,5,789,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(174,18,29,3,6,434,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(175,19,30,1,1,117,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(176,19,30,1,2,589,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(177,19,30,1,3,1981,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(178,19,30,2,4,761,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(179,19,30,2,5,423,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(180,19,30,3,6,1895,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(181,20,31,1,1,1698,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(182,20,31,1,2,556,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(183,20,31,1,3,1763,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(184,20,31,2,4,1272,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(185,20,31,2,5,1294,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(186,20,31,3,6,1784,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(187,21,32,1,1,209,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(188,21,32,1,2,972,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(189,21,32,1,3,120,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(190,21,32,2,4,1034,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(191,21,32,2,5,620,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(192,21,32,3,6,1316,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(193,22,33,1,1,680,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(194,22,33,1,2,1700,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(195,22,33,1,3,1072,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(196,22,33,2,4,333,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(197,22,33,2,5,1911,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(198,22,33,3,6,1051,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(199,23,34,1,1,1679,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(200,23,34,1,2,1987,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(201,23,34,1,3,664,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(202,23,34,2,4,756,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(203,23,34,2,5,1976,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(204,23,34,3,6,1041,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(205,24,35,1,1,1976,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(206,24,35,1,2,1045,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(207,24,35,1,3,848,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(208,24,35,2,4,486,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(209,24,35,2,5,709,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(210,24,35,3,6,1974,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(211,25,36,1,1,1632,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(212,25,36,1,2,774,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(213,25,36,1,3,1696,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(214,25,36,2,4,990,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(215,25,36,2,5,291,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(216,25,36,3,6,554,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(217,25,37,1,1,207,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(218,25,37,1,2,1481,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(219,25,37,1,3,863,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(220,25,37,2,4,995,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(221,25,37,2,5,470,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(222,25,37,3,6,875,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(223,25,38,1,1,365,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(224,25,38,1,2,1750,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(225,25,38,1,3,1442,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(226,25,38,2,4,605,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(227,25,38,2,5,923,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(228,25,38,3,6,1469,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(229,25,39,1,1,173,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(230,25,39,1,2,896,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(231,25,39,1,3,1509,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(232,25,39,2,4,575,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(233,25,39,2,5,382,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(234,25,39,3,6,1259,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(235,26,40,1,1,1840,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(236,26,40,1,2,1282,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(237,26,40,1,3,1683,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(238,26,40,2,4,689,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(239,26,40,2,5,1662,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(240,26,40,3,6,1977,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(241,27,41,1,1,1216,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(242,27,41,1,2,371,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(243,27,41,1,3,1830,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(244,27,41,2,4,543,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(245,27,41,2,5,429,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(246,27,41,3,6,229,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(247,28,42,1,1,816,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(248,28,42,1,2,1563,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(249,28,42,1,3,168,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(250,28,42,2,4,1420,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(251,28,42,2,5,1333,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(252,28,42,3,6,1086,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(253,29,43,1,1,1342,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(254,29,43,1,2,1798,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(255,29,43,1,3,481,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(256,29,43,2,4,1256,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(257,29,43,2,5,1246,'2018-05-04 05:00:00','2018-05-04 05:00:00'),(258,29,43,3,6,648,'2018-05-04 05:00:00','2018-05-04 05:00:00');
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scorehistorical`
--

DROP TABLE IF EXISTS `scorehistorical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scorehistorical` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `distributor_id` int(10) unsigned NOT NULL,
  `branchoffice_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `measuring_id` int(10) unsigned NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scorehistorical_distributor_id_foreign` (`distributor_id`),
  KEY `scorehistorical_branchoffice_id_foreign` (`branchoffice_id`),
  KEY `scorehistorical_category_id_foreign` (`category_id`),
  KEY `scorehistorical_measuring_id_foreign` (`measuring_id`),
  CONSTRAINT `scorehistorical_branchoffice_id_foreign` FOREIGN KEY (`branchoffice_id`) REFERENCES `branchoffice` (`id`),
  CONSTRAINT `scorehistorical_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `scorehistorical_distributor_id_foreign` FOREIGN KEY (`distributor_id`) REFERENCES `distributor` (`id`),
  CONSTRAINT `scorehistorical_measuring_id_foreign` FOREIGN KEY (`measuring_id`) REFERENCES `measuring` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scorehistorical`
--

LOCK TABLES `scorehistorical` WRITE;
/*!40000 ALTER TABLE `scorehistorical` DISABLE KEYS */;
/*!40000 ALTER TABLE `scorehistorical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialization` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
INSERT INTO `specialization` VALUES (1,'Tiendas'),(2,'Mayoristas'),(3,'Supermercados');
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-04 16:10:12
