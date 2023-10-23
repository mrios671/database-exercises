-- switch to db first

USE codeup_test_db;

drop table if exists albums;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name VARCHAR(50),
    release_date INT,
    sales DECIMAL(3,1),
    genre VARCHAR (100),
    PRIMARY KEY (id)
)
