DROP DATABASE IF EXISTS xtreme;
CREATE DATABASE xtreme DEFAULT CHARACTER SET utf8mb4;

USE xtreme;

CREATE TABLE `User` (
	`id` VARCHAR(40) NOT NULL,
    `password` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `name` VARCHAR(40) NOT NULL,
    `age` INT NOT NULL,
    `profileImg` VARCHAR(100) NOT NULL,
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `Competition` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `compSports` VARCHAR(100) NOT NULL,
    `compName` VARCHAR(100) NOT NULL,
    `host` VARCHAR(40) NOT NULL,
    `place` VARCHAR(100) NOT NULL,
    `compDay` DATE NOT NULL,
    `registDate` DATE NOT NULL,
    `fee` INT,
    `compAge` INT,
    `compUrl` VARCHAR(100) NOT NULL,	
    `compImg` VARCHAR(100) NOT NULL,
    `liked` BOOLEAN NOT NULL,
    `userId` VARCHAR(40) NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(userId) REFERENCES User(id)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `Review` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) NOT NULL,
    `userId` VARCHAR(40) NOT NULL,
    `content` TEXT NOT NULL,
    `viewCnt` INT DEFAULT 0,
    `compId` INT NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(compId) REFERENCES Competition(id),
    FOREIGN KEY(userId) REFERENCES User(id)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `Participate` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `playerId` VARCHAR(40) NOT NULL,
    `teamName` VARCHAR(100) NOT NULL,
    `playerName` VARCHAR(100) NOT NULL,
    `birth` INT NOT NULL,
    `phone` VARCHAR(100) NOT NULL,
    `playerEmail` VARCHAR(100) NOT NULL,
    `check` BOOLEAN NOT NULL,
    `compId` INT NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(compId) REFERENCES Competition(id),
    FOREIGN KEY(playerId) REFERENCES User(id)
)ENGINE=InnoDB DEFAULT CHARACTER SET = utf8mb4;