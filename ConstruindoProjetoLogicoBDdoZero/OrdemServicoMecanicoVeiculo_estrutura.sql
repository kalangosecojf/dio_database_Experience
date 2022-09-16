CREATE DATABASE  IF NOT EXISTS `ordem_servico` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ordem_servico`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ordem_servico
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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equipe`
--

DROP TABLE IF EXISTS `equipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipe` (
  `idequipe` int NOT NULL AUTO_INCREMENT,
  `nome_equipe` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idequipe`),
  UNIQUE KEY `nome_equipe_UNIQUE` (`nome_equipe`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `executa_os`
--

DROP TABLE IF EXISTS `executa_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `executa_os` (
  `peca_idpeca` int NOT NULL,
  `os_idos` int NOT NULL,
  `servico_idservico` int NOT NULL,
  PRIMARY KEY (`peca_idpeca`,`os_idos`,`servico_idservico`),
  KEY `fk_peca_has_os_os1_idx` (`os_idos`),
  KEY `fk_peca_has_os_peca1_idx` (`peca_idpeca`),
  KEY `fk_peca_has_os_servico1_idx` (`servico_idservico`),
  CONSTRAINT `fk_peca_has_os_os1` FOREIGN KEY (`os_idos`) REFERENCES `os` (`idos`),
  CONSTRAINT `fk_peca_has_os_peca1` FOREIGN KEY (`peca_idpeca`) REFERENCES `peca` (`idpeca`),
  CONSTRAINT `fk_peca_has_os_servico1` FOREIGN KEY (`servico_idservico`) REFERENCES `servico` (`idservico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mecanico`
--

DROP TABLE IF EXISTS `mecanico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mecanico` (
  `idmecanico` int NOT NULL AUTO_INCREMENT,
  `codigo` int DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `especialidade` varchar(45) DEFAULT NULL,
  `equipe_idequipe` int NOT NULL,
  PRIMARY KEY (`idmecanico`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  KEY `fk_mecanico_equipe1_idx` (`equipe_idequipe`),
  CONSTRAINT `fk_mecanico_equipe1` FOREIGN KEY (`equipe_idequipe`) REFERENCES `equipe` (`idequipe`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `os`
--

DROP TABLE IF EXISTS `os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `os` (
  `idos` int NOT NULL AUTO_INCREMENT,
  `numero` int DEFAULT NULL,
  `data_emissao` date DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `status` enum('Em Espera','Em Orcamento','Em Manutenção','Finalizado') DEFAULT NULL,
  `data_conclusao` date DEFAULT NULL,
  `veiculo_idveiculo` int NOT NULL,
  `equipe_idequipe` int NOT NULL,
  `tipo_os` enum('Revisao','Reparo') DEFAULT NULL,
  PRIMARY KEY (`idos`),
  UNIQUE KEY `numero_UNIQUE` (`numero`),
  KEY `fk_os_veiculo1_idx` (`veiculo_idveiculo`),
  KEY `fk_os_equipe1_idx` (`equipe_idequipe`),
  CONSTRAINT `fk_os_equipe1` FOREIGN KEY (`equipe_idequipe`) REFERENCES `equipe` (`idequipe`),
  CONSTRAINT `fk_os_veiculo1` FOREIGN KEY (`veiculo_idveiculo`) REFERENCES `veiculo` (`idveiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `peca`
--

DROP TABLE IF EXISTS `peca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peca` (
  `idpeca` int NOT NULL AUTO_INCREMENT,
  `nome_peca` varchar(45) DEFAULT NULL,
  `valor_peca` float DEFAULT NULL,
  PRIMARY KEY (`idpeca`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `idservico` int NOT NULL AUTO_INCREMENT,
  `nome_servico` varchar(45) DEFAULT NULL,
  `duracao_horas` float DEFAULT NULL,
  `valor_servico` float DEFAULT NULL,
  PRIMARY KEY (`idservico`),
  UNIQUE KEY `nome_servico_UNIQUE` (`nome_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `idveiculo` int NOT NULL AUTO_INCREMENT,
  `cliente_idcliente` int NOT NULL,
  `placa` varchar(45) DEFAULT NULL,
  `fabricante` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idveiculo`),
  KEY `fk_veiculo_cliente_idx` (`cliente_idcliente`),
  CONSTRAINT `fk_veiculo_cliente` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-15 23:17:09
