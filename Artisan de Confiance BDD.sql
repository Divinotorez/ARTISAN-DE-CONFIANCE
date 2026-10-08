-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: artisans_de_confiance
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adresse` (
  `id_adresse_Adresse` int NOT NULL AUTO_INCREMENT,
  `Numero_rue_Adresse` int DEFAULT NULL,
  `Nom_rue_Adresse` varchar(225) DEFAULT NULL,
  `code_postal_Adresse` varchar(10) DEFAULT NULL,
  `Ville_Adresse` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id_adresse_Adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (1,12,'Rue de la République','34000','Montpellier'),(2,25,'Avenue Jean Jaurès','75011','Paris'),(3,8,'Rue de la Canebière','13001','Marseille'),(4,41,'Rue Sainte-Catherine','33000','Bordeaux'),(5,17,'Rue de Siam','29200','Brest'),(6,6,'Rue Nationale','59000','Lille'),(7,32,'Rue du Commerce','31000','Toulouse'),(8,19,'Avenue de la Libération','06000','Nice'),(9,44,'Rue Victor Hugo','69002','Lyon'),(10,3,'Rue des Carmes','45000','Orléans'),(11,15,'Carrer de Mallorca','08013','Barcelone'),(12,27,'Calle Mayor','28013','Madrid'),(13,9,'Münchener Straße','80333','Munich'),(14,22,'Rue Neuve','1000','Bruxelles'),(15,5,'Avenue Kennedy','237','Yaoundé');
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artisan`
--

DROP TABLE IF EXISTS `artisan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artisan` (
  `Id_artisan_Artisan` int NOT NULL AUTO_INCREMENT,
  `Nom_artisan_Artisan` varchar(225) DEFAULT NULL,
  `specialites_Artisan` varchar(225) DEFAULT NULL,
  `Pays_Artisan` varchar(225) DEFAULT NULL,
  `Zone_regionale_Artisan` varchar(225) DEFAULT NULL,
  `Telephone_Artisan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_artisan_Artisan`),
  UNIQUE KEY `uq_artisan_telephone` (`Telephone_Artisan`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artisan`
--

LOCK TABLES `artisan` WRITE;
/*!40000 ALTER TABLE `artisan` DISABLE KEYS */;
INSERT INTO `artisan` VALUES (1,'Martin Dupont','Plomberie','France','Occitanie','0612345678'),(2,'Sophie Bernard','Électricité','France','Île-de-France','0623456789'),(3,'Lucas Morel','Maçonnerie','France','PACA','0634567890'),(4,'Emma Laurent','Plomberie','France','Nouvelle-Aquitaine','0645678901'),(5,'Thomas Petit','Menuiserie','France','Bretagne','0656789012'),(6,'Nicolas Garcia','Plomberie','France','Occitanie','0667890123'),(7,'Claire Robert','Toiture','France','PACA','0678901234'),(8,'Julien Faure','Climatisation','France','Occitanie','0689012345'),(9,'Camille Roux','Jardinage','France','Nouvelle-Aquitaine','0690123456'),(10,'Antoine Blanc','Chauffage','France','Île-de-France','0601234567'),(11,'Carlos Martinez','Plomberie','Espagne','Catalogne','+34612345678'),(12,'Lucia Fernandez','Électricité','Espagne','Madrid','+34623456789'),(13,'Diego Romero','Maçonnerie','Espagne','Andalousie','+34634567890'),(14,'Marta Sanchez','Peinture','Espagne','Valence','+34645678901'),(15,'Pablo Torres','Menuiserie','Espagne','Catalogne','+34656789012'),(16,'Hans Müller','Chauffage','Allemagne','Bavière','+4915123456789'),(17,'Anna Schmidt','Électricité','Allemagne','Rhénanie-du-Nord-Westphalie','+4915234567890'),(18,'Lukas Weber','Toiture','Allemagne','Hesse','+4915345678901'),(19,'Sophie Klein','Peinture','Allemagne','Saxe','+4915456789012'),(20,'Paul Fischer','Plomberie','Allemagne','Bavière','+4915567890123'),(21,'Jean Mballa','Maçonnerie','Cameroun','Centre','+237691234567'),(22,'Brigitte Ngo','Peinture','Cameroun','Littoral','+237692345678'),(23,'Armand Tchoumi','Plomberie','Cameroun','Ouest','+237693456789'),(24,'Nathalie Essomba','Électricité','Cameroun','Centre','+237694567890'),(25,'Franck Mbarga','Menuiserie','Cameroun','Littoral','+237695678901'),(26,'Marc Dubois','Plomberie','Belgique','Wallonie','+32471234567'),(27,'Julie Lambert','Électricité','Belgique','Bruxelles-Capitale','+32472345678'),(28,'Olivier Martin','Peinture','Belgique','Flandre','+32473456789'),(29,'Élodie Simon','Jardinage','Belgique','Wallonie','+32474567890'),(30,'Alexandre Leroy','Chauffage','Belgique','Bruxelles-Capitale','+32475678901');
/*!40000 ALTER TABLE `artisan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avis_client`
--

DROP TABLE IF EXISTS `avis_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avis_client` (
  `id_avis_Avis_client` int NOT NULL AUTO_INCREMENT,
  `Note_Avis_client` int DEFAULT NULL,
  `Commentaire_Avis_client` text,
  `Date_avis_Avis_client` date DEFAULT NULL,
  `Id_client_Client` int NOT NULL,
  `Id_artisan_Artisan` int NOT NULL,
  `id_commande_Commande` int NOT NULL,
  PRIMARY KEY (`id_avis_Avis_client`),
  KEY `FK_Avis_client_Id_client_Client` (`Id_client_Client`),
  KEY `FK_Avis_client_Id_artisan_Artisan` (`Id_artisan_Artisan`),
  KEY `FK_Avis_client_id_commande_Commande_idx` (`id_commande_Commande`),
  CONSTRAINT `FK_Avis_client_Id_artisan_Artisan` FOREIGN KEY (`Id_artisan_Artisan`) REFERENCES `artisan` (`Id_artisan_Artisan`),
  CONSTRAINT `FK_Avis_client_Id_client_Client` FOREIGN KEY (`Id_client_Client`) REFERENCES `client` (`Id_client_Client`),
  CONSTRAINT `FK_Avis_client_id_commande_Commande` FOREIGN KEY (`id_commande_Commande`) REFERENCES `commande` (`id_commande_Commande`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avis_client`
--

LOCK TABLES `avis_client` WRITE;
/*!40000 ALTER TABLE `avis_client` DISABLE KEYS */;
INSERT INTO `avis_client` VALUES (1,5,'Travail très satisfaisant','2022-01-15',1,1,1),(2,4,'Travail sérieux','2023-02-26',2,2,2),(3,2,'Travaux terminés en retard','2023-05-25',3,3,3),(4,5,'Très bonne prestation','2024-01-26',4,4,4),(5,3,'Quelques problèmes mais résultat correct','2024-05-10',5,3,5),(6,4,'Bon travail','2024-09-05',6,5,6),(7,5,'Excellent travail','2025-02-15',7,7,7),(8,2,'Retard important','2025-05-10',8,3,8),(9,4,'Très bon artisan','2025-06-05',9,8,9),(10,3,'Travail correct mais retard','2025-09-20',10,7,10),(11,5,'Dépannage rapide','2026-01-22',11,6,11);
/*!40000 ALTER TABLE `avis_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `bilan_stock`
--

DROP TABLE IF EXISTS `bilan_stock`;
/*!50001 DROP VIEW IF EXISTS `bilan_stock`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bilan_stock` AS SELECT 
 1 AS `Nom_artisan_Artisan`,
 1 AS `nom_produit_Produit`,
 1 AS `etat_stock`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ca`
--

DROP TABLE IF EXISTS `ca`;
/*!50001 DROP VIEW IF EXISTS `ca`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ca` AS SELECT 
 1 AS `annee`,
 1 AS `CAN`,
 1 AS `CAN_1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ca_travaux_urgente`
--

DROP TABLE IF EXISTS `ca_travaux_urgente`;
/*!50001 DROP VIEW IF EXISTS `ca_travaux_urgente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ca_travaux_urgente` AS SELECT 
 1 AS `annee`,
 1 AS `CA_urgent`,
 1 AS `part_CA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `chiffre_d_affaire`
--

DROP TABLE IF EXISTS `chiffre_d_affaire`;
/*!50001 DROP VIEW IF EXISTS `chiffre_d_affaire`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `chiffre_d_affaire` AS SELECT 
 1 AS `annee`,
 1 AS `CA`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `Id_client_Client` int NOT NULL AUTO_INCREMENT,
  `Nom_client_Client` varchar(225) DEFAULT NULL,
  `prenom_client_Client` varchar(225) DEFAULT NULL,
  `Tel_Client` varchar(20) DEFAULT NULL,
  `email_Client` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`Id_client_Client`),
  UNIQUE KEY `uq_client_nom_prenom` (`Nom_client_Client`,`prenom_client_Client`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Martin','Sophie','0611111111','sophie.martin@email.com'),(2,'Bernard','Thomas','0622222222','thomas.bernard@email.com'),(3,'Dubois','Camille','0633333333','camille.dubois@email.com'),(4,'Moreau','Julien','0644444444','julien.moreau@email.com'),(5,'Laurent','Emma','0655555555','emma.laurent@email.com'),(6,'Leroy','Nicolas','0666666666','nicolas.leroy@email.com'),(7,'Roux','Chloe','0677777777','chloe.roux@email.com'),(8,'David','Antoine','0688888888','antoine.david@email.com'),(9,'Petit','Laura','0699999999','laura.petit@email.com'),(10,'Robert','Hugo','0610101010','hugo.robert@email.com'),(11,'Garcia','Ines','0611112222','ines.garcia@email.com'),(12,'Fournier','Lucas','0612223333','lucas.fournier@email.com'),(13,'Mercier','Sarah','0613334444','sarah.mercier@email.com'),(14,'Blanc','Maxime','0614445555','maxime.blanc@email.com'),(15,'Garnier','Julie','0615556666','julie.garnier@email.com');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `com_note`
--

DROP TABLE IF EXISTS `com_note`;
/*!50001 DROP VIEW IF EXISTS `com_note`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `com_note` AS SELECT 
 1 AS `id_commande_Commande`,
 1 AS `note`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `com_term_prest`
--

DROP TABLE IF EXISTS `com_term_prest`;
/*!50001 DROP VIEW IF EXISTS `com_term_prest`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `com_term_prest` AS SELECT 
 1 AS `id_commande_Commande`,
 1 AS `statut_commande`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande` (
  `id_commande_Commande` int NOT NULL AUTO_INCREMENT,
  `Type_commande_Commande` varchar(225) DEFAULT NULL,
  `duree_Commande` varchar(225) DEFAULT NULL,
  `Statut_commande_Commande` varchar(225) DEFAULT NULL,
  `Id_client_Client` int NOT NULL,
  `id_adresse_Adresse` int NOT NULL,
  `devis_id_devis_devis` int DEFAULT NULL,
  PRIMARY KEY (`id_commande_Commande`),
  KEY `FK_Commande_Id_client_Client` (`Id_client_Client`),
  KEY `FK_Commande_id_adresse_Adresse` (`id_adresse_Adresse`),
  KEY `FK_Commande_devis_id_devis_devis` (`devis_id_devis_devis`),
  CONSTRAINT `FK_Commande_devis_id_devis_devis` FOREIGN KEY (`devis_id_devis_devis`) REFERENCES `devis` (`id_devis_Devis`),
  CONSTRAINT `FK_Commande_id_adresse_Adresse` FOREIGN KEY (`id_adresse_Adresse`) REFERENCES `adresse` (`id_adresse_Adresse`),
  CONSTRAINT `FK_Commande_Id_client_Client` FOREIGN KEY (`Id_client_Client`) REFERENCES `client` (`Id_client_Client`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,'Normal','3','Terminée',1,1,1),(2,'Normal','5','Terminée',2,2,2),(3,'Urgent','4','Terminée',3,3,3),(4,'Normal','10','Terminée',4,4,4),(5,'Normal','20','Terminée',5,5,5),(6,'Urgent','8','Terminée',6,6,6),(7,'Normal','25','Terminée',7,7,7),(8,'Urgent','40','Terminée',8,8,8),(9,'Normal','15','Terminée',9,9,9),(10,'Urgent','30','Terminée',10,10,10),(11,'Normal','5','En cours',11,11,11),(12,'Urgent','12','En cours',12,12,12),(13,'Normal','8','En cours',13,13,13),(14,'Urgent','4','En cours',14,14,14),(15,'Normal','10','En cours',15,15,15);
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `commande_encours`
--

DROP TABLE IF EXISTS `commande_encours`;
/*!50001 DROP VIEW IF EXISTS `commande_encours`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `commande_encours` AS SELECT 
 1 AS `id_commande_Commande`,
 1 AS `id_prestation_Prestation`,
 1 AS `Id_artisan_Artisan`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `commande_terminee`
--

DROP TABLE IF EXISTS `commande_terminee`;
/*!50001 DROP VIEW IF EXISTS `commande_terminee`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `commande_terminee` AS SELECT 
 1 AS `id_commande_Commande`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `commandeterm_artisan`
--

DROP TABLE IF EXISTS `commandeterm_artisan`;
/*!50001 DROP VIEW IF EXISTS `commandeterm_artisan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `commandeterm_artisan` AS SELECT 
 1 AS `Id_artisan_Artisan`,
 1 AS `Nom_artisan_Artisan`,
 1 AS `Zone_regionale_Artisan`,
 1 AS `id_commande_Commande`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `contenir`
--

DROP TABLE IF EXISTS `contenir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenir` (
  `id_commande_Commande` int NOT NULL,
  `id_travaux_Type_travaux` int NOT NULL,
  PRIMARY KEY (`id_commande_Commande`,`id_travaux_Type_travaux`),
  KEY `FK_contenir_id_travaux_Type_travaux` (`id_travaux_Type_travaux`),
  CONSTRAINT `FK_contenir_id_commande_Commande` FOREIGN KEY (`id_commande_Commande`) REFERENCES `commande` (`id_commande_Commande`),
  CONSTRAINT `FK_contenir_id_travaux_Type_travaux` FOREIGN KEY (`id_travaux_Type_travaux`) REFERENCES `type_travaux` (`id_travaux_Type_travaux`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenir`
--

LOCK TABLES `contenir` WRITE;
/*!40000 ALTER TABLE `contenir` DISABLE KEYS */;
INSERT INTO `contenir` VALUES (1,1),(11,1),(12,2),(2,3),(12,3),(14,3),(3,4),(5,4),(8,4),(10,4),(4,5),(5,5),(8,5),(13,5),(7,6),(10,6),(5,7),(6,7),(8,7),(15,7),(9,8);
/*!40000 ALTER TABLE `contenir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dashboard_ca`
--

DROP TABLE IF EXISTS `dashboard_ca`;
/*!50001 DROP VIEW IF EXISTS `dashboard_ca`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dashboard_ca` AS SELECT 
 1 AS `annee`,
 1 AS `CA`,
 1 AS `CA_N_1`,
 1 AS `evolution`,
 1 AS `CA_urgent`,
 1 AS `part_CA`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `devis`
--

DROP TABLE IF EXISTS `devis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devis` (
  `id_devis_Devis` int NOT NULL AUTO_INCREMENT,
  `date_devis_Devis` date DEFAULT NULL,
  `date_validite_Devis` datetime DEFAULT NULL,
  `montant_total_Devis` decimal(10,2) DEFAULT NULL,
  `statut_devis_Devis` varchar(225) DEFAULT NULL,
  `description_Devis` text,
  `Id_client_Client` int NOT NULL,
  PRIMARY KEY (`id_devis_Devis`),
  KEY `FK_Devis_Id_client_Client` (`Id_client_Client`),
  CONSTRAINT `FK_Devis_Id_client_Client` FOREIGN KEY (`Id_client_Client`) REFERENCES `client` (`Id_client_Client`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devis`
--

LOCK TABLES `devis` WRITE;
/*!40000 ALTER TABLE `devis` DISABLE KEYS */;
INSERT INTO `devis` VALUES (1,'2022-01-05','2022-02-05 00:00:00',950.00,'Accepté','Réparation plomberie',1),(2,'2023-02-10','2023-03-10 00:00:00',1600.00,'Accepté','Installation électrique',2),(3,'2023-05-12','2023-06-12 00:00:00',2400.00,'Accepté','Travaux de maçonnerie',3),(4,'2024-01-15','2024-02-15 00:00:00',500.00,'Accepté','Travaux de peinture',4),(5,'2024-04-10','2024-05-10 00:00:00',7200.00,'Accepté','Rénovation complète',5),(6,'2024-08-20','2024-09-20 00:00:00',3500.00,'Accepté','Travaux de menuiserie',6),(7,'2025-01-10','2025-02-10 00:00:00',12500.00,'Accepté','Rénovation toiture',7),(8,'2025-03-05','2025-04-05 00:00:00',29300.00,'Accepté','Rénovation importante',8),(9,'2025-05-12','2025-06-12 00:00:00',6500.00,'Accepté','Installation climatisation',9),(10,'2025-08-01','2025-09-01 00:00:00',11500.00,'Accepté','Rénovation bâtiment',10),(11,'2026-01-10','2026-02-10 00:00:00',900.00,'Accepté','Dépannage plomberie',11),(12,'2026-02-10','2026-03-10 00:00:00',5200.00,'Accepté','Installation chauffage',12),(13,'2026-05-10','2026-06-10 00:00:00',1800.00,'Accepté','Travaux de peinture',13),(14,'2026-07-01','2026-08-01 00:00:00',850.00,'Accepté','Dépannage électrique',14),(15,'2026-08-01','2026-09-01 00:00:00',6200.00,'En attente','Travaux de menuiserie',15);
/*!40000 ALTER TABLE `devis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disponibilite`
--

DROP TABLE IF EXISTS `disponibilite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disponibilite` (
  `id_disponibilite_Disponibilite` int NOT NULL AUTO_INCREMENT,
  `jour_Disponibilite` date DEFAULT NULL,
  `heure_debut_Disponibilite` time DEFAULT NULL,
  `heure_fin_Disponibilite` time DEFAULT NULL,
  `Id_artisan_Artisan` int NOT NULL,
  PRIMARY KEY (`id_disponibilite_Disponibilite`),
  KEY `FK_Disponibilite_Id_artisan_Artisan` (`Id_artisan_Artisan`),
  CONSTRAINT `FK_Disponibilite_Id_artisan_Artisan` FOREIGN KEY (`Id_artisan_Artisan`) REFERENCES `artisan` (`Id_artisan_Artisan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disponibilite`
--

LOCK TABLES `disponibilite` WRITE;
/*!40000 ALTER TABLE `disponibilite` DISABLE KEYS */;
/*!40000 ALTER TABLE `disponibilite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `disponibilite_artisan`
--

DROP TABLE IF EXISTS `disponibilite_artisan`;
/*!50001 DROP VIEW IF EXISTS `disponibilite_artisan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `disponibilite_artisan` AS SELECT 
 1 AS `Nom_artisan_Artisan`,
 1 AS `statut`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `evolution_ca`
--

DROP TABLE IF EXISTS `evolution_ca`;
/*!50001 DROP VIEW IF EXISTS `evolution_ca`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `evolution_ca` AS SELECT 
 1 AS `annee`,
 1 AS `CAN`,
 1 AS `CAN_1`,
 1 AS `evolution`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facture` (
  `id_facture_Facture` int NOT NULL AUTO_INCREMENT,
  `prix_materiau_Facture` decimal(10,2) DEFAULT NULL,
  `montant_total_Facture` decimal(10,2) DEFAULT NULL,
  `Id_client_Client` int NOT NULL,
  `id_commande_Commande` int NOT NULL,
  `date_facture` date DEFAULT NULL,
  PRIMARY KEY (`id_facture_Facture`),
  KEY `FK_Facture_Id_client_Client` (`Id_client_Client`),
  KEY `FK_Facture_id_commande_Commande` (`id_commande_Commande`),
  CONSTRAINT `FK_Facture_Id_client_Client` FOREIGN KEY (`Id_client_Client`) REFERENCES `client` (`Id_client_Client`),
  CONSTRAINT `FK_Facture_id_commande_Commande` FOREIGN KEY (`id_commande_Commande`) REFERENCES `commande` (`id_commande_Commande`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facture`
--

LOCK TABLES `facture` WRITE;
/*!40000 ALTER TABLE `facture` DISABLE KEYS */;
INSERT INTO `facture` VALUES (1,NULL,950.00,1,1,'2022-01-14'),(2,NULL,1600.00,2,2,'2023-02-25'),(3,NULL,2400.00,3,3,'2023-05-20'),(4,NULL,500.00,4,4,'2024-01-25'),(5,NULL,7200.00,5,5,'2024-05-06'),(6,NULL,3500.00,6,6,'2024-09-03'),(7,NULL,12500.00,7,7,'2025-02-11'),(8,NULL,29300.00,8,8,'2025-05-03'),(9,NULL,6500.00,9,9,'2025-06-02'),(10,NULL,11500.00,10,10,'2025-09-19'),(11,NULL,900.00,11,11,'2026-01-21');
/*!40000 ALTER TABLE `facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faire`
--

DROP TABLE IF EXISTS `faire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faire` (
  `Id_artisan_Artisan` int NOT NULL,
  `id_prestation_Prestation` int NOT NULL,
  PRIMARY KEY (`Id_artisan_Artisan`,`id_prestation_Prestation`),
  KEY `FK_faire_id_prestation_Prestation` (`id_prestation_Prestation`),
  CONSTRAINT `FK_faire_Id_artisan_Artisan` FOREIGN KEY (`Id_artisan_Artisan`) REFERENCES `artisan` (`Id_artisan_Artisan`),
  CONSTRAINT `FK_faire_id_prestation_Prestation` FOREIGN KEY (`id_prestation_Prestation`) REFERENCES `prestation` (`id_prestation_Prestation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faire`
--

LOCK TABLES `faire` WRITE;
/*!40000 ALTER TABLE `faire` DISABLE KEYS */;
INSERT INTO `faire` VALUES (1,1),(2,2),(12,3),(3,4),(4,5),(3,6),(4,7),(5,8),(5,9),(7,10),(3,11),(4,12),(8,13),(3,14),(7,15),(6,16),(16,17),(17,17),(19,18),(27,19),(25,20);
/*!40000 ALTER TABLE `faire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `fiche_client`
--

DROP TABLE IF EXISTS `fiche_client`;
/*!50001 DROP VIEW IF EXISTS `fiche_client`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fiche_client` AS SELECT 
 1 AS `numero_commande`,
 1 AS `Nom_client_Client`,
 1 AS `prenom_client_Client`,
 1 AS `Tel_Client`,
 1 AS `email_Client`,
 1 AS `date_commande`,
 1 AS `numero_facture`,
 1 AS `montant_total_Facture`,
 1 AS `mode_paiement`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fiche_fournisseur`
--

DROP TABLE IF EXISTS `fiche_fournisseur`;
/*!50001 DROP VIEW IF EXISTS `fiche_fournisseur`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fiche_fournisseur` AS SELECT 
 1 AS `nom_fournisseur_Fournisseur`,
 1 AS `prenom_fournisseur_Fournisseur`,
 1 AS `Tel_Fournisseur`,
 1 AS `Email_Fournisseur`,
 1 AS `Nom_artisan_Artisan`,
 1 AS `nom_produit_Produit`,
 1 AS `Quantite_livree`,
 1 AS `date_approvisionnement`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fournisseur` (
  `id_fournisseur_Fournisseur` int NOT NULL AUTO_INCREMENT,
  `nom_fournisseur_Fournisseur` varchar(225) DEFAULT NULL,
  `prenom_fournisseur_Fournisseur` varchar(225) DEFAULT NULL,
  `Tel_Fournisseur` varchar(20) DEFAULT NULL,
  `Email_Fournisseur` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id_fournisseur_Fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES (1,'BatiPro','Marc','0400000001','contact@batipro.fr'),(2,'Materiaux Plus','Claire','0400000002','contact@materiauxplus.fr'),(3,'ElecDistrib','Paul','0400000003','contact@elecdistrib.fr'),(4,'Bois Services','Anne','0400000004','contact@boisservices.fr'),(5,'ClimaTech','David','0400000005','contact@climatech.fr'),(6,'JardiPro','Julie','0400000006','contact@jardipro.fr');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habiter`
--

DROP TABLE IF EXISTS `habiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habiter` (
  `Id_client_Client` int NOT NULL,
  `id_adresse_Adresse` int NOT NULL,
  PRIMARY KEY (`Id_client_Client`,`id_adresse_Adresse`),
  KEY `FK_habiter_id_adresse_Adresse` (`id_adresse_Adresse`),
  CONSTRAINT `FK_habiter_id_adresse_Adresse` FOREIGN KEY (`id_adresse_Adresse`) REFERENCES `adresse` (`id_adresse_Adresse`),
  CONSTRAINT `FK_habiter_Id_client_Client` FOREIGN KEY (`Id_client_Client`) REFERENCES `client` (`Id_client_Client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habiter`
--

LOCK TABLES `habiter` WRITE;
/*!40000 ALTER TABLE `habiter` DISABLE KEYS */;
INSERT INTO `habiter` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15);
/*!40000 ALTER TABLE `habiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `historique_commande`
--

DROP TABLE IF EXISTS `historique_commande`;
/*!50001 DROP VIEW IF EXISTS `historique_commande`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `historique_commande` AS SELECT 
 1 AS `id_commande_Commande`,
 1 AS `id_prestation_Prestation`,
 1 AS `Id_artisan_Artisan`,
 1 AS `note`,
 1 AS `Date_fin_prevue_Prestation`,
 1 AS `date_fin_reele_Prestation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `historique_four`
--

DROP TABLE IF EXISTS `historique_four`;
/*!50001 DROP VIEW IF EXISTS `historique_four`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `historique_four` AS SELECT 
 1 AS `Nom_artisan_Artisan`,
 1 AS `nom_produit_Produit`,
 1 AS `Quantite_livree`,
 1 AS `date_approvisionnement`,
 1 AS `id_fournisseur_Fournisseur`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `indice_de_confiance`
--

DROP TABLE IF EXISTS `indice_de_confiance`;
/*!50001 DROP VIEW IF EXISTS `indice_de_confiance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `indice_de_confiance` AS SELECT 
 1 AS `Id_artisan_Artisan`,
 1 AS `indice_commande`,
 1 AS `indice_delais`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `intermediareb`
--

DROP TABLE IF EXISTS `intermediareb`;
/*!50001 DROP VIEW IF EXISTS `intermediareb`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `intermediareb` AS SELECT 
 1 AS `Nom_artisan_Artisan`,
 1 AS `Pays_Artisan`,
 1 AS `Zone_regionale_Artisan`,
 1 AS `Telephone_Artisan`,
 1 AS `nom_produit_Produit`,
 1 AS `nom_fournisseur_fournisseur`,
 1 AS `quantite`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `liste_commande`
--

DROP TABLE IF EXISTS `liste_commande`;
/*!50001 DROP VIEW IF EXISTS `liste_commande`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `liste_commande` AS SELECT 
 1 AS `id_commande_Commande`,
 1 AS `Statut_commande_Commande`,
 1 AS `Nom_client_Client`,
 1 AS `prenom_client_Client`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `liste_commande_en_cours`
--

DROP TABLE IF EXISTS `liste_commande_en_cours`;
/*!50001 DROP VIEW IF EXISTS `liste_commande_en_cours`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `liste_commande_en_cours` AS SELECT 
 1 AS `id_commande_Commande`,
 1 AS `pourcentage_de_qualite`,
 1 AS `taux_respect_delai`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nombre_commande_se_terminant_dans_le_mois`
--

DROP TABLE IF EXISTS `nombre_commande_se_terminant_dans_le_mois`;
/*!50001 DROP VIEW IF EXISTS `nombre_commande_se_terminant_dans_le_mois`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nombre_commande_se_terminant_dans_le_mois` AS SELECT 
 1 AS `mois`,
 1 AS `nombre_commande`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `offrir`
--

DROP TABLE IF EXISTS `offrir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offrir` (
  `id_travaux_Type_travaux` int NOT NULL,
  `Id_artisan_Artisan` int NOT NULL,
  `Taux_horaire_Artisan` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_travaux_Type_travaux`,`Id_artisan_Artisan`),
  KEY `FK_offrir_Id_artisan_Artisan` (`Id_artisan_Artisan`),
  CONSTRAINT `FK_offrir_Id_artisan_Artisan` FOREIGN KEY (`Id_artisan_Artisan`) REFERENCES `artisan` (`Id_artisan_Artisan`),
  CONSTRAINT `FK_offrir_id_travaux_Type_travaux` FOREIGN KEY (`id_travaux_Type_travaux`) REFERENCES `type_travaux` (`id_travaux_Type_travaux`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offrir`
--

LOCK TABLES `offrir` WRITE;
/*!40000 ALTER TABLE `offrir` DISABLE KEYS */;
INSERT INTO `offrir` VALUES (1,1,55.00),(1,11,52.00),(1,21,54.00),(2,7,58.00),(2,12,60.00),(2,27,59.00),(3,2,60.00),(3,13,63.00),(3,22,61.00),(4,4,50.00),(4,14,55.00),(4,24,53.00),(5,3,45.00),(5,15,46.00),(5,23,47.00),(6,6,65.00),(6,16,68.00),(6,26,67.00),(7,5,48.00),(7,17,50.00),(7,25,49.00),(8,8,62.00),(8,18,65.00),(8,28,64.00),(9,9,40.00),(9,19,42.00),(9,29,41.00),(10,10,70.00),(10,20,72.00),(10,30,75.00);
/*!40000 ALTER TABLE `offrir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paiement`
--

DROP TABLE IF EXISTS `paiement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paiement` (
  `id_paiement_paiement` int NOT NULL AUTO_INCREMENT,
  `type_paiement_paiement` varchar(225) DEFAULT NULL,
  `type_compte_paiement` varchar(225) DEFAULT NULL,
  `Id_client_Client` int NOT NULL,
  `id_facture_Facture` int NOT NULL,
  PRIMARY KEY (`id_paiement_paiement`),
  KEY `FK_paiement_Id_client_Client` (`Id_client_Client`),
  KEY `FK_paiement_id_facture_Facture` (`id_facture_Facture`),
  CONSTRAINT `FK_paiement_Id_client_Client` FOREIGN KEY (`Id_client_Client`) REFERENCES `client` (`Id_client_Client`),
  CONSTRAINT `FK_paiement_id_facture_Facture` FOREIGN KEY (`id_facture_Facture`) REFERENCES `facture` (`id_facture_Facture`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paiement`
--

LOCK TABLES `paiement` WRITE;
/*!40000 ALTER TABLE `paiement` DISABLE KEYS */;
INSERT INTO `paiement` VALUES (1,'Carte','Fidélité',1,1),(2,'PayPal','Standard',2,2),(3,'Carte','Fidélité',3,3),(4,'Espèces','Standard',4,4),(5,'Carte','Fidélité',5,5),(6,'PayPal','Standard',6,6),(7,'Carte','Standard',7,7),(8,'Carte','Fidélité',8,8),(9,'Espèces','Standard',9,9),(10,'Carte','Standard',10,10),(11,'PayPal','Fidélité',11,11);
/*!40000 ALTER TABLE `paiement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestation`
--

DROP TABLE IF EXISTS `prestation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestation` (
  `id_prestation_Prestation` int NOT NULL AUTO_INCREMENT,
  `Date_debut_Prestation` date DEFAULT NULL,
  `Date_fin_prevue_Prestation` date DEFAULT NULL,
  `statut_prestation_Prestation` varchar(225) DEFAULT NULL,
  `montant_Prestation` decimal(10,2) DEFAULT NULL,
  `date_fin_reele_Prestation` date DEFAULT NULL,
  `cause_retard_Prestation` varchar(225) DEFAULT NULL,
  `id_commande_Commande` int DEFAULT NULL,
  `id_travaux_Type_travaux` int DEFAULT NULL,
  PRIMARY KEY (`id_prestation_Prestation`),
  KEY `fk_prestation_id_commande_Commande_idx` (`id_commande_Commande`),
  KEY `id_travaux_Type_travaux_idx` (`id_travaux_Type_travaux`),
  CONSTRAINT `fk_prestation_id_commande_Commande` FOREIGN KEY (`id_commande_Commande`) REFERENCES `commande` (`id_commande_Commande`),
  CONSTRAINT `fk_prestation_type_travaux` FOREIGN KEY (`id_travaux_Type_travaux`) REFERENCES `type_travaux` (`id_travaux_Type_travaux`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestation`
--

LOCK TABLES `prestation` WRITE;
/*!40000 ALTER TABLE `prestation` DISABLE KEYS */;
INSERT INTO `prestation` VALUES (1,'2022-01-10','2022-01-13','Achevée',950.00,'2022-01-13',NULL,1,1),(2,'2023-02-15','2023-02-20','Achevée',1000.00,'2023-02-20',NULL,2,3),(3,'2023-02-15','2023-02-20','Achevée',600.00,'2023-02-23','Retard fournisseur',2,8),(4,'2023-05-15','2023-05-19','Achevée',2400.00,'2023-05-19',NULL,3,4),(5,'2024-01-20','2024-01-24','Achevée',500.00,'2024-01-24',NULL,4,5),(6,'2024-04-15','2024-04-25','Achevée',3000.00,'2024-04-29','Mauvaise météo',5,4),(7,'2024-04-15','2024-04-30','Achevée',2200.00,'2024-04-30',NULL,5,5),(8,'2024-04-15','2024-05-05','Achevée',2000.00,'2024-05-05',NULL,5,7),(9,'2024-08-25','2024-09-02','Achevée',3500.00,'2024-09-01',NULL,6,7),(10,'2025-01-15','2025-02-10','Achevée',12500.00,'2025-02-10',NULL,7,6),(11,'2025-03-10','2025-04-20','Achevée',18000.00,'2025-04-25','Manque de matériaux',8,4),(12,'2025-03-10','2025-05-01','Achevée',11300.00,'2025-05-01',NULL,8,5),(13,'2025-05-15','2025-06-01','Achevée',6500.00,'2025-06-01',NULL,9,8),(14,'2025-08-05','2025-09-05','Achevée',7000.00,'2025-09-05',NULL,10,4),(15,'2025-08-05','2025-09-15','Achevée',4500.00,'2025-09-18','Indisponibilité artisan',10,6),(16,'2026-01-15','2026-01-20','Achevée',900.00,'2026-01-20',NULL,11,1),(17,'2026-02-15','2026-02-25','En cours',5200.00,NULL,NULL,12,2),(18,'2026-05-15','2026-05-25','En cours',1800.00,NULL,NULL,13,5),(19,'2026-07-05','2026-07-15','En cours',850.00,NULL,NULL,14,3),(20,'2026-08-10','2026-10-10','En cours',6200.00,NULL,NULL,15,7);
/*!40000 ALTER TABLE `prestation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prix_moyen_travaux`
--

DROP TABLE IF EXISTS `prix_moyen_travaux`;
/*!50001 DROP VIEW IF EXISTS `prix_moyen_travaux`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prix_moyen_travaux` AS SELECT 
 1 AS `nom_travaux_Type_travaux`,
 1 AS `Zone_regionale_Artisan`,
 1 AS `prix_moyen`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `id_produit_Produit` int NOT NULL AUTO_INCREMENT,
  `nom_produit_Produit` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id_produit_Produit`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (1,'Peinture blanche'),(2,'Tuyau PVC'),(3,'Cable electrique'),(4,'Ciment'),(5,'Carrelage'),(6,'Bois de construction'),(7,'Tuiles'),(8,'Enduit'),(9,'Vis et chevilles'),(10,'Placo');
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `qualite_delai`
--

DROP TABLE IF EXISTS `qualite_delai`;
/*!50001 DROP VIEW IF EXISTS `qualite_delai`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qualite_delai` AS SELECT 
 1 AS `taux_respect_de_delai`,
 1 AS `taux_retard`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `qualité_commande`
--

DROP TABLE IF EXISTS `qualité_commande`;
/*!50001 DROP VIEW IF EXISTS `qualité_commande`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qualité_commande` AS SELECT 
 1 AS `id_commande_Commande`,
 1 AS `note`,
 1 AS `evaluation_qualite_commande`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `quant_four`
--

DROP TABLE IF EXISTS `quant_four`;
/*!50001 DROP VIEW IF EXISTS `quant_four`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quant_four` AS SELECT 
 1 AS `Id_artisan_Artisan`,
 1 AS `nom_produit_Produit`,
 1 AS `nom_fournisseur_fournisseur`,
 1 AS `quantite`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reduction_commande`
--

DROP TABLE IF EXISTS `reduction_commande`;
/*!50001 DROP VIEW IF EXISTS `reduction_commande`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reduction_commande` AS SELECT 
 1 AS `id_commande_Commande`,
 1 AS `Nom_client_Client`,
 1 AS `prenom_client_Client`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `s_approvisionner`
--

DROP TABLE IF EXISTS `s_approvisionner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_approvisionner` (
  `id_fournisseur_Fournisseur` int NOT NULL,
  `Id_artisan_Artisan` int NOT NULL,
  `id_produit_Produit` int NOT NULL,
  `date_approvisionnement` date DEFAULT NULL,
  `Quantite_livree` int DEFAULT NULL,
  PRIMARY KEY (`id_fournisseur_Fournisseur`,`Id_artisan_Artisan`),
  KEY `FK_s_approvisionner_Id_artisan_Artisan` (`Id_artisan_Artisan`),
  KEY `FK_s_approvisionner_id_produit_Produit_idx` (`id_produit_Produit`),
  CONSTRAINT `FK_s_approvisionner_Id_artisan_Artisan` FOREIGN KEY (`Id_artisan_Artisan`) REFERENCES `artisan` (`Id_artisan_Artisan`),
  CONSTRAINT `FK_s_approvisionner_id_fournisseur_Fournisseur` FOREIGN KEY (`id_fournisseur_Fournisseur`) REFERENCES `fournisseur` (`id_fournisseur_Fournisseur`),
  CONSTRAINT `FK_s_approvisionner_id_produit_Produit` FOREIGN KEY (`id_produit_Produit`) REFERENCES `produit` (`id_produit_Produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_approvisionner`
--

LOCK TABLES `s_approvisionner` WRITE;
/*!40000 ALTER TABLE `s_approvisionner` DISABLE KEYS */;
INSERT INTO `s_approvisionner` VALUES (1,1,1,'2026-01-10',30),(1,6,2,'2026-02-05',20),(1,20,1,'2026-06-12',25),(2,3,10,'2026-02-12',50),(2,4,5,'2026-03-01',25),(2,14,5,'2026-05-15',20),(2,28,5,'2026-07-05',40),(3,2,3,'2026-04-02',60),(3,24,4,'2026-06-20',30),(4,5,7,'2026-03-15',40),(4,15,7,'2026-06-01',35),(5,8,8,'2026-04-18',15),(6,9,9,'2026-05-03',30),(6,29,9,'2026-07-12',25);
/*!40000 ALTER TABLE `s_approvisionner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `statistique_retard`
--

DROP TABLE IF EXISTS `statistique_retard`;
/*!50001 DROP VIEW IF EXISTS `statistique_retard`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statistique_retard` AS SELECT 
 1 AS `cause_retard_Prestation`,
 1 AS `pourcentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statistique_satisfaction`
--

DROP TABLE IF EXISTS `statistique_satisfaction`;
/*!50001 DROP VIEW IF EXISTS `statistique_satisfaction`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statistique_satisfaction` AS SELECT 
 1 AS `pourcentage_satisfaits`,
 1 AS `pourcentage_insatisfaits`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stocker`
--

DROP TABLE IF EXISTS `stocker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stocker` (
  `id_produit_Produit` int NOT NULL,
  `Id_artisan_Artisan` int NOT NULL,
  `quantite` int NOT NULL,
  `seuil_critique` int NOT NULL DEFAULT '10',
  PRIMARY KEY (`id_produit_Produit`,`Id_artisan_Artisan`),
  KEY `FK_stocker_Id_artisan_Artisan` (`Id_artisan_Artisan`),
  CONSTRAINT `FK_stocker_Id_artisan_Artisan` FOREIGN KEY (`Id_artisan_Artisan`) REFERENCES `artisan` (`Id_artisan_Artisan`),
  CONSTRAINT `FK_stocker_id_produit_Produit` FOREIGN KEY (`id_produit_Produit`) REFERENCES `produit` (`id_produit_Produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocker`
--

LOCK TABLES `stocker` WRITE;
/*!40000 ALTER TABLE `stocker` DISABLE KEYS */;
INSERT INTO `stocker` VALUES (1,1,5,10),(1,6,15,10),(1,11,18,10),(1,20,14,10),(1,23,11,10),(2,1,10,10),(2,10,3,10),(2,16,22,10),(2,26,4,10),(3,2,35,10),(3,12,7,10),(3,17,9,10),(3,27,19,10),(4,2,4,10),(4,24,8,10),(5,4,8,10),(5,14,12,10),(5,19,6,10),(5,22,25,10),(5,28,9,10),(6,7,6,10),(6,18,17,10),(7,5,30,10),(7,15,5,10),(7,25,16,10),(8,8,20,10),(9,9,10,10),(10,3,25,10),(10,13,40,10),(10,21,3,10);
/*!40000 ALTER TABLE `stocker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `travaux_en_retard`
--

DROP TABLE IF EXISTS `travaux_en_retard`;
/*!50001 DROP VIEW IF EXISTS `travaux_en_retard`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `travaux_en_retard` AS SELECT 
 1 AS `id_commande_Commande`,
 1 AS `id_prestation_Prestation`,
 1 AS `Id_artisan_Artisan`,
 1 AS `Nom_artisan_Artisan`,
 1 AS `Date_fin_prevue_Prestation`,
 1 AS `nombre_jours_retard`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `type_travaux`
--

DROP TABLE IF EXISTS `type_travaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_travaux` (
  `id_travaux_Type_travaux` int NOT NULL AUTO_INCREMENT,
  `nom_travaux_Type_travaux` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id_travaux_Type_travaux`),
  UNIQUE KEY `uq_type_travaux` (`nom_travaux_Type_travaux`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_travaux`
--

LOCK TABLES `type_travaux` WRITE;
/*!40000 ALTER TABLE `type_travaux` DISABLE KEYS */;
INSERT INTO `type_travaux` VALUES (2,'Chauffage'),(8,'Climatisation'),(10,'Depannage'),(3,'Electricite'),(9,'Jardinage'),(4,'Maconnerie'),(7,'Menuiserie'),(5,'Peinture'),(1,'Plomberie'),(6,'Toiture');
/*!40000 ALTER TABLE `type_travaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendre`
--

DROP TABLE IF EXISTS `vendre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendre` (
  `id_fournisseur_Fournisseur` int NOT NULL,
  `id_produit_Produit` int NOT NULL,
  PRIMARY KEY (`id_fournisseur_Fournisseur`,`id_produit_Produit`),
  KEY `FK_vendre_id_produit_Produit` (`id_produit_Produit`),
  CONSTRAINT `FK_vendre_id_fournisseur_Fournisseur` FOREIGN KEY (`id_fournisseur_Fournisseur`) REFERENCES `fournisseur` (`id_fournisseur_Fournisseur`),
  CONSTRAINT `FK_vendre_id_produit_Produit` FOREIGN KEY (`id_produit_Produit`) REFERENCES `produit` (`id_produit_Produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendre`
--

LOCK TABLES `vendre` WRITE;
/*!40000 ALTER TABLE `vendre` DISABLE KEYS */;
INSERT INTO `vendre` VALUES (1,1),(1,2),(3,3),(3,4),(2,5),(2,6),(4,7),(5,8),(6,9),(1,10),(2,10);
/*!40000 ALTER TABLE `vendre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vente_travaux`
--

DROP TABLE IF EXISTS `vente_travaux`;
/*!50001 DROP VIEW IF EXISTS `vente_travaux`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vente_travaux` AS SELECT 
 1 AS `annee`,
 1 AS `nom_travaux_Type_travaux`,
 1 AS `chiffre_affaire`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `bilan_stock`
--

/*!50001 DROP VIEW IF EXISTS `bilan_stock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bilan_stock` AS select `artisan`.`Nom_artisan_Artisan` AS `Nom_artisan_Artisan`,`produit`.`nom_produit_Produit` AS `nom_produit_Produit`,(case when (`stocker`.`quantite` <= `stocker`.`seuil_critique`) then 'rupture_de_stock' else 'disponible' end) AS `etat_stock` from ((`stocker` join `produit` on((`produit`.`id_produit_Produit` = `stocker`.`id_produit_Produit`))) join `artisan` on((`artisan`.`Id_artisan_Artisan` = `stocker`.`Id_artisan_Artisan`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ca`
--

/*!50001 DROP VIEW IF EXISTS `ca`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ca` AS select `chiffre_d_affaire`.`annee` AS `annee`,`chiffre_d_affaire`.`CA` AS `CAN`,lag(`chiffre_d_affaire`.`CA`) OVER (ORDER BY `chiffre_d_affaire`.`annee` )  AS `CAN_1` from `chiffre_d_affaire` order by `chiffre_d_affaire`.`annee` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ca_travaux_urgente`
--

/*!50001 DROP VIEW IF EXISTS `ca_travaux_urgente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ca_travaux_urgente` AS select year(`facture`.`date_facture`) AS `annee`,sum((case when (`commande`.`Type_commande_Commande` = 'Urgent') then `facture`.`montant_total_Facture` else 0 end)) AS `CA_urgent`,((sum((case when (`commande`.`Type_commande_Commande` = 'Urgent') then `facture`.`montant_total_Facture` else 0 end)) * 100) / sum(`facture`.`montant_total_Facture`)) AS `part_CA` from (`commande` join `facture` on((`commande`.`id_commande_Commande` = `facture`.`id_commande_Commande`))) group by year(`facture`.`date_facture`) order by `annee` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `chiffre_d_affaire`
--

/*!50001 DROP VIEW IF EXISTS `chiffre_d_affaire`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `chiffre_d_affaire` AS select year(`facture`.`date_facture`) AS `annee`,sum(`facture`.`montant_total_Facture`) AS `CA` from `facture` group by year(`facture`.`date_facture`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `com_note`
--

/*!50001 DROP VIEW IF EXISTS `com_note`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `com_note` AS select `commande_terminee`.`id_commande_Commande` AS `id_commande_Commande`,avg(`avis_client`.`Note_Avis_client`) AS `note` from (`avis_client` join `commande_terminee` on((`avis_client`.`id_commande_Commande` = `commande_terminee`.`id_commande_Commande`))) group by `commande_terminee`.`id_commande_Commande` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `com_term_prest`
--

/*!50001 DROP VIEW IF EXISTS `com_term_prest`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `com_term_prest` AS select `commande_terminee`.`id_commande_Commande` AS `id_commande_Commande`,(case when (count(0) = sum((case when (`prestation`.`date_fin_reele_Prestation` <= `prestation`.`Date_fin_prevue_Prestation`) then 1 else 0 end))) then 'livrée à temps' else 'livrée en retard' end) AS `statut_commande` from ((`prestation` join `commande` on((`commande`.`id_commande_Commande` = `prestation`.`id_commande_Commande`))) join `commande_terminee` on((`commande_terminee`.`id_commande_Commande` = `prestation`.`id_commande_Commande`))) group by `commande_terminee`.`id_commande_Commande` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `commande_encours`
--

/*!50001 DROP VIEW IF EXISTS `commande_encours`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `commande_encours` AS select `commande`.`id_commande_Commande` AS `id_commande_Commande`,`prestation`.`id_prestation_Prestation` AS `id_prestation_Prestation`,`faire`.`Id_artisan_Artisan` AS `Id_artisan_Artisan` from ((`commande` join `prestation` on((`commande`.`id_commande_Commande` = `prestation`.`id_commande_Commande`))) join `faire` on((`faire`.`id_prestation_Prestation` = `prestation`.`id_prestation_Prestation`))) where (`prestation`.`statut_prestation_Prestation` = 'En cours') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `commande_terminee`
--

/*!50001 DROP VIEW IF EXISTS `commande_terminee`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `commande_terminee` AS select `commande`.`id_commande_Commande` AS `id_commande_Commande` from (`commande` join `prestation` on((`commande`.`id_commande_Commande` = `prestation`.`id_commande_Commande`))) group by `commande`.`id_commande_Commande` having (count(0) = sum((case when (`prestation`.`statut_prestation_Prestation` = 'Achevée') then 1 else 0 end))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `commandeterm_artisan`
--

/*!50001 DROP VIEW IF EXISTS `commandeterm_artisan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `commandeterm_artisan` AS select `artisan`.`Id_artisan_Artisan` AS `Id_artisan_Artisan`,`artisan`.`Nom_artisan_Artisan` AS `Nom_artisan_Artisan`,`artisan`.`Zone_regionale_Artisan` AS `Zone_regionale_Artisan`,`commande_terminee`.`id_commande_Commande` AS `id_commande_Commande` from ((((`commande_terminee` join `commande` on((`commande`.`id_commande_Commande` = `commande_terminee`.`id_commande_Commande`))) join `prestation` on((`commande`.`id_commande_Commande` = `prestation`.`id_commande_Commande`))) join `faire` on((`faire`.`id_prestation_Prestation` = `prestation`.`id_prestation_Prestation`))) join `artisan` on((`artisan`.`Id_artisan_Artisan` = `faire`.`Id_artisan_Artisan`))) where (year(`prestation`.`date_fin_reele_Prestation`) = year(curdate())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dashboard_ca`
--

/*!50001 DROP VIEW IF EXISTS `dashboard_ca`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dashboard_ca` AS select `evolution_ca`.`annee` AS `annee`,`evolution_ca`.`CAN` AS `CA`,`evolution_ca`.`CAN_1` AS `CA_N_1`,`evolution_ca`.`evolution` AS `evolution`,`ca_travaux_urgente`.`CA_urgent` AS `CA_urgent`,`ca_travaux_urgente`.`part_CA` AS `part_CA` from (`evolution_ca` left join `ca_travaux_urgente` on((`evolution_ca`.`annee` = `ca_travaux_urgente`.`annee`))) order by `evolution_ca`.`annee` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `disponibilite_artisan`
--

/*!50001 DROP VIEW IF EXISTS `disponibilite_artisan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `disponibilite_artisan` AS select distinct `artisan`.`Nom_artisan_Artisan` AS `Nom_artisan_Artisan`,'indisponible' AS `statut` from ((`faire` join `artisan` on((`faire`.`Id_artisan_Artisan` = `artisan`.`Id_artisan_Artisan`))) join `prestation` on((`faire`.`id_prestation_Prestation` = `prestation`.`id_prestation_Prestation`))) where ((`prestation`.`statut_prestation_Prestation` = 'En cours') or (`prestation`.`statut_prestation_Prestation` = 'En retard')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `evolution_ca`
--

/*!50001 DROP VIEW IF EXISTS `evolution_ca`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `evolution_ca` AS select `ca`.`annee` AS `annee`,`ca`.`CAN` AS `CAN`,`ca`.`CAN_1` AS `CAN_1`,(((`ca`.`CAN` - `ca`.`CAN_1`) / `ca`.`CAN_1`) * 100) AS `evolution` from `ca` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fiche_client`
--

/*!50001 DROP VIEW IF EXISTS `fiche_client`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fiche_client` AS select `commande`.`id_commande_Commande` AS `numero_commande`,`client`.`Nom_client_Client` AS `Nom_client_Client`,`client`.`prenom_client_Client` AS `prenom_client_Client`,`client`.`Tel_Client` AS `Tel_Client`,`client`.`email_Client` AS `email_Client`,`facture`.`date_facture` AS `date_commande`,`facture`.`id_facture_Facture` AS `numero_facture`,`facture`.`montant_total_Facture` AS `montant_total_Facture`,`paiement`.`type_paiement_paiement` AS `mode_paiement` from (((`client` join `commande` on((`client`.`Id_client_Client` = `commande`.`Id_client_Client`))) join `facture` on((`commande`.`id_commande_Commande` = `facture`.`id_commande_Commande`))) join `paiement` on((`paiement`.`id_facture_Facture` = `facture`.`id_facture_Facture`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fiche_fournisseur`
--

/*!50001 DROP VIEW IF EXISTS `fiche_fournisseur`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fiche_fournisseur` AS select `fournisseur`.`nom_fournisseur_Fournisseur` AS `nom_fournisseur_Fournisseur`,`fournisseur`.`prenom_fournisseur_Fournisseur` AS `prenom_fournisseur_Fournisseur`,`fournisseur`.`Tel_Fournisseur` AS `Tel_Fournisseur`,`fournisseur`.`Email_Fournisseur` AS `Email_Fournisseur`,`historique_four`.`Nom_artisan_Artisan` AS `Nom_artisan_Artisan`,`historique_four`.`nom_produit_Produit` AS `nom_produit_Produit`,`historique_four`.`Quantite_livree` AS `Quantite_livree`,`historique_four`.`date_approvisionnement` AS `date_approvisionnement` from (`historique_four` join `fournisseur` on((`historique_four`.`id_fournisseur_Fournisseur` = `fournisseur`.`id_fournisseur_Fournisseur`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `historique_commande`
--

/*!50001 DROP VIEW IF EXISTS `historique_commande`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `historique_commande` AS select `commande_terminee`.`id_commande_Commande` AS `id_commande_Commande`,`prestation`.`id_prestation_Prestation` AS `id_prestation_Prestation`,`faire`.`Id_artisan_Artisan` AS `Id_artisan_Artisan`,`avis_client`.`Note_Avis_client` AS `note`,`prestation`.`Date_fin_prevue_Prestation` AS `Date_fin_prevue_Prestation`,`prestation`.`date_fin_reele_Prestation` AS `date_fin_reele_Prestation` from ((((`commande_terminee` join `commande` on((`commande`.`id_commande_Commande` = `commande_terminee`.`id_commande_Commande`))) join `prestation` on((`commande`.`id_commande_Commande` = `prestation`.`id_commande_Commande`))) join `faire` on((`faire`.`id_prestation_Prestation` = `prestation`.`id_prestation_Prestation`))) join `avis_client` on(((`avis_client`.`id_commande_Commande` = `commande`.`id_commande_Commande`) and (`avis_client`.`Id_artisan_Artisan` = `faire`.`Id_artisan_Artisan`)))) where (`prestation`.`statut_prestation_Prestation` = 'Achevée') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `historique_four`
--

/*!50001 DROP VIEW IF EXISTS `historique_four`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `historique_four` AS select `artisan`.`Nom_artisan_Artisan` AS `Nom_artisan_Artisan`,`produit`.`nom_produit_Produit` AS `nom_produit_Produit`,`s_approvisionner`.`Quantite_livree` AS `Quantite_livree`,`s_approvisionner`.`date_approvisionnement` AS `date_approvisionnement`,`fournisseur`.`id_fournisseur_Fournisseur` AS `id_fournisseur_Fournisseur` from (((`artisan` join `s_approvisionner` on((`artisan`.`Id_artisan_Artisan` = `s_approvisionner`.`Id_artisan_Artisan`))) join `fournisseur` on((`fournisseur`.`id_fournisseur_Fournisseur` = `s_approvisionner`.`id_fournisseur_Fournisseur`))) join `produit` on((`produit`.`id_produit_Produit` = `s_approvisionner`.`id_produit_Produit`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `indice_de_confiance`
--

/*!50001 DROP VIEW IF EXISTS `indice_de_confiance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `indice_de_confiance` AS select `historique_commande`.`Id_artisan_Artisan` AS `Id_artisan_Artisan`,((avg(`historique_commande`.`note`) * 100) / 5) AS `indice_commande`,((sum((case when (`historique_commande`.`Date_fin_prevue_Prestation` >= `historique_commande`.`date_fin_reele_Prestation`) then 1 else 0 end)) * 100) / count(`historique_commande`.`Id_artisan_Artisan`)) AS `indice_delais` from `historique_commande` group by `historique_commande`.`Id_artisan_Artisan` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `intermediareb`
--

/*!50001 DROP VIEW IF EXISTS `intermediareb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `intermediareb` AS select `artisan`.`Nom_artisan_Artisan` AS `Nom_artisan_Artisan`,`artisan`.`Pays_Artisan` AS `Pays_Artisan`,`artisan`.`Zone_regionale_Artisan` AS `Zone_regionale_Artisan`,`artisan`.`Telephone_Artisan` AS `Telephone_Artisan`,`quant_four`.`nom_produit_Produit` AS `nom_produit_Produit`,`quant_four`.`nom_fournisseur_fournisseur` AS `nom_fournisseur_fournisseur`,`quant_four`.`quantite` AS `quantite` from (`artisan` join `quant_four` on((`artisan`.`Id_artisan_Artisan` = `quant_four`.`Id_artisan_Artisan`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `liste_commande`
--

/*!50001 DROP VIEW IF EXISTS `liste_commande`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `liste_commande` AS select `commande`.`id_commande_Commande` AS `id_commande_Commande`,`commande`.`Statut_commande_Commande` AS `Statut_commande_Commande`,`client`.`Nom_client_Client` AS `Nom_client_Client`,`client`.`prenom_client_Client` AS `prenom_client_Client` from (`client` join `commande` on((`client`.`Id_client_Client` = `commande`.`Id_client_Client`))) order by `commande`.`id_commande_Commande` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `liste_commande_en_cours`
--

/*!50001 DROP VIEW IF EXISTS `liste_commande_en_cours`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `liste_commande_en_cours` AS select `commande_encours`.`id_commande_Commande` AS `id_commande_Commande`,avg((case when (`indice_de_confiance`.`Id_artisan_Artisan` = `commande_encours`.`Id_artisan_Artisan`) then `indice_de_confiance`.`indice_commande` else 50 end)) AS `pourcentage_de_qualite`,avg((case when (`indice_de_confiance`.`Id_artisan_Artisan` = `commande_encours`.`Id_artisan_Artisan`) then `indice_de_confiance`.`indice_delais` else 50 end)) AS `taux_respect_delai` from (`commande_encours` left join `indice_de_confiance` on((`indice_de_confiance`.`Id_artisan_Artisan` = `commande_encours`.`Id_artisan_Artisan`))) group by `commande_encours`.`id_commande_Commande` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nombre_commande_se_terminant_dans_le_mois`
--

/*!50001 DROP VIEW IF EXISTS `nombre_commande_se_terminant_dans_le_mois`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nombre_commande_se_terminant_dans_le_mois` AS select monthname(curdate()) AS `mois`,count(distinct `commande`.`id_commande_Commande`) AS `nombre_commande` from (`commande` join `prestation` on((`prestation`.`id_commande_Commande` = `commande`.`id_commande_Commande`))) where ((`commande`.`Statut_commande_Commande` = 'En cours') and (month(`prestation`.`Date_fin_prevue_Prestation`) = month(curdate())) and (year(`prestation`.`Date_fin_prevue_Prestation`) = year(curdate()))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prix_moyen_travaux`
--

/*!50001 DROP VIEW IF EXISTS `prix_moyen_travaux`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prix_moyen_travaux` AS select `type_travaux`.`nom_travaux_Type_travaux` AS `nom_travaux_Type_travaux`,`artisan`.`Zone_regionale_Artisan` AS `Zone_regionale_Artisan`,avg(`offrir`.`Taux_horaire_Artisan`) AS `prix_moyen` from ((`offrir` join `type_travaux` on((`type_travaux`.`id_travaux_Type_travaux` = `offrir`.`id_travaux_Type_travaux`))) join `artisan` on((`artisan`.`Id_artisan_Artisan` = `offrir`.`Id_artisan_Artisan`))) group by `type_travaux`.`nom_travaux_Type_travaux`,`artisan`.`Zone_regionale_Artisan` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qualite_delai`
--

/*!50001 DROP VIEW IF EXISTS `qualite_delai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qualite_delai` AS select ((sum((case when (`com_term_prest`.`statut_commande` = 'livrée à temps') then 1 else 0 end)) * 100.0) / count(`com_term_prest`.`id_commande_Commande`)) AS `taux_respect_de_delai`,((sum((case when (`com_term_prest`.`statut_commande` = 'livrée en retard') then 1 else 0 end)) * 100.0) / count(`com_term_prest`.`id_commande_Commande`)) AS `taux_retard` from `com_term_prest` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qualité_commande`
--

/*!50001 DROP VIEW IF EXISTS `qualité_commande`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qualité_commande` AS select `com_note`.`id_commande_Commande` AS `id_commande_Commande`,`com_note`.`note` AS `note`,(case when (`com_note`.`note` >= 4) then 'Qualité satisfaisante' else 'Qualité insuffisante' end) AS `evaluation_qualite_commande` from `com_note` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `quant_four`
--

/*!50001 DROP VIEW IF EXISTS `quant_four`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `quant_four` AS select `artisan`.`Id_artisan_Artisan` AS `Id_artisan_Artisan`,`produit`.`nom_produit_Produit` AS `nom_produit_Produit`,`fournisseur`.`nom_fournisseur_Fournisseur` AS `nom_fournisseur_fournisseur`,`stocker`.`quantite` AS `quantite` from ((((`fournisseur` join `s_approvisionner` on((`fournisseur`.`id_fournisseur_Fournisseur` = `s_approvisionner`.`id_fournisseur_Fournisseur`))) join `artisan` on((`artisan`.`Id_artisan_Artisan` = `s_approvisionner`.`Id_artisan_Artisan`))) join `stocker` on((`stocker`.`Id_artisan_Artisan` = `artisan`.`Id_artisan_Artisan`))) join `produit` on((`produit`.`id_produit_Produit` = `stocker`.`id_produit_Produit`))) order by `artisan`.`Id_artisan_Artisan` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reduction_commande`
--

/*!50001 DROP VIEW IF EXISTS `reduction_commande`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reduction_commande` AS select `commande`.`id_commande_Commande` AS `id_commande_Commande`,`client`.`Nom_client_Client` AS `Nom_client_Client`,`client`.`prenom_client_Client` AS `prenom_client_Client` from (((`commande` join `client` on((`commande`.`Id_client_Client` = `client`.`Id_client_Client`))) join `facture` on((`facture`.`id_commande_Commande` = `commande`.`id_commande_Commande`))) join `paiement` on((`facture`.`id_facture_Facture` = `paiement`.`id_facture_Facture`))) where (((`paiement`.`type_compte_paiement` = 'Fidélité') and (`facture`.`montant_total_Facture` > 5000)) or (`facture`.`montant_total_Facture` > 10000)) order by `commande`.`id_commande_Commande` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statistique_retard`
--

/*!50001 DROP VIEW IF EXISTS `statistique_retard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `statistique_retard` AS select `prestation`.`cause_retard_Prestation` AS `cause_retard_Prestation`,((count(0) * 100.0) / (select count(0) from `prestation` where (`prestation`.`cause_retard_Prestation` is not null))) AS `pourcentage` from `prestation` where (`prestation`.`cause_retard_Prestation` is not null) group by `prestation`.`cause_retard_Prestation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statistique_satisfaction`
--

/*!50001 DROP VIEW IF EXISTS `statistique_satisfaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `statistique_satisfaction` AS select ((sum((case when (`avis_client`.`Note_Avis_client` >= 4) then 1 else 0 end)) * 100.0) / count(0)) AS `pourcentage_satisfaits`,((sum((case when (`avis_client`.`Note_Avis_client` < 4) then 1 else 0 end)) * 100.0) / count(0)) AS `pourcentage_insatisfaits` from `avis_client` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `travaux_en_retard`
--

/*!50001 DROP VIEW IF EXISTS `travaux_en_retard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `travaux_en_retard` AS select `commande`.`id_commande_Commande` AS `id_commande_Commande`,`prestation`.`id_prestation_Prestation` AS `id_prestation_Prestation`,`artisan`.`Id_artisan_Artisan` AS `Id_artisan_Artisan`,`artisan`.`Nom_artisan_Artisan` AS `Nom_artisan_Artisan`,`prestation`.`Date_fin_prevue_Prestation` AS `Date_fin_prevue_Prestation`,(to_days(curdate()) - to_days(`prestation`.`Date_fin_prevue_Prestation`)) AS `nombre_jours_retard` from (((`commande` join `prestation` on((`commande`.`id_commande_Commande` = `prestation`.`id_commande_Commande`))) join `faire` on((`faire`.`id_prestation_Prestation` = `prestation`.`id_prestation_Prestation`))) join `artisan` on((`artisan`.`Id_artisan_Artisan` = `faire`.`Id_artisan_Artisan`))) where ((`prestation`.`statut_prestation_Prestation` = 'En cours') and (`prestation`.`Date_fin_prevue_Prestation` < curdate())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vente_travaux`
--

/*!50001 DROP VIEW IF EXISTS `vente_travaux`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vente_travaux` AS select year(`facture`.`date_facture`) AS `annee`,`type_travaux`.`nom_travaux_Type_travaux` AS `nom_travaux_Type_travaux`,sum(`prestation`.`montant_Prestation`) AS `chiffre_affaire` from (((`prestation` join `type_travaux` on((`prestation`.`id_travaux_Type_travaux` = `type_travaux`.`id_travaux_Type_travaux`))) join `commande` on((`prestation`.`id_commande_Commande` = `commande`.`id_commande_Commande`))) join `facture` on((`commande`.`id_commande_Commande` = `facture`.`id_commande_Commande`))) group by year(`facture`.`date_facture`),`type_travaux`.`id_travaux_Type_travaux` order by `annee`,`type_travaux`.`nom_travaux_Type_travaux` */;
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

-- Dump completed on 2026-10-08 11:02:59
