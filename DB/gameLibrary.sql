-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema gamelibrarydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `gamelibrarydb` ;

-- -----------------------------------------------------
-- Schema gamelibrarydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gamelibrarydb` DEFAULT CHARACTER SET utf8 ;
USE `gamelibrarydb` ;

-- -----------------------------------------------------
-- Table `game`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `game` ;

CREATE TABLE IF NOT EXISTS `game` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `image_url_cover` VARCHAR(2000) NULL,
  `description` TEXT NULL,
  `ESRB_Rating` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS ezhailion@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'ezhailion'@'localhost' IDENTIFIED BY 'ezhailion';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'ezhailion'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `game`
-- -----------------------------------------------------
START TRANSACTION;
USE `gamelibrarydb`;
INSERT INTO `game` (`id`, `title`, `image_url_cover`, `description`, `ESRB_Rating`) VALUES (1, 'Devil May Cry', NULL, NULL, NULL);

COMMIT;

