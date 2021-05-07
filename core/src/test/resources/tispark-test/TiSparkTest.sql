CREATE DATABASE  IF NOT EXISTS `tispark_test` /* !40100 DEFAULT CHARACTER SET utf8 */;
USE `tispark_test`;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `full_data_type_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `full_data_type_table` (
  `id_dt` int(11) NOT NULL,
  `tp_varchar` varchar(45) DEFAULT NULL,
  `tp_datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `tp_blob` blob DEFAULT NULL,
  `tp_binary` binary(2) DEFAULT NULL,
  `tp_date` date DEFAULT NULL,
  `tp_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tp_year` year DEFAULT NULL,
  `tp_bigint` bigint(20) DEFAULT NULL,
  `tp_decimal` decimal(38,18) DEFAULT NULL,
  `tp_double` double DEFAULT NULL,
  `tp_float` float DEFAULT NULL,
  `tp_int` int(11) DEFAULT NULL,
  `tp_mediumint` mediumint(9) DEFAULT NULL,
  `tp_real` double DEFAULT NULL,
  `tp_smallint` smallint(6) DEFAULT NULL,
  `tp_tinyint` tinyint(4) DEFAULT NULL,
  `tp_char` char(10) DEFAULT NULL,
  `tp_nvarchar` varchar(40) DEFAULT NULL,
  `tp_longtext` longtext DEFAULT NULL,
  `tp_mediumtext` mediumtext DEFAULT NULL,
  `tp_text` text DEFAULT NULL,
  `tp_tinytext` tinytext DEFAULT NULL,
  `tp_bit` bit(1) DEFAULT NULL,
  `tp_time` time DEFAULT NULL,
  `tp_enum` enum('1','2','3','4') DEFAULT NULL,
  `tp_set` set('a','b','c','d') DEFAULT NULL,
  PRIMARY KEY (`id_dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
LOCK TABLES `full_data_type_table` WRITE;
/*!40000 ALTER TABLE `full_data_type_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `full_data_type_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;