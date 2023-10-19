-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para cuidadoso
CREATE DATABASE IF NOT EXISTS `cuidadoso` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cuidadoso`;

-- Copiando estrutura para tabela cuidadoso.adm_users
CREATE TABLE IF NOT EXISTS `adm_users` (
  `id_adm` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nome_adm` varchar(50) NOT NULL,
  `senha_adm` varchar(20) NOT NULL,
  `id_tipo` int DEFAULT NULL,
  PRIMARY KEY (`id_adm`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `FK_adm_users_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela cuidadoso.adm_users: ~5 rows (aproximadamente)
INSERT INTO `adm_users` (`id_adm`, `nome_adm`, `senha_adm`, `id_tipo`) VALUES
	(0000000001, 'giovanny', 'soudemais', 1),
	(0000000002, 'santana', 'soulegal', 2),
	(0000000003, 'arielly', 'soutop', 3),
	(0000000004, 'manoella', 'souzika', 4),
	(0000000005, 'paloma', 'souboba', 5);

-- Copiando estrutura para tabela cuidadoso.tipo
CREATE TABLE IF NOT EXISTS `tipo` (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `nome_tipo` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela cuidadoso.tipo: ~5 rows (aproximadamente)
INSERT INTO `tipo` (`id_tipo`, `nome_tipo`) VALUES
	(1, 'lider'),
	(2, 'sub lider'),
	(3, 'adm Ary'),
	(4, 'adm Manu'),
	(5, 'adm Pam');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
