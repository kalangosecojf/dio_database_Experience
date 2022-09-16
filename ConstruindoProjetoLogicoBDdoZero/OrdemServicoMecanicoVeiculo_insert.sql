--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Joao','(32) 99999-9190'),(2,'Marcos','(32) 99999-9193'),(3,'Antonio','(32) 99999-9191'),(4,'Jose','(32) 99999-9192');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipe`
--

LOCK TABLES `equipe` WRITE;
/*!40000 ALTER TABLE `equipe` DISABLE KEYS */;
INSERT INTO `equipe` VALUES (2,'Lanternagem'),(3,'Mecanica'),(1,'Revisao');
/*!40000 ALTER TABLE `equipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `executa_os`
--

LOCK TABLES `executa_os` WRITE;
/*!40000 ALTER TABLE `executa_os` DISABLE KEYS */;
/*!40000 ALTER TABLE `executa_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mecanico`
--

LOCK TABLES `mecanico` WRITE;
/*!40000 ALTER TABLE `mecanico` DISABLE KEYS */;
INSERT INTO `mecanico` VALUES (1,1010,'Carlim','Rua A','Revisao',1),(2,1020,'Ze','Rua B','Lanternagem',2),(3,1030,'Manoel','Rua C','Mecanica',3),(4,1040,'Ilato','Rua D','Mecanica',3),(5,1050,'Claudio','Rua A','Mecanica',3);
/*!40000 ALTER TABLE `mecanico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `os`
--

LOCK TABLES `os` WRITE;
/*!40000 ALTER TABLE `os` DISABLE KEYS */;
INSERT INTO `os` VALUES (1,20200101,'2022-08-10',NULL,'Finalizado','2022-08-20',1,1,'Revisao'),(2,20200102,'2022-08-11',NULL,'Finalizado','2022-08-21',3,2,'Reparo'),(3,20200103,'2022-08-20',NULL,'Finalizado','2022-08-30',4,3,'Reparo'),(4,20200104,'2022-08-30',NULL,'Finalizado','2022-09-10',2,1,'Revisao'),(5,20200105,'2022-09-10',NULL,'Finalizado','2022-09-15',4,3,'Reparo'),(6,20200106,'2022-09-15',NULL,'Finalizado','2022-09-25',4,2,'Reparo'),(7,20200107,'2022-09-15',NULL,'Finalizado','2022-09-25',1,1,'Revisao'),(8,20200108,'2022-09-20',NULL,'Em Orcamento',NULL,4,3,'Reparo'),(9,20200109,'2022-09-21',NULL,'Em Espera',NULL,1,3,'Reparo'),(10,20200110,'2022-09-22',NULL,'Em Manutenção',NULL,2,1,'Revisao');
/*!40000 ALTER TABLE `os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `peca`
--

LOCK TABLES `peca` WRITE;
/*!40000 ALTER TABLE `peca` DISABLE KEYS */;
INSERT INTO `peca` VALUES (1,'Rolamento',70),(2,'Disco de Freio',130),(3,'Suspensão',300),(4,'Filtro de ar',30),(5,'Pastilha de Freio',90),(6,'Fluido de Freio',37),(7,'Amortecedor',420);
/*!40000 ALTER TABLE `peca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (1,'Troca de Oleo',1,50),(2,'Revisão de Motor',12,600),(3,'Manutenção Suspenção',5,250),(4,'Manutenção de Freio',4,200);
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,1,'ABC1234','FIAT','TOURO','BRANCO'),(2,2,'ABC7890','FORD','SCORT','PRETO'),(3,3,'BCA4567','FORD','PAMPA','PRATA'),(4,4,'CDE9743','FIAT','UNO','PRATA');
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-15 23:16:46
