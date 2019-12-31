-- USE sql_store;
-- SELECT * FROM products 
--         WHERE   unit_price > 
--         (SELECT unit_price FROM products WHERE  product_id=3 ) 

-- ex in sql_hr find employees who earn more than average 
-- USE sql_hr;
-- SELECT * FROM employees 
--       WHERE salary > 
--         (SELECT AVG(salary) FROM employees)

-- ex find the products that have never been ordered
-- USE sql_store;
-- SELECT * FROM products 
--         WHERE product_id  NOT IN (
--         SELECT DISTINCT  product_id FROM order_items
--         )

-- ex find the clients without invoices 
-- using subquery
-- USE sql_invoicing;
-- SELECT * FROM clients 
--          WHERE client_id NOT IN (
--         SELECT DISTINCT client_id FROM invoices
 --        )
-- using JOIN
-- SELECT * FROM clients 
--        LEFT JOIN invoices USING(client_id)
--        WHERE invoice_id IS NULL


-- ex
USE sql_store;
-- SELECT DISTINCT c.customer_id ,c.first_name FROM customers c
--         JOIN orders o USING(customer_id)
-- 		 JOIN order_items oi ON o.order_id=oi.order_id
--         WHERE oi.product_id=3
  
 SELECT * FROM customers 
          WHERE customer_id IN (
          SELECT o.customer_id FROM orders o
		  JOIN order_items oi ON o.order_id=oi.order_id
          WHERE oi.product_id=3
          )

















 
