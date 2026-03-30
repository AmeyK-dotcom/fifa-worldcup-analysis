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
