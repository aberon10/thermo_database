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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `paga_suscribe`
--

DROP TABLE IF EXISTS `paga_suscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paga_suscribe` (
  `id_factura` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(10) unsigned NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monto` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `paga_suscribe_id_usuario_foreign` (`id_usuario`),
  CONSTRAINT `paga_suscribe_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `id_reset` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_reset`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-21  2:02:06
