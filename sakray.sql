-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sakray
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addon_account`
--

DROP TABLE IF EXISTS `addon_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_account`
--

LOCK TABLES `addon_account` WRITE;
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT INTO `addon_account` VALUES ('bank_savings','Livret Bleu',0),('caution','Caution',0),('property_black_money','Argent Sale Propriété',0),('society_ambulance','Ambulance',1),('society_banker','Banque',1),('society_cardealer','Concessionnaire',1),('society_mechanic','Mécano',1),('society_police','Police',1),('society_realestateagent','Agent immobilier',1),('society_taxi','Taxi',1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addon_account_data`
--

DROP TABLE IF EXISTS `addon_account_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_account_data`
--

LOCK TABLES `addon_account_data` WRITE;
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
INSERT INTO `addon_account_data` VALUES (1,'society_ambulance',0,NULL),(2,'society_banker',0,NULL),(3,'society_cardealer',0,NULL),(4,'society_mechanic',0,NULL),(5,'society_police',0,NULL),(6,'society_realestateagent',0,NULL),(7,'society_taxi',0,NULL),(8,'bank_savings',0,'steam:110000104db461b'),(9,'caution',0,'steam:110000104db461b'),(10,'property_black_money',0,'steam:110000104db461b'),(11,'bank_savings',0,'steam:11000010a9d887a'),(12,'caution',0,'steam:11000010a9d887a'),(13,'property_black_money',0,'steam:11000010a9d887a'),(14,'bank_savings',0,'steam:11000010946be55'),(15,'caution',0,'steam:11000010946be55'),(16,'property_black_money',0,'steam:11000010946be55'),(17,'caution',0,'steam:11000010b1965a8'),(18,'bank_savings',0,'steam:11000010b1965a8'),(19,'property_black_money',0,'steam:11000010b1965a8');
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addon_inventory`
--

DROP TABLE IF EXISTS `addon_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_inventory`
--

LOCK TABLES `addon_inventory` WRITE;
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT INTO `addon_inventory` VALUES ('property','Propriété',0),('society_ambulance','Ambulance',1),('society_cardealer','Concesionnaire',1),('society_mechanic','Mécano',1),('society_police','Police',1),('society_taxi','Taxi',1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addon_inventory_items`
--

DROP TABLE IF EXISTS `addon_inventory_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_inventory_items`
--

LOCK TABLES `addon_inventory_items` WRITE;
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardealer_vehicles`
--

DROP TABLE IF EXISTS `cardealer_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardealer_vehicles`
--

LOCK TABLES `cardealer_vehicles` WRITE;
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,'steam:110000104db461b','Admin','Sakray','1992-11-04','m','178'),(2,'steam:11000010a9d887a','StoPz','Vooza','1993-01-08','m','178'),(3,'steam:11000010946be55','Hoolishit','Hoo','1992-11-04','m','183'),(4,'steam:11000010b1965a8','Jz','King','1992-09-27','m','180');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datastore`
--

DROP TABLE IF EXISTS `datastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datastore`
--

LOCK TABLES `datastore` WRITE;
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT INTO `datastore` VALUES ('property','Propriété',0),('society_ambulance','Ambulance',1),('society_police','Police',1),('society_taxi','Taxi',1),('user_ears','Ears',0),('user_glasses','Glasses',0),('user_helmet','Helmet',0),('user_mask','Mask',0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datastore_data`
--

DROP TABLE IF EXISTS `datastore_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_datastore_owner_name` (`owner`,`name`),
  KEY `index_datastore_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datastore_data`
--

LOCK TABLES `datastore_data` WRITE;
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
INSERT INTO `datastore_data` VALUES (1,'society_ambulance',NULL,'{}'),(2,'society_police',NULL,'{}'),(3,'society_taxi',NULL,'{}'),(4,'user_helmet','steam:110000104db461b','{}'),(5,'property','steam:110000104db461b','{}'),(6,'user_ears','steam:110000104db461b','{}'),(7,'user_glasses','steam:110000104db461b','{}'),(8,'user_mask','steam:110000104db461b','{}'),(9,'property','steam:11000010a9d887a','{\"dressing\":[{\"label\":\"1\",\"skin\":{\"makeup_2\":0,\"helmet_2\":0,\"complexion_1\":0,\"chest_3\":0,\"complexion_2\":0,\"decals_2\":0,\"mask_2\":0,\"lipstick_4\":0,\"lipstick_2\":0,\"watches_1\":-1,\"blemishes_2\":0,\"beard_2\":0,\"blush_2\":0,\"bodyb_2\":0,\"chain_2\":0,\"bodyb_1\":0,\"hair_color_2\":0,\"arms_2\":0,\"hair_2\":0,\"age_2\":0,\"mask_1\":0,\"moles_1\":0,\"bracelets_1\":-1,\"torso_1\":0,\"blush_3\":0,\"sun_2\":0,\"shoes_2\":0,\"ears_1\":-1,\"hair_1\":46,\"beard_1\":0,\"hair_color_1\":0,\"watches_2\":0,\"sex\":0,\"shoes_1\":0,\"decals_1\":0,\"pants_1\":0,\"eyebrows_4\":0,\"torso_2\":0,\"makeup_4\":0,\"bags_2\":0,\"glasses_2\":0,\"eyebrows_1\":0,\"moles_2\":0,\"makeup_1\":0,\"face\":0,\"tshirt_1\":4,\"eye_color\":0,\"bproof_2\":0,\"glasses_1\":7,\"blemishes_1\":0,\"helmet_1\":-1,\"ears_2\":0,\"pants_2\":0,\"chest_1\":0,\"bags_1\":0,\"blush_1\":0,\"makeup_3\":0,\"lipstick_1\":0,\"eyebrows_2\":0,\"lipstick_3\":0,\"age_1\":0,\"skin\":0,\"tshirt_2\":0,\"bproof_1\":0,\"bracelets_2\":0,\"chain_1\":0,\"beard_4\":0,\"sun_1\":0,\"chest_2\":0,\"arms\":0,\"eyebrows_3\":0,\"beard_3\":0}}]}'),(10,'user_ears','steam:11000010a9d887a','{}'),(11,'user_glasses','steam:11000010a9d887a','{\"hasGlasses\":true,\"skin\":{\"glasses_1\":7,\"glasses_2\":0}}'),(12,'user_helmet','steam:11000010a9d887a','{}'),(13,'user_mask','steam:11000010a9d887a','{}'),(14,'user_ears','steam:11000010946be55','{}'),(15,'property','steam:11000010946be55','{\"dressing\":[{\"skin\":{\"mask_2\":0,\"beard_1\":0,\"makeup_4\":0,\"moles_1\":0,\"watches_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"complexion_2\":0,\"makeup_1\":0,\"helmet_2\":0,\"chest_2\":0,\"bracelets_1\":-1,\"bodyb_1\":0,\"arms\":0,\"blemishes_2\":0,\"sun_1\":0,\"skin\":0,\"bags_1\":0,\"hair_1\":0,\"glasses_1\":0,\"hair_color_2\":0,\"bags_2\":0,\"sex\":0,\"hair_2\":0,\"beard_3\":0,\"lipstick_1\":0,\"makeup_2\":0,\"blush_2\":0,\"chain_1\":2,\"lipstick_4\":0,\"watches_1\":-1,\"eyebrows_4\":0,\"eyebrows_1\":0,\"eyebrows_2\":0,\"ears_2\":0,\"tshirt_2\":0,\"blush_3\":0,\"lipstick_3\":0,\"pants_1\":0,\"complexion_1\":0,\"beard_4\":0,\"glasses_2\":0,\"bproof_2\":0,\"tshirt_1\":55,\"mask_1\":0,\"blush_1\":0,\"beard_2\":0,\"shoes_2\":3,\"age_2\":0,\"sun_2\":0,\"face\":0,\"ears_1\":-1,\"torso_1\":55,\"bproof_1\":0,\"pants_2\":0,\"bracelets_2\":0,\"eye_color\":0,\"decals_1\":0,\"decals_2\":0,\"helmet_1\":51,\"arms_2\":0,\"bodyb_2\":0,\"chest_3\":0,\"hair_color_1\":0,\"chest_1\":0,\"shoes_1\":12,\"moles_2\":0,\"torso_2\":0,\"age_1\":0,\"blemishes_1\":0,\"chain_2\":0,\"lipstick_2\":0},\"label\":\"cool1\"}]}'),(16,'user_glasses','steam:11000010946be55','{}'),(17,'user_helmet','steam:11000010946be55','{}'),(18,'user_mask','steam:11000010946be55','{}'),(19,'property','steam:11000010b1965a8','{}'),(20,'user_ears','steam:11000010b1965a8','{}'),(21,'user_glasses','steam:11000010b1965a8','{}'),(22,'user_helmet','steam:11000010b1965a8','{}'),(23,'user_mask','steam:11000010b1965a8','{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_types`
--

DROP TABLE IF EXISTS `fine_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_types`
--

LOCK TABLES `fine_types` WRITE;
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` VALUES (1,'Usage abusif du klaxon',30,0),(2,'Franchir une ligne continue',40,0),(3,'Circulation à contresens',250,0),(4,'Demi-tour non autorisé',250,0),(5,'Circulation hors-route',170,0),(6,'Non-respect des distances de sécurité',30,0),(7,'Arrêt dangereux / interdit',150,0),(8,'Stationnement gênant / interdit',70,0),(9,'Non respect  de la priorité à droite',70,0),(10,'Non-respect à un véhicule prioritaire',90,0),(11,'Non-respect d\'un stop',105,0),(12,'Non-respect d\'un feu rouge',130,0),(13,'Dépassement dangereux',100,0),(14,'Véhicule non en état',100,0),(15,'Conduite sans permis',1500,0),(16,'Délit de fuite',800,0),(17,'Excès de vitesse < 5 kmh',90,0),(18,'Excès de vitesse 5-15 kmh',120,0),(19,'Excès de vitesse 15-30 kmh',180,0),(20,'Excès de vitesse > 30 kmh',300,0),(21,'Entrave de la circulation',110,1),(22,'Dégradation de la voie publique',90,1),(23,'Trouble à l\'ordre publique',90,1),(24,'Entrave opération de police',130,1),(25,'Insulte envers / entre civils',75,1),(26,'Outrage à agent de police',110,1),(27,'Menace verbale ou intimidation envers civil',90,1),(28,'Menace verbale ou intimidation envers policier',150,1),(29,'Manifestation illégale',250,1),(30,'Tentative de corruption',1500,1),(31,'Arme blanche sortie en ville',120,2),(32,'Arme léthale sortie en ville',300,2),(33,'Port d\'arme non autorisé (défaut de license)',600,2),(34,'Port d\'arme illégal',700,2),(35,'Pris en flag lockpick',300,2),(36,'Vol de voiture',1800,2),(37,'Vente de drogue',1500,2),(38,'Fabriquation de drogue',1500,2),(39,'Possession de drogue',650,2),(40,'Prise d\'ôtage civil',1500,2),(41,'Prise d\'ôtage agent de l\'état',2000,2),(42,'Braquage particulier',650,2),(43,'Braquage magasin',650,2),(44,'Braquage de banque',1500,2),(45,'Tir sur civil',2000,3),(46,'Tir sur agent de l\'état',2500,3),(47,'Tentative de meurtre sur civil',3000,3),(48,'Tentative de meurtre sur agent de l\'état',5000,3),(49,'Meurtre sur civil',10000,3),(50,'Meurte sur agent de l\'état',30000,3),(51,'Meurtre involontaire',1800,3),(52,'Escroquerie à l\'entreprise',2000,2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('alive_chicken','Poulet vivant',20,0,1),('bandage','Bandage',20,0,1),('blowpipe','Chalumeaux',10,0,1),('bread','Pain',10,0,1),('cannabis','Cannabis',40,0,1),('carokit','Kit carosserie',3,0,1),('carotool','outils carosserie',4,0,1),('clothe','Vêtement',40,0,1),('copper','Cuivre',56,0,1),('cutted_wood','Bois coupé',20,0,1),('diamond','Diamant',50,0,1),('essence','Essence',24,0,1),('fabric','Tissu',80,0,1),('fish','Poisson',100,0,1),('fixkit','Kit réparation',5,0,1),('fixtool','outils réparation',6,0,1),('gazbottle','bouteille de gaz',11,0,1),('gold','Or',21,0,1),('iron','Fer',42,0,1),('jewels','Jewels',-1,0,1),('leather','Leather',-1,0,1),('marijuana','Marijuana',14,0,1),('meat','Meat',-1,0,1),('medikit','Medikit',5,0,1),('packaged_chicken','Poulet en barquette',100,0,1),('packaged_plank','Paquet de planches',100,0,1),('petrol','Pétrole',24,0,1),('petrol_raffin','Pétrole Raffiné',24,0,1),('slaughtered_chicken','Poulet abattu',20,0,1),('stone','Pierre',7,0,1),('washed_stone','Pierre Lavée',7,0,1),('water','Eau',5,0,1),('wood','Bois',20,0,1),('wool','Laine',40,0,1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_grades`
--

DROP TABLE IF EXISTS `job_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_grades`
--

LOCK TABLES `job_grades` WRITE;
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` VALUES (1,'unemployed',0,'unemployed','Unemployed',200,'{}','{}'),(2,'police',0,'recruit','Recrue',20,'{}','{}'),(3,'police',1,'officer','Officier',40,'{}','{}'),(4,'police',2,'sergeant','Sergent',60,'{}','{}'),(5,'police',3,'lieutenant','Lieutenant',85,'{}','{}'),(6,'police',4,'boss','Commandant',100,'{}','{}'),(7,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(8,'cardealer',1,'novice','Novice',25,'{}','{}'),(9,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(10,'cardealer',3,'boss','Patron',0,'{}','{}'),(11,'lumberjack',0,'employee','Intérimaire',0,'{}','{}'),(12,'fisherman',0,'employee','Intérimaire',0,'{}','{}'),(13,'fueler',0,'employee','Intérimaire',0,'{}','{}'),(14,'reporter',0,'employee','Intérimaire',0,'{}','{}'),(15,'tailor',0,'employee','Intérimaire',0,'{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}','{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),(16,'miner',0,'employee','Intérimaire',0,'{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}','{}'),(17,'slaughterer',0,'employee','Intérimaire',0,'{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}','{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),(18,'mechanic',0,'recrue','Recrue',12,'{}','{}'),(19,'mechanic',1,'novice','Novice',24,'{}','{}'),(20,'mechanic',2,'experimente','Experimente',36,'{}','{}'),(21,'mechanic',3,'chief','Chef d\'équipe',48,'{}','{}'),(22,'mechanic',4,'boss','Patron',0,'{}','{}'),(23,'taxi',0,'recrue','Recrue',12,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(24,'taxi',1,'novice','Novice',24,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(25,'taxi',2,'experimente','Experimente',36,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(26,'taxi',3,'uber','Uber',48,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(27,'taxi',4,'boss','Patron',0,'{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}','{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),(28,'banker',0,'advisor','Conseiller',10,'{}','{}'),(29,'banker',1,'banker','Banquier',20,'{}','{}'),(30,'banker',2,'business_banker','Banquier d\'affaire',30,'{}','{}'),(31,'banker',3,'trader','Trader',40,'{}','{}'),(32,'banker',4,'boss','Patron',0,'{}','{}'),(33,'realestateagent',0,'location','Location',10,'{}','{}'),(34,'realestateagent',1,'vendeur','Vendeur',25,'{}','{}'),(35,'realestateagent',2,'gestion','Gestion',40,'{}','{}'),(36,'realestateagent',3,'boss','Patron',0,'{}','{}'),(37,'ambulance',0,'ambulance','Ambulancier',20,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(38,'ambulance',1,'doctor','Medecin',40,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(39,'ambulance',2,'chief_doctor','Medecin-chef',60,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),(40,'ambulance',3,'boss','Chirurgien',80,'{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}','{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES ('ambulance','Ambulance',0),('banker','Banquier',0),('cardealer','Concessionnaire',0),('fisherman','Pêcheur',0),('fueler','Raffineur',0),('lumberjack','Bûcheron',0),('mechanic','Mécano',0),('miner','Mineur',0),('police','LSPD',0),('realestateagent','Agent immobilier',0),('reporter','Journaliste',0),('slaughterer','Abatteur',0),('tailor','Couturier',0),('taxi','Taxi',0),('unemployed','Unemployed',0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenses`
--

LOCK TABLES `licenses` WRITE;
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` VALUES ('boat','Boat License'),('dmv','Code de la route'),('drive','Permis de conduire'),('drive_bike','Permis moto'),('drive_truck','Permis camion'),('weapon','Permis de port d\'arme'),('weed_processing','Weed Processing License');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owned_properties`
--

DROP TABLE IF EXISTS `owned_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owned_properties`
--

LOCK TABLES `owned_properties` WRITE;
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owned_vehicles`
--

DROP TABLE IF EXISTS `owned_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owned_vehicles`
--

LOCK TABLES `owned_vehicles` WRITE;
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
INSERT INTO `owned_vehicles` VALUES ('steam:11000010a9d887a','EHS 718','{\"color1\":4,\"modSeats\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"modSpoilers\":3,\"modStruts\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modRightFender\":-1,\"neonEnabled\":[false,false,false,false],\"modWindows\":-1,\"modHydrolic\":-1,\"modTrunk\":-1,\"modSideSkirt\":2,\"modLivery\":-1,\"modSuspension\":-1,\"modBackWheels\":-1,\"modSmokeEnabled\":false,\"modRearBumper\":-1,\"modEngine\":-1,\"model\":-1372848492,\"modHood\":-1,\"modTransmission\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"color2\":4,\"modExhaust\":2,\"modAPlate\":-1,\"modGrille\":-1,\"modAirFilter\":-1,\"wheels\":0,\"plate\":\"EHS 718\",\"modFrame\":0,\"health\":1000,\"wheelColor\":156,\"plateIndex\":0,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"modShifterLeavers\":-1,\"modTank\":-1,\"modDashboard\":-1,\"modOrnaments\":-1,\"modFrontBumper\":2,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"extras\":[],\"modTrimA\":-1,\"modDoorSpeaker\":-1,\"modArmor\":-1,\"pearlescentColor\":111,\"modAerials\":-1,\"modTrimB\":-1,\"modTurbo\":false,\"dirtLevel\":7.4355030059814,\"windowTint\":-1,\"modXenon\":false,\"modArchCover\":-1,\"modDial\":-1}','car',NULL,0),('steam:11000010a9d887a','HUB 925','{\"modEngine\":3,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"windowTint\":2,\"health\":1000,\"modAPlate\":-1,\"dirtLevel\":5.376657485962,\"modTrimB\":-1,\"wheelColor\":156,\"modFender\":-1,\"modOrnaments\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modHorns\":-1,\"modExhaust\":-1,\"modFrontBumper\":-1,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"modBrakes\":2,\"modXenon\":false,\"modHydrolic\":-1,\"wheels\":0,\"modShifterLeavers\":-1,\"color2\":6,\"plateIndex\":3,\"modDial\":-1,\"modTransmission\":2,\"modRightFender\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[0,0,0],\"modSteeringWheel\":-1,\"modTrimA\":-1,\"modHood\":-1,\"modTurbo\":1,\"modEngineBlock\":-1,\"modSmokeEnabled\":1,\"modLivery\":-1,\"color1\":6,\"modTrunk\":-1,\"neonColor\":[255,0,255],\"modBackWheels\":-1,\"modWindows\":-1,\"modFrontWheels\":17,\"modSuspension\":3,\"plate\":\"HUB 925\",\"modStruts\":-1,\"modFrame\":-1,\"modGrille\":-1,\"modRoof\":-1,\"extras\":[],\"modAerials\":-1,\"model\":-1372848492,\"modSpoilers\":-1,\"modArmor\":0,\"pearlescentColor\":111,\"modDashboard\":-1,\"modSeats\":-1,\"modVanityPlate\":-1}','car',NULL,0),('steam:11000010a9d887a','QZI 787','{\"modAPlate\":-1,\"modBrakes\":-1,\"modExhaust\":-1,\"modXenon\":false,\"modGrille\":-1,\"modSeats\":-1,\"color1\":1,\"modTank\":-1,\"modHorns\":-1,\"modDashboard\":-1,\"modStruts\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modHydrolic\":-1,\"plate\":\"QZI 787\",\"windowTint\":-1,\"modPlateHolder\":-1,\"color2\":38,\"modAerials\":-1,\"neonColor\":[255,0,255],\"modArchCover\":-1,\"health\":1000,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modFrontBumper\":-1,\"modSmokeEnabled\":false,\"extras\":[],\"modFrontWheels\":-1,\"modTrimB\":-1,\"modTurbo\":false,\"modBackWheels\":-1,\"wheels\":1,\"modSideSkirt\":-1,\"modLivery\":-1,\"modAirFilter\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"modFender\":-1,\"modTransmission\":-1,\"modDial\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"model\":-1071380347,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modDoorSpeaker\":-1,\"modSuspension\":-1,\"modEngine\":-1,\"modArmor\":-1,\"wheelColor\":156,\"dirtLevel\":6.0000381469726,\"modRightFender\":-1,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modWindows\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"pearlescentColor\":5}','car',NULL,0),('steam:11000010946be55','TGT 589','{\"dirtLevel\":7.0000123977662,\"modArchCover\":-1,\"modSpoilers\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrimB\":-1,\"modSeats\":-1,\"modFrame\":-1,\"modSmokeEnabled\":false,\"modFrontBumper\":-1,\"modGrille\":-1,\"modXenon\":false,\"modDoorSpeaker\":-1,\"pearlescentColor\":87,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modOrnaments\":-1,\"modHood\":-1,\"modRoof\":-1,\"modTransmission\":-1,\"color1\":38,\"wheels\":6,\"modRearBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"modAPlate\":-1,\"modHydrolic\":-1,\"modExhaust\":-1,\"modTrunk\":-1,\"wheelColor\":112,\"modStruts\":-1,\"health\":1000,\"modWindows\":-1,\"modSpeakers\":-1,\"modTrimA\":-1,\"modSuspension\":-1,\"modBackWheels\":-1,\"model\":884483972,\"plate\":\"TGT 589\",\"modTank\":-1,\"windowTint\":-1,\"modPlateHolder\":-1,\"modVanityPlate\":-1,\"modAerials\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modDial\":-1,\"extras\":[],\"neonColor\":[255,0,255],\"modEngine\":-1,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modTurbo\":false,\"modEngineBlock\":-1,\"modFender\":-1,\"modHorns\":-1,\"color2\":88,\"plateIndex\":0,\"modFrontWheels\":-1}','car',NULL,0),('steam:11000010a9d887a','XOH 954','{\"modVanityPlate\":-1,\"modHood\":-1,\"modRightFender\":-1,\"modAPlate\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modOrnaments\":-1,\"health\":1000,\"modSideSkirt\":-1,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"model\":-1372848492,\"modTrunk\":-1,\"modFrame\":-1,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modBackWheels\":-1,\"modFender\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modTrimA\":-1,\"modArmor\":-1,\"modArchCover\":-1,\"windowTint\":-1,\"plate\":\"XOH 954\",\"modLivery\":-1,\"modAirFilter\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"color2\":0,\"modTransmission\":-1,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modAerials\":-1,\"modSuspension\":-1,\"modSeats\":-1,\"modFrontBumper\":-1,\"wheels\":0,\"modSpoilers\":-1,\"wheelColor\":156,\"modEngineBlock\":-1,\"modTank\":-1,\"modDial\":-1,\"modGrille\":-1,\"extras\":[],\"modHorns\":-1,\"pearlescentColor\":10,\"neonColor\":[255,0,255],\"modEngine\":-1,\"modTurbo\":false,\"color1\":0,\"modStruts\":-1,\"modSmokeEnabled\":false,\"dirtLevel\":4.0000009536744,\"modPlateHolder\":-1}','car',NULL,0);
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'WhispymoundDrive','2677 Whispymound Drive','{\"y\":564.89,\"z\":182.959,\"x\":119.384}','{\"x\":117.347,\"y\":559.506,\"z\":183.304}','{\"y\":557.032,\"z\":183.301,\"x\":118.037}','{\"y\":567.798,\"z\":182.131,\"x\":119.249}','[]',NULL,1,1,0,'{\"x\":118.748,\"y\":566.573,\"z\":175.697}',1500000),(2,'NorthConkerAvenue2045','2045 North Conker Avenue','{\"x\":372.796,\"y\":428.327,\"z\":144.685}','{\"x\":373.548,\"y\":422.982,\"z\":144.907},','{\"y\":420.075,\"z\":145.904,\"x\":372.161}','{\"x\":372.454,\"y\":432.886,\"z\":143.443}','[]',NULL,1,1,0,'{\"x\":377.349,\"y\":429.422,\"z\":137.3}',1500000),(3,'RichardMajesticApt2','Richard Majestic, Apt 2','{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}','{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}','{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}','{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}','[]',NULL,1,1,0,'{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}',1700000),(4,'NorthConkerAvenue2044','2044 North Conker Avenue','{\"y\":440.8,\"z\":146.702,\"x\":346.964}','{\"y\":437.456,\"z\":148.394,\"x\":341.683}','{\"y\":435.626,\"z\":148.394,\"x\":339.595}','{\"x\":350.535,\"y\":443.329,\"z\":145.764}','[]',NULL,1,1,0,'{\"x\":337.726,\"y\":436.985,\"z\":140.77}',1500000),(5,'WildOatsDrive','3655 Wild Oats Drive','{\"y\":502.696,\"z\":136.421,\"x\":-176.003}','{\"y\":497.817,\"z\":136.653,\"x\":-174.349}','{\"y\":495.069,\"z\":136.666,\"x\":-173.331}','{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}','[]',NULL,1,1,0,'{\"x\":-174.725,\"y\":493.095,\"z\":129.043}',1500000),(6,'HillcrestAvenue2862','2862 Hillcrest Avenue','{\"y\":596.58,\"z\":142.641,\"x\":-686.554}','{\"y\":591.988,\"z\":144.392,\"x\":-681.728}','{\"y\":590.608,\"z\":144.392,\"x\":-680.124}','{\"y\":599.019,\"z\":142.059,\"x\":-689.492}','[]',NULL,1,1,0,'{\"x\":-680.46,\"y\":588.6,\"z\":136.769}',1500000),(7,'LowEndApartment','Appartement de base','{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}','{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}','{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}','{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}','[]',NULL,1,1,0,'{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}',562500),(8,'MadWayneThunder','2113 Mad Wayne Thunder','{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}','{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}','{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}','{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}','[]',NULL,1,1,0,'{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}',1500000),(9,'HillcrestAvenue2874','2874 Hillcrest Avenue','{\"x\":-853.346,\"y\":696.678,\"z\":147.782}','{\"y\":690.875,\"z\":151.86,\"x\":-859.961}','{\"y\":688.361,\"z\":151.857,\"x\":-859.395}','{\"y\":701.628,\"z\":147.773,\"x\":-855.007}','[]',NULL,1,1,0,'{\"x\":-858.543,\"y\":697.514,\"z\":144.253}',1500000),(10,'HillcrestAvenue2868','2868 Hillcrest Avenue','{\"y\":620.494,\"z\":141.588,\"x\":-752.82}','{\"y\":618.62,\"z\":143.153,\"x\":-759.317}','{\"y\":617.629,\"z\":143.153,\"x\":-760.789}','{\"y\":621.281,\"z\":141.254,\"x\":-750.919}','[]',NULL,1,1,0,'{\"x\":-762.504,\"y\":618.992,\"z\":135.53}',1500000),(11,'TinselTowersApt12','Tinsel Towers, Apt 42','{\"y\":37.025,\"z\":42.58,\"x\":-618.299}','{\"y\":58.898,\"z\":97.2,\"x\":-603.301}','{\"y\":58.941,\"z\":97.2,\"x\":-608.741}','{\"y\":30.603,\"z\":42.524,\"x\":-620.017}','[]',NULL,1,1,0,'{\"x\":-622.173,\"y\":54.585,\"z\":96.599}',1700000),(12,'MiltonDrive','Milton Drive','{\"x\":-775.17,\"y\":312.01,\"z\":84.658}',NULL,NULL,'{\"x\":-775.346,\"y\":306.776,\"z\":84.7}','[]',NULL,0,0,1,NULL,0),(13,'Modern1Apartment','Appartement Moderne 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_01_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.661,\"y\":327.672,\"z\":210.396}',1300000),(14,'Modern2Apartment','Appartement Moderne 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_01_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.735,\"y\":326.757,\"z\":186.313}',1300000),(15,'Modern3Apartment','Appartement Moderne 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_01_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.386,\"y\":330.782,\"z\":195.08}',1300000),(16,'Mody1Apartment','Appartement Mode 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_02_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.615,\"y\":327.878,\"z\":210.396}',1300000),(17,'Mody2Apartment','Appartement Mode 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_02_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.297,\"y\":327.092,\"z\":186.313}',1300000),(18,'Mody3Apartment','Appartement Mode 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_02_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.303,\"y\":330.932,\"z\":195.085}',1300000),(19,'Vibrant1Apartment','Appartement Vibrant 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_03_a\"]','MiltonDrive',0,1,0,'{\"x\":-765.885,\"y\":327.641,\"z\":210.396}',1300000),(20,'Vibrant2Apartment','Appartement Vibrant 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_03_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.607,\"y\":327.344,\"z\":186.313}',1300000),(21,'Vibrant3Apartment','Appartement Vibrant 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_03_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.525,\"y\":330.851,\"z\":195.085}',1300000),(22,'Sharp1Apartment','Appartement Persan 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_04_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.527,\"y\":327.89,\"z\":210.396}',1300000),(23,'Sharp2Apartment','Appartement Persan 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_04_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.642,\"y\":326.497,\"z\":186.313}',1300000),(24,'Sharp3Apartment','Appartement Persan 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_04_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.503,\"y\":331.318,\"z\":195.085}',1300000),(25,'Monochrome1Apartment','Appartement Monochrome 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_05_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.289,\"y\":328.086,\"z\":210.396}',1300000),(26,'Monochrome2Apartment','Appartement Monochrome 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_05_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.692,\"y\":326.762,\"z\":186.313}',1300000),(27,'Monochrome3Apartment','Appartement Monochrome 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_05_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.094,\"y\":330.976,\"z\":195.085}',1300000),(28,'Seductive1Apartment','Appartement Séduisant 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_06_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.263,\"y\":328.104,\"z\":210.396}',1300000),(29,'Seductive2Apartment','Appartement Séduisant 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_06_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.655,\"y\":326.611,\"z\":186.313}',1300000),(30,'Seductive3Apartment','Appartement Séduisant 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_06_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.3,\"y\":331.414,\"z\":195.085}',1300000),(31,'Regal1Apartment','Appartement Régal 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_07_a\"]','MiltonDrive',0,1,0,'{\"x\":-765.956,\"y\":328.257,\"z\":210.396}',1300000),(32,'Regal2Apartment','Appartement Régal 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_07_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.545,\"y\":326.659,\"z\":186.313}',1300000),(33,'Regal3Apartment','Appartement Régal 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_07_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.087,\"y\":331.429,\"z\":195.123}',1300000),(34,'Aqua1Apartment','Appartement Aqua 1',NULL,'{\"x\":-784.194,\"y\":323.636,\"z\":210.997}','{\"x\":-779.751,\"y\":323.385,\"z\":210.997}',NULL,'[\"apa_v_mp_h_08_a\"]','MiltonDrive',0,1,0,'{\"x\":-766.187,\"y\":328.47,\"z\":210.396}',1300000),(35,'Aqua2Apartment','Appartement Aqua 2',NULL,'{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}','{\"x\":-781.808,\"y\":315.866,\"z\":186.913}',NULL,'[\"apa_v_mp_h_08_c\"]','MiltonDrive',0,1,0,'{\"x\":-795.658,\"y\":326.563,\"z\":186.313}',1300000),(36,'Aqua3Apartment','Appartement Aqua 3',NULL,'{\"x\":-774.012,\"y\":342.042,\"z\":195.686}','{\"x\":-779.057,\"y\":342.063,\"z\":195.686}',NULL,'[\"apa_v_mp_h_08_b\"]','MiltonDrive',0,1,0,'{\"x\":-765.287,\"y\":331.084,\"z\":195.086}',1300000),(37,'IntegrityWay','4 Integrity Way','{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}',NULL,NULL,'{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}','[]',NULL,0,0,1,NULL,0),(38,'IntegrityWay28','4 Integrity Way - Apt 28',NULL,'{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}','{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}',NULL,'[]','IntegrityWay',0,1,0,'{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}',1700000),(39,'IntegrityWay30','4 Integrity Way - Apt 30',NULL,'{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}','{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}',NULL,'[]','IntegrityWay',0,1,0,'{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}',1700000),(40,'DellPerroHeights','Dell Perro Heights','{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}',NULL,NULL,'{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}','[]',NULL,0,0,1,NULL,0),(41,'DellPerroHeightst4','Dell Perro Heights - Apt 28',NULL,'{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}','{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}',NULL,'[]','DellPerroHeights',0,1,0,'{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}',1700000),(42,'DellPerroHeightst7','Dell Perro Heights - Apt 30',NULL,'{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}','{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}',NULL,'[]','DellPerroHeights',0,1,0,'{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}',1700000),(43,'MazeBankBuilding','Maze Bank Building','{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}',NULL,NULL,'{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}','[]',NULL,0,0,1,NULL,0),(44,'OldSpiceWarm','Old Spice Warm',NULL,'{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}','{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}',NULL,'[\"ex_dt1_11_office_01a\"]','MazeBankBuilding',0,1,0,'{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}',5000000),(45,'OldSpiceClassical','Old Spice Classical',NULL,'{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}','{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}',NULL,'[\"ex_dt1_11_office_01b\"]','MazeBankBuilding',0,1,0,'{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}',5000000),(46,'OldSpiceVintage','Old Spice Vintage',NULL,'{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}','{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}',NULL,'[\"ex_dt1_11_office_01c\"]','MazeBankBuilding',0,1,0,'{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}',5000000),(47,'ExecutiveRich','Executive Rich',NULL,'{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}','{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}',NULL,'[\"ex_dt1_11_office_02b\"]','MazeBankBuilding',0,1,0,'{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}',5000000),(48,'ExecutiveCool','Executive Cool',NULL,'{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}','{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}',NULL,'[\"ex_dt1_11_office_02c\"]','MazeBankBuilding',0,1,0,'{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}',5000000),(49,'ExecutiveContrast','Executive Contrast',NULL,'{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}','{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}',NULL,'[\"ex_dt1_11_office_02a\"]','MazeBankBuilding',0,1,0,'{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}',5000000),(50,'PowerBrokerIce','Power Broker Ice',NULL,'{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}','{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}',NULL,'[\"ex_dt1_11_office_03a\"]','MazeBankBuilding',0,1,0,'{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}',5000000),(51,'PowerBrokerConservative','Power Broker Conservative',NULL,'{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}','{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}',NULL,'[\"ex_dt1_11_office_03b\"]','MazeBankBuilding',0,1,0,'{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}',5000000),(52,'PowerBrokerPolished','Power Broker Polished',NULL,'{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}','{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}',NULL,'[\"ex_dt1_11_office_03c\"]','MazeBankBuilding',0,1,0,'{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}',5000000),(53,'LomBank','Lom Bank','{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}',NULL,NULL,'{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}','[]',NULL,0,0,1,NULL,0),(54,'LBOldSpiceWarm','LB Old Spice Warm',NULL,'{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}','{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}',NULL,'[\"ex_sm_13_office_01a\"]','LomBank',0,1,0,'{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}',3500000),(55,'LBOldSpiceClassical','LB Old Spice Classical',NULL,'{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}','{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}',NULL,'[\"ex_sm_13_office_01b\"]','LomBank',0,1,0,'{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}',3500000),(56,'LBOldSpiceVintage','LB Old Spice Vintage',NULL,'{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}','{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}',NULL,'[\"ex_sm_13_office_01c\"]','LomBank',0,1,0,'{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}',3500000),(57,'LBExecutiveRich','LB Executive Rich',NULL,'{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}','{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}',NULL,'[\"ex_sm_13_office_02b\"]','LomBank',0,1,0,'{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}',3500000),(58,'LBExecutiveCool','LB Executive Cool',NULL,'{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}','{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}',NULL,'[\"ex_sm_13_office_02c\"]','LomBank',0,1,0,'{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}',3500000),(59,'LBExecutiveContrast','LB Executive Contrast',NULL,'{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}','{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}',NULL,'[\"ex_sm_13_office_02a\"]','LomBank',0,1,0,'{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}',3500000),(60,'LBPowerBrokerIce','LB Power Broker Ice',NULL,'{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}','{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}',NULL,'[\"ex_sm_13_office_03a\"]','LomBank',0,1,0,'{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}',3500000),(61,'LBPowerBrokerConservative','LB Power Broker Conservative',NULL,'{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}','{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}',NULL,'[\"ex_sm_13_office_03b\"]','LomBank',0,1,0,'{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}',3500000),(62,'LBPowerBrokerPolished','LB Power Broker Polished',NULL,'{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}','{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}',NULL,'[\"ex_sm_13_office_03c\"]','LomBank',0,1,0,'{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}',3500000),(63,'MazeBankWest','Maze Bank West','{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}',NULL,NULL,'{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}','[]',NULL,0,0,1,NULL,0),(64,'MBWOldSpiceWarm','MBW Old Spice Warm',NULL,'{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}','{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}',NULL,'[\"ex_sm_15_office_01a\"]','MazeBankWest',0,1,0,'{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}',2700000),(65,'MBWOldSpiceClassical','MBW Old Spice Classical',NULL,'{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}','{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}',NULL,'[\"ex_sm_15_office_01b\"]','MazeBankWest',0,1,0,'{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}',2700000),(66,'MBWOldSpiceVintage','MBW Old Spice Vintage',NULL,'{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}','{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}',NULL,'[\"ex_sm_15_office_01c\"]','MazeBankWest',0,1,0,'{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}',2700000),(67,'MBWExecutiveRich','MBW Executive Rich',NULL,'{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}','{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}',NULL,'[\"ex_sm_15_office_02b\"]','MazeBankWest',0,1,0,'{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}',2700000),(68,'MBWExecutiveCool','MBW Executive Cool',NULL,'{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}','{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}',NULL,'[\"ex_sm_15_office_02c\"]','MazeBankWest',0,1,0,'{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}',2700000),(69,'MBWExecutive Contrast','MBW Executive Contrast',NULL,'{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}','{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}',NULL,'[\"ex_sm_15_office_02a\"]','MazeBankWest',0,1,0,'{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}',2700000),(70,'MBWPowerBrokerIce','MBW Power Broker Ice',NULL,'{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}','{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}',NULL,'[\"ex_sm_15_office_03a\"]','MazeBankWest',0,1,0,'{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}',2700000),(71,'MBWPowerBrokerConvservative','MBW Power Broker Convservative',NULL,'{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}','{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}',NULL,'[\"ex_sm_15_office_03b\"]','MazeBankWest',0,1,0,'{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}',2700000),(72,'MBWPowerBrokerPolished','MBW Power Broker Polished',NULL,'{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}','{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}',NULL,'[\"ex_sm_15_office_03c\"]','MazeBankWest',0,1,0,'{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}',2700000);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rented_vehicles`
--

DROP TABLE IF EXISTS `rented_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented_vehicles`
--

LOCK TABLES `rented_vehicles` WRITE;
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,'TwentyFourSeven','bread',30),(2,'TwentyFourSeven','water',15),(3,'RobsLiquor','bread',30),(4,'RobsLiquor','water',15),(5,'LTDgasoline','bread',30),(6,'LTDgasoline','water',15);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `society_moneywash`
--

DROP TABLE IF EXISTS `society_moneywash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `society_moneywash`
--

LOCK TABLES `society_moneywash` WRITE;
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_accounts`
--

LOCK TABLES `user_accounts` WRITE;
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
INSERT INTO `user_accounts` VALUES (1,'steam:110000104db461b','black_money',0),(2,'steam:11000010a9d887a','black_money',0),(3,'steam:11000010946be55','black_money',0),(4,'steam:11000010b1965a8','black_money',0);
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_contacts`
--

DROP TABLE IF EXISTS `user_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_contacts`
--

LOCK TABLES `user_contacts` WRITE;
/*!40000 ALTER TABLE `user_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_inventory`
--

DROP TABLE IF EXISTS `user_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_inventory`
--

LOCK TABLES `user_inventory` WRITE;
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
INSERT INTO `user_inventory` VALUES (1,'steam:110000104db461b','gold',0),(2,'steam:110000104db461b','carokit',0),(3,'steam:110000104db461b','wool',0),(4,'steam:110000104db461b','slaughtered_chicken',0),(5,'steam:110000104db461b','alive_chicken',0),(6,'steam:110000104db461b','wood',0),(7,'steam:110000104db461b','clothe',0),(8,'steam:110000104db461b','cannabis',0),(9,'steam:110000104db461b','washed_stone',0),(10,'steam:110000104db461b','fixtool',0),(11,'steam:110000104db461b','essence',0),(12,'steam:110000104db461b','fixkit',0),(13,'steam:110000104db461b','carotool',0),(14,'steam:110000104db461b','packaged_plank',0),(15,'steam:110000104db461b','fish',0),(16,'steam:110000104db461b','petrol',0),(17,'steam:110000104db461b','iron',0),(18,'steam:110000104db461b','fabric',0),(19,'steam:110000104db461b','packaged_chicken',0),(20,'steam:110000104db461b','stone',0),(21,'steam:110000104db461b','medikit',0),(22,'steam:110000104db461b','diamond',0),(23,'steam:110000104db461b','copper',0),(24,'steam:110000104db461b','marijuana',0),(25,'steam:110000104db461b','petrol_raffin',0),(26,'steam:110000104db461b','bandage',0),(27,'steam:110000104db461b','gazbottle',0),(28,'steam:110000104db461b','blowpipe',0),(29,'steam:110000104db461b','cutted_wood',0),(30,'steam:11000010a9d887a','fixtool',0),(31,'steam:11000010a9d887a','wool',0),(32,'steam:11000010a9d887a','fish',0),(33,'steam:11000010a9d887a','essence',0),(34,'steam:11000010a9d887a','iron',0),(35,'steam:11000010a9d887a','carotool',0),(36,'steam:11000010a9d887a','wood',0),(37,'steam:11000010a9d887a','washed_stone',0),(38,'steam:11000010a9d887a','blowpipe',0),(39,'steam:11000010a9d887a','gazbottle',0),(40,'steam:11000010a9d887a','cannabis',3),(41,'steam:11000010a9d887a','stone',0),(42,'steam:11000010a9d887a','slaughtered_chicken',0),(43,'steam:11000010a9d887a','gold',0),(44,'steam:11000010a9d887a','copper',0),(45,'steam:11000010a9d887a','clothe',0),(46,'steam:11000010a9d887a','fabric',0),(47,'steam:11000010a9d887a','bandage',0),(48,'steam:11000010a9d887a','petrol',0),(49,'steam:11000010a9d887a','carokit',0),(50,'steam:11000010a9d887a','medikit',0),(51,'steam:11000010a9d887a','packaged_chicken',0),(52,'steam:11000010a9d887a','meat',0),(53,'steam:11000010a9d887a','alive_chicken',0),(54,'steam:11000010a9d887a','leather',0),(55,'steam:11000010a9d887a','petrol_raffin',0),(56,'steam:11000010a9d887a','diamond',0),(57,'steam:11000010a9d887a','fixkit',0),(58,'steam:11000010a9d887a','marijuana',0),(59,'steam:11000010a9d887a','packaged_plank',0),(60,'steam:11000010a9d887a','cutted_wood',0),(61,'steam:11000010946be55','stone',0),(62,'steam:11000010946be55','cannabis',0),(63,'steam:11000010946be55','blowpipe',0),(64,'steam:11000010946be55','wool',0),(65,'steam:11000010946be55','essence',0),(66,'steam:11000010946be55','wood',0),(67,'steam:11000010946be55','cutted_wood',0),(68,'steam:11000010946be55','washed_stone',0),(69,'steam:11000010946be55','diamond',0),(70,'steam:11000010946be55','fabric',0),(71,'steam:11000010946be55','clothe',0),(72,'steam:11000010946be55','medikit',0),(73,'steam:11000010946be55','copper',0),(74,'steam:11000010946be55','gazbottle',0),(75,'steam:11000010946be55','petrol',0),(76,'steam:11000010946be55','packaged_plank',0),(77,'steam:11000010946be55','fish',0),(78,'steam:11000010946be55','petrol_raffin',0),(79,'steam:11000010946be55','alive_chicken',0),(80,'steam:11000010946be55','gold',0),(81,'steam:11000010946be55','bandage',0),(82,'steam:11000010946be55','marijuana',0),(83,'steam:11000010946be55','fixtool',0),(84,'steam:11000010946be55','leather',0),(85,'steam:11000010946be55','iron',0),(86,'steam:11000010946be55','meat',0),(87,'steam:11000010946be55','carotool',0),(88,'steam:11000010946be55','carokit',0),(89,'steam:11000010946be55','packaged_chicken',0),(90,'steam:11000010946be55','fixkit',0),(91,'steam:11000010946be55','slaughtered_chicken',0),(92,'steam:11000010946be55','water',0),(93,'steam:11000010946be55','bread',0),(94,'steam:11000010a9d887a','water',3),(95,'steam:11000010a9d887a','bread',6),(96,'steam:11000010a9d887a','jewels',0),(97,'steam:110000104db461b','meat',0),(98,'steam:110000104db461b','bread',0),(99,'steam:110000104db461b','leather',0),(100,'steam:110000104db461b','water',0),(101,'steam:110000104db461b','jewels',0),(102,'steam:11000010b1965a8','bread',0),(103,'steam:11000010b1965a8','stone',0),(104,'steam:11000010b1965a8','blowpipe',0),(105,'steam:11000010b1965a8','meat',0),(106,'steam:11000010b1965a8','wool',0),(107,'steam:11000010b1965a8','diamond',0),(108,'steam:11000010b1965a8','gazbottle',0),(109,'steam:11000010b1965a8','medikit',0),(110,'steam:11000010b1965a8','petrol_raffin',0),(111,'steam:11000010b1965a8','cutted_wood',0),(112,'steam:11000010b1965a8','carotool',0),(113,'steam:11000010b1965a8','iron',0),(114,'steam:11000010b1965a8','alive_chicken',0),(115,'steam:11000010b1965a8','clothe',0),(116,'steam:11000010b1965a8','essence',0),(117,'steam:11000010b1965a8','carokit',0),(118,'steam:11000010b1965a8','fixtool',0),(119,'steam:11000010b1965a8','fabric',0),(120,'steam:11000010b1965a8','leather',0),(121,'steam:11000010b1965a8','fish',0),(122,'steam:11000010b1965a8','packaged_plank',0),(123,'steam:11000010b1965a8','copper',0),(124,'steam:11000010b1965a8','fixkit',0),(125,'steam:11000010b1965a8','packaged_chicken',0),(126,'steam:11000010b1965a8','gold',0),(127,'steam:11000010b1965a8','bandage',0),(128,'steam:11000010b1965a8','wood',0),(129,'steam:11000010b1965a8','water',0),(130,'steam:11000010b1965a8','washed_stone',0),(131,'steam:11000010b1965a8','slaughtered_chicken',0),(132,'steam:11000010b1965a8','petrol',0),(133,'steam:11000010b1965a8','cannabis',0),(134,'steam:11000010b1965a8','jewels',0),(135,'steam:11000010b1965a8','marijuana',0);
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_licenses`
--

DROP TABLE IF EXISTS `user_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_licenses`
--

LOCK TABLES `user_licenses` WRITE;
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_parkings`
--

DROP TABLE IF EXISTS `user_parkings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) DEFAULT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_parkings`
--

LOCK TABLES `user_parkings` WRITE;
/*!40000 ALTER TABLE `user_parkings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_parkings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT '0',
  `skills` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('steam:110000104db461b','license:1a7a5f1df95f40d5938ea3350e0120d245466bb2',0,'FLAPJACK ♠','{\"hair_color_1\":0,\"lipstick_4\":0,\"watches_2\":0,\"bproof_1\":0,\"makeup_1\":0,\"chest_3\":0,\"tshirt_1\":0,\"sex\":0,\"shoes_1\":0,\"chain_1\":0,\"blush_2\":0,\"bodyb_2\":0,\"hair_1\":0,\"helmet_1\":-1,\"arms_2\":0,\"beard_4\":0,\"pants_1\":0,\"watches_1\":-1,\"makeup_2\":0,\"mask_1\":0,\"beard_2\":0,\"chest_1\":0,\"mask_2\":0,\"blemishes_2\":0,\"arms\":0,\"chest_2\":0,\"bracelets_2\":0,\"torso_2\":0,\"pants_2\":0,\"blush_1\":0,\"bodyb_1\":0,\"decals_2\":0,\"decals_1\":0,\"complexion_1\":0,\"bags_1\":0,\"torso_1\":0,\"sun_2\":0,\"beard_1\":0,\"hair_2\":0,\"moles_2\":0,\"makeup_3\":0,\"hair_color_2\":0,\"blemishes_1\":0,\"ears_2\":0,\"lipstick_2\":0,\"eyebrows_4\":0,\"complexion_2\":0,\"makeup_4\":0,\"face\":0,\"sun_1\":0,\"eyebrows_1\":0,\"chain_2\":0,\"shoes_2\":0,\"bracelets_1\":-1,\"moles_1\":0,\"skin\":0,\"age_2\":0,\"helmet_2\":0,\"blush_3\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"lipstick_1\":0,\"bproof_2\":0,\"lipstick_3\":0,\"glasses_1\":0,\"glasses_2\":0,\"bags_2\":0,\"eyebrows_2\":0,\"eye_color\":0,\"beard_3\":0,\"tshirt_2\":0,\"age_1\":0}','unemployed',0,'[]','{\"x\":-185.40000000002,\"y\":-931.39999',2200,0,'user','[]','Admin','Sakray','1992-11-04','m','178',NULL,61393,0,'{\"Strength\":{\"Stat\":\"MP0_STRENGTH\",\"Current\":9.7,\"RemoveAmount\":-0.3},\"Shooting\":{\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.1},\"Driving\":{\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.5},\"Wheelie\":{\"Stat\":\"MP0_WHEELIE_ABILITY\",\"Current\":0,\"RemoveAmount\":-0.2},\"Stamina\":{\"Stat\":\"MP0_STAMINA\",\"Current\":19.9,\"RemoveAmount\":-0.3},\"Lung Capacity\":{\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0,\"RemoveAmount\":-0.1}}'),('steam:11000010946be55','license:1a7a5f1df95f40d5938ea3350e0120d245466bb2',21431981,'SMILEY FACE','{\"eyebrows_2\":0,\"moles_1\":0,\"age_1\":0,\"eye_color\":0,\"age_2\":0,\"torso_1\":55,\"skin\":0,\"hair_1\":0,\"bags_1\":0,\"decals_2\":0,\"ears_2\":0,\"chain_2\":0,\"blush_1\":0,\"tshirt_2\":0,\"chain_1\":2,\"shoes_2\":3,\"mask_2\":0,\"hair_2\":0,\"pants_1\":0,\"mask_1\":0,\"beard_2\":0,\"lipstick_4\":0,\"complexion_1\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"chest_2\":0,\"tshirt_1\":55,\"shoes_1\":12,\"beard_3\":0,\"face\":0,\"makeup_2\":0,\"sun_2\":0,\"bodyb_1\":0,\"sun_1\":0,\"glasses_2\":0,\"bracelets_2\":0,\"complexion_2\":0,\"blush_3\":0,\"eyebrows_3\":0,\"lipstick_2\":0,\"bodyb_2\":0,\"sex\":0,\"arms_2\":0,\"makeup_3\":0,\"hair_color_2\":0,\"moles_2\":0,\"bracelets_1\":-1,\"arms\":0,\"helmet_2\":0,\"ears_1\":-1,\"blemishes_1\":0,\"bproof_2\":0,\"helmet_1\":51,\"hair_color_1\":0,\"watches_1\":-1,\"beard_4\":0,\"chest_3\":0,\"eyebrows_1\":0,\"bags_2\":0,\"decals_1\":0,\"chest_1\":0,\"lipstick_3\":0,\"beard_1\":0,\"lipstick_1\":0,\"makeup_4\":0,\"torso_2\":0,\"makeup_1\":0,\"watches_2\":0,\"blemishes_2\":0,\"pants_2\":0,\"glasses_1\":0,\"blush_2\":0}','police',0,'[{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\",\"label\":\"Nightstick\",\"components\":[]},{\"ammo\":0,\"name\":\"WEAPON_BAT\",\"label\":\"Bat\",\"components\":[]},{\"ammo\":47,\"name\":\"WEAPON_PISTOL\",\"label\":\"Pistol\",\"components\":[\"clip_default\"]},{\"ammo\":0,\"name\":\"WEAPON_MICROSMG\",\"label\":\"Micro SMG\",\"components\":[\"clip_default\"]},{\"ammo\":24,\"name\":\"WEAPON_PUMPSHOTGUN\",\"label\":\"Pump shotgun\",\"components\":[]},{\"ammo\":45,\"name\":\"WEAPON_ASSAULTRIFLE\",\"label\":\"Assault rifle\",\"components\":[\"clip_default\"]},{\"ammo\":45,\"name\":\"WEAPON_SPECIALCARBINE\",\"label\":\"Special carbine\",\"components\":[\"clip_default\"]},{\"ammo\":83,\"name\":\"WEAPON_SNIPERRIFLE\",\"label\":\"Sniper rifle\",\"components\":[\"scope\"]},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\",\"label\":\"Grenade\",\"components\":[]},{\"ammo\":25,\"name\":\"WEAPON_SMOKEGRENADE\",\"label\":\"Smoke grenade\",\"components\":[]},{\"ammo\":25,\"name\":\"WEAPON_BZGAS\",\"label\":\"Bz gas\",\"components\":[]},{\"ammo\":42,\"name\":\"WEAPON_FIREEXTINGUISHER\",\"label\":\"Fire extinguisher\",\"components\":[]},{\"ammo\":1,\"name\":\"WEAPON_BALL\",\"label\":\"Ball\",\"components\":[]},{\"ammo\":15,\"name\":\"WEAPON_FIREWORK\",\"label\":\"Firework\",\"components\":[]},{\"ammo\":42,\"name\":\"WEAPON_STUNGUN\",\"label\":\"Taser\",\"components\":[]},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\",\"label\":\"Machete\",\"components\":[]},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\",\"label\":\"Flashlight\",\"components\":[]}]','{\"x\":-241.79999999998,\"z\":29.4000000',2620,0,'user','[{\"val\":333100,\"name\":\"hunger\",\"percent\":33.31},{\"val\":830050,\"name\":\"thirst\",\"percent\":83.005}]','Hoolishit','Hoo','1992-11-04','m','183',NULL,59990,0,'{\"Wheelie\":{\"Current\":0,\"Stat\":\"MP0_WHEELIE_ABILITY\",\"RemoveAmount\":-0.2},\"Stamina\":{\"Current\":18.100000000003,\"Stat\":\"MP0_STAMINA\",\"RemoveAmount\":-0.3},\"Driving\":{\"Current\":0,\"Stat\":\"MP0_DRIVING_ABILITY\",\"RemoveAmount\":-0.5},\"Lung Capacity\":{\"Current\":0,\"Stat\":\"MP0_LUNG_CAPACITY\",\"RemoveAmount\":-0.1},\"Shooting\":{\"Current\":0.3,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"RemoveAmount\":-0.1},\"Strength\":{\"Current\":6.1000000000004,\"Stat\":\"MP0_STRENGTH\",\"RemoveAmount\":-0.3}}'),('steam:11000010a9d887a','license:9d05dee32130951a46167906a98994ee9635ae1c',79920299,'StoPzVooZa','{\"chest_3\":0,\"bproof_2\":0,\"complexion_2\":0,\"bags_1\":0,\"mask_1\":0,\"bracelets_2\":0,\"bproof_1\":0,\"mask_2\":0,\"lipstick_1\":0,\"sex\":0,\"shoes_2\":0,\"beard_3\":0,\"makeup_1\":0,\"tshirt_1\":4,\"face\":0,\"shoes_1\":0,\"hair_2\":0,\"eyebrows_1\":0,\"age_1\":0,\"moles_2\":0,\"chest_1\":0,\"blush_1\":0,\"makeup_4\":0,\"watches_1\":-1,\"chain_2\":0,\"age_2\":0,\"blush_2\":0,\"torso_2\":0,\"hair_1\":46,\"helmet_1\":-1,\"bracelets_1\":-1,\"sun_1\":0,\"decals_1\":0,\"hair_color_2\":0,\"eyebrows_2\":0,\"blemishes_1\":0,\"glasses_1\":7,\"sun_2\":0,\"beard_1\":0,\"watches_2\":0,\"glasses_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"bodyb_1\":0,\"ears_2\":0,\"tshirt_2\":0,\"beard_4\":0,\"skin\":0,\"arms\":0,\"ears_1\":-1,\"arms_2\":0,\"helmet_2\":0,\"blemishes_2\":0,\"decals_2\":0,\"moles_1\":0,\"chain_1\":0,\"bags_2\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"makeup_3\":0,\"eyebrows_3\":0,\"beard_2\":0,\"bodyb_2\":0,\"lipstick_2\":0,\"complexion_1\":0,\"pants_2\":0,\"torso_1\":0,\"eye_color\":0,\"hair_color_1\":0,\"blush_3\":0,\"pants_1\":0,\"chest_2\":0}','ambulance',0,'[{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\",\"components\":[],\"label\":\"Nightstick\"},{\"ammo\":0,\"name\":\"WEAPON_BAT\",\"components\":[],\"label\":\"Bat\"},{\"ammo\":0,\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"label\":\"Pistol\"},{\"ammo\":39,\"name\":\"WEAPON_MICROSMG\",\"components\":[\"clip_default\"],\"label\":\"Micro SMG\"},{\"ammo\":39,\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[],\"label\":\"Pump shotgun\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\",\"components\":[\"clip_default\"],\"label\":\"Assault rifle\"},{\"ammo\":0,\"name\":\"WEAPON_CARBINERIFLE\",\"components\":[\"clip_default\"],\"label\":\"Carbine rifle\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\",\"components\":[\"clip_default\"],\"label\":\"Special carbine\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\",\"components\":[\"scope\"],\"label\":\"Sniper rifle\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\",\"components\":[],\"label\":\"Grenade\"},{\"ammo\":25,\"name\":\"WEAPON_SMOKEGRENADE\",\"components\":[],\"label\":\"Smoke grenade\"},{\"ammo\":25,\"name\":\"WEAPON_BZGAS\",\"components\":[],\"label\":\"Bz gas\"},{\"ammo\":42,\"name\":\"WEAPON_FIREEXTINGUISHER\",\"components\":[],\"label\":\"Fire extinguisher\"},{\"ammo\":1,\"name\":\"WEAPON_BALL\",\"components\":[],\"label\":\"Ball\"},{\"ammo\":20,\"name\":\"WEAPON_FIREWORK\",\"components\":[],\"label\":\"Firework\"},{\"ammo\":42,\"name\":\"WEAPON_STUNGUN\",\"components\":[],\"label\":\"Taser\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\",\"components\":[],\"label\":\"Machete\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\",\"components\":[],\"label\":\"Flashlight\"}]','{\"x\":434.80000000004,\"z\":28.80000000',1000000020,0,'user','[{\"val\":727100,\"name\":\"hunger\",\"percent\":72.71},{\"val\":812875,\"name\":\"thirst\",\"percent\":81.2875}]','StoPz','Vooza','1993-01-08','m','178',NULL,50964,0,'{\"Lung Capacity\":{\"Current\":0,\"RemoveAmount\":-0.1,\"Stat\":\"MP0_LUNG_CAPACITY\"},\"Wheelie\":{\"Current\":0,\"RemoveAmount\":-0.2,\"Stat\":\"MP0_WHEELIE_ABILITY\"},\"Driving\":{\"Current\":0.79999999999999,\"RemoveAmount\":-0.5,\"Stat\":\"MP0_DRIVING_ABILITY\"},\"Stamina\":{\"Current\":17.600000000001,\"RemoveAmount\":-0.3,\"Stat\":\"MP0_STAMINA\"},\"Strength\":{\"Current\":7.2999999999985,\"RemoveAmount\":-0.3,\"Stat\":\"MP0_STRENGTH\"},\"Shooting\":{\"Current\":0,\"RemoveAmount\":-0.1,\"Stat\":\"MP0_SHOOTING_ABILITY\"}}'),('steam:11000010b1965a8','license:1a7a5f1df95f40d5938ea3350e0120d245466bb2',0,'JudewZA','{\"hair_color_1\":29,\"lipstick_4\":0,\"watches_2\":0,\"bproof_1\":0,\"makeup_1\":0,\"chest_3\":0,\"bags_2\":0,\"sex\":0,\"shoes_1\":0,\"chain_1\":0,\"blush_2\":0,\"bodyb_2\":0,\"hair_1\":11,\"helmet_1\":-1,\"arms_2\":0,\"eyebrows_4\":0,\"pants_1\":0,\"watches_1\":-1,\"makeup_2\":0,\"mask_1\":0,\"beard_2\":0,\"chest_1\":0,\"mask_2\":0,\"blemishes_2\":0,\"arms\":0,\"chest_2\":0,\"bracelets_2\":0,\"eyebrows_2\":0,\"pants_2\":0,\"blush_1\":0,\"bodyb_1\":0,\"decals_2\":0,\"lipstick_2\":0,\"complexion_1\":0,\"bags_1\":0,\"torso_1\":0,\"sun_2\":0,\"eyebrows_3\":0,\"hair_2\":0,\"moles_2\":0,\"makeup_3\":0,\"hair_color_2\":0,\"torso_2\":0,\"ears_2\":0,\"chain_2\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"makeup_4\":0,\"eyebrows_1\":0,\"sun_1\":0,\"eye_color\":0,\"decals_1\":0,\"shoes_2\":0,\"bracelets_1\":-1,\"complexion_2\":0,\"skin\":6,\"age_2\":0,\"helmet_2\":0,\"blush_3\":0,\"beard_4\":0,\"glasses_2\":0,\"face\":4,\"bproof_2\":0,\"tshirt_1\":0,\"beard_1\":0,\"moles_1\":0,\"glasses_1\":7,\"blemishes_1\":0,\"ears_1\":-1,\"beard_3\":0,\"tshirt_2\":0,\"age_1\":0}','unemployed',0,NULL,NULL,200,0,'user',NULL,'Jz','King','1992-09-27','m','180',NULL,92919,0,'{\"Stamina\":{\"RemoveAmount\":-0.3,\"Stat\":\"MP0_STAMINA\",\"Current\":19.7},\"Lung Capacity\":{\"RemoveAmount\":-0.1,\"Stat\":\"MP0_LUNG_CAPACITY\",\"Current\":0},\"Wheelie\":{\"RemoveAmount\":-0.2,\"Stat\":\"MP0_WHEELIE_ABILITY\",\"Current\":0},\"Driving\":{\"RemoveAmount\":-0.5,\"Stat\":\"MP0_DRIVING_ABILITY\",\"Current\":0},\"Shooting\":{\"RemoveAmount\":-0.1,\"Stat\":\"MP0_SHOOTING_ABILITY\",\"Current\":0},\"Strength\":{\"RemoveAmount\":-0.3,\"Stat\":\"MP0_STRENGTH\",\"Current\":9.7}}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_categories`
--

DROP TABLE IF EXISTS `vehicle_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_categories`
--

LOCK TABLES `vehicle_categories` WRITE;
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` VALUES ('compacts','Compacts'),('coupes','Coupés'),('motorcycles','Motos'),('muscle','Muscle'),('offroad','Off Road'),('sedans','Sedans'),('sports','Sports'),('sportsclassics','Sports Classics'),('super','Super'),('suvs','SUVs'),('vans','Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_sold`
--

DROP TABLE IF EXISTS `vehicle_sold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_sold`
--

LOCK TABLES `vehicle_sold` WRITE;
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES ('Adder','adder',900000,'super'),('Akuma','AKUMA',7500,'motorcycles'),('Alpha','alpha',60000,'sports'),('Ardent','ardent',1150000,'sportsclassics'),('Asea','asea',5500,'sedans'),('Autarch','autarch',1955000,'super'),('Avarus','avarus',18000,'motorcycles'),('Bagger','bagger',13500,'motorcycles'),('Baller','baller2',40000,'suvs'),('Baller Sport','baller3',60000,'suvs'),('Banshee','banshee',70000,'sports'),('Banshee 900R','banshee2',255000,'super'),('Bati 801','bati',12000,'motorcycles'),('Bati 801RR','bati2',19000,'motorcycles'),('Bestia GTS','bestiagts',55000,'sports'),('BF400','bf400',6500,'motorcycles'),('Bf Injection','bfinjection',16000,'offroad'),('Bifta','bifta',12000,'offroad'),('Bison','bison',45000,'vans'),('Blade','blade',15000,'muscle'),('Blazer','blazer',6500,'offroad'),('Blazer Sport','blazer4',8500,'offroad'),('blazer5','blazer5',1755600,'offroad'),('Blista','blista',8000,'compacts'),('BMX (velo)','bmx',160,'motorcycles'),('Bobcat XL','bobcatxl',32000,'vans'),('Brawler','brawler',45000,'offroad'),('Brioso R/A','brioso',18000,'compacts'),('Btype','btype',62000,'sportsclassics'),('Btype Hotroad','btype2',155000,'sportsclassics'),('Btype Luxe','btype3',85000,'sportsclassics'),('Buccaneer','buccaneer',18000,'muscle'),('Buccaneer Rider','buccaneer2',24000,'muscle'),('Buffalo','buffalo',12000,'sports'),('Buffalo S','buffalo2',20000,'sports'),('Bullet','bullet',90000,'super'),('Burrito','burrito3',19000,'vans'),('Camper','camper',42000,'vans'),('Carbonizzare','carbonizzare',75000,'sports'),('Carbon RS','carbonrs',18000,'motorcycles'),('Casco','casco',30000,'sportsclassics'),('Cavalcade','cavalcade2',55000,'suvs'),('Cheetah','cheetah',375000,'super'),('Chimera','chimera',38000,'motorcycles'),('Chino','chino',15000,'muscle'),('Chino Luxe','chino2',19000,'muscle'),('Cliffhanger','cliffhanger',9500,'motorcycles'),('Cognoscenti Cabrio','cogcabrio',55000,'coupes'),('Cognoscenti','cognoscenti',55000,'sedans'),('Comet','comet2',65000,'sports'),('Comet 5','comet5',1145000,'sports'),('Contender','contender',70000,'suvs'),('Coquette','coquette',65000,'sports'),('Coquette Classic','coquette2',40000,'sportsclassics'),('Coquette BlackFin','coquette3',55000,'muscle'),('Cruiser (velo)','cruiser',510,'motorcycles'),('Cyclone','cyclone',1890000,'super'),('Daemon','daemon',11500,'motorcycles'),('Daemon High','daemon2',13500,'motorcycles'),('Defiler','defiler',9800,'motorcycles'),('Deluxo','deluxo',4721500,'sportsclassics'),('Dominator','dominator',35000,'muscle'),('Double T','double',28000,'motorcycles'),('Dubsta','dubsta',45000,'suvs'),('Dubsta Luxuary','dubsta2',60000,'suvs'),('Bubsta 6x6','dubsta3',120000,'offroad'),('Dukes','dukes',28000,'muscle'),('Dune Buggy','dune',8000,'offroad'),('Elegy','elegy2',38500,'sports'),('Emperor','emperor',8500,'sedans'),('Enduro','enduro',5500,'motorcycles'),('Entity XF','entityxf',425000,'super'),('Esskey','esskey',4200,'motorcycles'),('Exemplar','exemplar',32000,'coupes'),('F620','f620',40000,'coupes'),('Faction','faction',20000,'muscle'),('Faction Rider','faction2',30000,'muscle'),('Faction XL','faction3',40000,'muscle'),('Faggio','faggio',1900,'motorcycles'),('Vespa','faggio2',2800,'motorcycles'),('Felon','felon',42000,'coupes'),('Felon GT','felon2',55000,'coupes'),('Feltzer','feltzer2',55000,'sports'),('Stirling GT','feltzer3',65000,'sportsclassics'),('Fixter (velo)','fixter',225,'motorcycles'),('FMJ','fmj',185000,'super'),('Fhantom','fq2',17000,'suvs'),('Fugitive','fugitive',12000,'sedans'),('Furore GT','furoregt',45000,'sports'),('Fusilade','fusilade',40000,'sports'),('Gargoyle','gargoyle',16500,'motorcycles'),('Gauntlet','gauntlet',30000,'muscle'),('Gang Burrito','gburrito',45000,'vans'),('Burrito','gburrito2',29000,'vans'),('Glendale','glendale',6500,'sedans'),('Grabger','granger',50000,'suvs'),('Gresley','gresley',47500,'suvs'),('GT 500','gt500',785000,'sportsclassics'),('Guardian','guardian',45000,'offroad'),('Hakuchou','hakuchou',31000,'motorcycles'),('Hakuchou Sport','hakuchou2',55000,'motorcycles'),('Hermes','hermes',535000,'muscle'),('Hexer','hexer',12000,'motorcycles'),('Hotknife','hotknife',125000,'muscle'),('Huntley S','huntley',40000,'suvs'),('Hustler','hustler',625000,'muscle'),('Infernus','infernus',180000,'super'),('Innovation','innovation',23500,'motorcycles'),('Intruder','intruder',7500,'sedans'),('Issi','issi2',10000,'compacts'),('Jackal','jackal',38000,'coupes'),('Jester','jester',65000,'sports'),('Jester(Racecar)','jester2',135000,'sports'),('Journey','journey',6500,'vans'),('Kamacho','kamacho',345000,'offroad'),('Khamelion','khamelion',38000,'sports'),('Kuruma','kuruma',30000,'sports'),('Landstalker','landstalker',35000,'suvs'),('RE-7B','le7b',325000,'super'),('Lynx','lynx',40000,'sports'),('Mamba','mamba',70000,'sports'),('Manana','manana',12800,'sportsclassics'),('Manchez','manchez',5300,'motorcycles'),('Massacro','massacro',65000,'sports'),('Massacro(Racecar)','massacro2',130000,'sports'),('Mesa','mesa',16000,'suvs'),('Mesa Trail','mesa3',40000,'suvs'),('Minivan','minivan',13000,'vans'),('Monroe','monroe',55000,'sportsclassics'),('The Liberator','monster',210000,'offroad'),('Moonbeam','moonbeam',18000,'vans'),('Moonbeam Rider','moonbeam2',35000,'vans'),('Nemesis','nemesis',5800,'motorcycles'),('Neon','neon',1500000,'sports'),('Nightblade','nightblade',35000,'motorcycles'),('Nightshade','nightshade',65000,'muscle'),('9F','ninef',65000,'sports'),('9F Cabrio','ninef2',80000,'sports'),('Omnis','omnis',35000,'sports'),('Oppressor','oppressor',3524500,'super'),('Oracle XS','oracle2',35000,'coupes'),('Osiris','osiris',160000,'super'),('Panto','panto',10000,'compacts'),('Paradise','paradise',19000,'vans'),('Pariah','pariah',1420000,'sports'),('Patriot','patriot',55000,'suvs'),('PCJ-600','pcj',6200,'motorcycles'),('Penumbra','penumbra',28000,'sports'),('Pfister','pfister811',85000,'super'),('Phoenix','phoenix',12500,'muscle'),('Picador','picador',18000,'muscle'),('Pigalle','pigalle',20000,'sportsclassics'),('Prairie','prairie',12000,'compacts'),('Premier','premier',8000,'sedans'),('Primo Custom','primo2',14000,'sedans'),('X80 Proto','prototipo',2500000,'super'),('Radius','radi',29000,'suvs'),('raiden','raiden',1375000,'sports'),('Rapid GT','rapidgt',35000,'sports'),('Rapid GT Convertible','rapidgt2',45000,'sports'),('Rapid GT3','rapidgt3',885000,'sportsclassics'),('Reaper','reaper',150000,'super'),('Rebel','rebel2',35000,'offroad'),('Regina','regina',5000,'sedans'),('Retinue','retinue',615000,'sportsclassics'),('Revolter','revolter',1610000,'sports'),('riata','riata',380000,'offroad'),('Rocoto','rocoto',45000,'suvs'),('Ruffian','ruffian',6800,'motorcycles'),('Ruiner 2','ruiner2',5745600,'muscle'),('Rumpo','rumpo',15000,'vans'),('Rumpo Trail','rumpo3',19500,'vans'),('Sabre Turbo','sabregt',20000,'muscle'),('Sabre GT','sabregt2',25000,'muscle'),('Sanchez','sanchez',5300,'motorcycles'),('Sanchez Sport','sanchez2',5300,'motorcycles'),('Sanctus','sanctus',25000,'motorcycles'),('Sandking','sandking',55000,'offroad'),('Savestra','savestra',990000,'sportsclassics'),('SC 1','sc1',1603000,'super'),('Schafter','schafter2',25000,'sedans'),('Schafter V12','schafter3',50000,'sports'),('Scorcher (velo)','scorcher',280,'motorcycles'),('Seminole','seminole',25000,'suvs'),('Sentinel','sentinel',32000,'coupes'),('Sentinel XS','sentinel2',40000,'coupes'),('Sentinel3','sentinel3',650000,'sports'),('Seven 70','seven70',39500,'sports'),('ETR1','sheava',220000,'super'),('Shotaro Concept','shotaro',320000,'motorcycles'),('Slam Van','slamvan3',11500,'muscle'),('Sovereign','sovereign',22000,'motorcycles'),('Stinger','stinger',80000,'sportsclassics'),('Stinger GT','stingergt',75000,'sportsclassics'),('Streiter','streiter',500000,'sports'),('Stretch','stretch',90000,'sedans'),('Stromberg','stromberg',3185350,'sports'),('Sultan','sultan',15000,'sports'),('Sultan RS','sultanrs',65000,'super'),('Super Diamond','superd',130000,'sedans'),('Surano','surano',50000,'sports'),('Surfer','surfer',12000,'vans'),('T20','t20',300000,'super'),('Tailgater','tailgater',30000,'sedans'),('Tampa','tampa',16000,'muscle'),('Drift Tampa','tampa2',80000,'sports'),('Thrust','thrust',24000,'motorcycles'),('Tri bike (velo)','tribike3',520,'motorcycles'),('Trophy Truck','trophytruck',60000,'offroad'),('Trophy Truck Limited','trophytruck2',80000,'offroad'),('Tropos','tropos',40000,'sports'),('Turismo R','turismor',350000,'super'),('Tyrus','tyrus',600000,'super'),('Vacca','vacca',120000,'super'),('Vader','vader',7200,'motorcycles'),('Verlierer','verlierer2',70000,'sports'),('Vigero','vigero',12500,'muscle'),('Virgo','virgo',14000,'muscle'),('Viseris','viseris',875000,'sportsclassics'),('Visione','visione',2250000,'super'),('Voltic','voltic',90000,'super'),('Voltic 2','voltic2',3830400,'super'),('Voodoo','voodoo',7200,'muscle'),('Vortex','vortex',9800,'motorcycles'),('Warrener','warrener',4000,'sedans'),('Washington','washington',9000,'sedans'),('Windsor','windsor',95000,'coupes'),('Windsor Drop','windsor2',125000,'coupes'),('Woflsbane','wolfsbane',9000,'motorcycles'),('XLS','xls',32000,'suvs'),('Yosemite','yosemite',485000,'muscle'),('Youga','youga',10800,'vans'),('Youga Luxuary','youga2',14500,'vans'),('Z190','z190',900000,'sportsclassics'),('Zentorno','zentorno',1500000,'super'),('Zion','zion',36000,'coupes'),('Zion Cabrio','zion2',45000,'coupes'),('Zombie','zombiea',9500,'motorcycles'),('Zombie Luxuary','zombieb',12000,'motorcycles'),('Z-Type','ztype',220000,'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weashops`
--

DROP TABLE IF EXISTS `weashops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weashops`
--

LOCK TABLES `weashops` WRITE;
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
INSERT INTO `weashops` VALUES (1,'GunShop','WEAPON_PISTOL',300),(2,'BlackWeashop','WEAPON_PISTOL',500),(3,'GunShop','WEAPON_FLASHLIGHT',60),(4,'BlackWeashop','WEAPON_FLASHLIGHT',70),(5,'GunShop','WEAPON_MACHETE',90),(6,'BlackWeashop','WEAPON_MACHETE',110),(7,'GunShop','WEAPON_NIGHTSTICK',150),(8,'BlackWeashop','WEAPON_NIGHTSTICK',150),(9,'GunShop','WEAPON_BAT',100),(10,'BlackWeashop','WEAPON_BAT',100),(11,'GunShop','WEAPON_STUNGUN',50),(12,'BlackWeashop','WEAPON_STUNGUN',50),(13,'GunShop','WEAPON_MICROSMG',1400),(14,'BlackWeashop','WEAPON_MICROSMG',1700),(15,'GunShop','WEAPON_PUMPSHOTGUN',3400),(16,'BlackWeashop','WEAPON_PUMPSHOTGUN',3500),(17,'GunShop','WEAPON_ASSAULTRIFLE',10000),(18,'BlackWeashop','WEAPON_ASSAULTRIFLE',11000),(19,'GunShop','WEAPON_SPECIALCARBINE',15000),(20,'BlackWeashop','WEAPON_SPECIALCARBINE',16500),(21,'GunShop','WEAPON_SNIPERRIFLE',22000),(22,'BlackWeashop','WEAPON_SNIPERRIFLE',24000),(23,'GunShop','WEAPON_FIREWORK',18000),(24,'BlackWeashop','WEAPON_FIREWORK',20000),(25,'GunShop','WEAPON_GRENADE',500),(26,'BlackWeashop','WEAPON_GRENADE',650),(27,'GunShop','WEAPON_BZGAS',200),(28,'BlackWeashop','WEAPON_BZGAS',350),(29,'GunShop','WEAPON_FIREEXTINGUISHER',100),(30,'BlackWeashop','WEAPON_FIREEXTINGUISHER',100),(31,'GunShop','WEAPON_BALL',50),(32,'BlackWeashop','WEAPON_BALL',50),(33,'GunShop','WEAPON_SMOKEGRENADE',100),(34,'BlackWeashop','WEAPON_SMOKEGRENADE',100),(35,'BlackWeashop','WEAPON_APPISTOL',1100),(36,'BlackWeashop','WEAPON_CARBINERIFLE',12000),(37,'BlackWeashop','WEAPON_HEAVYSNIPER',30000),(38,'BlackWeashop','WEAPON_MINIGUN',45000),(39,'BlackWeashop','WEAPON_RAILGUN',50000),(40,'BlackWeashop','WEAPON_STICKYBOMB',500);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-23  5:50:27
