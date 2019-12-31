-- use WHERE class before GROUP BY  , HAVING using after GROUP BY
-- HAVING : we can not use the column that is not part of select 
-- having to filter data after grouping the rows . we can not using WHERE after grouping class 
-- SELECT client_id, SUM(invoice_total) AS total FROM invoices GROUP BY client_id 

-- if we want just the client where total more than 500 we can not use WHERE but using having
-- SELECT client_id , SUM(invoice_total) AS TOTAL_SALES FROM invoices GROUP BY client_id HAVING TOTAL_SALES > 500

-- SELECT client_id , SUM(invoice_total) AS TOTAL_SALES ,COUNT(*) AS number_of_invoices
--       FROM invoices 
--       GROUP BY client_id HAVING TOTAL_SALES > 500 AND number_of_invoices >5
-- ex  41 number video
USE sql_store;
 SELECT c.customer_id ,
 c.first_name,
 SUM(oi.quantity * oi.unit_price) AS spent 
 FROM customers c
 JOIN orders o ON c.customer_id=o.customer_id 
 JOIN order_items oi ON oi.order_id=o.order_id
WHERE c.state='VA'
GROUP BY c.customer_id, c.first_name
HAVING spent > 100
