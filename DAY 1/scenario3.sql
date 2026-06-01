CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    student_name varchar(40),
    grade int,
    marks float,
    district varchar(30),
    gender varchar(20),
    enrolled_year int
);
INSERT INTO students
(student_name, grade, marks, district, gender, enrolled_year)
VALUES
('Biraj Pathak',10,80,'Jhapa','Male',2023),
('Ujwal Kharel',10,90,'Jhapa','Male',2020),
('Ramu Sharma',10,50,'Morang','Male',2021),
('Bidusi Sharma',9,45,'Kathmandu','Female',2020),
('Sandya Mainali',9,50,'Sunsari','Female',2024),
('Raj Upreti',9,90,'Kathmandu','Male',2025),
('Ujwal Kharel',8,90,'Jhapa','Male',2022),
('Shyam Shah',8,50,'Kathmandu','Male',2026);
--Qn 1 Show all details
SELECT * FROM students;
--Qn 2 Show student names and their marks
SELECT student_name,marks as "obtained_marks" FROM students;
--Qn3 Find students form grade 8,9,10 who scored 80 or above
SELECT * FROM students
where marks >= 80;
--Qn 4 Find students who name contains "Sharma"
SELECT * FROM students
where student_name like '%Sharma%';
--Qn 5
SELECT student_name,district,enrolled_year FROM students
where enrolled_year between 2020 and 2023
and district != 'Kathmandu';