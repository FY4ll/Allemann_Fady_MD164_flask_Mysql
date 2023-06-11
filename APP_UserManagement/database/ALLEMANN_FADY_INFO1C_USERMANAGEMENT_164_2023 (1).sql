CREATE DATABASE  IF NOT EXISTS `allemann_fady_info1c_usermanagement_164_2023` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `allemann_fady_info1c_usermanagement_164_2023`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: allemann_fady_info1c_usermanagement_164_2023
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `t_departement`
--

DROP TABLE IF EXISTS `t_departement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_departement` (
  `ID_departement` int NOT NULL AUTO_INCREMENT,
  `nom_departement` varchar(255) DEFAULT NULL,
  `type_departement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_departement`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_departement`
--

LOCK TABLES `t_departement` WRITE;
/*!40000 ALTER TABLE `t_departement` DISABLE KEYS */;
INSERT INTO `t_departement` VALUES (1,'Devellopemnent d\'application','informatique'),(2,'maintenance systeme','informatique'),(3,'Gestion des usines','Direction'),(4,'Gestion des resources','Direction'),(5,'Gestion des employes','Administratif'),(6,'Imprimerie','informatique');
/*!40000 ALTER TABLE `t_departement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_person`
--

DROP TABLE IF EXISTS `t_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_person` (
  `ID_Person` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(255) DEFAULT NULL,
  `Last_name` varchar(255) DEFAULT NULL,
  `Birth_date` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID_Person`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person`
--

LOCK TABLES `t_person` WRITE;
/*!40000 ALTER TABLE `t_person` DISABLE KEYS */;
INSERT INTO `t_person` VALUES (1,'fady','allemann','2012-06-21','H'),(2,'jean','michel','2023-06-08','F'),(3,'janne','michael','2023-06-19','X'),(4,'Micheal','ibramovich','2023-06-26','H'),(5,'Vladimir','putin','2023-06-30','X'),(6,'Frro','jsp','2023-06-28','F');
/*!40000 ALTER TABLE `t_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_personne_avoir_compte`
--

DROP TABLE IF EXISTS `t_personne_avoir_compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_personne_avoir_compte` (
  `id_personne_avoir_compte` int NOT NULL AUTO_INCREMENT,
  `fk_personne` int DEFAULT NULL,
  `fk_compte` int DEFAULT NULL,
  PRIMARY KEY (`id_personne_avoir_compte`),
  KEY `t_personne_avoir_compte___fk_compte` (`fk_compte`),
  KEY `t_personne_avoir_compte___fk_personne` (`fk_personne`),
  CONSTRAINT `t_personne_avoir_compte___fk_compte` FOREIGN KEY (`fk_compte`) REFERENCES `t_user_account` (`ID_account`),
  CONSTRAINT `t_personne_avoir_compte___fk_personne` FOREIGN KEY (`fk_personne`) REFERENCES `t_person` (`ID_Person`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_personne_avoir_compte`
--

LOCK TABLES `t_personne_avoir_compte` WRITE;
/*!40000 ALTER TABLE `t_personne_avoir_compte` DISABLE KEYS */;
INSERT INTO `t_personne_avoir_compte` VALUES (1,1,2),(2,2,1),(3,3,3),(4,4,4),(5,5,5),(6,6,6);
/*!40000 ALTER TABLE `t_personne_avoir_compte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_personne_avoir_role`
--

DROP TABLE IF EXISTS `t_personne_avoir_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_personne_avoir_role` (
  `id_personne_avoir_role` int NOT NULL AUTO_INCREMENT,
  `fk_role` int DEFAULT NULL,
  `fk_Personne` int DEFAULT NULL,
  PRIMARY KEY (`id_personne_avoir_role`),
  KEY `t_personne_avoir_role___fk_fk_Personne` (`fk_Personne`),
  KEY `t_personne_avoir_role___fk_fk_role` (`fk_role`),
  CONSTRAINT `t_personne_avoir_role___fk_fk_Personne` FOREIGN KEY (`fk_Personne`) REFERENCES `t_person` (`ID_Person`),
  CONSTRAINT `t_personne_avoir_role___fk_fk_role` FOREIGN KEY (`fk_role`) REFERENCES `t_role` (`ID_role`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_personne_avoir_role`
--

LOCK TABLES `t_personne_avoir_role` WRITE;
/*!40000 ALTER TABLE `t_personne_avoir_role` DISABLE KEYS */;
INSERT INTO `t_personne_avoir_role` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6);
/*!40000 ALTER TABLE `t_personne_avoir_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role` (
  `ID_role` int NOT NULL AUTO_INCREMENT,
  `Role_name` varchar(255) DEFAULT NULL,
  `Access_level` int DEFAULT NULL,
  PRIMARY KEY (`ID_role`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'Owner',6),(2,'admin',5),(3,'testeur',4),(4,'visiteur',1),(5,'informaticien',5),(6,'employer',2);
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_account`
--

DROP TABLE IF EXISTS `t_user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_account` (
  `ID_account` int NOT NULL AUTO_INCREMENT,
  `User_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_account`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_account`
--

LOCK TABLES `t_user_account` WRITE;
/*!40000 ALTER TABLE `t_user_account` DISABLE KEYS */;
INSERT INTO `t_user_account` VALUES (1,'Michel123','a'),(2,'F4YLL','eheheh'),(3,'jean123','b'),(4,'jeanmi123','c'),(5,'michael123','d'),(6,'jspmonfrr','e');
/*!40000 ALTER TABLE `t_user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'allemann_fady_info1c_usermanagement_164_2023'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-11 21:12:28
