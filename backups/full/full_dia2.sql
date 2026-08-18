-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: hotel_bd2
-- ------------------------------------------------------
-- Server version	8.0.46-0ubuntu0.24.04.3

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
-- Current Database: `hotel_bd2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hotel_bd2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hotel_bd2`;

--
-- Table structure for table `CLIENTE`
--

DROP TABLE IF EXISTS `CLIENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENTE` (
  `id_cliente` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTE`
--

LOCK TABLES `CLIENTE` WRITE;
/*!40000 ALTER TABLE `CLIENTE` DISABLE KEYS */;
INSERT INTO `CLIENTE` VALUES (1,'Ana López','ana.lopez@example.com','+50255500001'),(2,'Carlos Méndez','carlos.mendez@example.com','+50255500002'),(3,'María García','maria.garcia@example.com','+50255500003'),(4,'José Ramírez','jose.ramirez@example.com','+50255500004'),(5,'Laura Hernández','laura.hernandez@example.com','+50255500005'),(6,'Luis Morales','luis.morales@example.com','+50255500006'),(7,'Sofía Castillo','sofia.castillo@example.com','+50255500007'),(8,'Diego Pérez','diego.perez@example.com','+50255500008'),(9,'Elena Rodríguez','elena.rodriguez@example.com','+50255500009'),(10,'Javier Gómez','javier.gomez@example.com','+50255500010'),(11,'Paola Vásquez','paola.vasquez@example.com','+50255500011'),(12,'Miguel Herrera','miguel.herrera@example.com','+50255500012'),(13,'Gabriela Ruiz','gabriela.ruiz@example.com','+50255500013'),(14,'Andrés Aguilar','andres.aguilar@example.com','+50255500014'),(15,'Daniela Ortiz','daniela.ortiz@example.com','+50255500015'),(16,'Fernando Soto','fernando.soto@example.com','+50255500016'),(17,'Valeria Cabrera','valeria.cabrera@example.com','+50255500017'),(18,'Ricardo Alvarado','ricardo.alvarado@example.com','+50255500018'),(19,'Natalia Fuentes','natalia.fuentes@example.com','+50255500019'),(20,'Roberto Calderón','roberto.calderon@example.com','+50255500020'),(21,'Andrea Reyes','andrea.reyes@example.com','+50255500021'),(22,'Manuel Escobar','manuel.escobar@example.com','+50255500022'),(23,'Lucía Flores','lucia.flores@example.com','+50255500023'),(24,'Óscar Salazar','oscar.salazar@example.com','+50255500024'),(25,'Mónica Chacón','monica.chacon@example.com','+50255500025'),(26,'Héctor Molina','hector.molina@example.com','+50255500026'),(27,'Alejandra Cifuentes','alejandra.cifuentes@example.com','+50255500027'),(28,'Eduardo Barrios','eduardo.barrios@example.com','+50255500028'),(29,'Claudia Pineda','claudia.pineda@example.com','+50255500029'),(30,'Sergio Arévalo','sergio.arevalo@example.com','+50255500030'),(31,'Patricia Juárez','patricia.juarez@example.com','+50255500031'),(32,'Marco Tulio Rojas','marco.rojas@example.com','+50255500032'),(33,'Verónica Leal','veronica.leal@example.com','+50255500033'),(34,'Raúl Godínez','raul.godinez@example.com','+50255500034'),(35,'Isabel Estrada','isabel.estrada@example.com','+50255500035'),(36,'Pablo Figueroa','pablo.figueroa@example.com','+50255500036'),(37,'Beatriz Zamora','beatriz.zamora@example.com','+50255500037'),(38,'Tomás Velásquez','tomas.velasquez@example.com','+50255500038'),(39,'Silvia Orellana','silvia.orellana@example.com','+50255500039'),(40,'César Ixcot','cesar.ixcot@example.com','+50255500040'),(41,'Adriana Palacios','adriana.palacios@example.com','+50255500041'),(42,'Víctor Lemus','victor.lemus@example.com','+50255500042'),(43,'Lorena Quezada','lorena.quezada@example.com','+50255500043'),(44,'Samuel Monterroso','samuel.monterroso@example.com','+50255500044'),(45,'Camila Batres','camila.batres@example.com','+50255500045'),(46,'Julio Marroquín','julio.marroquin@example.com','+50255500046'),(47,'Rosa Solares','rosa.solares@example.com','+50255500047'),(48,'Esteban Recinos','esteban.recinos@example.com','+50255500048'),(49,'Diana Bran','diana.bran@example.com','+50255500049'),(50,'Arturo Villagrán','arturo.villagran@example.com','+50255500050');
/*!40000 ALTER TABLE `CLIENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLEADO`
--

DROP TABLE IF EXISTS `EMPLEADO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLEADO` (
  `id_empleado` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `puesto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLEADO`
--

LOCK TABLES `EMPLEADO` WRITE;
/*!40000 ALTER TABLE `EMPLEADO` DISABLE KEYS */;
INSERT INTO `EMPLEADO` VALUES (1,'Alejandro Martínez','Gerente general'),(2,'Mariana del Cid','Subgerente'),(3,'Kevin López','Jefe de recepción'),(4,'Fernanda Morales','Recepcionista'),(5,'Cristian Pérez','Recepcionista'),(6,'Melissa Hernández','Recepcionista'),(7,'Jorge Ramírez','Recepcionista nocturno'),(8,'Andrea Gómez','Conserje'),(9,'Pedro Castillo','Conserje'),(10,'Sandra Vásquez','Jefa de limpieza'),(11,'Marta Ruiz','Camarera de pisos'),(12,'Gloria Aguilar','Camarera de pisos'),(13,'Norma Escobar','Camarera de pisos'),(14,'Rocío Fuentes','Camarera de pisos'),(15,'Teresa Alvarado','Camarera de pisos'),(16,'Juan Carlos Soto','Auxiliar de limpieza'),(17,'Edgar Salazar','Auxiliar de limpieza'),(18,'Pablo Calderón','Jefe de mantenimiento'),(19,'Mario Figueroa','Técnico de mantenimiento'),(20,'Óscar Barrios','Técnico electricista'),(21,'René Orellana','Técnico de plomería'),(22,'Gustavo Molina','Encargado de jardines'),(23,'Carolina Reyes','Gerente de alimentos'),(24,'Ricardo Estrada','Chef ejecutivo'),(25,'Daniel Chacón','Cocinero'),(26,'Brenda Palacios','Cocinera'),(27,'Hugo Monterroso','Ayudante de cocina'),(28,'Lorena Juárez','Ayudante de cocina'),(29,'Sonia Pineda','Jefa de restaurante'),(30,'Miguel Ángel Rojas','Mesero'),(31,'Estuardo Lemus','Mesero'),(32,'Karla Cabrera','Mesera'),(33,'Josué Godínez','Mesero'),(34,'Patricia Leal','Bartender'),(35,'Wendy Arévalo','Cajera'),(36,'Manuel Cifuentes','Contador'),(37,'Silvia Quezada','Auxiliar contable'),(38,'David Marroquín','Jefe de seguridad'),(39,'Byron Velásquez','Agente de seguridad'),(40,'Walter Recinos','Agente de seguridad'),(41,'Elisa Solares','Encargada de recursos humanos'),(42,'Mauricio Batres','Asistente de recursos humanos'),(43,'Gabriela Bran','Coordinadora de eventos'),(44,'Rodrigo Villagrán','Ejecutivo de ventas'),(45,'Claudia Ixcot','Encargada de mercadeo'),(46,'Francisco Méndez','Botones'),(47,'Ángel Herrera','Botones'),(48,'Lucía Zamora','Operadora telefónica'),(49,'Roberto Flores','Encargado de lavandería'),(50,'Diana Ortiz','Auxiliar de lavandería');
/*!40000 ALTER TABLE `EMPLEADO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HABITACION`
--

DROP TABLE IF EXISTS `HABITACION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HABITACION` (
  `id_habitacion` int NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HABITACION`
--

LOCK TABLES `HABITACION` WRITE;
/*!40000 ALTER TABLE `HABITACION` DISABLE KEYS */;
INSERT INTO `HABITACION` VALUES (1,'Individual',350.00),(2,'Individual',350.00),(3,'Individual',350.00),(4,'Individual',375.00),(5,'Individual',375.00),(6,'Individual',375.00),(7,'Individual',400.00),(8,'Individual',400.00),(9,'Individual',400.00),(10,'Individual',425.00),(11,'Doble',550.00),(12,'Doble',550.00),(13,'Doble',550.00),(14,'Doble',575.00),(15,'Doble',575.00),(16,'Doble',575.00),(17,'Doble',600.00),(18,'Doble',600.00),(19,'Doble',625.00),(20,'Doble',625.00),(21,'Matrimonial',700.00),(22,'Matrimonial',700.00),(23,'Matrimonial',725.00),(24,'Matrimonial',725.00),(25,'Matrimonial',750.00),(26,'Matrimonial',750.00),(27,'Matrimonial',775.00),(28,'Matrimonial',775.00),(29,'Matrimonial',800.00),(30,'Matrimonial',800.00),(31,'Triple',850.00),(32,'Triple',850.00),(33,'Triple',875.00),(34,'Triple',875.00),(35,'Triple',900.00),(36,'Triple',900.00),(37,'Triple',925.00),(38,'Triple',925.00),(39,'Familiar',1050.00),(40,'Familiar',1050.00),(41,'Familiar',1100.00),(42,'Familiar',1100.00),(43,'Familiar',1150.00),(44,'Familiar',1150.00),(45,'Suite',1350.00),(46,'Suite',1350.00),(47,'Suite',1450.00),(48,'Suite',1450.00),(49,'Suite presidencial',2200.00),(50,'Suite presidencial',2200.00);
/*!40000 ALTER TABLE `HABITACION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOG_HABITACION`
--

DROP TABLE IF EXISTS `LOG_HABITACION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOG_HABITACION` (
  `timestamp` timestamp(6) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `HABITACION_id_habitacion` int DEFAULT NULL,
  PRIMARY KEY (`timestamp`),
  KEY `fk_log_habitacion_habitacion` (`HABITACION_id_habitacion`),
  CONSTRAINT `fk_log_habitacion_habitacion` FOREIGN KEY (`HABITACION_id_habitacion`) REFERENCES `HABITACION` (`id_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOG_HABITACION`
--

LOCK TABLES `LOG_HABITACION` WRITE;
/*!40000 ALTER TABLE `LOG_HABITACION` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOG_HABITACION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGO`
--

DROP TABLE IF EXISTS `PAGO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAGO` (
  `id_pago` int NOT NULL,
  `fecha_pago` date DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL,
  `RESERVA_id_reserva` int DEFAULT NULL,
  `EMPLEADO_id_empleado` int DEFAULT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `fk_pago_reserva` (`RESERVA_id_reserva`),
  KEY `fk_pago_empleado` (`EMPLEADO_id_empleado`),
  CONSTRAINT `fk_pago_empleado` FOREIGN KEY (`EMPLEADO_id_empleado`) REFERENCES `EMPLEADO` (`id_empleado`),
  CONSTRAINT `fk_pago_reserva` FOREIGN KEY (`RESERVA_id_reserva`) REFERENCES `RESERVA` (`id_reserva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGO`
--

LOCK TABLES `PAGO` WRITE;
/*!40000 ALTER TABLE `PAGO` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESERVA`
--

DROP TABLE IF EXISTS `RESERVA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESERVA` (
  `id_reserva` int NOT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `CLIENTE_id_cliente` int DEFAULT NULL,
  `HABITACION_id_habitacion` int DEFAULT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `fk_reserva_cliente` (`CLIENTE_id_cliente`),
  KEY `fk_reserva_habitacion` (`HABITACION_id_habitacion`),
  CONSTRAINT `fk_reserva_cliente` FOREIGN KEY (`CLIENTE_id_cliente`) REFERENCES `CLIENTE` (`id_cliente`),
  CONSTRAINT `fk_reserva_habitacion` FOREIGN KEY (`HABITACION_id_habitacion`) REFERENCES `HABITACION` (`id_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESERVA`
--

LOCK TABLES `RESERVA` WRITE;
/*!40000 ALTER TABLE `RESERVA` DISABLE KEYS */;
INSERT INTO `RESERVA` VALUES (1,'2026-08-20','2026-08-22',1,12),(2,'2026-08-20','2026-08-24',2,5),(3,'2026-08-21','2026-08-23',3,27),(4,'2026-08-22','2026-08-25',4,18),(5,'2026-08-23','2026-08-24',5,34),(6,'2026-08-24','2026-08-28',6,9),(7,'2026-08-25','2026-08-27',7,41),(8,'2026-08-26','2026-08-30',8,22),(9,'2026-08-27','2026-08-29',9,3),(10,'2026-08-28','2026-09-01',10,46),(11,'2026-08-29','2026-08-31',11,15),(12,'2026-08-30','2026-09-03',12,31),(13,'2026-08-31','2026-09-02',13,7),(14,'2026-09-01','2026-09-05',14,25),(15,'2026-09-02','2026-09-04',15,38),(16,'2026-09-03','2026-09-06',16,11),(17,'2026-09-04','2026-09-08',17,44),(18,'2026-09-05','2026-09-07',18,20),(19,'2026-09-06','2026-09-10',19,2),(20,'2026-09-07','2026-09-09',20,36),(21,'2026-09-08','2026-09-11',21,14),(22,'2026-09-09','2026-09-13',22,29),(23,'2026-09-10','2026-09-12',23,48),(24,'2026-09-11','2026-09-14',24,6),(25,'2026-09-12','2026-09-16',25,33),(26,'2026-09-13','2026-09-15',26,17),(27,'2026-09-14','2026-09-18',27,40),(28,'2026-09-15','2026-09-17',28,23),(29,'2026-09-16','2026-09-19',29,1),(30,'2026-09-17','2026-09-21',30,50),(31,'2026-09-18','2026-09-20',31,10),(32,'2026-09-19','2026-09-23',32,28),(33,'2026-09-20','2026-09-22',33,43),(34,'2026-09-21','2026-09-24',34,16),(35,'2026-09-22','2026-09-26',35,35),(36,'2026-09-23','2026-09-25',36,8),(37,'2026-09-24','2026-09-28',37,24),(38,'2026-09-25','2026-09-27',38,47),(39,'2026-09-26','2026-09-29',39,13),(40,'2026-09-27','2026-10-01',40,30),(41,'2026-09-28','2026-09-30',41,4),(42,'2026-09-29','2026-10-03',42,39),(43,'2026-09-30','2026-10-02',43,21),(44,'2026-10-01','2026-10-04',44,45),(45,'2026-10-02','2026-10-06',45,19),(46,'2026-10-03','2026-10-05',46,32),(47,'2026-10-04','2026-10-08',47,26),(48,'2026-10-05','2026-10-07',48,49),(49,'2026-10-06','2026-10-09',49,37),(50,'2026-10-07','2026-10-11',50,42);
/*!40000 ALTER TABLE `RESERVA` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-18 12:55:45
