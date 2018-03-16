
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
 id INT unsigned NOT NULL AUTO_INCREMENT,
 artist VARCHAR (50),
 name VARCHAR (100) NOT NULL,
 release_date INT,
 sales DECIMAL(6,2),
 genre VARCHAR(50),
 PRIMARY KEY (id)
);
