USE sql_store;
-- database engine join tables base on common column

SELECT c.first_name , o.order_id FROM orders o NATURAL JOIN customers c