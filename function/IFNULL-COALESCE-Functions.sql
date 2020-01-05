-- IFNULL
-- in order table there are shipper_id null but we want replace null with not assigned

-- COALESCE
-- if shipper_id null return values with comments column else not assigned

USE sql_store;
-- IFNULL
-- SELECT order_id , IFNULL(shipper_id,'not assigned') FROM orders

-- COALESCE
-- SELECT order_id ,COALESCE(shipper_id,comments,'not assigned') FROM orders

-- ex in customers 
-- SELECT CONCAT(first_name,' ',last_name) AS full_name, IFNULL(phone,'unknown') AS phone FROM customers
-- SELECT CONCAT(first_name,' ',last_name) AS full_name, COALESCE(phone,'unknown') AS phone FROM customers