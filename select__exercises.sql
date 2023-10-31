USE codeup_test_db;
-- write queries to find the following information:
-- The name of all albums by Pink Floyd.
SELECT * FROM albums WHERE artist = 'Pink FLoyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date AS release_year FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT genre FROM albums WHERE name = 'Nevermind';

-- Which albums were released in the 1990s
SELECT * FROM albums WHERE release_date = 1990;

-- Which albums had less than 20 million certified sales
SELECT * FROM albums WHERE sales <= '20.0';

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT * FROM albums WHERE genre = 'Rock';