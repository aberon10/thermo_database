-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: backend
-- ------------------------------------------------------
-- Server version	5.5.54-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id_album` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_artista` int(10) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `anio` int(11) NOT NULL,
  `cant_pistas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_album`),
  KEY `album_id_artista_foreign` (`id_artista`),
  CONSTRAINT `album_id_artista_foreign` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,1,'Black Ice',1988,12,'2017-02-01 23:14:02','2017-02-01 23:14:02'),(2,13,'Chinese Democracy',2014,14,'2017-02-02 03:58:14','2017-02-02 03:58:14'),(3,2,'Un asco',2013,9,'2017-02-02 03:58:59','2017-02-02 03:58:59'),(4,4,'El nombre del sentimiento',2008,9,'2017-02-02 03:59:30','2017-02-02 03:59:30'),(5,19,'Na balada',2011,15,'2017-02-02 04:00:01','2017-02-02 04:00:01'),(6,5,'El tiempo otra vez avanza',2014,12,'2017-02-02 04:00:26','2017-02-02 04:00:26'),(7,10,'Thriller',1982,21,'2017-02-02 04:00:49','2017-02-02 04:00:49'),(8,14,'Yo Soy... Sasha Feroz',2008,16,'2017-02-02 04:01:18','2017-02-02 04:01:18'),(9,12,'Clarity',2014,17,'2017-02-02 04:01:44','2017-02-02 04:01:44'),(10,11,'Listen Again',2015,46,'2017-02-02 04:02:11','2017-02-02 04:02:11'),(12,20,'Tré',2012,12,'2017-02-02 04:03:03','2017-02-02 04:03:03'),(13,9,'Live Forever',2011,25,'2017-02-02 04:03:26','2017-02-02 04:03:26'),(14,1,'Back in Black',1980,10,'2017-02-02 04:04:08','2017-02-02 04:04:08'),(15,8,'Hasta El Amanecer',2016,8,'2017-02-02 04:04:35','2017-02-02 04:04:35'),(16,21,'The Marshall Mathers LP 2',2013,16,'2017-02-02 04:05:06','2017-02-02 04:05:06'),(17,22,'Todo comenzo bailando',2015,12,'2017-02-02 04:15:24','2017-02-02 04:15:24'),(18,17,'From Sleep',2015,7,'2017-02-02 04:16:06','2017-02-02 04:16:06'),(19,16,'Formula Vol. 2',2014,11,'2017-02-02 04:17:13','2017-02-02 04:17:13'),(20,15,'Texas cannonball',1971,10,'2017-02-02 04:17:52','2017-02-02 04:17:52'),(21,18,'Jaco Pastorius',1976,9,'2017-02-02 04:18:41','2017-02-02 04:18:41'),(22,23,'15 Exitos',1969,12,'2017-02-02 04:20:16','2017-02-02 04:20:16'),(23,24,'El Mago del Tango',2016,30,'2017-02-02 04:25:35','2017-02-02 04:25:35'),(24,21,'Recovery',2010,4,'2017-02-07 05:05:44','2017-02-07 05:05:44'),(25,7,'Despacito',2017,1,'2017-02-09 14:55:59','2017-02-09 14:55:59'),(26,25,'Primera Cita',2016,14,'2017-02-22 07:02:04','2017-03-15 03:32:11');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artista` (
  `id_artista` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_genero` int(10) unsigned NOT NULL,
  `nombre_artista` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_artista`),
  KEY `artista_id_genero_foreign` (`id_genero`),
  CONSTRAINT `artista_id_genero_foreign` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,1,'AC-DC','2017-02-01 23:13:42','2017-02-01 23:13:42'),(2,18,'El Gucci','2017-02-02 03:50:33','2017-02-02 03:50:33'),(4,18,'Denis Elias','2017-02-02 03:50:57','2017-02-02 03:50:57'),(5,3,'No Te Va A Gustar','2017-02-02 03:51:34','2017-02-02 03:51:34'),(6,3,'Queen','2017-02-02 03:51:47','2017-02-02 03:51:47'),(7,6,'Daddy Yankee','2017-02-02 03:52:04','2017-02-02 03:52:04'),(8,6,'Nicky Jam','2017-02-02 03:52:18','2017-02-02 04:12:18'),(9,5,'Bob Marley','2017-02-02 03:52:35','2017-02-02 03:52:35'),(10,16,'Michael Jackson','2017-02-02 03:52:52','2017-02-02 03:52:52'),(11,11,'David Guetta','2017-02-02 03:53:06','2017-02-02 03:53:06'),(12,11,'Zeed','2017-02-02 03:53:20','2017-02-02 03:53:20'),(13,1,'Guns N\' Roses','2017-02-02 03:53:39','2017-02-02 03:53:39'),(14,15,'Beyonce','2017-02-02 03:54:00','2017-02-02 03:54:00'),(15,13,'Freddie King','2017-02-02 03:54:15','2017-02-02 03:54:15'),(16,14,'Romeo Santos','2017-02-02 03:54:31','2017-02-02 03:54:31'),(17,4,'Max Richter','2017-02-02 03:55:22','2017-02-02 03:55:22'),(18,7,'Jaco Pastorius','2017-02-02 03:55:41','2017-02-02 03:55:41'),(19,10,'Michel Telo','2017-02-02 03:55:55','2017-02-02 03:55:55'),(20,12,'Green Day','2017-02-02 03:56:13','2017-02-02 03:56:13'),(21,9,'Eminem','2017-02-02 03:56:30','2017-02-02 03:56:30'),(22,2,'Marama','2017-02-02 04:14:38','2017-02-02 04:14:38'),(23,17,'Oscar D\' Leon','2017-02-02 04:19:53','2017-02-02 04:19:53'),(24,8,'Carlos Gardel','2017-02-02 04:24:55','2017-02-02 04:24:55'),(25,6,'Cnco','2017-02-22 06:59:58','2017-03-15 03:13:17');
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancion`
--

DROP TABLE IF EXISTS `cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancion` (
  `id_cancion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_album` int(10) unsigned NOT NULL,
  `nombre_cancion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `formato` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `duracion` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `src_audio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `anio` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idioma` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Español',
  `contador` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_cancion`),
  KEY `cancion_id_album_foreign` (`id_album`),
  CONSTRAINT `cancion_id_album_foreign` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion`
--

LOCK TABLES `cancion` WRITE;
/*!40000 ALTER TABLE `cancion` DISABLE KEYS */;
INSERT INTO `cancion` VALUES (1,1,'Big Jack','mp3','04:01','uploads/music/Metal/AC-DC/Black Ice/Big Jack.mp3','1988','Español',33,'2017-02-01 23:14:15','2017-02-02 04:34:27'),(2,23,'Por Una Cabeza','mp3','02:44','uploads/music/Tango/Carlos Gardel/El Mago del Tango/Por Una Cabeza.mp3','2016','Español',0,'2017-02-02 04:26:13','2017-02-02 04:26:13'),(3,6,'Viajando Sin Espada','mp3','03:24','uploads/music/Rock/No Te Va A Gustar/El tiempo otra vez avanza/Viajando Sin Espada.mp3','2014','Español',11,'2017-02-02 04:26:40','2017-02-02 04:26:40'),(4,6,'Me Ilumina Hoy','mp3','03:19','uploads/music/Rock/No Te Va A Gustar/El tiempo otra vez avanza/Me Ilumina Hoy.mp3','2014','Español',9,'2017-02-02 04:27:03','2017-02-02 04:27:03'),(5,6,'Detras Del Cerro','mp3','03:44','uploads/music/Rock/No Te Va A Gustar/El tiempo otra vez avanza/Detras Del Cerro.mp3','2014','Español',2,'2017-02-02 04:27:16','2017-02-02 04:27:16'),(6,15,'Hasta El Amanecer','mp3','03:12','uploads/music/Reggaeton/Nicky Jam/Hasta El Amanecer/Hasta El Amanecer.mp3','2016','Español',14,'2017-02-02 04:27:48','2017-02-02 04:27:48'),(7,15,'Voy A Beber','mp3','03:32','uploads/music/Reggaeton/Nicky Jam/Hasta El Amanecer/Voy A Beber.mp3','2016','Español',40,'2017-02-02 04:28:00','2017-02-02 04:28:00'),(8,15,'Te Busco','mp3','03:51','uploads/music/Reggaeton/Nicky Jam/Hasta El Amanecer/Te Busco.mp3','2016','Español',19,'2017-02-02 04:28:14','2017-02-02 04:28:14'),(9,5,'Fugidinha','mp3','03:11','uploads/music/Música Brasileña/Michel Telo/Na balada/Fugidinha.mp3','2011','Español',24,'2017-02-02 04:28:32','2017-02-02 04:28:32'),(10,5,'Ai Se Eu Te Pego','mp3','02:46','uploads/music/Música Brasileña/Michel Telo/Na balada/Ai Se Eu Te Pego.mp3','2011','Español',7,'2017-02-02 04:28:41','2017-02-02 04:28:41'),(11,8,'If I Were A Boy','mp3','04:09','uploads/music/Dance/Beyonce/Yo Soy... Sasha Feroz/If I Were A Boy.mp3','2008','Español',2,'2017-02-02 04:29:01','2017-02-02 04:29:01'),(12,8,'Halo','mp3','03:45','uploads/music/Dance/Beyonce/Yo Soy... Sasha Feroz/Halo.mp3','2008','Español',2,'2017-02-02 04:29:08','2017-02-02 04:29:08'),(13,21,'Come on Come over','mp3','03:53','uploads/music/Jazz/Jaco Pastorius/Jaco Pastorius/Come on Come over.mp3','1976','Español',20,'2017-02-02 04:29:25','2017-02-02 04:29:25'),(14,13,'Could You Be Loved','mp3','03:58','uploads/music/Reggae/Bob Marley/Live Forever/Could You Be Loved.mp3','2011','Español',14,'2017-02-02 04:29:44','2017-02-02 04:29:44'),(15,3,'Me quiero complicar','mp3','02:39','uploads/music/Plena/El Gucci/Un asco/Me quiero complicar.mp3','2013','Español',5,'2017-02-02 04:30:04','2017-02-02 04:30:04'),(16,3,'Travesuras','mp3','02:33','uploads/music/Plena/El Gucci/Un asco/Travesuras.mp3','2013','Español',2,'2017-02-02 04:30:16','2017-02-02 04:30:16'),(17,4,'Horas vacias','mp3','03:10','uploads/music/Plena/Denis Elias/El nombre del sentimiento/Horas vacias.mp3','2008','Español',21,'2017-02-02 04:30:32','2017-02-02 04:30:32'),(18,4,'Se parece mas a ti','mp3','02:18','uploads/music/Plena/Denis Elias/El nombre del sentimiento/Se parece mas a ti.mp3','2008','Español',4,'2017-02-02 04:30:44','2017-02-02 04:30:44'),(19,2,'Welcome To The Jungle','mp3','05:06','uploads/music/Metal/Guns N\' Roses/Chinese Democracy/Welcome To The Jungle.mp3','2014','Español',0,'2017-02-02 04:31:05','2017-02-02 04:31:05'),(20,16,'Survival','mp3','04:34','uploads/music/Rap/Eminem/The Marshall Mathers LP 2/Survival.mp3','2013','Español',8,'2017-02-02 04:31:23','2017-02-02 04:31:23'),(21,7,'Thriller','mp3','04:18','uploads/music/Pop/Michael Jackson/Thriller/Thriller.mp3','1982','Español',1,'2017-02-02 04:31:40','2017-02-02 04:31:40'),(22,7,'Bille jean','mp3','05:31','uploads/music/Pop/Michael Jackson/Thriller/Bille jean.mp3','1982','Español',3,'2017-02-02 04:31:53','2017-02-02 04:31:53'),(23,17,'Bronceado','mp3','02:15','uploads/music/Cumbia/Marama/Todo comenzo bailando/Bronceado.mp3','2015','Español',15,'2017-02-02 04:53:58','2017-02-02 04:53:58'),(24,24,'Not Afraid','mp3','04:10','uploads/music/Rap/Eminem/Recovery/Not Afraid.mp3','2010','Español',7,'2017-02-07 05:06:06','2017-02-07 05:06:06'),(25,24,'Cold Wind Blows','mp3','04:58','uploads/music/Rap/Eminem/Recovery/Cold Wind Blows.mp3','2010','Español',3,'2017-02-07 05:08:58','2017-02-07 05:08:58'),(26,25,'Despacito','mp3','03:48','uploads/music/Reggaeton/Daddy Yankee/Despacito/Despacito.mp3','2017','Español',8,'2017-02-09 14:56:12','2017-02-09 14:56:12'),(27,26,'Reggaeton Lento','mp3','03:42','uploads/music/Reggaeton/Cnco/Primera Cita/Reggaeton Lento.mp3','2016','Español',7,'2017-02-22 07:02:28','2017-02-22 07:02:28');
/*!40000 ALTER TABLE `cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorita`
--

DROP TABLE IF EXISTS `favorita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorita` (
  `id_usuario` int(10) unsigned NOT NULL,
  `id_cancion` int(10) unsigned NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `favorita_id_usuario_foreign` (`id_usuario`),
  KEY `favorita_id_cancion_foreign` (`id_cancion`),
  CONSTRAINT `favorita_id_cancion_foreign` FOREIGN KEY (`id_cancion`) REFERENCES `cancion` (`id_cancion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `favorita_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorita`
--

LOCK TABLES `favorita` WRITE;
/*!40000 ALTER TABLE `favorita` DISABLE KEYS */;
INSERT INTO `favorita` VALUES (6,4,'2017-02-07 05:16:33',NULL,NULL),(7,26,'2017-02-09 14:57:16',NULL,NULL),(8,20,'2017-02-09 15:09:14',NULL,NULL),(8,26,'2017-02-11 07:13:12',NULL,NULL),(7,6,'2017-02-11 07:30:54',NULL,NULL),(7,27,'2017-02-22 07:04:07',NULL,NULL),(7,8,'2017-03-15 03:30:38',NULL,NULL);
/*!40000 ALTER TABLE `favorita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `id_genero` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_genero` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Metal','','2017-02-01 23:13:31','2017-02-01 23:13:31'),(2,'Cumbia','','2017-02-02 03:45:50','2017-02-02 03:45:50'),(3,'Rock','','2017-02-02 03:46:08','2017-02-02 03:46:08'),(4,'Clasica','','2017-02-02 03:46:21','2017-02-02 03:46:21'),(5,'Reggae','','2017-02-02 03:46:38','2017-02-02 03:46:38'),(6,'Reggaeton','','2017-02-02 03:46:51','2017-02-02 03:46:51'),(7,'Jazz','','2017-02-02 03:47:05','2017-02-02 03:47:05'),(8,'Tango','','2017-02-02 03:47:16','2017-02-02 03:47:16'),(9,'Rap','','2017-02-02 03:47:29','2017-02-02 03:47:29'),(10,'Música Brasileña','','2017-02-02 03:47:47','2017-02-02 03:47:47'),(11,'Música electrónica','','2017-02-02 03:48:14','2017-02-02 03:48:14'),(12,'Punk','','2017-02-02 03:48:29','2017-02-02 03:48:29'),(13,'Blues','','2017-02-02 03:48:38','2017-02-02 03:48:38'),(14,'Bachata','','2017-02-02 03:48:48','2017-02-02 03:48:48'),(15,'Dance','','2017-02-02 03:48:57','2017-02-02 03:48:57'),(16,'Pop','','2017-02-02 03:49:06','2017-02-02 03:49:06'),(17,'Salsa','','2017-02-02 03:49:19','2017-02-02 03:49:19'),(18,'Plena','','2017-02-02 03:49:40','2017-02-02 03:49:40');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `img_album`
--

DROP TABLE IF EXISTS `img_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `img_album` (
  `id_img_album` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_album` int(10) unsigned NOT NULL,
  `src_img` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_img_album`),
  KEY `img_album_id_album_foreign` (`id_album`),
  CONSTRAINT `img_album_id_album_foreign` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img_album`
--

LOCK TABLES `img_album` WRITE;
/*!40000 ALTER TABLE `img_album` DISABLE KEYS */;
INSERT INTO `img_album` VALUES (1,1,'uploads/music/Metal/AC-DC/Black Ice/Black Ice.png','2017-02-01 23:14:02','2017-02-01 23:14:02'),(2,2,'uploads/music/Metal/Guns N\' Roses/Chinese Democracy/Chinese Democracy.png','2017-02-02 03:58:14','2017-02-02 03:58:14'),(3,3,'uploads/music/Plena/El Gucci/Un asco/Un asco.jpeg','2017-02-02 03:58:59','2017-02-02 03:58:59'),(4,4,'uploads/music/Plena/Denis Elias/El nombre del sentimiento/El nombre del sentimiento.png','2017-02-02 03:59:30','2017-02-02 03:59:30'),(5,5,'uploads/music/Música Brasileña/Michel Telo/Na balada/Na balada.png','2017-02-02 04:00:01','2017-02-02 04:00:01'),(6,6,'uploads/music/Rock/No Te Va A Gustar/El tiempo otra vez avanza/El tiempo otra vez avanza.png','2017-02-02 04:00:26','2017-02-02 04:00:26'),(7,7,'uploads/music/Pop/Michael Jackson/Thriller/Thriller.png','2017-02-02 04:00:49','2017-02-02 04:00:49'),(8,8,'uploads/music/Dance/Beyonce/Yo Soy... Sasha Feroz/Yo Soy... Sasha Feroz.png','2017-02-02 04:01:18','2017-02-02 04:01:18'),(9,9,'uploads/music/Música electrónica/Zeed/Clarity/Clarity.png','2017-02-02 04:01:44','2017-02-02 04:01:44'),(10,10,'uploads/music/Música electrónica/David Guetta/Listen Again/Listen Again.png','2017-02-02 04:02:11','2017-02-02 04:02:11'),(12,12,'uploads/music/Punk/Green Day/Tré/Tré.png','2017-02-02 04:03:03','2017-02-02 04:03:03'),(13,13,'uploads/music/Reggae/Bob Marley/Live Forever/Live Forever.png','2017-02-02 04:03:26','2017-02-02 04:03:26'),(14,14,'uploads/music/Metal/AC-DC/Back in Black/Back in Black.jpeg','2017-02-02 04:04:08','2017-02-02 04:04:08'),(15,15,'uploads/music/Reggaeton/Nicky Jam/Hasta El Amanecer/Hasta El Amanecer.png','2017-02-02 04:04:35','2017-02-02 04:04:35'),(16,16,'uploads/music/Rap/Eminem/The Marshall Mathers LP 2/The Marshall Mathers LP 2.png','2017-02-02 04:05:06','2017-02-02 04:05:06'),(17,17,'uploads/music/Cumbia/Marama/Todo comenzo bailando/Todo comenzo bailando.jpeg','2017-02-02 04:15:24','2017-02-02 04:15:24'),(18,18,'uploads/music/Clasica/Max Richter/From Sleep/From Sleep.png','2017-02-02 04:16:06','2017-02-02 04:16:06'),(19,19,'uploads/music/Bachata/Romeo Santos/Formula Vol. 2/Formula Vol. 2.jpeg','2017-02-02 04:17:13','2017-02-02 04:17:13'),(20,20,'uploads/music/Blues/Freddie King/Texas cannonball/Texas cannonball.png','2017-02-02 04:17:52','2017-02-02 04:17:52'),(21,21,'uploads/music/Jazz/Jaco Pastorius/Jaco Pastorius/Jaco Pastorius.jpeg','2017-02-02 04:18:41','2017-02-02 04:18:41'),(22,22,'uploads/music/Salsa/Oscar D\' Leon/15 Exitos/15 Exitos.png','2017-02-02 04:20:16','2017-02-02 04:20:16'),(23,23,'uploads/music/Tango/Carlos Gardel/El Mago del Tango/El Mago del Tango.png','2017-02-02 04:25:35','2017-02-02 04:25:35'),(24,24,'uploads/music/Rap/Eminem/Recovery/Recovery.jpeg','2017-02-07 05:05:44','2017-02-07 05:05:44'),(25,25,'uploads/music/Reggaeton/Daddy Yankee/Despacito/Despacito.jpeg','2017-02-09 14:55:59','2017-02-09 14:55:59'),(26,26,'uploads/music/Reggaeton/Cnco/Primera Cita/Primera Cita.jpeg','2017-02-22 07:02:05','2017-03-15 03:32:11');
/*!40000 ALTER TABLE `img_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `img_artista`
--

DROP TABLE IF EXISTS `img_artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `img_artista` (
  `id_img_artista` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_artista` int(10) unsigned NOT NULL,
  `src_img` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_img_artista`),
  KEY `img_artista_id_artista_foreign` (`id_artista`),
  CONSTRAINT `img_artista_id_artista_foreign` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img_artista`
--

LOCK TABLES `img_artista` WRITE;
/*!40000 ALTER TABLE `img_artista` DISABLE KEYS */;
INSERT INTO `img_artista` VALUES (1,1,'uploads/music/Metal/AC-DC/AC-DC.jpeg','2017-02-01 23:13:42','2017-02-01 23:13:42'),(2,2,'uploads/music/Plena/El Gucci/El Gucci.jpeg','2017-02-02 03:50:33','2017-02-02 03:50:33'),(4,4,'uploads/music/Plena/Denis Elias/Denis Elias.jpeg','2017-02-02 03:50:57','2017-02-02 03:50:57'),(5,5,'uploads/music/Rock/No Te Va A Gustar/No Te Va A Gustar.jpeg','2017-02-02 03:51:34','2017-02-02 03:51:34'),(6,6,'uploads/music/Rock/Queen/Queen.jpeg','2017-02-02 03:51:47','2017-02-02 03:51:47'),(7,7,'uploads/music/Reggaeton/Daddy Yankee/Daddy Yankee.jpeg','2017-02-02 03:52:04','2017-02-22 06:57:39'),(8,8,'uploads/music/Reggaeton/Nicky Jam/Nicky Jam.jpeg','2017-02-02 03:52:18','2017-02-02 04:12:18'),(9,9,'uploads/music/Reggae/Bob Marley/Bob Marley.jpeg','2017-02-02 03:52:35','2017-02-02 03:52:35'),(10,10,'uploads/music/Pop/Michael Jackson/Michael Jackson.jpeg','2017-02-02 03:52:52','2017-02-02 03:52:52'),(11,11,'uploads/music/Música electrónica/David Guetta/David Guetta.jpeg','2017-02-02 03:53:06','2017-02-02 03:53:06'),(12,12,'uploads/music/Música electrónica/Zeed/Zeed.jpeg','2017-02-02 03:53:20','2017-02-02 03:53:20'),(13,13,'uploads/music/Metal/Guns N\' Roses/Guns N\' Roses.jpeg','2017-02-02 03:53:39','2017-02-02 03:53:39'),(14,14,'uploads/music/Dance/Beyonce/Beyonce.jpeg','2017-02-02 03:54:00','2017-02-02 03:54:00'),(15,15,'uploads/music/Blues/Freddie King/Freddie King.jpeg','2017-02-02 03:54:15','2017-02-02 03:54:15'),(16,16,'uploads/music/Bachata/Romeo Santos/Romeo Santos.jpeg','2017-02-02 03:54:31','2017-02-02 03:54:31'),(17,17,'uploads/music/Clasica/Max Richter/Max Richter.jpeg','2017-02-02 03:55:22','2017-02-02 03:55:22'),(18,18,'uploads/music/Jazz/Jaco Pastorius/Jaco Pastorius.jpeg','2017-02-02 03:55:41','2017-02-02 03:55:41'),(19,19,'uploads/music/Música Brasileña/Michel Telo/Michel Telo.jpeg','2017-02-02 03:55:55','2017-02-02 03:55:55'),(20,20,'uploads/music/Punk/Green Day/Green Day.jpeg','2017-02-02 03:56:13','2017-02-02 03:56:13'),(21,21,'uploads/music/Rap/Eminem/Eminem.jpeg','2017-02-02 03:56:30','2017-02-02 03:56:30'),(22,22,'uploads/music/Cumbia/Marama/Marama.jpeg','2017-02-02 04:14:38','2017-02-02 04:14:38'),(23,23,'uploads/music/Salsa/Oscar D\' Leon/Oscar D\' Leon.jpeg','2017-02-02 04:19:53','2017-02-02 04:19:53'),(24,24,'uploads/music/Tango/Carlos Gardel/Carlos Gardel.jpeg','2017-02-02 04:24:55','2017-02-02 04:24:55'),(25,25,'uploads/music/Reggaeton/Cnco/Cnco.jpeg','2017-02-22 06:59:58','2017-03-15 03:13:17');
/*!40000 ALTER TABLE `img_artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `img_genero`
--

DROP TABLE IF EXISTS `img_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `img_genero` (
  `id_img_genero` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_genero` int(10) unsigned NOT NULL,
  `src_img` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_img_genero`),
  KEY `img_genero_id_genero_foreign` (`id_genero`),
  CONSTRAINT `img_genero_id_genero_foreign` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img_genero`
--

LOCK TABLES `img_genero` WRITE;
/*!40000 ALTER TABLE `img_genero` DISABLE KEYS */;
INSERT INTO `img_genero` VALUES (1,1,'uploads/music/Metal/Metal.jpeg','2017-02-01 23:13:31','2017-02-01 23:13:31'),(2,2,'uploads/music/Cumbia/Cumbia.jpeg','2017-02-02 03:45:50','2017-02-02 03:45:50'),(3,3,'uploads/music/Rock/Rock.jpeg','2017-02-02 03:46:08','2017-02-02 03:46:08'),(4,4,'uploads/music/Clasica/Clasica.jpeg','2017-02-02 03:46:21','2017-02-02 03:46:21'),(5,5,'uploads/music/Reggae/Reggae.jpeg','2017-02-02 03:46:38','2017-02-02 03:46:38'),(6,6,'uploads/music/Reggaeton/Reggaeton.jpeg','2017-02-02 03:46:51','2017-02-02 03:46:51'),(7,7,'uploads/music/Jazz/Jazz.jpeg','2017-02-02 03:47:05','2017-02-02 03:47:05'),(8,8,'uploads/music/Tango/Tango.jpeg','2017-02-02 03:47:16','2017-02-02 03:47:16'),(9,9,'uploads/music/Rap/Rap.jpeg','2017-02-02 03:47:29','2017-02-02 03:47:29'),(10,10,'uploads/music/Música Brasileña/Música Brasileña.jpeg','2017-02-02 03:47:47','2017-02-02 03:47:47'),(11,11,'uploads/music/Música electrónica/Música electrónica.jpeg','2017-02-02 03:48:14','2017-02-02 03:48:14'),(12,12,'uploads/music/Punk/Punk.png','2017-02-02 03:48:29','2017-02-02 03:48:29'),(13,13,'uploads/music/Blues/Blues.jpeg','2017-02-02 03:48:38','2017-02-02 03:48:38'),(14,14,'uploads/music/Bachata/Bachata.jpeg','2017-02-02 03:48:48','2017-02-02 03:48:48'),(15,15,'uploads/music/Dance/Dance.jpeg','2017-02-02 03:48:57','2017-02-02 03:48:57'),(16,16,'uploads/music/Pop/Pop.jpeg','2017-02-02 03:49:06','2017-02-02 03:49:06'),(17,17,'uploads/music/Salsa/Salsa.jpeg','2017-02-02 03:49:19','2017-02-02 03:49:19'),(18,18,'uploads/music/Plena/Plena.jpeg','2017-02-02 03:49:40','2017-02-02 03:49:40');
/*!40000 ALTER TABLE `img_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `img_usuario`
--

DROP TABLE IF EXISTS `img_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `img_usuario` (
  `id_img_usuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(10) unsigned NOT NULL,
  `src_img` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_img_usuario`),
  KEY `img_usuario_id_usuario_foreign` (`id_usuario`),
  CONSTRAINT `img_usuario_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img_usuario`
--

LOCK TABLES `img_usuario` WRITE;
/*!40000 ALTER TABLE `img_usuario` DISABLE KEYS */;
INSERT INTO `img_usuario` VALUES (1,1,'avatars/admin.jpg',NULL,NULL),(2,2,'avatars/luis.jpg','2017-02-01 23:13:07','2017-02-01 23:13:07'),(3,3,'https://scontent.xx.fbcdn.net/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=978df650af5b925f321fe4050af2869f&oe=5911542F',NULL,NULL),(4,6,'https://lh5.googleusercontent.com/-NYWw90XMrs0/AAAAAAAAAAI/AAAAAAAAA48/p_dKOQB4m6A/s96-c/photo.jpg',NULL,NULL),(5,7,'Uploads/aberon.jpeg',NULL,NULL),(6,8,'Uploads/jose.jpeg',NULL,NULL),(7,13,'Uploads/pepe.jpg',NULL,NULL);
/*!40000 ALTER TABLE `img_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista`
--

DROP TABLE IF EXISTS `lista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lista` (
  `id_lista` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_lista` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_lista`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista`
--

LOCK TABLES `lista` WRITE;
/*!40000 ALTER TABLE `lista` DISABLE KEYS */;
INSERT INTO `lista` VALUES (4,'Mi Lista',NULL,NULL),(5,'Mi Otra Lista',NULL,NULL),(6,'Rap',NULL,NULL),(9,'Reggaeton',NULL,NULL);
/*!40000 ALTER TABLE `lista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_cancion`
--

DROP TABLE IF EXISTS `lista_cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lista_cancion` (
  `id_cancion` int(10) unsigned NOT NULL,
  `id_lista` int(10) unsigned NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `lista_cancion_id_cancion_foreign` (`id_cancion`),
  KEY `lista_cancion_id_lista_foreign` (`id_lista`),
  CONSTRAINT `lista_cancion_id_cancion_foreign` FOREIGN KEY (`id_cancion`) REFERENCES `cancion` (`id_cancion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lista_cancion_id_lista_foreign` FOREIGN KEY (`id_lista`) REFERENCES `lista` (`id_lista`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_cancion`
--

LOCK TABLES `lista_cancion` WRITE;
/*!40000 ALTER TABLE `lista_cancion` DISABLE KEYS */;
INSERT INTO `lista_cancion` VALUES (7,4,'2017-02-07 04:52:01',NULL,NULL),(20,6,'2017-02-07 04:57:33',NULL,NULL),(26,9,'2017-02-09 14:57:00',NULL,NULL),(24,6,'2017-02-09 15:04:06',NULL,NULL),(27,9,'2017-02-22 07:04:11',NULL,NULL);
/*!40000 ALTER TABLE `lista_cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (217,'2014_10_12_100000_create_password_resets_table',1),(218,'2016_12_29_030859_create_tipo_usuario',1),(219,'2016_12_29_031234_create_usuario',1),(220,'2017_01_02_030121_create_genero',1),(221,'2017_01_02_030851_create_img_genero',1),(222,'2017_01_09_121527_create_artista',1),(223,'2017_01_09_121557_create_img_artista',1),(224,'2017_01_11_104354_create_album',1),(225,'2017_01_11_104417_create_img_album',1),(226,'2017_01_11_104432_create_cancion',1),(227,'2017_01_21_142932_create_img_usuario',1),(228,'2017_01_29_233411_create_tipo_publicidad',1),(229,'2017_01_29_233416_create_publicidad',1),(230,'2017_01_31_233140_create_tarea',1),(231,'2017_02_01_071120_create_lista',1),(232,'2017_02_01_071130_create_usuario_lista',1),(233,'2017_02_01_071138_create_lista_cancion',1),(234,'2017_02_01_071216_create_recomendado',1),(235,'2017_02_01_071345_create_favorita',1),(236,'2017_02_01_200605_create_usuario_cancion',1),(237,'2017_02_01_200852_create_paga_suscribe',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paga_suscribe`
--

DROP TABLE IF EXISTS `paga_suscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paga_suscribe` (
  `id_factura` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(10) unsigned NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `monto` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `paga_suscribe_id_usuario_foreign` (`id_usuario`),
  CONSTRAINT `paga_suscribe_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paga_suscribe`
--

LOCK TABLES `paga_suscribe` WRITE;
/*!40000 ALTER TABLE `paga_suscribe` DISABLE KEYS */;
INSERT INTO `paga_suscribe` VALUES (2,6,'2017-02-10 03:00:00','5.99','2017-02-10 13:12:58','2017-02-10 13:12:58'),(3,3,'2017-02-10 03:00:00','5.99','2017-02-10 13:18:33','2017-02-10 13:18:33'),(8,8,'2017-02-11 03:00:00','5.99','2017-02-11 07:26:50','2017-02-11 07:26:50');
/*!40000 ALTER TABLE `paga_suscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicidad`
--

DROP TABLE IF EXISTS `publicidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicidad` (
  `id_publicidad` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_tipo_publicidad` int(10) unsigned NOT NULL,
  `nombre_publicidad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `src` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `duracion` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_publicidad`),
  KEY `publicidad_id_tipo_publicidad_foreign` (`id_tipo_publicidad`),
  CONSTRAINT `publicidad_id_tipo_publicidad_foreign` FOREIGN KEY (`id_tipo_publicidad`) REFERENCES `tipo_publicidad` (`id_tipo_publicidad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicidad`
--

LOCK TABLES `publicidad` WRITE;
/*!40000 ALTER TABLE `publicidad` DISABLE KEYS */;
INSERT INTO `publicidad` VALUES (1,2,'Promoción 1','bi/Promoción 1.jpg','','2017-02-01 23:15:19','2017-02-01 23:15:19'),(2,1,'ByDF1','bi/ByDF1.mp3','00:41','2017-02-02 04:56:20','2017-02-02 04:56:20');
/*!40000 ALTER TABLE `publicidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recomendado`
--

DROP TABLE IF EXISTS `recomendado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recomendado` (
  `id_usuario` int(10) unsigned NOT NULL,
  `id_genero` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `recomendado_id_usuario_foreign` (`id_usuario`),
  KEY `recomendado_id_genero_foreign` (`id_genero`),
  CONSTRAINT `recomendado_id_genero_foreign` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recomendado_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recomendado`
--

LOCK TABLES `recomendado` WRITE;
/*!40000 ALTER TABLE `recomendado` DISABLE KEYS */;
INSERT INTO `recomendado` VALUES (8,9,NULL,NULL),(8,6,NULL,NULL),(6,2,NULL,NULL),(6,5,NULL,NULL),(6,3,NULL,NULL),(3,1,NULL,NULL),(13,5,NULL,NULL),(7,10,NULL,NULL),(7,5,NULL,NULL),(7,6,NULL,NULL);
/*!40000 ALTER TABLE `recomendado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarea`
--

DROP TABLE IF EXISTS `tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarea` (
  `id_tarea` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(10) unsigned NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_tarea`),
  KEY `tarea_id_usuario_foreign` (`id_usuario`),
  CONSTRAINT `tarea_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarea`
--

LOCK TABLES `tarea` WRITE;
/*!40000 ALTER TABLE `tarea` DISABLE KEYS */;
INSERT INTO `tarea` VALUES (4,1,'Tarea 1','PENDIENTE','2017-02-22 07:09:49','2017-02-22 07:09:49');
/*!40000 ALTER TABLE `tarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_publicidad`
--

DROP TABLE IF EXISTS `tipo_publicidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_publicidad` (
  `id_tipo_publicidad` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_tipo_publicidad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipo_publicidad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_publicidad`
--

LOCK TABLES `tipo_publicidad` WRITE;
/*!40000 ALTER TABLE `tipo_publicidad` DISABLE KEYS */;
INSERT INTO `tipo_publicidad` VALUES (1,'Audio',NULL,NULL),(2,'Imagen',NULL,NULL);
/*!40000 ALTER TABLE `tipo_publicidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuario` (
  `id_tipo_usr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_tipo` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipo_usr`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'Administrador',NULL,NULL),(2,'Business Intelligence',NULL,NULL),(3,'Premium',NULL,NULL),(4,'Gratis',NULL,NULL),(5,'No Registrado',NULL,NULL);
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_tipo_usuario` int(10) unsigned NOT NULL,
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pass` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `sexo` char(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cuenta_valida` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `account_code` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_google` int(11) DEFAULT NULL,
  `id_facebook` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `usuario_usuario_unique` (`usuario`),
  KEY `usuario_id_tipo_usuario_foreign` (`id_tipo_usuario`),
  CONSTRAINT `usuario_id_tipo_usuario_foreign` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,'admin','Juan','Perez','thermoteam2016@gmail.com','$2y$10$XnDXCy7ktG8it7wYX/9Oiufa7ac0kBwvfOplLoX0t3UxUbCEbY3LG','1985-09-22','M',NULL,'S',NULL,NULL,NULL,NULL,'2017-02-01 22:10:02','2017-02-22 07:20:43'),(2,2,'luis','Luis','Rodriguez','thermoteam2016@gmail.com','$2y$10$KksZm3hgiua.FfErDSKc0Oyg8rEreu6xSouZ8VkI0LMDel84jGQla','1980-01-02','M',NULL,'S',NULL,NULL,NULL,NULL,'2017-02-01 23:13:07','2017-02-01 23:55:33'),(3,3,'thermoteam2016@gmail.com','Walter','White','thermoteam2016@gmail.com','','0000-00-00','M','','S','',0,2147483647,NULL,'2017-02-02 22:10:02',NULL),(6,3,'alejandroberon10@gmail.com','Alejandro','Berón','alejandroberon10@gmail.com','','0000-00-00','','','S','',2147483647,0,NULL,'2017-02-02 21:10:02',NULL),(7,3,'aberon','','','alejandroberon10@gmail.com','$2y$10$j/1KFspsJ6b/AJDYXHBqEezhVNHWopyzmP.QIDWVo6r4r2CYSt/se','1995-01-12','M','ec300e237f75307168e21db3b41548982ed2f816','S','017958',0,0,NULL,'2017-01-05 22:10:02',NULL),(8,3,'jose','','','alejandroberon10@gmail.com','$2y$10$C5JtAdsmw3jA.C3pRYPOGOyOvJA3XM0lEW9pcNvTgxO/FEOd6PVTy','1989-03-19','M','aa4c2d5faa84fd97a37b0a51da888f9ce3288fed','S','374215',0,0,NULL,'2017-02-11 22:10:02',NULL),(13,4,'pepe','','','alejandroberon10@gmail.com','$2y$10$3aY6u4a.edqDXzFbRiR3h.TW9KpZrG4gnz79gQjZFPIGOU8mQ7o2C','1989-01-18','M','aa3760e1b7f98333f26cf0eb6160aa63241de69b','S','692073',0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_cancion`
--

DROP TABLE IF EXISTS `usuario_cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_cancion` (
  `id_usuario` int(10) unsigned NOT NULL,
  `id_cancion` int(10) unsigned NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `usuario_cancion_id_usuario_foreign` (`id_usuario`),
  KEY `usuario_cancion_id_cancion_foreign` (`id_cancion`),
  CONSTRAINT `usuario_cancion_id_cancion_foreign` FOREIGN KEY (`id_cancion`) REFERENCES `cancion` (`id_cancion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuario_cancion_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_cancion`
--

LOCK TABLES `usuario_cancion` WRITE;
/*!40000 ALTER TABLE `usuario_cancion` DISABLE KEYS */;
INSERT INTO `usuario_cancion` VALUES (6,8,'2017-02-02 04:39:46',NULL,NULL),(7,10,'2017-02-03 05:58:14',NULL,NULL),(7,17,'2017-02-03 06:03:47',NULL,NULL),(7,9,'2017-02-03 06:08:59',NULL,NULL),(7,23,'2017-02-03 06:35:14',NULL,NULL),(8,20,'2017-02-07 04:57:54',NULL,NULL),(7,26,'2017-02-22 07:01:42',NULL,NULL),(7,27,'2017-02-22 07:04:06',NULL,NULL);
/*!40000 ALTER TABLE `usuario_cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_lista`
--

DROP TABLE IF EXISTS `usuario_lista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_lista` (
  `id_usuario` int(10) unsigned NOT NULL,
  `id_lista` int(10) unsigned NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `usuario_lista_id_usuario_foreign` (`id_usuario`),
  KEY `usuario_lista_id_lista_foreign` (`id_lista`),
  CONSTRAINT `usuario_lista_id_lista_foreign` FOREIGN KEY (`id_lista`) REFERENCES `lista` (`id_lista`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuario_lista_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_lista`
--

LOCK TABLES `usuario_lista` WRITE;
/*!40000 ALTER TABLE `usuario_lista` DISABLE KEYS */;
INSERT INTO `usuario_lista` VALUES (8,4,'2017-02-07 04:32:54',NULL,NULL),(8,5,'2017-02-07 04:33:03',NULL,NULL),(8,6,'2017-02-07 04:57:33',NULL,NULL),(7,9,'2017-02-08 05:08:08',NULL,NULL);
/*!40000 ALTER TABLE `usuario_lista` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-15  0:46:01
