-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: 0028_Lab_Exam
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `0028_Lab_Exam`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `0028_Lab_Exam` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `0028_Lab_Exam`;

--
-- Table structure for table `Hero`
--

DROP TABLE IF EXISTS `Hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hero` (
  `Hero_id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Detail` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Picture_link` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Hero_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hero`
--

LOCK TABLES `Hero` WRITE;
/*!40000 ALTER TABLE `Hero` DISABLE KEYS */;
INSERT INTO `Hero` VALUES (1,'Robert John Downey, Jr','เกิดเมื่อวันที่ 4 เมษายน ค.ศ. 1965 เป็นนักแสดง นักดนตรีชายชาวอเมริกัน มีชื่อเสียงจากการรับบทเป็น ไอรอนแมน (Iron Man) จากภาพยนตร์ของค่ายหนัง Marvel Studios','https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Robert_Downey_Jr_2014_Comic_Con_%28cropped%29.jpg/220px-Robert_Downey_Jr_2014_Comic_Con_%28cropped%29.jpg'),(2,'John Christopher Depp II','จอห์นนี เดปป์ เกิดวันที่ 9 มิถุนายน ค.ศ. 1963 เมืองโอเวนสโบโร รัฐเคนทักกี สหรัฐอเมริกา เขา เป็นลูกชายคนสุดท้องในบรรดาพี่น้อง 4 คนของ จอห์น คริสโตเฟอร์ เดปป์ ซีเนียร์ ซึ่งเป็นวิศวกรโยธา และ เบตตี้ ซู ปาล์มเมอร์','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/JohnnyDeppHWOFJune2013.jpg/220px-JohnnyDeppHWOFJune2013.jpg'),(3,'Daniel Wroughton Craig CMG','แดเนียล รอตัน เคร็ก ซีเอ็มจี (อังกฤษ: Daniel Wroughton Craig CMG) (เกิดวันที่ 2 มีนาคม ค.ศ. 1968) เป็นนักแสดงชาวอังกฤษ เขาได้รับชื่อเสียงในระดับนานาชาติจากการรับบทเป็นเจมส์ บอนด์ในภาพยนตร์ชุดบอนด์','https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Daniel_Craig_in_2021.jpg/220px-Daniel_Craig_in_2021.jpg');
/*!40000 ALTER TABLE `Hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hero_in_movie`
--

DROP TABLE IF EXISTS `Hero_in_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hero_in_movie` (
  `Hero_id` int NOT NULL,
  `Movie_id` int NOT NULL,
  PRIMARY KEY (`Hero_id`,`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hero_in_movie`
--

LOCK TABLES `Hero_in_movie` WRITE;
/*!40000 ALTER TABLE `Hero_in_movie` DISABLE KEYS */;
INSERT INTO `Hero_in_movie` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(3,6);
/*!40000 ALTER TABLE `Hero_in_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movie` (
  `Movie_id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Trailer_link` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (1,'ไอรอนแมน มหาประลัย คน เกราะ เหล็ก 3','https://www.youtube.com/watch?v=Ke1Y3P9D0Bc'),(2,'เชอร์ล็อค โฮล์มส์ ดับแผนพิฆาตโลก','https://www.youtube.com/watch?v=xm2B8zce_pg'),(3,'Pirates of the Caribbean : สงครามแค้นโจรสลัดไร้ชีพ','https://www.youtube.com/watch?v=fpPv8XdjW8w'),(4,'สัตว์มหัศจรรย์: อาชญากรรมของกรินเดลวัลด์','https://www.youtube.com/watch?v=zZpQd-R9XVU'),(5,'No Time to Die | 007 พยัคฆ์ร้ายฝ่าเวลามรณะ','https://www.youtube.com/watch?v=1MYwxEizZvE'),(6,'สงครามพันธุ์เดือด คาวบอยปะทะเอเลี่ยน','https://www.youtube.com/watch?v=M64b_44zpyk');
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-15  2:14:58
