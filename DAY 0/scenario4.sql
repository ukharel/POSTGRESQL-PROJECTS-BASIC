CREATE TABLE appstore(
    app_id SERIAL PRIMARY KEY,
    app_name varchar(40),
    developer varchar(30),
    category varchar(20),
    rating NUMERIC(2,1),
    downloads int
);
INSERT INTO appstore
(app_name,developer,category,rating,downloads)
VALUES
('Earth','Google LLC','Navigation',9.2,2500000),
('Google Drive','Google LLC','Productivity',8.8,1200000),
('Mortal COmbat','Riot Games','Gaming',9.5,100000),
('TFT: Strategy','Riot Games','Gaming',8.0,300000),
('Pokémon GO','Niantic/Nintendo','Gaming',8.7,450000),
('Teken','Niantic/Nintendo','Gaming',7.9,1200000),
('Spotify','Spotify AB','Music',5,25000);
--Qn 2 select all apps how many rows do you get
SELECT * FROM appstore;
--select only app and rating
SELECT app_name,rating FROM  appstore;
--the maximum we can store in numeric(2,1) is upto 9.9 not 10,0