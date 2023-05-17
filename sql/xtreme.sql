DROP DATABASE IF EXISTS xtreme;
CREATE DATABASE xtreme DEFAULT CHARACTER SET utf8mb4;

USE xtreme;

CREATE TABLE `User` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `password` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `name` VARCHAR(40) NOT NULL,
    `age` INT NOT NULL,
    `sports` VARCHAR(100) NOT NULL,
    `profileImg` VARCHAR(100) NOT NULL,
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `Competition` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `compSports` VARCHAR(100) NOT NULL,
    `compName` VARCHAR(100) NOT NULL,
    `host` VARCHAR(40) NOT NULL,
    `place` INT NOT NULL,
    `compDay` DATE NOT NULL,
    `registDate` DATE NOT NULL,
    `fee` INT,
    `compAge` INT,
    `compUrl` VARCHAR(100) NOT NULL,
    `compImg` VARCHAR(100) NOT NULL,
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `News` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`newsSports` VARCHAR(100) NOT NULL,
    `title` VARCHAR(100) NOT NULL,
    `newsDate` DATE NOT NULL,
    `viewCnt` INT,
    `press` VARCHAR(100),
    `reporter` VARCHAR(40) NOT NULL,
    `newsURL` VARCHAR(100) NOT NULL,
    `newsImg` VARCHAR(100) NOT NULL,
    `newsContent` TEXT,
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `CompetitionReview` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) NOT NULL,
    `writer` VARCHAR(100) NOT NULL,
    `content` VARCHAR(40) NOT NULL,
    `viewCnt` INT,
    `compId` INT NOT NULL,
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `NewsReview` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) NOT NULL,
    `writer` VARCHAR(100) NOT NULL,
    `content` VARCHAR(40) NOT NULL,
    `viewCnt` INT,
    `newsId` INT NOT NULL,
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;