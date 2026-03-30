-- Total matches played
SELECT COUNT(*) AS total_matches FROM matches;

-- Home team win count
SELECT home_team, COUNT(*) AS wins
FROM matches
WHERE home_goals > away_goals
GROUP BY home_team
ORDER BY wins DESC;

-- Away team win count
SELECT away_team, COUNT(*) AS wins
FROM matches
WHERE away_goals > home_goals
GROUP BY away_team
ORDER BY wins DESC;

-- Remove null values
DELETE FROM matches
WHERE home_goals IS NULL OR away_goals IS NULL;

-- Standardize team names (example)
UPDATE matches
SET home_team = TRIM(home_team),
    away_team = TRIM(away_team);

CREATE DATABASE football_db;
USE football_db;

CREATE TABLE matches (
    match_id INT PRIMARY KEY,
    date DATE,
    home_team VARCHAR(50),
    away_team VARCHAR(50),
    home_goals INT,
    away_goals INT
);
