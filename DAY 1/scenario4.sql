CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    title varchar(40),
    genre varchar(30),
    release_year int,
    rating NUMERIC(3,1),
    language varchar(40),
    duration_min float
);
INSERT INTO movies
(title, genre, release_year, rating, language, duration_min)
VALUES
('Asur', 'Action', 2021, 8.4, 'Hindi', 135),
('DImag Kharab', 'Comedy', 2012, 7.2, 'Nepali', 110),
('Datk', 'Thriller', 2010, 8.8, 'English', 148),
('Masan', 'Drama', 2015, 7.8, 'Hindi', 109),
('Chhakka Panja', 'Comedy', 2016, 6.5, 'Nepali', 115),
('Titanic', 'Romance', 1997, 7.9, 'English', 195),
('James Bond', 'Action', 2016, 8.0, 'English', 108),
('Pashuprasad', 'Romance', 2022, 6.8, 'Nepali', 125);
--Qn1 show all movies avaiable on platform.
SELECT * FROM movies;
--Qn2 show title and rating for all movies. aslias rating as
SELECT title,rating as "imdb_score" FROM movies;
--Qn3 find all movies released between 2015  and 2023
SELECT * FROM movies
where release_year between 2015 and 2023
and rating >= 7.5;
--Qn4 show title and genre
SELECT title,genre FROM movies
where genre in ('Comedy','Action','Romance');
--Q5 find all movies released that are not nepali and short 1:20 min
SELECT title,language,duration_min FROM movies
where language != 'Nepali'
and duration_min < 120;