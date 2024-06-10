-- Create a new database
CREATE DATABASE IF NOT EXISTS NetflixTitles;

-- Switch to the NetflixTitles database
USE NetflixTitles;

-- Create the Shows table
CREATE TABLE IF NOT EXISTS Shows (
    show_id VARCHAR(10),
    type VARCHAR(20),
    title VARCHAR(100),
    director VARCHAR(100),
    cast VARCHAR(500),
    country VARCHAR(100),
    date_added VARCHAR(20),
    release_year INT,
    rating VARCHAR(10),
    duration VARCHAR(20),
    listed_in VARCHAR(100),
    description TEXT
);

-- Load data from CSV into the Shows table
LOAD DATA LOCAL INFILE './15-netflix_titles.csv' INTO TABLE Shows FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

-- Retrieve all shows
SELECT
    *
FROM
    Shows;

-- Retrieve all shows added in September 2021
SELECT
    *
FROM
    Shows
WHERE
    date_added LIKE 'September%2021';

-- Retrieve all movies released after 2010
SELECT
    *
FROM
    Shows
WHERE
    type = 'Movie'
    AND release_year > 2010;

-- Retrieve all TV shows with a rating of TV-MA
SELECT
    *
FROM
    Shows
WHERE
    type = 'TV Show'
    AND rating = 'TV-MA';

-- Update the rating of a specific show
UPDATE
    Shows
SET
    rating = 'PG'
WHERE
    show_id = 's1';

-- Update the title and director of a specific show
UPDATE
    Shows
SET
    title = 'New Title',
    director = 'New Director'
WHERE
    show_id = 's2';

-- Delete a specific show
DELETE FROM
    Shows
WHERE
    show_id = 's4';

-- Delete all shows with a rating of TV-14
DELETE FROM
    Shows
WHERE
    rating = 'TV-14';

-- Calculate the total number of shows in the database
SELECT
    COUNT(*) AS total_shows
FROM
    Shows;

-- Calculate the average release year of movies
SELECT
    AVG(release_year) AS avg_release_year
FROM
    Shows
WHERE
    type = 'Movie';

-- Calculate the maximum duration of TV shows
SELECT
    MAX(duration) AS max_duration
FROM
    Shows
WHERE
    type = 'TV Show';