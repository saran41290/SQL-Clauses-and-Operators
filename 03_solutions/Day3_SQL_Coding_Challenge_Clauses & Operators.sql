-- DISTINCT & AS
-- 1.	Display unique product names from the Product table.
select distinct product_name from product;
-- 2.	Display product names with alias Product_Name.
select product_name Product_Name from product;
-- 3.	Display unique product_id values from the Sales table.
select distinct product_id from sales;
-- 4.	Display product price with alias Product_Price.
select price as Product_Price from product;

-- WHERE Clause
-- 5.	Display products whose price is greater than 10,000.
select * from product where price>10000;
-- 6.	Show products whose price is less than 5,000.
select * from product where price < 5000;
-- 7.	Display sales where quantity equals 2.
select * from sales where quantity=2;

-- Comparison Operators
-- 8.	Display products whose price is greater than or equal to 15,000.
select * from product where price >= 15000;
-- 9.	Display sales where quantity is not equal to 5.
select * from sales where quantity != 5;

-- Arithmetic Operators
-- 10.	Display product name and price after 10% increase.
select product_name Product,price Original_Price,(price+(price*0.1)) as Increased_Price from product;
-- 11.	Display sale amount and sale amount after adding 500.
select sale_id,sale_amount Sales_Amount,(sale_amount+500) New_Sales_Amount from sales;

-- Logical Operators
-- 12.	Display products whose price is greater than 5,000 AND less than 50,000.
select * from product where price >5000 and price <50000;
-- 13.	Display sales where quantity is 2 OR 4.
select * from sales where quantity=2 or quantity=4;
-- 14.	Display products whose price is NOT greater than 20,000.
select * from product where price<20000;

-- IS NULL / IS NOT NULL
-- 15.	Display sales records where product_id is NULL.
select * from sales where product_id is null;
-- 16.	Display products where price is NOT NULL.
select product_name from product where price  is not null;

-- IN and NOT IN
-- 17.	Display products with product_id 1, 3, and 5.
select product_id,product_name from product where product_id in(1,3,5);
-- 18.	Display products whose product_id is NOT 2, 4, and 6
select product_id,product_name from product where product_id not in(2,4,6);

-- BETWEEN and NOT BETWEEN
-- 19.	Display products whose price is between 1,000 and 20,000.
select product_name,price from product where price between 1000 and 20000;
-- 20.	Display products whose price is NOT between 5,000 and 50,000.
select product_name,price from product where price not between 5000 and 50000;

-- LIKE and NOT LIKE
-- 21.	Display products whose name starts with 'M'.
select product_name from product where product_name like 'M%';
-- 22.	Display products whose name ends with 'e'.
select product_name from product where product_name like '%e';
-- 23.	Display products whose name contains 'phone'.
select product_name from product where product_name like '%phone%';
-- 24.	Display products whose name does not start with 'S'
select product_name from product where product_name not like 's%';

-- Mixed Questions (Exam Level)
-- 25.	Display products whose price is between 1,000 and 20,000 AND product name starts with 'M'.
select product_name,price from product where (price between 1000 and 20000) and product_name like 'm%';
-- 26.	Display sales where quantity is between 2 and 10.
select * from sales where quantity between 2 and 10;
-- 27.	Display products whose product_id is in (1,2,3) AND price greater than 5,000.
select product_id,product_name,price from product where product_id in(1,2,3) and price >5000;
-- 28.	Display unique sale quantities from the Sales table.
select distinct quantity as Unique_Sale_Quantities from sales;

