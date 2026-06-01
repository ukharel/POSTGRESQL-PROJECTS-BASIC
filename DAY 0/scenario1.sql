DROP TABLE if exists leaderboard;
CREATE TABLE leaderboard(
    player_id SERIAL PRIMARY KEY,
    username varchar(40),
    game varchar(20),
    score int,
    level int
);
INSERT INTO leaderboard
(username,game,score,level)
values('Biraj','chess',3,2),
      ('BIshwo','chess',4,3),
      ('Anbeshak','FIFA',20,80),
      ('Amrit','freefire',1,20),
      ('Basanta','mobile legend',4,30),
      ('mohit','football',4,8);
SELECT * FROM leaderboard;
--Qn 2 Select only username and score columns
SELECT username,score  from leaderboard;
--Qn 3 Select all players and their games
SELECT username,game from leaderboard;
--player with no score Qn 4
INSERT INTO leaderboard(username,game,level)values
('Bikram','football',34);

DELETE FROM leaderboard where player_id = 8;
select * from leaderboard;