-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour ddfb
CREATE DATABASE IF NOT EXISTS `ddfb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ddfb`;

-- Listage de la structure de table ddfb. comptes
CREATE TABLE IF NOT EXISTS `comptes` (
  `id_compte` int unsigned NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(40) NOT NULL,
  `motDePasse` varchar(255) NOT NULL,
  `ID_NUMEN` char(13) NOT NULL,
  `dateChangement` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mail` char(50) DEFAULT NULL,
  `NOM` char(50) DEFAULT NULL,
  `PRENOM` char(50) NOT NULL DEFAULT 'Guignol',
  `tel` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_compte`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table ddfb.comptes : ~4 rows (environ)
INSERT INTO `comptes` (`id_compte`, `identifiant`, `motDePasse`, `ID_NUMEN`, `dateChangement`, `mail`, `NOM`, `PRENOM`, `tel`) VALUES
	(1, 'Dylan Desir', '$argon2id$v=19$m=65536,t=4,p=1$U3Vydjk5RWtCaUIyR1VtZA$/7DHvV++cA1S1cQ7RMpwUB9/8XTtSdRqrwRN/0WywhY', '1325469874512', '2022-11-28 15:27:43', 'nolandesir75@gmail.com', 'Desir', 'Dylan', '783910053'),
	(2, 'DDesir', '$argon2id$v=19$m=65536,t=4,p=1$bTNpN29FdTA4WEZ1NVJOVw$Km2jQAYc2f6TUrwEdIyZN98lSUelkYLvUlDuC0sZhLY', '13254698745HO', '2022-11-28 15:33:24', 'nolandesir75@gmail.com', 'Desir', 'Dylan', '783910053'),
	(3, 'DDesir', '$argon2id$v=19$m=65536,t=4,p=1$NVRTd3Uyai4zcWRUZU94Sg$dZwePsLjX3LwKNigz/Sni0Xr5aaWXVYZQyNagzYhjOk', '13254698745HO', '2022-11-28 15:35:03', 'nolandesir75@gmail.com', 'Desir', 'Dylan', '783910053'),
	(4, 'salim', '$2y$10$MwGk5f7YjAioBPHqE5j.geRBJPjsZp66wIZ0j392Eead6JyhD9s.q', '1234', '2022-12-05 15:23:16', 'abcd@gmail.com', 'dahoumane', 'Guignol', '0655248577');

-- Listage de la structure de table ddfb. eleves
CREATE TABLE IF NOT EXISTS `eleves` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOM` varchar(100) DEFAULT NULL,
  `PRENOM` varchar(100) DEFAULT NULL,
  `OPTION_SIO` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table ddfb.eleves : ~31 rows (environ)
INSERT INTO `eleves` (`ID`, `NOM`, `PRENOM`, `OPTION_SIO`) VALUES
	(1, 'Abiram', 'Raveendran', 'SISR'),
	(2, 'Angloma', 'Wesley', 'SISR'),
	(3, 'Anzala', 'Emeric', 'SISR'),
	(4, 'Astasie', 'Mounia', 'SLAM'),
	(5, 'Bazes', 'Kevin', 'SISR'),
	(6, 'Cisse', 'Adam Bacongo', 'SLAM'),
	(7, 'David', 'Tom', 'SISR'),
	(8, 'Dos Santos', 'David', 'SISR'),
	(9, 'Drame', 'Mouhamadou', 'SLAM'),
	(10, 'El Bana', 'Ashraf', 'SISR'),
	(11, 'El Hafsi', 'Nizar', 'SISR'),
	(12, 'Goubin', 'Sylvain', 'SLAM'),
	(13, 'Guerin', 'Nicolas', 'SISR'),
	(14, 'Hasnoui', 'Nassim', 'SISR'),
	(15, 'Hiaumet', 'Mattéo', 'SISR'),
	(16, 'Indralingam', 'Inthusan', 'SISR'),
	(17, 'La Sala', 'Milan', 'SISR'),
	(18, 'Mane', 'Malang', 'SLAM'),
	(19, 'Martins', 'Guillaume', 'SLAM'),
	(20, 'Mathieu', 'Emma', 'SISR'),
	(21, 'Mendes', 'Joaquim', 'SISR'),
	(22, 'Mesina', 'Cristian', 'SLAM'),
	(23, 'Nadji', 'Rayan', 'SLAM'),
	(24, 'Nazir', 'Toycan', 'SLAM'),
	(25, 'Rihane', 'Inès', 'SLAM'),
	(26, 'Sarmiento', 'Nijel', 'SLAM'),
	(27, 'Savoie', 'Adrien', 'SLAM'),
	(28, 'Yagoubi', 'Nabil', 'SISR'),
	(29, 'Yangui', 'Amani', 'SLAM'),
	(30, 'Ye', 'Stéphane', 'SISR'),
	(31, 'Zhang', 'Christophe', 'SLAM');

-- Listage de la structure de table ddfb. identite
CREATE TABLE IF NOT EXISTS `identite` (
  `nom_candidat` varchar(14) DEFAULT NULL,
  `prenom_candidat` varchar(14) DEFAULT NULL,
  `ID_candidat` char(13) DEFAULT NULL,
  `code_bts` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table ddfb.identite : ~0 rows (environ)

-- Listage de la structure de table ddfb. id_prof
CREATE TABLE IF NOT EXISTS `id_prof` (
  `ID_NOM_PROF` varchar(60) DEFAULT NULL,
  `ID_PRENOM_PROF` varchar(60) DEFAULT NULL,
  `ID_NUMEN` char(13) DEFAULT NULL,
  `FK_ID_comptes` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table ddfb.id_prof : ~6 rows (environ)
INSERT INTO `id_prof` (`ID_NOM_PROF`, `ID_PRENOM_PROF`, `ID_NUMEN`, `FK_ID_comptes`) VALUES
	('Bauras', 'Roberte', 'DDDDDDDDDDDDD', NULL),
	('Carissant', 'Christian', 'EEEEEEEEEEEEE', NULL),
	('D Amico', 'Gregory', 'AAAAAAAAAAAAA', NULL),
	('Robert', 'Timothée', 'ABC123ABDTRDA', NULL),
	('Roubeau', 'Dominique', 'BBBBBBBBBBBBB', NULL),
	('Vigny', 'Corinne', 'CCCCCCCCCCCCC', NULL);

-- Listage de la structure de table ddfb. notes
CREATE TABLE IF NOT EXISTS `notes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FK_ID_CANDIDAT` int DEFAULT NULL,
  `CCF` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `NOTE_` float DEFAULT NULL,
  `COEFF` float DEFAULT NULL,
  `DATE_EVAL` date DEFAULT NULL,
  `APPRECIATION` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table ddfb.notes : ~4 rows (environ)
INSERT INTO `notes` (`ID`, `FK_ID_CANDIDAT`, `CCF`, `NOTE_`, `COEFF`, `DATE_EVAL`, `APPRECIATION`) VALUES
	(7, 1, 'E4', 10, 2, '2023-02-02', 'T NUL'),
	(8, 31, 'E5', 20, 2, '2023-02-02', 'T\'es super bon'),
	(9, 28, 'E4', 20, 2, '2023-02-02', 'T\'es super bon'),
	(10, 2, 'E4', 15, 2, '2023-02-02', 't pas ouf');

-- Listage de la structure de table ddfb. épreuve
CREATE TABLE IF NOT EXISTS `épreuve` (
  `libellé_épreuve_CCF` varchar(29) DEFAULT NULL,
  `libellé_du_BTS` varchar(39) DEFAULT NULL,
  `option_du_BTS` tinytext,
  `année_scolaire` smallint DEFAULT NULL,
  `code_CCF` char(5) DEFAULT NULL,
  `la_durée` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table ddfb.épreuve : ~0 rows (environ)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
