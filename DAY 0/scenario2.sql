CREATE TABLE menu(
    item_id SERIAL PRIMARY KEY,
    item_name varchar(40),
    category varchar(30),
    price int,
    is_veg boolean
);
INSERT INTO menu
(item_name, category,price,is_veg)
VALUES
('Burger', 'meal', 250,False),
('Pizza', 'meal', 400,False),
('Pasta', 'meal', 350,True),
('Chips', 'snack', 50,True),
('Popcorn', 'snack', 80,True),
('Nuts', 'snack', 100,True),
('Coffee', 'drink', 120,True),
('Juice', 'drink', 90,True);
--Qn 2) select the full menu
SELECT * FROM menu;
--Qn 3 Select only item_name and price
SELECT item_name,price FROM menu;
--Qn 4 insert a drink with no price//it gives null
INSERT INTO menu
(item_name, category,is_veg)
VALUES
('Redbull','Energy-drink',False);
