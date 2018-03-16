
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
 id INT unsigned NOT NULL AUTO_INCREMENT,
 artist VARCHAR (150),
 name VARCHAR (150) NOT NULL,
 release_date INT,
 sales DECIMAL(6,2),
 genre VARCHAR(150),
 PRIMARY KEY (id)
);
