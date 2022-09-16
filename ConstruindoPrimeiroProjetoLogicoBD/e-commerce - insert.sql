-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
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
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (9,'Joao','Rua A','00000000001'),(10,'Maria','Rua B','00000000002'),(11,'Carla','Rua C','00000000003'),(12,'Jose','Rua D','00000000004'),(13,'Claudio','Rua E','00000000009'),(14,'Danilo','Rua F','00000000006'),(15,'Juliana','Rua G','00000000007');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `disponibilizando_produto`
--

LOCK TABLES `disponibilizando_produto` WRITE;
/*!40000 ALTER TABLE `disponibilizando_produto` DISABLE KEYS */;
INSERT INTO `disponibilizando_produto` VALUES (1,1),(1,2),(1,3),(1,4),(2,1);
/*!40000 ALTER TABLE `disponibilizando_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
INSERT INTO `entrega` VALUES (1,1,'Entregue','356','2022-09-15'),(2,2,'Saiu para Entrega','1254','2022-10-01');
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,'Juiz de Fora'),(2,'Belo Horizonte');
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `forma_pagamento`
--

LOCK TABLES `forma_pagamento` WRITE;
/*!40000 ALTER TABLE `forma_pagamento` DISABLE KEYS */;
INSERT INTO `forma_pagamento` VALUES (1,'CARTAO','MASTERCAR',9),(2,'CARTAO','VISA',10);
/*!40000 ALTER TABLE `forma_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Fornecedor 001','00000123456789'),(2,'Fornecedor 002','00009874563210');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,1,'2022-09-10','Pago',100),(2,2,'2022-10-01','Em Aberto',100);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'Em Andamento','compra de sofa',9,35),(2,'Finalizado','compra de mesa e cadeira',10,70);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'MOVEIS','CAMA','1200'),(2,'MOVEIS','SOFA','600'),(3,'MOVEIS','MESA','300'),(4,'MOVEIS','CADEIRA','150');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produto_estoque`
--

LOCK TABLES `produto_estoque` WRITE;
/*!40000 ALTER TABLE `produto_estoque` DISABLE KEYS */;
INSERT INTO `produto_estoque` VALUES (1,1,100),(1,2,50),(2,1,50),(2,2,50),(3,1,30),(3,2,0),(4,1,120),(4,2,0);
/*!40000 ALTER TABLE `produto_estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produto_pedido`
--

LOCK TABLES `produto_pedido` WRITE;
/*!40000 ALTER TABLE `produto_pedido` DISABLE KEYS */;
INSERT INTO `produto_pedido` VALUES (1,2,'1'),(2,3,'1'),(2,4,'4');
/*!40000 ALTER TABLE `produto_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produto_terceiro`
--

LOCK TABLES `produto_terceiro` WRITE;
/*!40000 ALTER TABLE `produto_terceiro` DISABLE KEYS */;
INSERT INTO `produto_terceiro` VALUES (1,1,100),(1,2,30),(1,4,20),(2,3,40);
/*!40000 ALTER TABLE `produto_terceiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `terceiro`
--

LOCK TABLES `terceiro` WRITE;
/*!40000 ALTER TABLE `terceiro` DISABLE KEYS */;
INSERT INTO `terceiro` VALUES (1,'Terceiro 01','Rua do Terceiro 01','99999999999999'),(2,'Terceiro 02','Rua do Terceiro 02','88888888888888');
/*!40000 ALTER TABLE `terceiro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-15 22:15:38
