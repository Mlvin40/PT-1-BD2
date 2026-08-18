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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-18 12:23:36
