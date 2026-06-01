CREATE TABLE model(
    model_id SERIAL PRIMARY KEY ,
    model_name varchar(40),
    student_name varchar(40),
    algorithm varchar(10),
    accuracy int,
    trained_on date
);
INSERT INTO model
(model_name,student_name,algorithm,accuracy,trained_on)
VALUES
('Gemini','Biraj','RNN',80,'2022-05-10'),
('Claude','Ranjikant','RNN',90,'2023-06-10'),
('Ollma','Helsi','SVM',82,'2024-07-12'),
('Kimi','Sitti','CNN',78,'2023-03-04'),
('Mistral','Bishal','SVM',50,'2025-05-15');
--Qn 1 select all or whole table
SELECT * FROM model;
--Qn 2 Two student work on same algorithm
SELECT * FROM model where algorithm = 'CNN';
--Qn 3 select model_name,student_name and accuracy
SELECT model_name,student_name,accuracy FROM model;