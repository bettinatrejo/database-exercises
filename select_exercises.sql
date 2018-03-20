USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS 'Exercise 1';
SELECT  name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Exercise 2';
SELECT  release_date FROM albums WHERE name = ' Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS 'Exercise 3';
SELECT  genre FROM albums WHERE artist = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS 'Exercise 4';
SELECT  albums FROM albums WHERE release_date BETWEEN 1990 and 1999;

SELECT 'Which albums had less than 20 million certified sales' AS 'Exercise 5';
SELECT  * FROM albums WHERE sales < 20;

SELECT 'All the albums with a genre of "Rock"' AS 'Exercise 6';
SELECT  * FROM albums WHERE genre = 'Rock';









