SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

SET storage_engine=InnoDB;

CREATE SCHEMA IF NOT EXISTS `statistics` DEFAULT CHARACTER SET utf8 ;
USE `statistics` ;

-- -----------------------------------------------------
-- Table `$dbname`.`$prefix_wg_regions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `statistics`.`stats_hook_worldguard` ;

CREATE  TABLE IF NOT EXISTS `statistics`.`stats_hook_worldguard` (
  `player_id` INT NOT NULL ,
  `regions` TEXT NULL ,
  `flags` TEXT NULL ,
  PRIMARY KEY (`player_id`) ,
  CONSTRAINT `fk_player_id21`
    FOREIGN KEY (`player_id` )
    REFERENCES `statistics`.`stats_players` (`player_id` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION);
    
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
