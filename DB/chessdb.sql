-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema chessdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `chessdb` ;

-- -----------------------------------------------------
-- Schema chessdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `chessdb` DEFAULT CHARACTER SET utf8 ;
USE `chessdb` ;

-- -----------------------------------------------------
-- Table `chess`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `chess` ;

CREATE TABLE IF NOT EXISTS `chess` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS chessuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'chessuser'@'localhost' IDENTIFIED BY 'chessuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'chessuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `chess`
-- -----------------------------------------------------
START TRANSACTION;
USE `chessdb`;
INSERT INTO `chess` (`id`) VALUES (1);

COMMIT;

