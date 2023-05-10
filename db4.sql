CREATE DATABASE  IF NOT EXISTS `qlns` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `qlns`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: qlns
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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `manv` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`manv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('NV001','NV001','nhanvien','NV001'),('NV002','123','nhanvien','NV002'),('NV003','NV003','nhanvien','NV003'),('NV004','NV004','admin','NV004'),('NV005','NV005','nhanvien','NV005'),('NV006','NV006','nhanvien','NV006'),('NV011','NV011','nhanvien','NV011');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chamcong`
--

DROP TABLE IF EXISTS `chamcong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chamcong` (
  `ngay` date NOT NULL,
  `manv` varchar(50) NOT NULL,
  `trangthai` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ngay`,`manv`),
  KEY `manv` (`manv`),
  CONSTRAINT `chamcong_ibfk_1` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamcong`
--

LOCK TABLES `chamcong` WRITE;
/*!40000 ALTER TABLE `chamcong` DISABLE KEYS */;
INSERT INTO `chamcong` VALUES ('3923-04-01','NV001','1'),('3923-04-01','NV002','1'),('3923-04-01','NV003','1'),('3923-04-01','NV004','1'),('3923-04-01','NV005','1'),('3923-04-01','NV006','1'),('3923-04-01','NV011','1'),('3923-04-02','NV001','1'),('3923-04-02','NV002','1'),('3923-04-02','NV003','1'),('3923-04-02','NV004','1'),('3923-04-02','NV005','1'),('3923-04-02','NV006','1'),('3923-04-02','NV011','1'),('3923-04-03','NV001','1'),('3923-04-03','NV002','1'),('3923-04-03','NV003','1'),('3923-04-03','NV004','1'),('3923-04-03','NV005','1'),('3923-04-03','NV006','1'),('3923-04-03','NV011','1'),('3923-04-04','NV001','1'),('3923-04-04','NV002','1'),('3923-04-04','NV003','1'),('3923-04-04','NV004','1'),('3923-04-04','NV005','1'),('3923-04-04','NV006','1'),('3923-04-04','NV011','1'),('3923-04-05','NV001','1'),('3923-04-05','NV002','1'),('3923-04-05','NV003','1'),('3923-04-05','NV004','1'),('3923-04-05','NV005','1'),('3923-04-05','NV006','1'),('3923-04-05','NV011','0'),('3923-04-06','NV001','1'),('3923-04-06','NV002','1'),('3923-04-06','NV003','1'),('3923-04-06','NV004','1'),('3923-04-06','NV005','1'),('3923-04-06','NV006','1'),('3923-04-06','NV011','0'),('3923-04-07','NV001','1'),('3923-04-07','NV002','1'),('3923-04-07','NV003','1'),('3923-04-07','NV004','1'),('3923-04-07','NV005','0'),('3923-04-07','NV006','1'),('3923-04-07','NV011','1'),('3923-04-08','NV001','1'),('3923-04-08','NV002','1'),('3923-04-08','NV003','1'),('3923-04-08','NV004','0'),('3923-04-08','NV005','1'),('3923-04-08','NV006','1'),('3923-04-08','NV011','0'),('3923-04-09','NV001','1'),('3923-04-09','NV002','1'),('3923-04-09','NV003','1'),('3923-04-09','NV004','1'),('3923-04-09','NV005','1'),('3923-04-09','NV006','0'),('3923-04-09','NV011','1'),('3923-04-10','NV001','1'),('3923-04-10','NV002','1'),('3923-04-10','NV003','1'),('3923-04-10','NV004','1'),('3923-04-10','NV005','1'),('3923-04-10','NV006','0'),('3923-04-10','NV011','1'),('3923-04-11','NV001','1'),('3923-04-11','NV002','1'),('3923-04-11','NV003','1'),('3923-04-11','NV004','1'),('3923-04-11','NV005','1'),('3923-04-11','NV006','1'),('3923-04-11','NV011','1'),('3923-04-12','NV001','1'),('3923-04-12','NV002','1'),('3923-04-12','NV003','1'),('3923-04-12','NV004','1'),('3923-04-12','NV005','1'),('3923-04-12','NV006','0'),('3923-04-12','NV011','1'),('3923-04-13','NV001','1'),('3923-04-13','NV002','1'),('3923-04-13','NV003','1'),('3923-04-13','NV004','1'),('3923-04-13','NV005','0'),('3923-04-13','NV006','1'),('3923-04-13','NV011','1'),('3923-04-14','NV001','1'),('3923-04-14','NV002','1'),('3923-04-14','NV003','1'),('3923-04-14','NV004','1'),('3923-04-14','NV005','1'),('3923-04-14','NV006','1'),('3923-04-14','NV011','1'),('3923-04-15','NV001','1'),('3923-04-15','NV002','1'),('3923-04-15','NV003','1'),('3923-04-15','NV004','1'),('3923-04-15','NV005','1'),('3923-04-15','NV006','1'),('3923-04-15','NV011','0'),('3923-04-16','NV001','1'),('3923-04-16','NV002','1'),('3923-04-16','NV003','1'),('3923-04-16','NV004','1'),('3923-04-16','NV005','0'),('3923-04-16','NV006','0'),('3923-04-16','NV011','1'),('3923-04-17','NV001','1'),('3923-04-17','NV002','1'),('3923-04-17','NV003','1'),('3923-04-17','NV004','1'),('3923-04-17','NV005','1'),('3923-04-17','NV006','1'),('3923-04-17','NV011','1'),('3923-04-18','NV001','1'),('3923-04-18','NV002','1'),('3923-04-18','NV003','1'),('3923-04-18','NV004','1'),('3923-04-18','NV005','1'),('3923-04-18','NV006','1'),('3923-04-18','NV011','1'),('3923-04-19','NV001','1'),('3923-04-19','NV002','1'),('3923-04-19','NV003','1'),('3923-04-19','NV004','1'),('3923-04-19','NV005','1'),('3923-04-19','NV006','1'),('3923-04-19','NV011','0'),('3923-04-20','NV001','1'),('3923-04-20','NV002','1'),('3923-04-20','NV003','1'),('3923-04-20','NV004','1'),('3923-04-20','NV005','1'),('3923-04-20','NV006','1'),('3923-04-20','NV011','1'),('3923-04-21','NV001','1'),('3923-04-21','NV002','1'),('3923-04-21','NV003','1'),('3923-04-21','NV004','1'),('3923-04-21','NV005','1'),('3923-04-21','NV006','1'),('3923-04-21','NV011','1'),('3923-04-22','NV001','1'),('3923-04-22','NV002','1'),('3923-04-22','NV003','1'),('3923-04-22','NV004','1'),('3923-04-22','NV005','1'),('3923-04-22','NV006','0'),('3923-04-22','NV011','1'),('3923-04-23','NV001','1'),('3923-04-23','NV002','1'),('3923-04-23','NV003','1'),('3923-04-23','NV004','1'),('3923-04-23','NV005','1'),('3923-04-23','NV006','1'),('3923-04-23','NV011','0'),('3923-04-24','NV001','1'),('3923-04-24','NV002','1'),('3923-04-24','NV003','1'),('3923-04-24','NV004','1'),('3923-04-24','NV005','1'),('3923-04-24','NV006','1'),('3923-04-24','NV011','1'),('3923-04-25','NV001','1'),('3923-04-25','NV002','1'),('3923-04-25','NV003','1'),('3923-04-25','NV004','1'),('3923-04-25','NV005','1'),('3923-04-25','NV006','1'),('3923-04-25','NV011','1'),('3923-04-26','NV001','1'),('3923-04-26','NV002','1'),('3923-04-26','NV003','1'),('3923-04-26','NV004','1'),('3923-04-26','NV005','1'),('3923-04-26','NV006','1'),('3923-04-26','NV011','1'),('3923-05-01','NV001','1'),('3923-05-01','NV002','1'),('3923-05-01','NV003','1'),('3923-05-01','NV004','1'),('3923-05-01','NV005','1'),('3923-05-01','NV006','1'),('3923-05-01','NV011','1'),('3923-05-08','NV001','1'),('3923-05-08','NV002','1'),('3923-05-08','NV003','1'),('3923-05-08','NV004','1'),('3923-05-08','NV005','1'),('3923-05-08','NV006','1'),('3923-05-08','NV011','0'),('3923-05-09','NV001','1'),('3923-05-09','NV002','1'),('3923-05-09','NV003','0'),('3923-05-09','NV004','0'),('3923-05-09','NV005','0'),('3923-05-09','NV006','0'),('3923-05-09','NV011','0'),('3923-05-10','NV001','1'),('3923-05-10','NV002','1'),('3923-05-10','NV003','0'),('3923-05-10','NV004','0'),('3923-05-10','NV005','0'),('3923-05-10','NV006','0'),('3923-05-10','NV011','0'),('3923-05-18','NV001','1'),('3923-05-18','NV002','1'),('3923-05-18','NV003','1'),('3923-05-18','NV004','1'),('3923-05-18','NV005','1'),('3923-05-18','NV006','1'),('3923-05-18','NV011','1'),('3923-05-19','NV001','1'),('3923-05-19','NV002','1'),('3923-05-19','NV003','1'),('3923-05-19','NV004','1'),('3923-05-19','NV005','1'),('3923-05-19','NV006','1'),('3923-05-19','NV011','1'),('3923-05-20','NV001','1'),('3923-06-01','NV001','1'),('3923-06-01','NV002','1'),('3923-06-01','NV003','0'),('3923-06-01','NV004','0'),('3923-06-01','NV005','0'),('3923-06-01','NV006','0'),('3923-06-01','NV011','0'),('3923-06-09','NV001','1'),('3923-06-09','NV002','1'),('3923-06-09','NV003','1'),('3923-06-09','NV004','0'),('3923-06-09','NV005','1'),('3923-06-09','NV006','0'),('3923-06-09','NV011','0'),('3923-06-10','NV001','1'),('3923-06-10','NV002','1'),('3923-06-10','NV003','1'),('3923-06-10','NV004','0'),('3923-06-10','NV005','0'),('3923-06-10','NV006','1'),('3923-06-10','NV011','0');
/*!40000 ALTER TABLE `chamcong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chamcong2`
--

DROP TABLE IF EXISTS `chamcong2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chamcong2` (
  `manv` varchar(255) NOT NULL,
  `ngay` date NOT NULL,
  `trangthai` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`manv`,`ngay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamcong2`
--

LOCK TABLES `chamcong2` WRITE;
/*!40000 ALTER TABLE `chamcong2` DISABLE KEYS */;
INSERT INTO `chamcong2` VALUES ('NV001','3923-05-20','co');
/*!40000 ALTER TABLE `chamcong2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chucvu`
--

DROP TABLE IF EXISTS `chucvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chucvu` (
  `macv` varchar(50) NOT NULL,
  `tencv` varchar(50) DEFAULT NULL,
  `phongban` varchar(50) DEFAULT NULL,
  `luongcoban` mediumtext,
  `phucap` int NOT NULL,
  PRIMARY KEY (`macv`),
  KEY `phongban` (`phongban`),
  CONSTRAINT `chucvu_ibfk_1` FOREIGN KEY (`phongban`) REFERENCES `phongban` (`mapb`),
  CONSTRAINT `chucvu_ibfk_2` FOREIGN KEY (`phongban`) REFERENCES `phongban` (`mapb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucvu`
--

LOCK TABLES `chucvu` WRITE;
/*!40000 ALTER TABLE `chucvu` DISABLE KEYS */;
INSERT INTO `chucvu` VALUES ('GDKT','GIAMDOC','KT','10000',500),('GDSX','GIAMDOC','SX','10000',500),('GDTC','GIAMDOC','TC','10000',500),('NV','NHANVIEN','KD','6000',200),('NVKT','NHANVIEN','KT','6000',200),('NVSX','NHANVIEN','SX','6000',200),('NVTC','NHANVIEN','TC','6000',200),('TP','TRUONGPHONG','KD','8000',300),('TPKT','TRUONGPHONG','KT','8000',300),('TPSX','TRUONGPHONG','SX','8000',300),('TPTC','TRUONGPHONG','TC','8000',300);
/*!40000 ALTER TABLE `chucvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luong`
--

DROP TABLE IF EXISTS `luong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luong` (
  `manv` varchar(50) NOT NULL,
  `songaylam` int DEFAULT NULL,
  PRIMARY KEY (`manv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luong`
--

LOCK TABLES `luong` WRITE;
/*!40000 ALTER TABLE `luong` DISABLE KEYS */;
INSERT INTO `luong` VALUES ('NV001',0),('NV002',0),('NV003',0),('NV004',0),('NV005',0),('NV006',0),('NV011',0);
/*!40000 ALTER TABLE `luong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `manv` varchar(50) NOT NULL,
  `tennv` varchar(50) DEFAULT NULL,
  `dc` varchar(100) DEFAULT NULL,
  `sdt` varchar(20) DEFAULT NULL,
  `chucvu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`manv`),
  KEY `chucvu` (`chucvu`),
  CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`chucvu`) REFERENCES `chucvu` (`macv`),
  CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`chucvu`) REFERENCES `chucvu` (`macv`),
  CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`manv`) REFERENCES `luong` (`manv`),
  CONSTRAINT `nhanvien_ibfk_4` FOREIGN KEY (`manv`) REFERENCES `accounts` (`manv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('NV001','LE VAN A','HA DONG','034694543','NVSX'),('NV002','LY Van Trinh','Hai Phong','0923333','NVTC'),('NV003','LE VAN C','THANH XUAN','054645543','NVKT'),('NV004','NGUYEN VAN NAM','HAI PHONG','034212983','TP'),('NV005','NGUYEN VAN SON','QUANG NINH','01234509','TPTC'),('NV006','LY Van Trinh','hải dương','0923333','NVSX'),('NV011','đỖ THỊ THƠM','hải dương','0923333','GDKT');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongban`
--

DROP TABLE IF EXISTS `phongban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongban` (
  `mapb` varchar(50) NOT NULL,
  `tenpb` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mapb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongban`
--

LOCK TABLES `phongban` WRITE;
/*!40000 ALTER TABLE `phongban` DISABLE KEYS */;
INSERT INTO `phongban` VALUES ('KD','KINH DOANH'),('KT','KE TOAN'),('SX','SAN XUAT'),('TC','TAI CHINH');
/*!40000 ALTER TABLE `phongban` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-10 21:41:17
