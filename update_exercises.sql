USE codeup_test_db;

SELECT * FROM albums;

UPDATE albums
SET sales = sales * 10
WHERE sales = sales;


SELECT name, genre FROM albums WHERE release_date <= 1980;

SELECT * FROM albums WHERE artist = 'Michael Jackson';