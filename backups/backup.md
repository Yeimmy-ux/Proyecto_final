## to store backups

CREATE DATABASE  IF NOT EXISTS `db_dietetica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_dietetica`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: db_dietetica
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `categoria_producto`
--

DROP TABLE IF EXISTS `categoria_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_producto` (
  `IDCategoria` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Descripcion` text,
  PRIMARY KEY (`IDCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_producto`
--

LOCK TABLES `categoria_producto` WRITE;
/*!40000 ALTER TABLE `categoria_producto` DISABLE KEYS */;
INSERT INTO `categoria_producto` VALUES (1,'Vitaminas','Vitaminas'),(2,'Minerales','Minerales'),(3,'Barras','Barras Energeticas'),(4,'Snacks','Snacks Saludables'),(5,'Proteinas','Proteinas Vegetales');
/*!40000 ALTER TABLE `categoria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `IDCliente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT 'USUARIO_NO_EXISTE',
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Direccion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IDCliente`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Ana Perez','555-1234','ana.perez@example.com','Calle Falsa 123'),(2,'Luis Gomez','555-5678','luis.gomez@example.com','Avenida Siempre Viva 742'),(3,'Maria Lopez','555-8765','maria.lopez@example.com','Calle del Sol 56'),(4,'Javier Martinez','555-4321','javier.martinez@example.com','Calle Luna 89'),(5,'Laura Fernandez','555-6789','laura.fernandez@example.com','Calle Estrella 45'),(6,'Pedro Sanchez','555-9876','pedro.sanchez@example.com','Plaza Mayor 3'),(7,'Elena Garcia','555-3456','elena.garcia@example.com','Avenida Libertad 21'),(8,'Carlos Ruiz','555-2345','carlos.ruiz@example.com','Calle del Rio 10'),(9,'Isabel Torres','555-6543','isabel.torres@example.com','Av. del Parque 5'),(10,'Jose Morales','555-7890','jose.morales@example.com','Calle del Norte 12'),(11,'Marta Romero','555-5432','marta.romero@example.com','Calle del Mar 7'),(12,'Raul Diaz','555-8761','raul.diaz@example.com','Avenida del Aguila 18'),(13,'Carmen Ortega','555-1235','carmen.ortega@example.com','Calle del Campo 20'),(14,'Antonio Alvarez','555-5679','antonio.alvarez@example.com','Calle del Viento 14'),(15,'Patricia Mendoza','555-9875','patricia.mendoza@example.com','Calle del Bosque 3'),(16,'Fernando Lopez','555-4322','fernando.lopez@example.com','Calle de la Paz 28'),(17,'Sonia Ruiz','555-6780','sonia.ruiz@example.com','Plaza Central 11'),(18,'Ricardo Gonzalez','555-8764','ricardo.gonzalez@example.com','Calle de la Luna 6'),(19,'Teresa Hernandez','555-3457','teresa.hernandez@example.com','Calle de los Flores 22'),(20,'David Fernandez','555-2346','david.fernandez@example.com','Calle de los Robles 9'),(21,'Beatriz Perez','555-6544','beatriz.perez@example.com','Avenida del Sol 15'),(22,'Miguel Angel Ruiz','555-7891','miguel.angel.ruiz@example.com','Calle del Pez 26'),(23,'Susana Garcia','555-5433','susana.garcia@example.com','Avenida del Rio 8'),(24,'Andres Martinez','555-8762','andres.martinez@example.com','Calle de la Fuente 13'),(25,'Raquel Moreno','555-1236','raquel.moreno@example.com','Calle del Vino 30'),(26,'Eduardo Lopez','555-5670','eduardo.lopez@example.com','Calle del Lago 17'),(27,'Silvia Gonzalez','555-9874','silvia.gonzalez@example.com','Calle del Puente 2'),(28,'Hector Perez','555-4323','hector.perez@example.com','Plaza del Mercado 7'),(29,'Monica Romero','555-6781','monica.romero@example.com','Avenida del Mar 6'),(30,'Victor Fernandez','555-8763','victor.fernandez@example.com','Calle de la Sierra 19'),(31,'Patricia Sanchez','555-3458','patricia.sanchez@example.com','Calle del Jardin 12'),(32,'Antonio Gomez','555-2347','antonio.gomez@example.com','Avenida de la Libertad 4'),(33,'Maria Morales','555-6545','maria.morales@example.com','Calle del Arbol 29'),(34,'Luis Rodriguez','555-7892','luis.rodriguez@example.com','Plaza del Sol 1'),(35,'Lorena Torres','555-5434','lorena.torres@example.com','Calle de la Rosa 23'),(36,'Sergio Lopez','555-8766','sergio.lopez@example.com','Avenida de la Estrella 31'),(37,'Patricia Fernandez','555-1237','patricia.fernandez@example.com','Calle del Puente 5'),(38,'Oscar Perez','555-5671','oscar.perez@example.com','Calle del Mar 8'),(39,'Mariana Diaz','555-9873','mariana.diaz@example.com','Calle del Bosque 4'),(40,'Jorge Sanchez','555-4324','jorge.sanchez@example.com','Plaza de la Ciudad 6'),(41,'Lucia Rodriguez','555-6782','lucia.rodriguez@example.com','Avenida del Viento 10'),(42,'Manuel Garcia','555-8767','manuel.garcia@example.com','Calle del Otono 13'),(43,'Gabriela Morales','555-3459','gabriela.morales@example.com','Calle de la Sierra 21'),(44,'Alberto Fernandez','555-2348','alberto.fernandez@example.com','Calle del Lago 9'),(45,'Monica Sanchez','555-6546','monica.sanchez@example.com','Plaza del Rio 17'),(46,'Emanuel Lopez','555-7893','emanuel.lopez@example.com','Calle del Mar 22'),(47,'Ana Martinez','555-5435','ana.martinez@example.com','Avenida del Sol 4'),(48,'Victor Gonzalez','555-8768','victor.gonzalez@example.com','Calle de la Luna 7'),(49,'Elena Rodriguez','555-1238','elena.rodriguez@example.com','Calle del Rio 5'),(50,'Roberto Diaz','555-5672','roberto.diaz@example.com','Calle del Parque 3'),(51,'Julia Gomez','555-9872','julia.gomez@example.com','Calle de los Vientos 8'),(52,'Daniel Fernandez','555-4325','daniel.fernandez@example.com','Avenida del Sol 6'),(53,'Lorena Lopez','555-6783','lorena.lopez@example.com','Calle del Mar 12'),(54,'Alba Sanchez','555-8769','alba.sanchez@example.com','Calle del Bosque 18'),(55,'Oscar Martinez','555-3456','oscar.martinez@example.com','Calle del Rio 15');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `IDFactura` int NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `IDPedido` int DEFAULT NULL,
  PRIMARY KEY (`IDFactura`),
  KEY `FK_FACTURA_PEDIDO` (`IDPedido`),
  CONSTRAINT `FK_FACTURA_PEDIDO` FOREIGN KEY (`IDPedido`) REFERENCES `pedido` (`IDPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,'2024-07-01',123.45,31),(2,'2024-07-02',87.90,32),(3,'2024-07-03',56.78,33),(4,'2024-07-04',202.15,34),(5,'2024-07-05',174.50,35),(6,'2024-07-06',98.30,36),(7,'2024-07-07',45.00,37),(8,'2024-07-08',150.25,38),(9,'2024-07-09',65.75,39),(10,'2024-07-10',82.40,40),(12,'2024-07-12',108.95,42),(13,'2024-07-13',215.20,43),(14,'2024-07-14',78.10,44),(15,'2024-07-15',91.25,45),(16,'2024-07-16',49.85,46),(17,'2024-07-17',120.00,47),(18,'2024-07-18',62.90,48),(19,'2024-07-19',154.40,49),(20,'2024-07-20',30.75,50),(21,'2024-07-21',99.99,51),(22,'2024-07-22',55.60,52),(23,'2024-07-23',136.45,53),(25,'2024-07-25',88.55,55),(26,'2024-07-26',105.00,56),(27,'2024-07-27',142.35,57),(28,'2024-07-28',70.90,58),(29,'2024-07-29',48.75,59),(30,'2024-07-30',123.00,60);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodo_de_pago`
--

DROP TABLE IF EXISTS `metodo_de_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodo_de_pago` (
  `IDMetodoPago` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Descripcion` text,
  PRIMARY KEY (`IDMetodoPago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodo_de_pago`
--

LOCK TABLES `metodo_de_pago` WRITE;
/*!40000 ALTER TABLE `metodo_de_pago` DISABLE KEYS */;
INSERT INTO `metodo_de_pago` VALUES (1,'Debito','Tarjeta de debito'),(2,'Credito','Tarjeta de credito'),(3,'Efectivo','Dinero en efectivo'),(4,'MP','Mercado Pago'),(5,'Transferencia','Transferencia bancaria');
/*!40000 ALTER TABLE `metodo_de_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `IDPedido` int NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `IDCliente` int DEFAULT NULL,
  `IDProducto` int DEFAULT NULL,
  `IDMetodoPago` int DEFAULT NULL,
  PRIMARY KEY (`IDPedido`),
  KEY `FK_PEDIDO_CLIENTE` (`IDCliente`),
  KEY `FK_METODO_DE_PAGO_CLIENTE` (`IDMetodoPago`),
  KEY `FK_PRODUCTO_PEDIDO` (`IDProducto`),
  CONSTRAINT `FK_METODO_DE_PAGO_CLIENTE` FOREIGN KEY (`IDMetodoPago`) REFERENCES `metodo_de_pago` (`IDMetodoPago`),
  CONSTRAINT `FK_PEDIDO_CLIENTE` FOREIGN KEY (`IDCliente`) REFERENCES `cliente` (`IDCliente`),
  CONSTRAINT `FK_PRODUCTO_PEDIDO` FOREIGN KEY (`IDProducto`) REFERENCES `producto` (`IDProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (31,'2024-07-01',123.45,1,3,1),(32,'2024-07-02',87.90,2,2,2),(33,'2024-07-03',56.78,3,4,3),(34,'2024-07-04',202.15,4,8,4),(35,'2024-07-05',174.50,5,9,5),(36,'2024-07-06',98.30,6,5,1),(37,'2024-07-07',45.00,7,15,2),(38,'2024-07-08',150.25,8,20,3),(39,'2024-07-09',65.75,9,23,4),(40,'2024-07-10',82.40,10,22,5),(42,'2024-07-12',108.95,12,17,2),(43,'2024-07-13',215.20,13,16,3),(44,'2024-07-14',78.10,14,1,4),(45,'2024-07-15',91.25,15,2,5),(46,'2024-07-16',49.85,16,7,1),(47,'2024-07-17',120.00,17,8,2),(48,'2024-07-18',62.90,18,11,3),(49,'2024-07-19',154.40,19,12,4),(50,'2024-07-20',30.75,20,13,5),(51,'2024-07-21',99.99,21,14,1),(52,'2024-07-22',55.60,22,21,2),(53,'2024-07-23',136.45,23,24,3),(55,'2024-07-25',88.55,25,5,5),(56,'2024-07-26',105.00,26,6,1),(57,'2024-07-27',142.35,27,15,2),(58,'2024-07-28',70.90,28,9,3),(59,'2024-07-29',48.75,29,8,4),(60,'2024-07-30',123.00,1,10,5);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Actualizar_Stock_After_Pedido` AFTER INSERT ON `pedido` FOR EACH ROW BEGIN 
	UPDATE PRODUCTO
    SET StockActual = StockActual - 1
    WHERE IDProducto = NEW.IDProducto;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `IDProducto` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Descripcion` text,
  `PrecioVenta` decimal(10,2) DEFAULT NULL,
  `PrecioCosto` decimal(10,2) DEFAULT NULL,
  `StockActual` int DEFAULT NULL,
  `StockMinimo` int DEFAULT NULL,
  `IDProveedor` int DEFAULT NULL,
  `IDCategoria` int DEFAULT NULL,
  PRIMARY KEY (`IDProducto`),
  KEY `FK_PRODUCTO_PROVEEDOR` (`IDProveedor`),
  KEY `FK_PRODUCTO_CATEGORIA` (`IDCategoria`),
  CONSTRAINT `FK_PRODUCTO_CATEGORIA` FOREIGN KEY (`IDCategoria`) REFERENCES `categoria_producto` (`IDCategoria`),
  CONSTRAINT `FK_PRODUCTO_PROVEEDOR` FOREIGN KEY (`IDProveedor`) REFERENCES `proveedor` (`IDProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Proteina Whey','Proteina en polvo 1kg',45.99,35.00,49,10,1,1),(2,'BCAA','Aminoacidos ramificados 300g',29.99,22.00,28,8,1,1),(3,'Creatina','Creatina monohidratada 500g',25.00,18.00,39,12,1,1),(4,'Glutamina','Glutamina en polvo 300g',32.50,24.00,34,10,1,1),(5,'Pre-entrenamiento','Suplemento pre-entrenamiento 200g',28.00,20.00,43,15,1,1),(6,'Multivitaminico','Multivitaminico diario 60 capsulas',18.99,15.00,59,20,2,2),(7,'Vitamina C','Vitamina C 1000mg 30 tabletas',12.50,10.00,69,25,2,2),(8,'Vitamina D','Vitamina D 2000 IU 60 capsulas',14.00,11.00,52,20,2,2),(9,'Omega 3','Omega 3 1000mg 90 capsulas',25.00,18.00,38,15,2,2),(10,'B12','Vitamina B12 1000mcg 60 tabletas',20.00,16.00,49,18,2,2),(11,'Magnesio','Magnesio 400mg 90 tabletas',15.00,12.00,44,12,2,3),(12,'Calcio','Calcio 600mg 60 tabletas',22.00,18.00,34,10,2,3),(13,'Zinc','Zinc 50mg 60 tabletas',17.50,14.00,49,15,2,3),(14,'Hierro','Hierro 18mg 90 capsulas',19.00,15.00,39,12,2,3),(15,'Selenio','Selenio 200mcg 60 tabletas',21.00,16.00,28,10,2,3),(16,'Barras de Proteina','Barra de Proteina 60g',2.50,1.80,99,30,3,4),(17,'Barras de Granola','Barra de granola 40g',1.80,1.30,89,25,3,4),(18,'Barras deEnergia','Barra energetica 50g',2.00,1.50,80,20,3,4),(19,'Barras de Chocolate','Barra de chocolate saludable 60g',2.80,2.00,70,15,3,4),(20,'Barras de Frutos Secos','Barra de frutos secos 50g',2.40,1.90,84,25,3,4),(21,'Chips de Kale','Chips de kale 100g',4.00,3.00,59,20,4,5),(22,'Almendras','Almendras crudas 200g',6.00,4.50,49,15,4,5),(23,'Pipas de Calabaza','Pipas de calabaza 150g',5.50,4.00,54,18,4,5),(24,'Frutos Rojos','Mezcla de frutos rojos 200g',7.00,5.00,44,12,4,5),(25,'Granola','Granola 500g',5.00,3.80,70,20,4,5),(29,'Proteina Whey','Proteina en polvo 1kg',45.99,35.00,51,10,2,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Verificar_Stock_Minimo_After_Update` AFTER UPDATE ON `producto` FOR EACH ROW BEGIN
  IF OLD.StockActual < OLD.StockMinimo THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Stock actual por debajo del stock mínimo.';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `IDProveedor` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Direccion` varchar(200) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Proveedor1','Calle Falsa 123','555-1234','contacto@proveedor1.com'),(2,'Proveedor2','Avenida Siempre Viva 742','555-5678','info@proveedor2.com'),(3,'Proveedor3','Calle Mayor 456','555-8765','support@proveedor3.com'),(4,'Proveedor4','Plaza Central 9','555-4321','ventas@proveedor4.com'),(5,'Proveedor5','Ruta 66 101','555-3456','atencion@proveedor5.com');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_detalles_pedidos`
--

DROP TABLE IF EXISTS `vista_detalles_pedidos`;
/*!50001 DROP VIEW IF EXISTS `vista_detalles_pedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_detalles_pedidos` AS SELECT 
 1 AS `IDPedido`,
 1 AS `Fecha_Pedido`,
 1 AS `Total_Pedido`,
 1 AS `Nombre_Cliente`,
 1 AS `Metodo_Pago`,
 1 AS `Producto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_facturacion_cliente`
--

DROP TABLE IF EXISTS `vista_facturacion_cliente`;
/*!50001 DROP VIEW IF EXISTS `vista_facturacion_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_facturacion_cliente` AS SELECT 
 1 AS `IDCliente`,
 1 AS `Nombre_Cliente`,
 1 AS `Total_Facturado`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'db_dietetica'
--

--
-- Dumping routines for database 'db_dietetica'
--
/*!50003 DROP FUNCTION IF EXISTS `Calcular_Total_Ventas_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Calcular_Total_Ventas_Producto`(p_IDProducto INT) RETURNS decimal(10,2)
    READS SQL DATA
    DETERMINISTIC
BEGIN
  DECLARE total DECIMAL(10, 2);
  SELECT SUM(p.Total) INTO total
  FROM PEDIDO p
  WHERE p.IDProducto = p_IDProducto;
  
  RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Verificar_Stock_Minimo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Verificar_Stock_Minimo`(p_IDProducto INT) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
  DECLARE stock INT;
  DECLARE minimo INT;
  
  SELECT StockActual, StockMinimo INTO stock, minimo
  FROM PRODUCTO
  WHERE IDProducto = p_IDProducto;
  
  RETURN stock < minimo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Agregar_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Agregar_Producto`(
  IN p_Nombre VARCHAR(100),
  IN p_Descripcion TEXT,
  IN p_PrecioVenta DECIMAL(10, 2),
  IN p_PrecioCosto DECIMAL(10, 2),
  IN p_StockActual INT,
  IN p_StockMinimo INT,
  IN p_IDProveedor INT,
  IN p_IDCategoria INT
)
BEGIN
  INSERT INTO PRODUCTO (Nombre, Descripcion, PrecioVenta, PrecioCosto, StockActual, StockMinimo, IDProveedor, IDCategoria)
  VALUES (p_Nombre, p_Descripcion, p_PrecioVenta, p_PrecioCosto, p_StockActual, p_StockMinimo, p_IDProveedor, p_IDCategoria);
   SELECT 'Producto creado exitosamente.';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Registrar_Pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Registrar_Pedido`(
  IN p_Fecha DATE,
  IN p_Total DECIMAL(10, 2),
  IN p_IDCliente INT,
  IN p_IDProducto INT,
  IN p_IDMetodoPago INT
)
BEGIN
  INSERT INTO PEDIDO (Fecha, Total, IDCliente, IDProducto, IDMetodoPago)
  VALUES (p_Fecha, p_Total, p_IDCliente, p_IDProducto, p_IDMetodoPago);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_detalles_pedidos`
--

/*!50001 DROP VIEW IF EXISTS `vista_detalles_pedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_detalles_pedidos` AS select `p`.`IDPedido` AS `IDPedido`,`p`.`Fecha` AS `Fecha_Pedido`,`p`.`Total` AS `Total_Pedido`,`c`.`Nombre` AS `Nombre_Cliente`,`m`.`Nombre` AS `Metodo_Pago`,`pr`.`Nombre` AS `Producto` from (((`pedido` `p` join `cliente` `c` on((`p`.`IDCliente` = `c`.`IDCliente`))) join `metodo_de_pago` `m` on((`p`.`IDMetodoPago` = `m`.`IDMetodoPago`))) join `producto` `pr` on((`p`.`IDProducto` = `pr`.`IDProducto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_facturacion_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vista_facturacion_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_facturacion_cliente` AS select `c`.`IDCliente` AS `IDCliente`,`c`.`Nombre` AS `Nombre_Cliente`,sum(`f`.`Total`) AS `Total_Facturado` from ((`cliente` `c` join `pedido` `p` on((`c`.`IDCliente` = `p`.`IDCliente`))) join `factura` `f` on((`p`.`IDPedido` = `f`.`IDPedido`))) group by `c`.`IDCliente`,`c`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-29 22:02:52
