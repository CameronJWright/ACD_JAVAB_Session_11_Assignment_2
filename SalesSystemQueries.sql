-- 1
SELECT name, city FROM client;

-- 2
SELECT * FROM product_master;

-- 3
SELECT name FROM client WHERE name LIKE "_a%";

-- 4
SELECT * FROM client WHERE city="tezpur";

-- 5
SELECT * FROM product_master WHERE price BETWEEN 2000 AND 5000;

-- 6
ALTER TABLE product_master ADD COLUMN NEW_PRICE INT NULL AFTER client_no;

-- 7
ALTER TABLE sales_order_details CHANGE COLUMN product_rate new_product_rate VARCHAR(45) NULL DEFAULT NULL ;

-- 8
SELECT * FROM product_master ORDER BY description; 

-- 9
SELECT order_number, order_date FROM orders;

-- 10
DELETE FROM orders WHERE delivery_date<"2008-08-25";

-- 11
UPDATE orders SET delivery_date = '2008-08-16' WHERE (order_number = 'ON01008');

-- 12
UPDATE client SET balance = '1200' WHERE (client_no = 'CN01003');

-- 13
SELECT * FROM product_master WHERE description LIKE "HDD1034" OR description LIKE "DVDRW";

-- 14
SELECT name, city, state FROM client WHERE state NOT LIKE "ASSAM";

-- 15
SELECT * FROM orders WHERE status="canceled" AND order_date LIKE "_____03___";