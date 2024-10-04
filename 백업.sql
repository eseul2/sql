-- MyDAC version: 10.4.3
-- MySQL server version: 8.0.39
-- MySQL client version: 8.0.0 Direct
-- Script date 2024/09/26 오전 10:43:39
-- ---------------------------------------------------------------------- 
-- Server: 127.0.0.1
-- Database: aws0822

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- 
-- Table structure for table `member`
-- 

DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `midx` int NOT NULL AUTO_INCREMENT,
  `memberid` varchar(100) NOT NULL,
  `memberpw` varchar(100) NOT NULL,
  `membername` varchar(100) NOT NULL,
  `membergender` char(1) NOT NULL,
  `memberbirth` varchar(10) DEFAULT NULL,
  `memberaddr` varchar(10) DEFAULT NULL,
  `memberphone` varchar(20) DEFAULT NULL,
  `memberemail` varchar(100) DEFAULT NULL,
  `memberhobby` varchar(100) DEFAULT NULL,
  `delyn` char(1) NOT NULL DEFAULT 'N',
  `writeday` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `memberip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`midx`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table `member`
-- 

LOCK TABLES `member` WRITE;
INSERT INTO `member` VALUES
 (1,'hong','1234','홍길동','M','19990101','대전','01047478585','hong@naver.com','축구','N','2024-09-25 12:31:01',NULL),
 (2,'lee','5678','이순신','M','19980102','서울','01012345678','lee@naver.com','야구','N','2024-09-25 12:31:01',NULL),
 (3,'seul','9101','김이슬','F','19960202','대전','01099171102','dltmfsus@naver.com','독서','N','2024-09-25 12:31:01',NULL),
 (4,'kim','1112','김개똥','M','19570623','인천천','01012123456','kim@naver.com','야구','N','2024-09-25 12:31:01',NULL),
 (5,'jang','4895','장만월','F','19931223','대구','01035678654','jang@naver.com','농구','N','2024-09-25 12:31:02',NULL),
 (6,'han','5686','한석봉','M','19780318','제주도','01047759175','han@naver.com','달리기','N','2024-09-25 12:31:02',NULL),
 (7,'park','4967','박동자','M','19760809','인천','01087879090','park@naver.com','독서','N','2024-09-25 12:31:02',NULL),
 (8,'jung','0783','정월이','F','20051225','서울','01047867878','jung@naver.com','축구','N','2024-09-25 12:31:02',NULL),
 (9,'king','2367','왕대박','M','19970506','서울','01041294507','king@naver.com','달리기','N','2024-09-25 12:31:02',NULL),
 (10,'hwang','8686','황진이','F','19930924','광주','01016794356','hwang@naver.com','노래','N','2024-09-25 12:31:02',NULL),
 (11,'kang','7935','강준','M','20070704','부산','01047853365','kang@naver.com','노래','N','2024-09-25 12:31:02',NULL);
UNLOCK TABLES;

-- 
-- Table structure for table `sample`
-- 

DROP TABLE IF EXISTS `sample`;
CREATE TABLE `sample` (
  `name` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table `sample`
-- 

LOCK TABLES `sample` WRITE;
INSERT INTO `sample` VALUES
 ('홍길동',20),
 ('이순신',30),
 ('세종대왕',50);
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
