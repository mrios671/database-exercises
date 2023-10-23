-- switch to db first

USE codeup_test_db;

drop table if exists albums;

CREATE TABLE albums(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `artist` VARCHAR(50) DEFAULT NULL,
    `name` VARCHAR(50) DEFAULT NULL,
    `release_date` int(4) DEFAULT NULL,
    `sales` DECIMAL(3,1) DEFAULT NULL,
    `genre` VARCHAR (100) DEFAULT NULL,
    PRIMARY KEY (id)
)
