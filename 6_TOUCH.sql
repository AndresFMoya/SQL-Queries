--1. Modify it to show the matchid and player name for all goals scored by Germany. 
--   To identify German players, check for: teamid = 'GER'
SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

--2. Show id, stadium, team1, team2 for just game 1012
SELECT id,stadium,team1,team2
  FROM game
WHERE id = '1012'

--3. Modify it to show the player, teamid, stadium and mdate for every German goal.
SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (game.id = goal.matchid )
WHERE goal.teamid = 'GER'

--4. Show the team1, team2 and player for every goal scored by a player called Mario
SELECT team1, team2, player 
FROM game JOIN goal ON (game.id = goal.matchid)
WHERE player LIKE 'Mario%'

--5. Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime<=10
SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam ON (teamid=id)
 WHERE gtime<=10

 --6. List the the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.
 SELECT game.mdate, eteam.teamname
FROM game JOIN eteam ON (game.team1 = eteam.id) 
WHERE eteam. coach = 'Fernando Santos'

--7. List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'
SELECT player FROM goal
JOIN game ON (matchid = id)
WHERE stadium =  'National Stadium, Warsaw' 
