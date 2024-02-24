-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerid` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`customerid`),
  KEY `FKra1cb3fu95r1a0m7aksow0nk4` (`user_id`),
  CONSTRAINT `FKra1cb3fu95r1a0m7aksow0nk4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'chasttisgarh','piyush@gmail.com','Piyush','Thaur','8794561236','Ppiyush@123',1),(2,'Kolapur','sammed@gmail.com','Sammed','Chougule','8965473215','Ssammed@123',2),(3,'jalgav','kunal@gmail.com','kunal','Bagde','9876541236','Kkunal@123',3),(4,'nandeed','gunjan@gmail.com','gunjan','Deewakar','6987456321','Ggunjan@123',4),(5,'Vimman nagar','aashi@gmail.com','Aashi','Sharma','7896541236','Aashi@123',5),(6,'Mumbai','Rushikesh@gmail.com','Rushikesh','Thakur','9876542369','Rrushikesh@123',6),(7,'Vanaz Pune','sharad@gmail.com','Sharad','Chouglle','9876542658','Ssharad@123',7),(8,'Bandikui','shubham@gmail.com','Shubham','Agarwal','9876548965','Sshubham@123',8);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic`
--

DROP TABLE IF EXISTS `mechanic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic` (
  `mechanicid` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`mechanicid`),
  KEY `FK2tpu5ebd3hs3sbo3s11k7eqql` (`user_id`),
  CONSTRAINT `FK2tpu5ebd3hs3sbo3s11k7eqql` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic`
--

LOCK TABLES `mechanic` WRITE;
/*!40000 ALTER TABLE `mechanic` DISABLE KEYS */;
INSERT INTO `mechanic` VALUES (1,'latur','rohit@gmail.com','Rohit','ugile','9875694896','Rrohit@123',0,'washing',9),(2,'MadhyaPradesh','yash@gmail.com','Yash','Gore','6987546321','Yyash@123',0,'EngineChecker',10),(3,'B-44 mahesh nagar jaipur','rishabh@gmail.com','Rishabh ','Agarwal','8766671113','Rrishabh21@',0,'All Rounder',11),(4,'Uttar pradesh','Aashutosh@gmail.com','Aashutosh','Singh','9874569856','Aashutosh@123',0,'Checking',12);
/*!40000 ALTER TABLE `mechanic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `bill` int DEFAULT NULL,
  `enquiry_date` date DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `problem_description` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `vehicle_brand` varchar(255) DEFAULT NULL,
  `vehicle_category` varchar(255) DEFAULT NULL,
  `vehicle_model` varchar(255) DEFAULT NULL,
  `vehicle_name` varchar(255) DEFAULT NULL,
  `vehicle_no` varchar(255) DEFAULT NULL,
  `customer_customerid` int DEFAULT NULL,
  `mechanic_mechanicid` int DEFAULT NULL,
  PRIMARY KEY (`request_id`),
  KEY `FKqr3jv7kinh4mtksi7oh83kdfw` (`customer_customerid`),
  KEY `FK7j2m1cimodrphq0h7gurblsxl` (`mechanic_mechanicid`),
  CONSTRAINT `FK7j2m1cimodrphq0h7gurblsxl` FOREIGN KEY (`mechanic_mechanicid`) REFERENCES `mechanic` (`mechanicid`),
  CONSTRAINT `FKqr3jv7kinh4mtksi7oh83kdfw` FOREIGN KEY (`customer_customerid`) REFERENCES `customer` (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (1,NULL,'2024-02-23',NULL,'Engine Problem',NULL,'Pending','Hero','Two Wheeler','xyz','splender','rj6767',1,NULL),(2,NULL,'2024-02-23',NULL,'Washing',NULL,'Pending','MarutiSujuki','Four Wheeler','T143x','Alto','RJAC6868',1,NULL),(3,NULL,'2024-02-23',NULL,'Polution problem',NULL,'Pending','Activa','Two Wheeler','hsbxd2','Scooty','MH22',2,NULL),(4,NULL,'2024-02-23',NULL,'Engine Problem',NULL,'Pending','MarutiSujuki','Four Wheeler','unschd','Alto','MHAC9876',2,NULL),(5,NULL,'2024-02-23',NULL,'Not Started',NULL,'Pending','Splender','Two Wheeler','undh2','Scooter','MHCA98',3,NULL),(6,NULL,'2024-02-23',NULL,'Washing',NULL,'Pending','BMW','Four Wheeler','HUeb32','Car','MH231Ac',3,NULL),(7,NULL,'2024-02-23',NULL,'Plug problem',NULL,'Pending','Activa','Two Wheeler','Aundh21','Scooty','Mh22AH',4,NULL),(8,NULL,'2024-02-23',NULL,'Washing',NULL,'Pending','Fortuner','Four Wheeler','Husmh2134','car','MH4141',4,NULL),(9,NULL,'2024-02-23',NULL,'Not Started',NULL,'Pending','honda','Two Wheeler','2012','activa','MH 22 YG 9867',5,NULL),(10,NULL,'2024-02-23',NULL,'Polution problem',NULL,'Pending','MarutiSujuki','Four Wheeler','2008','Alto','MH 22 PT 5674',5,NULL),(11,NULL,'2024-02-23',NULL,'Washing',NULL,'Pending','honda','Two Wheeler','2022','JAVA','MH 22 RU 4325',6,NULL),(12,NULL,'2024-02-23',NULL,'Polution problem',NULL,'Pending','MarutiSujuki','Four Wheeler','2018','Brezza','MH 22 KL 7690',6,NULL),(13,NULL,'2024-02-23',NULL,'Not Started',NULL,'Pending','Hero','Two Wheeler','2023','Splender','MH 22 GK 5238',7,NULL),(14,NULL,'2024-02-23',NULL,'Alignment',NULL,'Pending','Tata','Four Wheeler','2019','Nexon','MH 22 XM 7643',7,NULL);
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'piyush@gmail.com','Ppiyush@123','customer'),(2,'sammed@gmail.com','Ssammed@123','customer'),(3,'kunal@gmail.com','Kkunal@123','customer'),(4,'gunjan@gmail.com','Ggunjan@123','customer'),(5,'aashi@gmail.com','Aashi@123','customer'),(6,'Rushikesh@gmail.com','Rrushikesh@123','customer'),(7,'sharad@gmail.com','Ssharad@123','customer'),(8,'shubham@gmail.com','Sshubham@123','customer'),(9,'rohit@gmail.com','Rrohit@123','mechanic'),(10,'yash@gmail.com','Yyash@123','mechanic'),(11,'rishabh@gmail.com','Rrishabh21@','mechanic'),(12,'Aashutosh@gmail.com','Aashutosh@123','mechanic'),(13,'admin@gmail.com','Aadmin@123','admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'project'
--

--
-- Dumping routines for database 'project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 20:11:00
