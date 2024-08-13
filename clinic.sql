-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clinic
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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `doctor_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `status` enum('pending','accepted','cancelled') DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'mohamed','m@m.com','01016023105',3,'2000-01-11','cancelled',NULL,'2023-10-05 13:04:11'),(2,'gamal','mm@g.com','01016023105',1,'2000-01-11','cancelled',NULL,NULL),(3,'mohamed','mmm@g.com','01016023105',7,'1999-02-05','accepted',NULL,NULL),(4,'mohamed','j@j.com','01016023105',8,'2020-11-30','accepted',NULL,NULL),(5,'mohamed','mohamedamarttt777@gmail.com','01016023115',2,'2000-11-22',NULL,'2023-10-06 11:06:06','2023-10-06 11:06:06'),(7,'ahmed','h@h.h','01016023105',2,'2000-11-22','pending','2023-10-06 11:08:33','2023-10-06 11:08:33');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `message` varchar(250) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (5,'mohamed','jam@j.com','clinic system','01016023105','hhrgw uogwefwuuh whweh ef','2023-10-04 16:32:04','2023-10-04 16:32:04'),(7,'mohamed','u@u.u','fowifmw','01016023105','kmfrw   wn wf  rnwlfjnw  fdjjwenf','2023-10-04 16:37:22','2023-10-04 16:37:22'),(8,'mohamed','efok@k.com','ef ijif','01016023105','f2jmflk4n 4f nf g 34gt hrth rth rth rt','2023-10-04 16:38:26','2023-10-04 16:38:26'),(9,'mohamed','ef@e.com','010166025','01016023105','f32 mf l4f3 g3 g','2023-10-04 16:41:08','2023-10-04 16:41:08'),(10,'mohamed','ef@e.com','010166025','01016023105','f32 mf l4f3 g3 g','2023-10-04 16:41:08','2023-10-04 16:41:08');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `major_id` int NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `bio` varchar(250) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `major_id` (`major_id`),
  CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'noah2','m@m.com','$2y$10$LX/DpoYzz5b3oTwzld/XnOtxk9f1BRy41o6uloTiAk/kdg2CZsbuG',2,NULL,'kmhknhtrnhkhnyrhty ty jtjt',NULL,'2023-10-05 09:58:34'),(2,'mohamed','n@s.com','$10$LX/DpoYzz5b3oTwzld/XnOtxk9f1BRy41o6uloTiAk/kdg2CZsbuG',2,NULL,'smth',NULL,NULL),(3,'ahmed','ahmed@d.com','$10$LX/DpoYzz5b3oTwzld/XnOtxk9f1BRy41o6uloTiAk/kdg2CZsbuG',3,NULL,'emd',NULL,NULL),(4,'ali','a@ali.c','$10$LX/DpoYzz5b3oTwzld/XnOtxk9f1BRy41o6uloTiAk/kdg2CZsbuG',4,NULL,'wkmfd',NULL,NULL),(5,'mariam','m@mar.k','$10$LX/DpoYzz5b3oTwzld/XnOtxk9f1BRy41o6uloTiAk/kdg2CZsbuG',5,NULL,'wkmd',NULL,NULL),(6,'Al Pacino','y@f.v','$10$LX/DpoYzz5b3oTwzld/XnOtxk9f1BRy41o6uloTiAk/kdg2CZsbuG',6,NULL,'ekfmm',NULL,NULL),(7,'amar','m@mar.d','$10$LX/DpoYzz5b3oTwzld/XnOtxk9f1BRy41o6uloTiAk/kdg2CZsbuG',7,NULL,'eijm',NULL,NULL),(8,'Iver','istanton0@statcounter.com','$2a$04$ln8mqHrpDESxhWs1m3caJudzNc3D4CoLtnXCawpOdscTIJiPfM0xq',3,NULL,'1',NULL,NULL),(9,'Shelden','scurd1@indiatimes.com','$2a$04$bjaW7rqCpnjBW/owDDFWGePZiClyz2co6vxDYKFzzwA9YhbNlM5O.',3,NULL,'0',NULL,NULL),(10,'Marin','mbew2@alibaba.com','$2a$04$3lZSyoEmgKXiYFipNlDum.7mwkdgUC8ifrUBzs4HV8A.oZVw4IwdO',2,NULL,'1',NULL,NULL),(12,'Granger','gjolland4@ebay.co.uk','$2a$04$460/.62/Y21uU6jqF7.OauVgEzA7RRx.CwUZ4KEXCknCskXzGr52C',2,NULL,'0',NULL,NULL),(13,'Pooh','pdunbabin5@pen.io','$2a$04$v16LPhiCI.jEqUX2G2PWGuXTKrZk4e6b9J5Ed89ndp7ZY1abXMPb.',8,NULL,'1',NULL,NULL),(14,'Cornall','cpetrol6@nasa.gov','$2a$04$MxkKZdTq9d6l6K6CzWw1BeIgU4ixRHqkZumHC5f20EoS04KkOGt.S',7,NULL,'0',NULL,NULL),(15,'Jefferey','jblumfield7@theguardian.com','$2a$04$jFkX5I9bhfet62Ow6CZETeD0S7dZx/KqkgJHBLPv9DLsPHqWRBDTu',7,NULL,'1',NULL,NULL),(16,'Fran','fsidney8@upenn.edu','$2a$04$KoAzmR6T/7UWvfTQuOjTQehLKX790WUPRyd5zUKUFYtYz4wgTHHcm',7,NULL,'0',NULL,NULL),(17,'Giana','gpaxeford9@seattletimes.com','$2a$04$6LetDqa9CAP/Yc5/xDLWtuzYgGl4reqYQdf25yAmmINVsMaSqBv9y',6,NULL,'0',NULL,NULL),(18,'Allene','awessella@utexas.edu','$2a$04$URZDtUkpZLajBWk/Vx8fnOxlL1s8grUTUSt.tBUKkw2Ib.EGiLOU.',5,NULL,'0',NULL,NULL),(19,'Rozele','rjeandonb@about.me','$2a$04$irfMw1eodOQSz6.FCxHknu5JZnR1iLW4qYn4mdD9XwbhEe1oAuy82',1,NULL,'1',NULL,NULL),(20,'Lane','lclawleyc@istockphoto.com','$2a$04$QSz83k44pUzc23lO5FhhwedQXCQd9breVzOW9qF4/oVv/RoBtugm6',2,NULL,'1',NULL,NULL),(21,'Dionisio','dreddingtond@toplist.cz','$2a$04$gaHfenQsX/lx6UOz2VqLUubHuXYRlvqMRO3BqMDrruHWkBX9fDLIi',6,NULL,'0',NULL,NULL),(23,'Quintana','qsummerlyf@acquirethisname.com','$2a$04$.8Wtm7aVF6KCAay5OlDfvOH2W.oEuILjaNi4rpyfGAfPVM.0hLDAa',8,NULL,'0',NULL,NULL),(24,'Raquela','roldredg@wunderground.com','$2a$04$k2ns9vD6FqEoqH2CjO2oD.Q.hw88nQuRNxfALW6mSm5hZW748uLq2',3,NULL,'0',NULL,NULL),(25,'Giuseppe','gwastieh@upenn.edu','$2a$04$j5MafcXCCbdTYpzWA4h1wuXE.LTvLUhwgaX9uxw3v8pzUX4ZSVCbG',8,NULL,'1',NULL,NULL),(26,'Dyana','dlavisi@sbwire.com','$2a$04$wJi9yAQXgA2Bli.qmNmjr.FDhvl2FwFrwibo66iwsZtjOp2ZH.gqG',5,NULL,'1',NULL,NULL),(27,'Melli','mcarrolj@hud.gov','$2a$04$BupqoIzV9iIMzWP.F9GTje1Ku8P39zQ9iUJSKDAUXobhVW03TRHHW',3,NULL,'0',NULL,NULL),(28,'Marcy','mbiaggik@freewebs.com','$2a$04$kZ0lUo5mWaC5KxQPyPE2g.Fdd5pGN581ZRzIezjjYhNAyA4TYs/rS',6,NULL,'1',NULL,NULL),(29,'Sibyl','sherculesonl@yale.edu','$2a$04$0SbbKLFZl14USRuUYQO58eaMj8Mh.MxDnb4LEImVDwzAItMQcTH26',7,NULL,'1',NULL,NULL),(30,'Gordan','gorumm@yahoo.co.jp','$2a$04$Xs8q2iyQv0gWAo3Fwww9Wem9V3K/yq4rP8zIRH.hqvhg0dYvdHy7y',5,NULL,'0',NULL,NULL),(31,'Risa','rgunningn@nyu.edu','$2a$04$Z.LJuVcd0QoLUCdNYRKCpuf3CW1m.vWRhCncsOaUYQ6s.oa8avFwi',3,NULL,'0',NULL,NULL),(32,'Cory','cphythono@bandcamp.com','$2a$04$Y8N4Re1hk7/3AfJXZCuLO.b6eROrtHypWh2Q993DMa71BRn3OJaP2',6,NULL,'0',NULL,NULL),(33,'Robenia','rrylandp@si.edu','$2a$04$epZC2kb9YIpIDxnoLXCExOZktrYg7LoFM.roM2aWGQoGhYLLdlE8m',5,NULL,'1',NULL,NULL),(34,'Anne','awickesq@ifeng.com','$2a$04$oL2lE0tjCRVC/uMyQE9RQ.jDRDR.4rlQ6XoQz/jKZ0WaupomnY/Uq',3,NULL,'0',NULL,NULL),(35,'Odilia','ojiruchr@tripod.com','$2a$04$ToQARMqcxQT5mafsiyYA9ORlznSyeC5SIR/IquLeqBxWYD.5xfAwO',6,NULL,'1',NULL,NULL),(36,'Bride','bmcenenys@apple.com','$2a$04$YeL/kie1bO8NPFDx7Qe1W.IM71QHOGokUW7gQS7/yHgtzSIYvG./.',3,NULL,'0',NULL,NULL),(37,'Glenden','glampittt@mediafire.com','$2a$04$JsPAEm2gK4N3K08UvjdvdeQxZzQ8XtEYxf8Bch8COzEuIU6/MxFyW',3,NULL,'1',NULL,NULL),(38,'Joeann','jdeanu@imageshack.us','$2a$04$RisCZuPqI118pHX94.V7quop.9Fspnzwq.FSQquo1P2ZyMJ5cqtBO',2,NULL,'1',NULL,NULL),(39,'Danna','dchattov@omniture.com','$2a$04$N7oeESxU3kMJN/6ssjX.0OFzr.xH78JAp48/gaOhvF/6u8gL8pbN6',7,NULL,'0',NULL,NULL),(40,'Pepi','pduckerinw@youtube.com','$2a$04$Lg.qY.Mue5kSr4w0xp0HXOre9G3Rs7RvmuoNTHPwbqprA0m0wWtSG',2,NULL,'0',NULL,NULL),(41,'Melissa','mkinglakex@1688.com','$2a$04$NWozUXzWVoPwbxD7CYoQzetbjmdfwN6MmvYHzOMcHmfbSIxiADJI2',7,NULL,'1',NULL,NULL),(42,'Dunn','dharpury@army.mil','$2a$04$XV8mqlV5l.4kRRp5JfBgc.jGlx6OQ638YwuAowJ2sE7nWzXKaKkOm',8,NULL,'1',NULL,NULL),(43,'Heddie','hairthz@hud.gov','$2a$04$q5jPoBf9cxMsqfMeCVZ23uM8OZz7UIjiMZNL15Pmm67czL3X8o3Gi',2,NULL,'0',NULL,NULL),(44,'Roma','rayshford10@oakley.com','$2a$04$S2s7CtAd/azaCcbRx/QX3ubrb3vsmHSI9bpyYiRuiVumkerYZLfyO',7,NULL,'0',NULL,NULL),(45,'Roxie','rwearne11@geocities.jp','$2a$04$LGh6/Q864IPN5fQjZacQQ.AeEkXDxn0Kvrl0ADh2YNsNA9raJnSzu',6,NULL,'1',NULL,NULL),(46,'Addy','ameo12@dmoz.org','$2a$04$o2thkcf9bDGfjAyk0ZX6YOkABJzWArLwpuvJLIO/9U5HQm72sSJB6',6,NULL,'0',NULL,NULL),(47,'Sigfrid','sbedingfield13@prnewswire.com','$2a$04$DfbgEz3L3DrcNdXTu35dPuxPi2kNWx.aqagzl739tG3qEDUlwQiGa',6,NULL,'0',NULL,NULL),(48,'Rafael','rmanueli14@intel.com','$2a$04$NlcknNv8xVPGCsM6MA6zM.01NoO1mhaztjL6amdOS1fECTY4bq4i6',8,NULL,'1',NULL,NULL),(49,'Granville','ghefford15@si.edu','$2a$04$3Z7EaqgqHMdRIW9z3gRiGOQafbPC4ypDDwylpHMkHYrnS6.t8YsDO',5,NULL,'1',NULL,NULL),(50,'Geraldine','ggruszczak16@ustream.tv','$2a$04$8KyHvYpBboaZH4ZnbltMFuqTaOAykkkxIuZPB8QZNCgdoL1XFS/hG',4,NULL,'0',NULL,NULL),(51,'Jessamyn','jtoon17@yahoo.co.jp','$2a$04$GGbfV.CurcotvJ.rJtkKieGJGpM9aSUIf3kZ2sTYdUD8MB6GmUZRS',1,NULL,'0',NULL,NULL),(52,'Darby','dbowcock18@cloudflare.com','$2a$04$rVnsaOJtsLxUpNc7kwNaCOKWznBnHiM0D2XAxVo9n6mfBD5r986qi',6,NULL,'0',NULL,NULL),(53,'Ive','igauford19@bluehost.com','$2a$04$GoudGlHtYQ9vl9HQrTQXNuKiOJa65F9qTjygmUpokFPYV0leIhPxi',8,NULL,'1',NULL,NULL),(54,'Belicia','btabourier1a@fda.gov','$2a$04$05bGxy2IfEilhC1FlSkfKe9ktpBHGTb9a/rAOogBmTaDa/2zqLgbi',7,NULL,'1',NULL,NULL),(57,'Cinnamon','cremnant1d@desdev.cn','$2a$04$2cJyC1xF2pzkMVX151rFwOVI0nXTRUDrwfZv.CHsVTc9RgebDNfRy',3,NULL,'0',NULL,NULL),(58,'kari','k@k.k','$2y$10$jb8PoZb3MF46cUIJOIr7Pexjw7JwleCZ3YPIiCe6kWIDRezmxjg7e',1,NULL,'lerngee',NULL,NULL),(59,'hassan','h@hh.h','$2y$10$SLSBMciSFvRGMtv8xHzlIO.efgnjO5SORfCE9iq747pEMiv5y1Y/a',1,NULL,'jhjhjhjh',NULL,NULL),(60,'mohamed','noah555@gmail.com','$2y$10$wvMkzj7xCO24YbqC/Uv8GuxW4AWSNWeEU1Yqf4eKTN3Ofu.IO9jpm',2,NULL,'g45 y4h5htyh t','2023-10-05 10:01:27','2023-10-05 10:01:27');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `majors`
--

DROP TABLE IF EXISTS `majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `majors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majors`
--

LOCK TABLES `majors` WRITE;
/*!40000 ALTER TABLE `majors` DISABLE KEYS */;
INSERT INTO `majors` VALUES (1,'heart',NULL,NULL,'2023-10-05 12:02:13'),(2,'Neurology',NULL,NULL,NULL),(3,'Orthopedics',NULL,NULL,NULL),(4,'Gastroenterology',NULL,NULL,NULL),(5,'Oncology',NULL,NULL,NULL),(6,'Pulmonology',NULL,NULL,NULL),(7,'Dermatology',NULL,NULL,NULL),(8,'Pediatrics',NULL,NULL,NULL);
/*!40000 ALTER TABLE `majors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` enum('user','admin') NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'noah','n@n.n','$2y$10$KEsDW0aIfR2e.tfFbZij7.5L8ZnfwOrmcYVtV2d5DxgLHd0jCD.Qy','admin',NULL,NULL,NULL),(7,'ahmed','ahmed@amar1.com','$2y$10$cccDVrSyY8ZI///yK8YuDe5bwmkas.TTg4Tb1Hx2DwflLCNDP9vH2','user','01016023105',NULL,NULL),(8,'mohamed','noah00000@gmail.com','$2y$10$3MB3sWjQZkcboeG89oAxTOatART1izOo2i0w9ncIFjY/IlvLo29TC','user',NULL,'2023-10-05 13:47:29','2023-10-05 13:47:29'),(9,'mohamed','noaddfdfh@gmail.com','$2y$10$pHCmYqZeg6ZoOCqBpmcZ.eVGa0OvNEpeuI.EbCbF4W2FR2V.YxP8S','admin',NULL,'2023-10-05 13:48:36','2023-10-05 13:48:36'),(10,'mef wf','noahreferf@gmail.com','$2y$10$GbWFm7c75oV4vmQuWDofKuxGhvab/dMa7pvuqnA5ETguRzR7p4XKm','user',NULL,'2023-10-05 13:50:08','2023-10-05 13:50:08'),(11,'Amar','no552ah@gmail.com','$2y$10$h5nlCn4Y.xCIr9qwaQ6QkevAJmhHSa5VPKkwdN6dcsdrOz0xzyJ02','user','01016023105','2023-10-05 13:52:54','2023-10-05 13:52:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-11 11:39:04
