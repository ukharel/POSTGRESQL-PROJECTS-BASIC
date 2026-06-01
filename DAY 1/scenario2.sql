CREATE TABLE players(
    player_id SERIAL PRIMARY KEY ,
    username varchar(40),
    country varchar(30),
    score int,
    level int,
    hours_played float,
    status varchar(20)
);
INSERT INTO players
(username,country,score,level,hours_played,status)
VALUES
('Biraj','China',3000,70,50,'offline'),
('Ujwal','Nepal',5000,60,30,'active'),
('Priya','India',5,100,   12, 'offline'),
('Anshu','Japan',500,40,20,'offline'),
('Adarsha','Brazil',6000,80,60,'active'),
('Ram','Australia',500,10,12,'offline'),
('Shyam','Germany',7000,90,100,'active'),
('Hari','America',6500,80,50,'active');
--Qn1 fetch all players who are currently "active" as temporarily chage columan name
SELECT username,score as "high_score"  FROM players
where status = 'active';
--Qn2 Find the players whose score is between 5000 and 2000
SELECT * FROM players
where score between 2000 and 5000;
--Qn3 Show username and country only and players from nepal,japan,india
SELECT username,country  FROM players
where country IN ('Nepal','India','Japan');
--Qn4 Find the players whose name start with S
SELECT * FROM players
where username Like 'S%';
--Qn5 show the players played fewer than 10 hrs and lever less than equal 5
SELECT username,hours_played as hrs,level FROM  players
where hours_played < 10 and level > 5;
--Qn6 Show the player data in asc order of username and desc order of level
SELECT * FROM players
order by username,level desc;
--Qn show the players in desc order of score only five
SELECT * FROM players
order by score desc
limit 5;