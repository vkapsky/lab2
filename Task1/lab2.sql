-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema lab2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab2` DEFAULT CHARACTER SET utf8 ;
USE `lab2` ;

-- -----------------------------------------------------
-- Table `lab2`.`Load`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab2`.`Load` (
  `professor_id` INT NOT NULL COMMENT 'номер преподавателя',
  `subject_id` INT NULL COMMENT 'номер предмета',
  `group_id` INT NULL COMMENT 'намер группы',
  PRIMARY KEY (`professor_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab2`.`Professors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab2`.`Professors` (
  `professor_id` INT NOT NULL COMMENT 'номер преподавателя',
  `name` VARCHAR(45) NULL COMMENT 'имя преподавателя ',
  `surname` VARCHAR(45) NULL,
  `patronymic` VARCHAR(45) NULL COMMENT 'отчество преподавателя ',
  `academic_degree` VARCHAR(45) NULL COMMENT 'ученая степень',
  `position` VARCHAR(45) NULL COMMENT 'должность',
  `experience` INT NULL COMMENT 'стаж работы',
  `Load_professor_id` INT NOT NULL,
  `Load_subject_id` INT NOT NULL,
  PRIMARY KEY (`professor_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab2`.`Subjects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab2`.`Subjects` (
  `subject_id` INT NOT NULL COMMENT 'номер предмета',
  `subject` VARCHAR(45) NULL COMMENT 'название предмета',
  `hours` INT NULL COMMENT 'количество часов',
  `Load_professor_id` INT NOT NULL,
  `Load_subject_id` INT NOT NULL,
  PRIMARY KEY (`subject_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
