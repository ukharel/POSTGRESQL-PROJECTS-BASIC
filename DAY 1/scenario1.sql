CREATE TABLE foodstall(
    order_id SERIAL PRIMARY KEY,
    customer_name varchar(40),
    item varchar(30),
    quantity int NOT NULL,
    price int,
    district varchar(40),
    order_date DATE
);
INSERT INTO foodstall
(customer_name, item, quantity, price, district, order_date)
VALUES
('Bishwo','Momo',2,160,'jhapa','2024-02-10'),
('Binod','Burger Momo',1,100,'jhapa','2024-03-10'),
('Asoj','Chicken tikka',1,80,'morang','2025-02-10'),
('Bikram','masala Tea',2,600,'jhapa','2022-02-10'),
('Ram','chiken tikka',2,200,'kailali','2025-02-10'),
('Shreya','Egg role',2,300,'sunsari','2024-03-10');
--Qn 1 All orders placed by customers from jhapa
SELECT * FROM foodstall where district = 'jhapa';
--Qn 2. cus name price more than rs 150
Select customer_name,item FROM foodstall where price > 150;
--Qn 3. show
SELECT  item,quantity
FROM  foodstall
where  item IN ('Buff Momo', 'veg chowmein', 'masala Tea');
--Qn 4
SELECT * FROM foodstall
where order_date between '2024-01-01' and '2024-03-31';
--Qn 5
SELECT  * FROM foodstall
where item not like '%Momo%';